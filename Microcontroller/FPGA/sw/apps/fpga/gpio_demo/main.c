// Copyright 2017 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the “License”); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

#include <stdio.h>
#include "gpio.h"
#include "int.h"
#include "utils.h"
#include "timer.h"



#define SW_0_BIT    (1 <<  0)
#define SW_1_BIT    (1 <<  1)
#define SW_2_BIT    (1 <<  2)
#define SW_3_BIT    (1 <<  3)
#define SW_4_BIT    (1 <<  4)
#define SW_5_BIT    (1 <<  5)
#define SW_6_BIT    (1 <<  6)
#define SW_7_BIT    (1 <<  7)

#define BTN_C_BIT   (1 << 16)
#define BTN_D_BIT   (1 << 17)
#define BTN_L_BIT   (1 << 18)
#define BTN_R_BIT   (1 << 19)
#define BTN_U_BIT   (1 << 20)

int var=0;
int freq=0;
int temp;
//void gpio_int_handler(void* unused);
void board_setup();

int main()
{
  board_setup();

  IER = 0x1 << GPIO_EVENT;

  //int_add(GPIO_EVENT, gpio_int_handler, NULL);
  int_enable();
  

  printf("Going to sleep and wait for interrupts now\n");
  start_timer();
  sleep();
  return 0;
}

void ISR_GPIO(void) {
  
  switch(get_gpio_irq_status()) {
  
    case 1 << 18: {int a= 43756800/freq;int b=(10000000-a*19600)/a;int c=(b*1000)/60348 ; printf("the voltage in mv: %d\n",c*10);freq=0;set_gpio_pin_irq_en(19, 1);set_gpio_pin_irq_type(19, GPIO_IRQ_RISE); reset_timer();break;}
    case 1 << 19: {freq=freq+get_time();reset_timer();var=var+1;if (var==1000) {set_gpio_pin_irq_en(19, 0);var=0;} break;}
    default:      var=var;  break;
  }
}

void board_setup() {
  int i;

  //int_init();

  // setup GPIO pins
  for(i = 0; i < 8; i++) {
    set_gpio_pin_direction(i, DIR_IN);
    set_pin_function(i, FUNC_GPIO);
    set_gpio_pin_irq_en(i, 1);
    set_gpio_pin_irq_type(i, GPIO_IRQ_RISE);
  }

  for(i = 16; i < 32; i++) {
    set_gpio_pin_direction(i, DIR_IN);
    set_pin_function(i, FUNC_GPIO);
    set_gpio_pin_irq_en(i, 1);
    set_gpio_pin_irq_type(i, GPIO_IRQ_RISE);
  }
  EER = 0x0;
}
