/**
 * \file
 * \brief ATXMEGA's ATCA Hardware abstraction layer for SWI interface over UART drivers.
 *
 * Prerequisite: add UART Polled support to application in Atmel Studio
 *
 * \copyright (c) 2015-2020 Microchip Technology Inc. and its subsidiaries.
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT,
 * SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE
 * OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF
 * MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE
 * FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL
 * LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED
 * THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR
 * THIS SOFTWARE.
 */

#include <stdlib.h>
#include <stdio.h>

#include "swi_uart_samd21_plib.h"
#include "atca_helpers.h"

/** \defgroup hal_ Hardware abstraction layer (hal_)
 *
 * \brief
 * These methods define the hardware abstraction layer for communicating with a CryptoAuth device
 *
   @{ */

/** \brief Implementation of SWI UART init.
 * \param[in] instance  instance
 * \return ATCA_SUCCESS on success, otherwise an error code.
 */
ATCA_STATUS swi_uart_init(ATCASWIMaster_t *instance)
{
    ATCA_STATUS status = ATCA_SUCCESS;
    instance->bus_index = 0;
    instance->ref_ct = 0;
    //SERCOM2_USART_Initialize();
    return status;
}

/** \brief Implementation of SWI UART deinit.
 * \param[in] instance  instance
 * \return ATCA_SUCCESS on success, otherwise an error code.
 */
ATCA_STATUS swi_uart_deinit(ATCASWIMaster_t *instance)
{
    ATCA_STATUS status = ATCA_SUCCESS;

    return status;
}

/** \brief implementation of SWI UART change baudrate.
 * \param[in] instance  instance
 * \param[in] baudrate (typically 230400 , 160000 or 115200)
 */
void swi_uart_setbaud(ATCASWIMaster_t *instance, uint32_t baudrate)
{
    USART_SERIAL_SETUP setup;

    setup.baudRate = baudrate;
    setup.dataWidth  = USART_DATA_7_BIT;
    setup.parity = USART_PARITY_NONE;
    setup.stopBits = USART_STOP_1_BIT;
    SERCOM2_USART_SerialSetup(&setup, 0);
}

/* SERCOM2 USART baud value for 230400 Hz baud rate */
#define SERCOM2_USART_INT_BAUD_VALUE_230400            (60502U)

/* SERCOM2 USART baud value for 175000 Hz baud rate */
#define SERCOM2_USART_INT_BAUD_VALUE_175000            (61713U)

/** \brief implementation of SWI UART change mode.
 * \param[in] instance  instance
 * \param[in] mode (TRANSMIT_MODE or RECEIVE_MODE)
 */
void swi_uart_mode(ATCASWIMaster_t *instance, uint8_t mode)
{
    /* Disable the USART before configurations */
    SERCOM2_REGS->USART_INT.SERCOM_CTRLA &= ~SERCOM_USART_INT_CTRLA_ENABLE_Msk;
    /* Wait for sync */
    while(SERCOM2_REGS->USART_INT.SERCOM_SYNCBUSY);

    if (mode == TRANSMIT_MODE)
    {
        /* Configure Baud Rate */
        SERCOM2_REGS->USART_INT.SERCOM_BAUD = SERCOM_USART_INT_BAUD_BAUD(SERCOM2_USART_INT_BAUD_VALUE_230400);
        SERCOM2_REGS->USART_INT.SERCOM_CTRLB = (SERCOM2_REGS->USART_INT.SERCOM_CTRLB & ~(SERCOM_USART_INT_CTRLB_RXEN_Msk | SERCOM_USART_INT_CTRLB_TXEN_Msk)) | SERCOM_USART_INT_CTRLB_TXEN_Msk;
    }
    else if (mode == RECEIVE_MODE)
    {
        /* Configure Baud Rate */
        SERCOM2_REGS->USART_INT.SERCOM_BAUD = SERCOM_USART_INT_BAUD_BAUD(SERCOM2_USART_INT_BAUD_VALUE_175000);
        SERCOM2_REGS->USART_INT.SERCOM_CTRLB = (SERCOM2_REGS->USART_INT.SERCOM_CTRLB & ~(SERCOM_USART_INT_CTRLB_RXEN_Msk | SERCOM_USART_INT_CTRLB_TXEN_Msk)) | SERCOM_USART_INT_CTRLB_RXEN_Msk;
    }

    /* Wait for sync */
    while(SERCOM2_REGS->USART_INT.SERCOM_SYNCBUSY);

    /* Enable the USART after the configurations */
    SERCOM2_REGS->USART_INT.SERCOM_CTRLA |= SERCOM_USART_INT_CTRLA_ENABLE_Msk;

    /* Wait for sync */
    while(SERCOM2_REGS->USART_INT.SERCOM_SYNCBUSY);
}

/** \brief discover UART buses available for this hardware
 * this maintains a list of logical to physical bus mappings freeing the application
 * of the a-priori knowledge
 * \param[in] swi_uart_buses - an array of logical bus numbers
 * \param[in] max_buses - maximum number of buses the app wants to attempt to discover
 */
void swi_uart_discover_buses(int swi_uart_buses[], int max_buses)
{
    /* if every SERCOM was a likely candidate bus, then would need to initialize the entire array to all SERCOM n numbers.
     * As an optimization and making discovery safer, make assumptions about bus-num / SERCOM map based on SAMD21 Xplained Pro board
     * If you were using a raw SAMD21 on your own board, you would supply your own bus numbers based on your particular hardware configuration.
     */
    swi_uart_buses[0] = 4;   // default samd21 for xplained dev board
}

/** \brief HAL implementation of SWI UART send byte over ASF.  This function send one byte over UART
 * \param[in] instance  instance
 * \param[in] data      number of byte to send
 * \return ATCA_SUCCESS on success, otherwise an error code.
 */
ATCA_STATUS swi_uart_send_byte(ATCASWIMaster_t *instance, uint8_t data)
{
    // Send one byte over UART module
    SERCOM2_USART_WriteByte(data);
    while(!SERCOM2_USART_TransmitComplete());
    return ATCA_SUCCESS;
}

/** \brief HAL implementation of SWI UART receive bytes over ASF.  This function receive one byte over UART
 * \param[in]    instance instance
 * \param[out] data     pointer to space to receive the data
 * \return ATCA_SUCCESS on success, otherwise an error code.
 */
ATCA_STATUS swi_uart_receive_byte(ATCASWIMaster_t *instance, uint8_t *data)
{
    int32_t retries = 1000; // This retry is used to compensate the baudrate that do not match when receiving response

    do {
        retries--;
    } while (retries > 0 && !SERCOM2_USART_ReceiverIsReady());

    if (retries <= 0x00)
    {
        return ATCA_TIMEOUT;
    }
    else
    {
        // Receive one byte over UART module
        *data = SERCOM2_USART_ReadByte();
        return ATCA_SUCCESS;
    }
}

/** @} */
