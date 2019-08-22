#include "SysInitialize.h"


/*****************************************************************************
GPIO Initialize
******************************************************************************/
int GPIO_Initialize(XGpio *InstancePtr, u16 DeviceId, const char GpioName[])
{
	int status;
    
    status = XGpio_Initialize(InstancePtr, DeviceId);
	if (status != XST_SUCCESS) {
		xil_printf("%s Initialization Failed\r\n",GpioName);
		return XST_FAILURE;
		}
	else{
		xil_printf("%s Initialization Succeed\r\n",GpioName);
	}

    return status;
}

/*****************************************************************************
UART Initialize
******************************************************************************/
int UART_Initialize(XUartLite *InstancePtr, u16 DeviceId, const char UartName[])
{
    int status;

    status = XUartLite_Initialize(InstancePtr, DeviceId);
	if (status != XST_SUCCESS) {
		xil_printf("%s Initialization Failed\r\n",UartName);
		return XST_FAILURE;
		}
	else{
		xil_printf("%s Initialization Succeed\r\n",UartName);
	}

    return status;
}

/*****************************************************************************
Timer Initialize
******************************************************************************/
int Timer_Initialize(XTmrCtr *InstancePtr, u16 DeviceId, const char TimerName[])
{
    int status;

    status = XTmrCtr_Initialize(InstancePtr, DeviceId);
	if (status != XST_SUCCESS) {
		xil_printf("%s Initialization Failed\r\n",TimerName);
		return XST_FAILURE;
		}
	else{
		xil_printf("%s Initialization Succeed\r\n",TimerName);
	}

    return status;
}

/*****************************************************************************
Interrupter controler Initialize
******************************************************************************/
int Intc_Initialize(XIntc *InstancePtr, u16 DeviceId, const char IntcName[])
{
    int Status;

    Status = XIntc_Initialize(InstancePtr, DeviceId);
	if (Status != XST_SUCCESS) {
		xil_printf("%s Initialization Failed\r\n",IntcName);
		return XST_FAILURE;
		}
	else{
		xil_printf("%s Initialization Succeed\r\n",IntcName);
	}


    return Status;
}

/*****************************************************************************
IIX_axi Initialize
******************************************************************************/
int IIC_axi_initialize(XIic *InstancePtr, u16 DeviceId, const char IICName[])
{
	int Status;
	XIic_Config *ConfigPtr;	/* Pointer to configuration data */

	/*
	 * Initialize the IIC driver so that it is ready to use.
	 */
	ConfigPtr = XIic_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		return XST_FAILURE;
	}

	Status = XIic_CfgInitialize(InstancePtr, ConfigPtr,
			ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("%s Initialization Failed\r\n",IICName);
		return XST_FAILURE;
		}
	else{
		xil_printf("%s Initialization Succeed\r\n",IICName);
	}

    return Status;
}

/*****************************************************************************
IIC interrupt handler
******************************************************************************/

static void SendHandler(XIic *InstancePtr)
{
	TransmitComplete = 0;
	xil_printf("SendHandler\r\n");
}


static void ReceiveHandler(XIic *InstancePtr)
{
	ReceiveComplete = 0;
	xil_printf("ReceiveHandler\r\n");
}

static void StatusHandler(XIic *InstancePtr, int Event)
{
	xil_printf("StatusHandler\r\n");
}


/*****************************************************************************
system Initialize
******************************************************************************/
int Sys_Initialize()
{
    int Status = 0;

	/*****************************************************************************
    intc_axi Initialize
    ******************************************************************************/
    Status += Intc_Initialize(&Intc0,INTC_0_DEVICE_ID,"Intc0");

    /*****************************************************************************
    Gpio_axi Initialize
    ******************************************************************************/
    Status += GPIO_Initialize(&Gpio_led,GPIO_LED_DEVICE_ID,"GPIO_LED");
	XGpio_SetDataDirection(&Gpio_led, LED_CHANNEL, ~LED);

    /*****************************************************************************
    uart_axi Initialize
    ******************************************************************************/
	Status += UART_Initialize(&Uart1, UART1_DEVICE_ID,"Uart1");

	Status += UART_Initialize(&Uart2, UART2_DEVICE_ID,"Uart2");

	/*****************************************************************************
    IIC_axi Initialize
    ******************************************************************************/
    Status += IIC_axi_initialize(&IIC0,IIC_0_DEVICE_ID,"IIC0");


	/*****************************************************************************
    for interrupt system
    ******************************************************************************/
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XIntc_Connect(&Intc0, IIC_0_VEC_ID,
				   (XInterruptHandler) XIic_InterruptHandler,
				   &IIC0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller so interrupts are enabled for all
	 * devices that cause interrupts.
	 */
	Status = XIntc_Start(&Intc0, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Enable the interrupts for the IIC device.
	 */
	XIntc_Enable(&Intc0, IIC_0_VEC_ID);

	
	/*
	* Register the interrupt controller handler with the exception table.
	*/
	 Xil_ExceptionInit();
	 Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	 		 (Xil_ExceptionHandler)XIntc_InterruptHandler,
	 		 &Intc0);
	 Xil_ExceptionEnable();




	XIic_SetSendHandler(&IIC0, &IIC0,(XIic_Handler) SendHandler);
	XIic_SetRecvHandler(&IIC0, &IIC0,(XIic_Handler) ReceiveHandler);
	XIic_SetStatusHandler(&IIC0, &IIC0,(XIic_StatusHandler) StatusHandler);



    return  Status;
}
