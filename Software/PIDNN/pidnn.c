#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <math.h>
#include "genann.h"


#define dt 0.001  // time constant 
#define epsilon 40  //threshold used to cap the integral
#define MAX 4      // maximum value of the PID controller
#define MIN 0       // minimum value of the PID controller
#define throtling_threshold 700    // temperature threshold 
#define sampling_rate 10000      // sampling rate in us
#define save_samp 25000    // save the NN weights each 25000 sample 
#define PATHs1 "/sys/class/thermal/thermal_zone14/temp" // path to sensor 1
#define PATHs2 "/sys/class/thermal/thermal_zone15/temp" // path to sensor 2
#define PATHs3 "/sys/class/thermal/thermal_zone16/temp" // path to sensor 3
#define PATHs4 "/sys/class/thermal/thermal_zone17/temp" // path to sensor 4
#define PATHfreq "/sys/devices/system/cpu/cpufreq/policy4/scaling_setspeed" // path to frequency scalling file 


// the PID controller 

float PID(double error, double integral,double derivative, double  Kp, double Ki,double Kd)
{
float output_pid;
// compute the output
output_pid= Kp*error + Ki*integral+Kd*derivative;
// Saturation filter 
if ( output_pid > MAX )
{
output_pid = MAX ;
}
else if ( output_pid < MIN )
{
	output_pid= MIN;
}
return output_pid;
}



// function that picks a frequency level based on a float number

int command_freq(float command)
{
int freq_index;
char * freq[]={"2457600","2323200","2112000","1804800","1574400","1267200"}; //The frequency levels should be chosen according to the used plateform 
char*  str1;
if ( command > MAX) {
	command= MAX;
}
else if (command < MIN ) {
	command=MIN;
}
freq_index=command;
char* f=freq[freq_index];

FILE *scale = fopen(PATHfreq,"w"); //The sys node that controls the frequency depends on the plateform
if( scale !=NULL)
{
fputs(f,scale);
fclose(scale);
}
return 0;
} 



int max_t( int a, int b ) {
if( a > b) return a;
else return b;
}



// function that returns the highest temperature level of the big cluster 
float highest_temp()
{
    FILE *fpB4T;
    FILE *fpB5T;
    FILE *fpB6T;
    FILE *fpB7T;
    double B4T;
    double B5T;
    double B6T;
    double B7T;

    char *str;
	char buff[1024];
	
	// The registers from which the temperature is read depend also on the used plateform
	
    //big4
    fpB4T = fopen(PATHs1, "r"); 
	fscanf(fpB4T, "%lf", &B4T);
	fclose(fpB4T);

	
     //big5
	fpB5T = fopen(PATHs2, "r");
	fscanf(fpB5T, "%lf", &B5T);
	fclose(fpB5T);
        
	//big6
	fpB6T = fopen(PATHs3, "r");
	fscanf(fpB6T, "%lf", &B6T);
	fclose(fpB6T);

	//big7
	fpB7T = fopen(PATHs4, "r");
    fscanf(fpB7T, "%lf", &B7T);
	fclose(fpB7T);
	
	return max_t(max_t(B4T,B5T),max_t(B6T,B7T));
}





int main(int argc,char *argv[])
{
		
	int save_time=0;
	double pre_threshold = throtling_threshold - 100; // the temperature changes to fast, so a pre_threshold level is defined 
	double Kp=0.1;
	double Ki=0.005;
	double Kd=0.01;
	double derivative=1.0;
	static double integral=0.0;
	static double p_error=0;
	double error= highest_temp() - pre_threshold;
	double command_pi=0.0;
	double input[1][4]={{1.0,1.0,1.0,1.0}};                           // used as initial input of the NN
	double output_target[1][3]={{1.0,1.0,1.0}};						 // used as initial target value of the PID parameters 
	
	const char *save_name = "savepid.nn";
	
	// This commentend block can be used to read the intial weights from a certain file rather than learning from the beginning 
	
	/*
	FILE *savednn = fopen(save_name, "r");
    	genann *ann = genann_read(savednn);
    	fclose(savednn);        
	*/
    genann *ann = genann_init(4, 2, 8, 3);   // create a NN that has 4 inputs, 2 hidden layers of 8 neurons each and an output layer of size 3 

	while(1){

    // save the NN weights each say 4mn 	
	if(save_time==save_samp){
	save_time=0;
	FILE *saved = fopen(save_name, "w");
	genann_write(ann,saved);
	fclose(saved);
	}
	save_time=save_time+1;
		
	if(highest_temp()> pre_threshold)
	{
				
	// do a forward pass and apply a frequency command , then wait for 10ms
	input[0][0]=error;
	input[0][1]=integral;
	input[0][2]=command_pi;
	input[0][3]=derivative;
    const double *output = genann_run(ann,input[0]);
	command_pi=PID(error,integral,derivative,output[0]/100.0,output[1]/1000.0,output[2]/1000.0);
	command_freq(command_pi);

		
	usleep(sampling_rate);
	
	
	// comppute the error, integral and derivative and perform a backpropagation to update the weights 
    error= highest_temp() - pre_threshold;
	derivative=error-p_error;
	if( fabs(error) > epsilon )
	{
	integral=integral + error*dt;
	if( integral > 300 ) integral=300;
	if (integral < -300) integral=-300;
	}
	output_target[0][0]=output[0]+0.0005*error;
	output_target[0][1]=output[1]+0.00002*integral;
	output_target[0][2]=output[2]+0.00001*derivative;
	p_error=error;
	genann_train(ann, input[0], output_target[0],0.001);
}

// if there is no thermal violation we should aim for the highest frequency, from power-savings perspective this part should be improved : if there is no thermal violation, rather than aiming 
// for the maximum frequency we should aim for the maximum frequency given by the on-demand governor 
else { command_freq(0.0);}	
}

}


