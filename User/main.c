#include "stm32f10x.h" // Device header
#include "stm32f10x_gpio.h"
#include "stm32f10x_rcc.h"
#include "Delay.h"
int main() {

	RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOC,  ENABLE);
  
  GPIO_InitTypeDef GPIO_InitStructure;

  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_5;
  GPIO_Init(GPIOC,&GPIO_InitStructure);


  while (1) {
    GPIO_WriteBit(GPIOC,GPIO_Pin_5,1);
		delay_ms(60000*5);
		GPIO_WriteBit(GPIOC,GPIO_Pin_5,0);
		delay_ms(60000*5);
  }
  return 0;
}