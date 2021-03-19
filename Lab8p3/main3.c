/**************************************************************************************
* Author: Christina Kidwell
* Course: EGR 226 - 905
* Date: 02/25/2021
* Project: Lab 8 Part 3
* File: main.c
* Description: A program to use a keypad to control a motor connected 
* to Timer A2.1 (port 5 Pin 6)
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
    float motorSpeed = 0.500;    // set default speed at startup
    char c;

    WDT_A->CTL = WDT_A_CTL_PW | WDT_A_CTL_HOLD;     // stop watchdog timer
    setupIO();
    SysTickInit();
    TimerAInit();
    TimerASetPeriod(9375);      // Set timerA period
    TimerASetMotorSpeed(motorSpeed);   // send motor speed to timerA

    while(1) {
        c = getButton();				// Look for input from keypad
        switch(c) {
            case NULL  :				// if no input then loop
                // ignore NULL
                break;
            case '*'  :				// ignore *
                // ignore *
                break;
            case '#'  :				// ignore #
                // ignore #
                break;
            case '0'  :				// of zero was pressed, shutdown timer to stop motor
                // turn motor off
                TimerAStopMotor();
                break;
           default :					// process other key presses
               TimerASetPeriod(9375);	// sent period to restart motor after stop command
               TimerASetMotorSpeed((float)(c&0x0F)/10.0); 	// mask off first nibble and divide by 10
        }													// to obtain new motor speed 
    }														// and send it to timer A
}
