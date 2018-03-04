#! /usr/bin/python
import time

import RPi.GPIO as GPIO



if __name__ == '__main__':
    GPIO_PINS = [18, 23, 25]

    GPIO.setmode(GPIO.BCM)

    for pin in GPIO_PINS:
        GPIO.setup(pin, GPIO.OUT)
        GPIO.output(pin, False)

