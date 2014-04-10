#!/usr/bin/env sh

ARDUINO_DIR=/home/texane/repo/arduino/arduino-1.0.5

if [ -x $ARDUINO_DIR/hardware/tools/avrdude ]; then
 $ARDUINO_DIR/hardware/tools/avrdude \
 -C$ARDUINO_DIR/hardware/tools/avrdude.conf \
 -v -v -v -v -patmega328p -carduino -P/dev/ttyUSB0 -b57600 -D \
 -Uflash:w:main.hex:i
else
 avrdude \
 -v -v -v -v -patmega328p -carduino -P/dev/ttyUSB0 -b57600 -D \
 -Uflash:w:main.hex:i
fi
