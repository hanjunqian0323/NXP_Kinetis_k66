#include "fsl_gpio.h"


uint8_t gpio_init(GPIO_Type *PTn,uint32_t pin,uint8_t dir)
{
	PORT_Type *portx;
	
	if		(PTn == PTA)  	portx = PORTA;
	else if	(PTn == PTB)	portx = PORTB;
	else if	(PTn == PTC)	portx = PORTC;
	else if	(PTn == PTD)	portx = PORTD;
	else if	(PTn == PTE)	portx = PORTE;
	
	port_init(portx,pin,001);
	
	//�������ģʽ����
	if(dir == 0) //����Ϊ����ģʽ
	{
		GPIO_PDDR_REG(PTn) &=~ (1<<pin);
	}
	else if(dir == 1)  //����Ϊ���ģʽ
	{
		GPIO_PDDR_REG(PTn) |=  (1<<pin);
	}
}

void gpio_set(GPIO_Type *PTn,uint32_t pin,uint8_t status)
{	
	if(status == 0)
	{
		GPIO_PDDR_REG(PTn) &=~ (1<<pin);
	}
	else if(status == 1)
	{
		GPIO_PDDR_REG(PTn) |=  (1<<pin);
	}
}

