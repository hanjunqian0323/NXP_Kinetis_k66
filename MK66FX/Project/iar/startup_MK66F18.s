; * ----------------------------------------------------------------------------
; *  @file:    startup_MK66F18.s
; *  @purpose: CMSIS Cortex-M4 Core Device Startup File
; *            MK66F18
; *  @version: 4.0
; *  @date:    2019-7-22
; *  @build:   Kinetis_K66
; *  @author:  SOLA
; * ----------------------------------------------------------------------------

 MODULE  ?cstartup
 
        ;;Forward declaration of sections.
        SECTION CSTACK:DATA:NOROOT(3)

        SECTION .intvec:CODE:NOROOT(2)

        ;EXTERN  __iar_program_start
        EXTERN  SystemInit
        PUBLIC  __vector_table

        DATA
        
__vector_table
                ;DCD     __initial_sp  ; Top of Stack
                DCD     sfe(CSTACK)
                DCD     Reset_Handler  ; Reset Handler
                DCD     NMI_Handler                         ;NMI Handler
                DCD     HardFault_Handler                   ;Hard Fault Handler
                DCD     MemManage_Handler                   ;MPU Fault Handler
                DCD     BusFault_Handler                    ;Bus Fault Handler
                DCD     UsageFault_Handler                  ;Usage Fault Handler
                DCD     0                                   ;Reserved
                DCD     0                                   ;Reserved
                DCD     0                                   ;Reserved
                DCD     0                                   ;Reserved
                DCD     SVC_Handler                         ;SVCall Handler
                DCD     DebugMon_Handler                    ;Debug Monitor Handler
                DCD     0                                   ;Reserved
                DCD     PendSV_Handler                      ;PendSV Handler
                DCD     SysTick_Handler                     ;SysTick Handler

                ;Extern Interrupt                                        ;External Interrupts
                DCD     DMA0_DMA16_IRQHandler               ;DMA Channel 0, 16 Transfer Complete
                DCD     DMA1_DMA17_IRQHandler               ;DMA Channel 1, 17 Transfer Complete
                DCD     DMA2_DMA18_IRQHandler               ;DMA Channel 2, 18 Transfer Complete
                DCD     DMA3_DMA19_IRQHandler               ;DMA Channel 3, 19 Transfer Complete
                DCD     DMA4_DMA20_IRQHandler               ;DMA Channel 4, 20 Transfer Complete
                DCD     DMA5_DMA21_IRQHandler               ;DMA Channel 5, 21 Transfer Complete
