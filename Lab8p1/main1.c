/**************************************************************************************
* Author: Christina Kidwell
* Course: EGR 226 - 905
* Date: 02/25/2021
* Project: Lab 8 Part 1
* File: main.c
* Description: A program to control the speed of a motor by using the sysTick timer 
* to hard code PWM output on Port 5 Pin 6
**************************************************************************************/
#include "msp.h"
#include <stdio.h>
#include <string.h>
#include "MySetup.h"
#include "MyKeyPad.h"
#include "MyTimer.h"

/**
 * main.c
 */
void main(void)
{
    int  period = 25000;			// set period to 25000 microseconds
    float dutyCycle = 0.5;			// set duty cycle to 50%
    int  onTime = 0;
    int  offTime = 0;

    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;     // stop watchdog timer
    setupIO();
    SysTickInit();

    // Configure Port 5 pin 6, special function bits to 0, direction to output, resistor off
    P5->SEL0 &= ~BIT6;
    P5->SEL1 &= ~BIT6;
    P5->DIR |= BIT6;
    P5->REN &= ~BIT6;
    P5->OUT &= ~BIT6;

    while(1) {
        onTime = period * dutyCycle;    // Calculate onTime
        offTime = period - onTime;      // Calculate offTime

        P5->OUT |= BIT6;                // Turn on output to motor
        P1->OUT |= BIT0;                // Turn on output to on board LED
        microDelay(onTime);             // delay for duration of onTime
        P5->OUT &= ~BIT6;               // Turn off output to motor
        P1->OUT &= ~BIT0;               // Turn off output to on board LED
        microDelay(offTime);            // delay for duration of offTime
    }
}
