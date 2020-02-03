# RaspberryPi Instant Camera

## Hardware setup

1. Plug the printer's serial cable connector on serial pins (GPIO14 & 15 & GND are contiguous)
2. Plug the printer's power cable connecter on 5V and GND pins --> youwill need some soldering as GND should be the same one as for default serial pins
3. Plug the camera to the RaspberryPi using the special connector marked with `CAMERA` on the RapsberryPi PCB
4. Plug a click button between GPIO 16 and GND

## Software setup

1. Clone this repository into your RaspberryPi and `cd` into it
2. Launch the setup script: `./setup.sh SERIAL_PORT BAUD_RATE` (e.g. for UART printer: `./setup.sh /dev/ttyAMA0 19200` or `./setup.sh /dev/serial0 19200`, for USB printer: `./setup.sh /dev/ttyUSB0 9600`). The serial port name may vary depending on the model of the RaspberryPi.
3. Launch the camera script: `./camera.sh`

## Credits

Adafruit tutorials:
- [Instant Camera using Raspberry Pi and Thermal Printer](https://learn.adafruit.com/instant-camera-using-raspberry-pi-and-thermal-printer)
- [Networked Thermal Printer using Raspberry Pi and CUPS](https://learn.adafruit.com/networked-thermal-printer-using-cups-and-raspberry-pi/connect-and-configure-printer)
- [Adafruit ZJ-58 Thermal Printer Linux Driver (CUPS filter)](https://github.com/adafruit/zj-58)