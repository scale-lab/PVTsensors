#include<SPI.h>                             //Library for SPI .
#define txload 6
#define trdy 5
int i=1;
int dataready;
byte x;

void setup (void)

{
   Serial.begin(115200);
   SPI.begin();               
  pinMode(txload,OUTPUT); 
  pinMode(trdy,INPUT);
   digitalWrite(SS,HIGH);
    SPI.setClockDivider(SPI_CLOCK_DIV16); 

}

void loop(void)
{

   if(i<2)
   {
    
    int Mastereceive; 
    double voltage = 0;
    //uint16_t buffer;  //16 bits of data
    //uint8_t size = 2;   //number of bytes
    
    digitalWrite(SS, LOW);                  //Starts communication with Slave connected to master
    delay(100);
    // Mastereceive=SPI.transfer(0); //Send the mastersend value to slave also receives value from slave
    
    //Serial.println(Mastereceive);
    Mastereceive = SPI.transfer16(0);
    Serial.println(Mastereceive);

    voltage = (1000000/Mastereceive - 39.25)/(36.5345);
    Serial.println(voltage);
    
    delay(100);
    digitalWrite(SS, HIGH);   
   i=i+1;
   }
                      
  delay(1000);
}
