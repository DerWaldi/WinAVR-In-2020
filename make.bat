@echo off 

SET MCU=attiny2313
SET F_CPU=800000

SET WINAVR_PATH=C:\Workspace\avr\avr-gcc-9.2.0-x64-mingw\bin\

SET CC="%WINAVR_PATH%avr-gcc.exe"
SET OBJCOPY="%WINAVR_PATH%avr-objcopy.exe"
SET AVRDUDE="%WINAVR_PATH%avrdude.exe"
SET CFLAGS=-std=c99 -Wall -g -Os -mmcu=%MCU% -DF_CPU=%F_CPU% -I.
SET TARGET=main
SET SRCS=main.c

IF "%1" == "all" (
  %CC% %CFLAGS% -o %TARGET%.bin %SRCS%
  %OBJCOPY% -j .text -j .data -O ihex %TARGET%.bin %TARGET%.hex
)

IF "%1" == "flash" (
  %AVRDUDE% -p %MCU% -c usbasp -U flash:w:%TARGET%.hex:i -F -P usb
)

IF "%1" == "clean" (
  del *.bin *.hex
)