DCD     DMA6_DMA22_IRQHandler               ;DMA Channel 6, 22 Transfer Complete
                DCD     DMA7_DMA23_IRQHandler               ;DMA Channel 7, 23 Transfer Complete
                DCD     DMA8_DMA24_IRQHandler               ;DMA Channel 8, 24 Transfer Complete
                DCD     DMA9_DMA25_IRQHandler               ;DMA Channel 9, 25 Transfer Complete
                DCD     DMA10_DMA26_IRQHandler              ;DMA Channel 10, 26 Transfer Complete
                DCD     DMA11_DMA27_IRQHandler              ;DMA Channel 11, 27 Transfer Complete
                DCD     DMA12_DMA28_IRQHandler              ;DMA Channel 12, 28 Transfer Complete
                DCD     DMA13_DMA29_IRQHandler              ;DMA Channel 13, 29 Transfer Complete
                DCD     DMA14_DMA30_IRQHandler              ;DMA Channel 14, 30 Transfer Complete
                DCD     DMA15_DMA31_IRQHandler              ;DMA Channel 15, 31 Transfer Complete
                DCD     DMA_Error_IRQHandler                ;DMA Error Interrupt
                DCD     MCM_IRQHandler                      ;Normal Interrupt
                DCD     FTFE_IRQHandler                     ;FTFE Command complete interrupt
                DCD     Read_Collision_IRQHandler           ;Read Collision Interrupt
                DCD     LVD_LVW_IRQHandler                  ;Low Voltage Detect, Low Voltage Warning
                DCD     LLWU_IRQHandler                     ;Low Leakage Wakeup Unit
                DCD     WDOG_EWM_IRQHandler                 ;WDOG Interrupt
                DCD     RNG_IRQHandler                      ;RNG Interrupt
                DCD     I2C0_IRQHandler                     ;I2C0 interrupt
                DCD     I2C1_IRQHandler                     ;I2C1 interrupt
                DCD     SPI0_IRQHandler                     ;SPI0 Interrupt
                DCD     SPI1_IRQHandler                     ;SPI1 Interrupt
                DCD     I2S0_Tx_IRQHandler                  ;I2S0 transmit interrupt
                DCD     I2S0_Rx_IRQHandler                  ;I2S0 receive interrupt
                DCD     Reserved46_IRQHandler               ;Reserved interrupt 46
                DCD     UART0_RX_TX_IRQHandler              ;UART0 Receive/Transmit interrupt
                DCD     UART0_ERR_IRQHandler                ;UART0 Error interrupt
                DCD     UART1_RX_TX_IRQHandler              ;UART1 Receive/Transmit interrupt
                DCD     UART1_ERR_IRQHandler                ;UART1 Error interrupt
                DCD     UART2_RX_TX_IRQHandler              ;UART2 Receive/Transmit interrupt
                DCD     UART2_ERR_IRQHandler                ;UART2 Error interrupt
                DCD     UART3_RX_TX_IRQHandler              ;UART3 Receive/Transmit interrupt
                DCD     UART3_ERR_IRQHandler                ;UART3 Error interrupt
                DCD     ADC0_IRQHandler                     ;ADC0 interrupt
                DCD     CMP0_IRQHandler                     ;CMP0 interrupt
                DCD     CMP1_IRQHandler                     ;CMP1 interrupt
                DCD     FTM0_IRQHandler                     ;FTM0 fault, overflow and channels interrupt
                DCD     FTM1_IRQHandler                     ;FTM1 fault, overflow and channels interrupt
                DCD     FTM2_IRQHandler                     ;FTM2 fault, overflow and channels interrupt
                DCD     CMT_IRQHandler                      ;CMT interrupt
                DCD     RTC_IRQHandler                      ;RTC interrupt
                DCD     RTC_Seconds_IRQHandler              ;RTC seconds interrupt
                DCD     PIT0_IRQHandler                     ;PIT timer channel 0 interrupt
                DCD     PIT1_IRQHandler                     ;PIT timer channel 1 interrupt
                DCD     PIT2_IRQHandler                     ;PIT timer channel 2 interrupt
                DCD     PIT3_IRQHandler                     ;PIT timer channel 3 interrupt
                DCD     PDB0_IRQHandler                     ;PDB0 Interrupt
                DCD     USB0_IRQHandler                     ;USB0 interrupt
                DCD     USBDCD_IRQHandler                   ;USBDCD Interrupt
                DCD     Reserved71_IRQHandler               ;Reserved interrupt 71
                DCD     DAC0_IRQHandler                     ;DAC0 interrupt
                DCD     MCG_IRQHandler                      ;MCG Interrupt
                DCD     LPTMR0_IRQHandler                   ;LPTimer interrupt
                DCD     PORTA_IRQHandler                    ;Port A interrupt
                DCD     PORTB_IRQHandler                    ;Port B interrupt
                DCD     PORTC_IRQHandler                    ;Port C interrupt
                DCD     PORTD_IRQHandler                    ;Port D interrupt
                DCD     PORTE_IRQHandler                    ;Port E interrupt
                DCD     SWI_IRQHandler                      ;Software interrupt
                DCD     SPI2_IRQHandler                     ;SPI2 Interrupt
                DCD     UART4_RX_TX_IRQHandler              ;UART4 Receive/Transmit interrupt
                DCD     UART4_ERR_IRQHandler                ;UART4 Error interrupt
                DCD     Reserved84_IRQHandler               ;Reserved interrupt 84
                DCD     Reserved85_IRQHandler               ;Reserved interrupt 85
                DCD     CMP2_IRQHandler                     ;CMP2 interrupt
                DCD     FTM3_IRQHandler                     ;FTM3 fault, overflow and channels interrupt
                DCD     DAC1_IRQHandler                     ;DAC1 interrupt
                DCD     ADC1_IRQHandler                     ;ADC1 interrupt
                DCD     I2C2_IRQHandler                     ;I2C2 interrupt
                DCD     CAN0_ORed_Message_buffer_IRQHandler ;CAN0 OR'd message buffers interrupt
                DCD     CAN0_Bus_Off_IRQHandler             ;CAN0 bus off interrupt
                DCD     CAN0_Error_IRQHandler               ;CAN0 error interrupt
                DCD     CAN0_Tx_Warning_IRQHandler          ;CAN0 Tx warning interrupt
                DCD     CAN0_Rx_Warning_IRQHandler          ;CAN0 Rx warning interrupt
                DCD     CAN0_Wake_Up_IRQHandler             ;CAN0 wake up interrupt
                DCD     SDHC_IRQHandler                     ;SDHC interrupt
                DCD     ENET_1588_Timer_IRQHandler          ;Ethernet MAC IEEE 1588 Timer Interrupt
                DCD     ENET_Transmit_IRQHandler            ;Ethernet MAC Transmit Interrupt
                DCD     ENET_Receive_IRQHandler             ;Ethernet MAC Receive Interrupt
                DCD     ENET_Error_IRQHandler               ;Ethernet MAC Error and miscelaneous Interrupt
                DCD     LPUART0_IRQHandler                  ;LPUART0 status/error interrupt
                DCD     TSI0_IRQHandler                     ;TSI0 interrupt
                DCD     TPM1_IRQHandler                     ;TPM1 fault, overflow and channels interrupt
                DCD     TPM2_IRQHandler                     ;TPM2 fault, overflow and channels interrupt
                DCD     USBHSDCD_IRQHandler                 ;USBHSDCD, USBHS Phy Interrupt
                DCD     I2C3_IRQHandler                     ;I2C3 interrupt
                DCD     CMP3_IRQHandler                     ;CMP3 interrupt
                DCD     USBHS_IRQHandler                    ;USB high speed OTG interrupt
                DCD     CAN1_ORed_Message_buffer_IRQHandler ;CAN1 OR'd message buffers interrupt
                DCD     CAN1_Bus_Off_IRQHandler             ;CAN1 bus off interrupt
                DCD     CAN1_Error_IRQHandler               ;CAN1 error interrupt
                DCD     CAN1_Tx_Warning_IRQHandler          ;CAN1 Tx warning interrupt
                DCD     CAN1_Rx_Warning_IRQHandler          ;CAN1 Rx warning interrupt
                DCD     CAN1_Wake_Up_IRQHandler             ;CAN1 wake up interrupt
                DCD     0xFFFFFFFF                          ; Reserved for user TRIM value
                
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                
                THUMB
        PUBWEAK Reset_Handler
        SECTION .text:CODE:NOROOT:REORDER(2)
