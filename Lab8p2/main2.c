/**************************************************************************************
* Author: Christina Kidwell
* Course: EGR 226 - 905
* Date: 02/25/2021
* Project: Lab 8 Part 2
* File: main.c
* Description: A program to run a motor connected to timerA2.1 (port 5 Pin 6) using PWM
* 
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
    float motorSpeed = 0.500;

    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;     // stop watchdog timer
    setupIO();
    SysTickInit();
    TimerAInit();
    TimerASetPeriod(9375);					// send the period to timerA

    while(1) {
        TimerASetMotorSpeed(motorSpeed);	// send the duty cycle to timerA
    }
}
