#include "fsl_port.h"


/*
@function:port_init
@input:PORTA..E, 0-31, 000-007
@output:SUCCEED
*/
uint8_t port_init(PORT_Type *PORTn,uint32_t pin,uint16_t ALTn) 
{
	PORT_ISFR_REG(PORTn) |= 0;
	PORT_PCR_REG(PORTn,pin) &=~ PORT_PCR_MUX_MASK;
	PORT_PCR_REG(PORTn,pin) |=  PORT_PCR_MUX(ALTn);
	
	return SUCCEED;
}


