# Using WinAVR to Program an AVR Microcontroller in 2020

## Motivation
I wanted to program some good old 8-Bit Atmel AVR MCUs. <br>
But it was hard to find a good setup, since Atmel Studio is much too heavy and does not support an USBASP-Programmer out of the box. 
So I decided to give WinAVR another try. Since it is hard to use on Windows, I created this little Example to offer a simpler start to newbies.  

## Hardware Used

- Programmer: [USB-ASP](https://www.amazon.de/RoboMall-RBS10025-USBASP-AVR-Programmer/dp/B00QHEM5II)
- Board: [Atmel Evaluations-Board Version 2.0 von Pollin](https://homepages.uni-regensburg.de/~erc24492/AT16_EvalBoardPollin/AtmelEvalBoard.PDF), but you can also easily setup SPI connection on a Breadboard, too
- MCU: Attiny2313

## Installation

[Download AVR-GCC for Windows](https://blog.zakkemble.net/avr-gcc-builds/)

Change "WINAVR_PATH" in "make.bat" to point to your winavr bin directory

## Building

### Compile

```
make.bat all
```

### Flash to AVR

```
make.bat flash
```

### Clean

```
make.bat clean
```
