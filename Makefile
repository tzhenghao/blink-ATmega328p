# Zheng Hao Tan
# Makefile for the blink application.
# Type 'make' and then whatever that follows to compile the code.

all: blink.o
	avrdude -c arduino -p m328p -P /dev/cu.usbmodem142321 -U flash:w:blink.hex

blink.o: blink.c 
	avr-gcc -mmcu=atmega328p -Wall -Os -o blink.elf blink.c
	avr-objcopy -j .text -j .data -O ihex blink.elf blink.hex

# make clean - remove .o files and the executable file.
clean:
	rm -f *.o blink.hex blink.elf 

# That's all folks!
