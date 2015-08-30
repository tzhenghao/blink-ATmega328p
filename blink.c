#define F_CPU 1000000UL

#include <avr/io.h>
#include <util/delay.h>

int main ()
{
	DDRB |= (1 << PB0);

	while(1) 
	{
		PORTB ^= (1 << PB0);
		_delay_ms(1000);
		_delay_ms(1000);
		_delay_ms(1000);
		_delay_ms(1000);
		_delay_ms(1000);
		_delay_ms(1000);
		_delay_ms(1000);
	}
}
