# Minimal example

## Hardware Used

- Programmer: [USB-ASP](https://www.amazon.de/RoboMall-RBS10025-USBASP-AVR-Programmer/dp/B00QHEM5II)
- Board: [Atmel Evaluations-Board Version 2.0 von Pollin](https://homepages.uni-regensburg.de/~erc24492/AT16_EvalBoardPollin/AtmelEvalBoard.PDF)
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
