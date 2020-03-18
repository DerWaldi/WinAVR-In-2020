/*
 * UART_Test.c
 *
 * Created: 21.01.2014 12:52:09
 *  Author: Jens
 */

#include <avr/io.h>
#include <inttypes.h>
#include <util/delay.h>

int main(void)
{
	DDRD = 0xff;
	while (1)
	{
		_delay_ms(500);
		PORTD = 0xff;		//0b000100000;
		_delay_ms(500); //PORTD &= ~(1 << PD5);
		PORTD = 0x00;
	}
}