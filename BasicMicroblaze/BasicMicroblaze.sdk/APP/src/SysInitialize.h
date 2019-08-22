/*
 * SysInitialize.h
 *
 *  Created on: 2019��7��11��
 *      Author: Administrator
 */

#ifndef SRC_SYSINITIALIZE_H_
#define SRC_SYSINITIALIZE_H_
#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"  //GPIO
#include "xuartlite.h"//UART
#include "xtmrctr.h" //Timer
//Interrupt
#include "xstatus.h" 
#include "xintc.h"
#include "xil_exception.h"
//fifo
//#include "xstreamer.h"
//#include "xil_cache.h"
//#include "xllfifo.h"
//IIC_axi
#include "xiic.h"

#define DEVICENUM           4
#define GPIO_LED_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define	UART1_DEVICE_ID     XPAR_UARTLITE_0_DEVICE_ID
#define	UART2_DEVICE_ID     XPAR_UARTLITE_1_DEVICE_ID
#define Timer_DEVICE_ID     XPAR_TMRCTR_0_DEVICE_ID
#define HWICAP_0_DEVICE_ID      XPAR_HWICAP_0_DEVICE_ID
#define IIC_0_DEVICE_ID         XPAR_IIC_0_DEVICE_ID
#define INTC_0_DEVICE_ID        XPAR_INTC_0_DEVICE_ID
#define AXI_FIFO_0_DEVICE_ID    XPAR_AXI_FIFO_0_DEVICE_ID
#define SYSMON_0_DEVICE_ID      XPAR_SYSMON_0_DEVICE_ID
#define TMRCTR_0_DEVICE_ID      XPAR_TMRCTR_0_DEVICE_ID
#define IIC_0_DEVICE_ID         XPAR_IIC_0_DEVICE_ID

/* interrupt ID  */
#define UART_0_VEC_ID        XPAR_INTC_0_UARTLITE_0_VEC_ID 
#define UART_1_VEC_ID        XPAR_INTC_0_UARTLITE_1_VEC_ID 
#define IIC_0_VEC_ID          XPAR_INTC_0_IIC_0_VEC_ID 
#define TIMER_0_VEC_ID       XPAR_INTC_0_TMRCTR_0_VEC_ID 



#define LED 0xff
#define LED_CHANNEL 1


#define EEPROM_ADDRESS 		0x54



volatile u8 TransmitComplete;	/* Flag to check completion of Transmission */
volatile u8 ReceiveComplete;	/* Flag to check completion of Reception */


/* The Instance of the Device  */
XGpio Gpio_led; 
XUartLite Uart1;
XUartLite Uart2;
XTmrCtr Timer0;
XIntc   Intc0;    

XIic    IIC0;

int GPIO_Initialize(XGpio *, u16 , const char *);
int UART_Initialize(XUartLite *, u16 , const char *);
int Sys_Initialize(void );



#endif /* SRC_SYSINITIALIZE_H_ */