Reset_Handler

        LDR     R0, =SystemInit
        BLX     R0
        ;LDR     R0, =__iar_program_start
        ;BX      R0
        
         PUBWEAK NMI_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
NMI_Handler
        B NMI_Handler

        PUBWEAK HardFault_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
HardFault_Handler
        B HardFault_Handler

        PUBWEAK MemManage_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
MemManage_Handler
        B MemManage_Handler

        PUBWEAK BusFault_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
BusFault_Handler
        B BusFault_Handler

        PUBWEAK UsageFault_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
UsageFault_Handler
        B UsageFault_Handler

        PUBWEAK SVC_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
SVC_Handler
        B SVC_Handler

        PUBWEAK DebugMon_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
DebugMon_Handler
        B DebugMon_Handler

        PUBWEAK PendSV_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
PendSV_Handler
        B PendSV_Handler

        PUBWEAK SysTick_Handler
        SECTION .text:CODE:NOROOT:REORDER(1)
SysTick_Handler
        B SysTick_Handler

        PUBWEAK WWDG_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
WWDG_IRQHandler
        B WWDG_IRQHandler

        PUBWEAK PVD_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
PVD_IRQHandler
        B PVD_IRQHandler
        
        PUBWEAK DMA0_DMA16_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA0_DMA16_IRQHandler
        B DMA0_DMA16_IRQHandler
        
        PUBWEAK DMA1_DMA17_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA1_DMA17_IRQHandler
        B DMA1_DMA17_IRQHandler
        
        PUBWEAK DMA2_DMA18_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA2_DMA18_IRQHandler
        B DMA2_DMA18_IRQHandler
        
        PUBWEAK DMA3_DMA19_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA3_DMA19_IRQHandler
        B DMA3_DMA19_IRQHandler
        
        PUBWEAK DMA4_DMA20_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA4_DMA20_IRQHandler
        B DMA4_DMA20_IRQHandler
        
        PUBWEAK DMA5_DMA21_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA5_DMA21_IRQHandler
        B DMA5_DMA21_IRQHandler
        
        PUBWEAK DMA6_DMA22_IRQHandler
        SECTION .text:CODE:NOROOT:REORDER(1)
DMA6_DMA22_IRQHandler
        B DMA6_DMA22_IRQHandler
        
        END
                