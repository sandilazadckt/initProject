#ifndef DELAY_H
#define DELAY_H
#include "stm32f10x_rcc.h"
#include "stdint.h"
// SysTick initialization
void SysTick_Init(void) ;

// Delay in milliseconds
void delay_ms(uint32_t ms);

#endif