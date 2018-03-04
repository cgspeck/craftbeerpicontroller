#! /usr/bin/python
import time

import RPi.GPIO as GPIO

def CyclePins(pins):
    for pin in pins:
        print("Turning GPIO pin %s on" % pin)
        GPIO.output(pin, True)
        time.sleep(2)
        print("Turning GPIO pin %s off" % pin)
        GPIO.output(pin, False)

def TurnOnAllPins(pins):
    for pin in pins:
        print("Turning GPIO pin %s on" % pin)
        GPIO.output(pin, True)

def TurnOffAllPins(pins):
    for pin in pins:
        print("Turning GPIO pin %s on" % pin)
        GPIO.output(pin, False)

if __name__ == '__main__':
    while True:
        GPIO_PINS = [18, 23, 25]

        GPIO.setmode(GPIO.BCM)

        for pin in GPIO_PINS:
            GPIO.setup(pin, GPIO.OUT)
    
        TurnOnAllPins(GPIO_PINS)
        time.sleep(3)

        TurnOffAllPins(GPIO_PINS)
        time.sleep(3)

        TurnOnAllPins(GPIO_PINS)
        CyclePins(GPIO_PINS)

        CyclePins(GPIO_PINS)
