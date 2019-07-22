#ifndef __fsl_gpio_h
#define __fsl_gpio_h

#include "FSL_COMMON.H"


uint8_t     gpio_init   (GPIO_Type *PTn,uint32_t pin,uint8_t dir);
void        gpio_set    (GPIO_Type *PTn,uint32_t pin,uint8_t status);
uint8_t     gpio_get    (GPIO_Type *PTn,uint32_t pin);
#endif
