#include "Delay.h"
// SysTick initialization
void SysTick_Init(void) {
    // Configure SysTick to generate an interrupt every 1ms
    if (SysTick_Config(SystemCoreClock / 1000)) {
        // Handle error
    }
}

// Delay in milliseconds
void delay_ms(uint32_t ms) {
    for (uint32_t i = 0; i < ms; i++) {
        // Wait until the SysTick counter reaches zero
        while (SysTick->CTRL & SysTick_CTRL_COUNTFLAG_Msk == 0);
    }
}