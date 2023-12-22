/**
 * \file IfxEdsadc.c
 * \brief EDSADC  basic functionality
 *
 * \version iLLD_1_0_1_16_1
 * \copyright Copyright (c) 2022 Infineon Technologies AG. All rights reserved.
 *
 *
 *
 *                                 IMPORTANT NOTICE
 *
 * Use of this file is subject to the terms of use agreed between (i) you or
 * the company in which ordinary course of business you are acting and (ii)
 * Infineon Technologies AG or its licensees. If and as long as no such terms
 * of use are agreed, use of this file is subject to following:
 *
 * Boost Software License - Version 1.0 - August 17th, 2003
 *
 * Permission is hereby granted, free of charge, to any person or organization
 * obtaining a copy of the software and accompanying documentation covered by
 * this license (the "Software") to use, reproduce, display, distribute,
 * execute, and transmit the Software, and to prepare derivative works of the
 * Software, and to permit third-parties to whom the Software is furnished to
 * do so, all subject to the following:
 *
 * The copyright notices in the Software and this entire statement, including
 * the above license grant, this restriction and the following disclaimer, must
 * be included in all copies of the Software, in whole or in part, and all
 * derivative works of the Software, unless such copies or derivative works are
 * solely in the form of machine-executable object code generated by a source
 * language processor.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
 * SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
 * FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 *
 */

/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/

#include "IfxEdsadc.h"

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/

void IfxEdsadc_disableModule(Ifx_EDSADC *edsadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    edsadc->CLC.B.DISR = 1;

    IfxScuWdt_setCpuEndinit(passwd);
}


void IfxEdsadc_enableModule(Ifx_EDSADC *edsadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    edsadc->CLC.U = 0x00000000;

    if (edsadc->CLC.U)
    {}                       /* sync access */

    IfxScuWdt_setCpuEndinit(passwd);
}


volatile Ifx_SRC_SRCR *IfxEdsadc_getAuxSrc(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel)
{
    IFX_UNUSED_PARAMETER(edsadc);

    return &(MODULE_SRC.DSADC.DSADC[channel].SRA);
}


float32 IfxEdsadc_getIntegratorOutFreq(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel)
{
    float32             frequency = IfxEdsadc_getMainCombOutFreq(edsadc, channel);

    frequency = frequency / ((float32)1.0 + edsadc->CH[channel].IWCTR.B.NVALINT);
    Ifx_EDSADC_CH_FCFGM fcfgm = edsadc->CH[channel].FCFGM;

    if (fcfgm.B.FIR0EN != 0)
    {
        frequency = frequency / 2;
    }

    if (fcfgm.B.FIR1EN != 0)
    {
        frequency = frequency / 2;
    }

    return frequency;
}


float32 IfxEdsadc_getMainCombOutFreq(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel)
{
    float32 frequency = IfxEdsadc_getModulatorClockFreq(edsadc, channel);

    return frequency / ((float32)1.0 + edsadc->CH[channel].FCFGC.B.CFMDF);
}


float32 IfxEdsadc_getMainGroupDelay(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel)
{
    Ifx_EDSADC_CH_FCFGC fcfgc = edsadc->CH[channel].FCFGC;
    Ifx_EDSADC_CH_FCFGM fcfgm = edsadc->CH[channel].FCFGM;
    Ifx_EDSADC_CH_DICFG dicfg = edsadc->CH[channel].DICFG;
    Ifx_EDSADC_CH_IWCTR iwctr = edsadc->CH[channel].IWCTR;

    /* Modulator period */
    float32             tsMod = 1.0f / IfxEdsadc_getModulatorClockFreq(edsadc, channel);

    /* Decimation factor */
    uint32              N = fcfgc.B.CFMDF + 1;
    /* Integration */
    uint32              X = (dicfg.B.ITRMODE == IfxEdsadc_IntegratorTrigger_bypassed) ? 0 : iwctr.B.NVALINT + 1;

    /* PRE */
    uint32              PRE = fcfgm.B.PFEN != 0 ? 2 : 1;
    /* F0 */
    uint32              F0  = fcfgm.B.FIR0EN != 0 ? 2 : 1;
    /* F1 */
    uint32              F1  = (fcfgm.B.FIR1EN != 0) && (fcfgm.B.FIR1DEC != 0) ? 2 : 1;

    /* On-chip modulator delay */
    float32             onChipModulator  = 1.0f;
    /* Input select/adjust unit delay */
    float32             inputSelectUnit  = 0.5f;
    /* CIC3 delay */
    float32             cic3             = 3.0f * (N * PRE - 1) / 2.0f;
    /* FIR0 */
    float32             fir0             = (3.5f * N) * PRE;
    /* FIR1 */
    float32             fir1             = 13.5f * N * PRE * F0;
    /* Offset correction/compensation */
    float32             offsetCorrection = 0;
    /* Integrator */
    float32             integrator       = (X - 1.0f) * N * PRE * F0 * F1 / 2.0f;

    return (
        onChipModulator
        + inputSelectUnit
        + cic3
        + (fcfgm.B.FIR0EN != 0 ? fir0 : 0)
        + ((fcfgm.B.FIR1EN != 0) && (fcfgm.B.FIR1DEC != 0) ? fir1 : 0)
        + offsetCorrection
        + (dicfg.B.ITRMODE != IfxEdsadc_IntegratorTrigger_bypassed ? integrator : 0)
        ) * tsMod;
}


volatile Ifx_SRC_SRCR *IfxEdsadc_getMainSrc(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel)
{
    IFX_UNUSED_PARAMETER(edsadc);
    return &(MODULE_SRC.DSADC.DSADC[channel].SRM);
}


float32 IfxEdsadc_getModulatorClockFreq(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel)
{
    float32 sourceFreq = IfxEdsadc_getModulatorInputClockFreq(edsadc);

    return sourceFreq / (((edsadc->CH[channel].MODCFG.B.DIVM + 1) * 2) + 2);
}


float32 IfxEdsadc_getModulatorInputClockFreq(Ifx_EDSADC *edsadc)
{
    float32 result;

    IFX_UNUSED_PARAMETER(edsadc);

#ifdef IFX_CFG_AURIX_SCUCCU_USED
    result = IfxScuCcu_getSpbFrequency();
#else
    result = IfxScuCcu_getAdcFrequency();
#endif

    return result;
}


void IfxEdsadc_resetModule(Ifx_EDSADC *edsadc)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();

    IfxScuWdt_clearCpuEndinit(passwd);
    edsadc->KRST0.B.RST = 1;            /* Only if both Kernel reset bits are set a reset is executed */
    edsadc->KRST1.B.RST = 1;
    IfxScuWdt_setCpuEndinit(passwd);

    while (0 == edsadc->KRST0.B.RSTSTAT)    /* Wait until reset is executed */

    {}

    IfxScuWdt_clearCpuEndinit(passwd);
    edsadc->KRSTCLR.B.CLR = 1;          /* Clear Kernel reset status bit */
    IfxScuWdt_setCpuEndinit(passwd);
}


void IfxEdsadc_setCommonModeVoltage(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel, IfxEdsadc_FractionalRefVoltageSelection voltage, IfxEdsadc_FractionalRefVoltage refMode, uint8 positiveInput, uint8 negativeInput)
{
    Ifx_EDSADC_CH_VCM tempVCM;
    tempVCM.U                 = edsadc->CH[channel].VCM.U;
    tempVCM.B.VREFXSEL        = voltage;
    tempVCM.B.VXON            = refMode;
    tempVCM.U                |= positiveInput << IFX_EDSADC_CH_VCM_INPVC0_OFF;
    tempVCM.U                |= negativeInput << IFX_EDSADC_CH_VCM_INNVC0_OFF;
    edsadc->CH[channel].VCM.U = tempVCM.U;
}


void IfxEdsadc_setGainCorrectionFactor(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel, uint16 gainFactor, uint8 cicShift)
{
    Ifx_EDSADC_CH_GAINCORR tempGAINCORR;

    tempGAINCORR.U                 = edsadc->CH[channel].GAINCORR.U;
    tempGAINCORR.B.GAINFACTOR      = gainFactor;
    tempGAINCORR.B.CICSHIFT        = cicShift;
    edsadc->CH[channel].GAINCORR.U = tempGAINCORR.U;
}


void IfxEdsadc_setTimeStampCounter(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel, IfxEdsadc_TimeStampCounterClockSelection timeStampCounterClock, IfxEdsadc_TimeStampCounterControl runControl, IfxEdsadc_AnalogMux analogMuxCopy)
{
    Ifx_EDSADC_CH_TSCNT tempTSCNT;
    tempTSCNT.U                 = edsadc->CH[channel].TSCNT.U;
    tempTSCNT.B.TSCLK           = timeStampCounterClock;
    tempTSCNT.B.TSCRUN          = runControl;
    tempTSCNT.B.AMXCOPY         = analogMuxCopy;
    edsadc->CH[channel].TSCNT.U = tempTSCNT.U;
}


void IfxEdsadc_setGainControl(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel, uint16 gainFactor, uint8 cicShift, uint8 cicDecimationRate)
{
    Ifx_EDSADC_CH_GAINCTR tempGAINCTR;

    tempGAINCTR.U                 = edsadc->CH[channel].GAINCTR.U;
    tempGAINCTR.B.GAINFACTOR      = gainFactor;
    tempGAINCTR.B.CICSHIFT        = cicShift;
    tempGAINCTR.B.CICDEC          = cicDecimationRate;
    edsadc->CH[channel].GAINCTR.U = tempGAINCTR.U;
}


void IfxEdsadc_setGainCalibration(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel, uint16 calFactor, uint16 calTarget)
{
    Ifx_EDSADC_CH_GAINCAL tempGAINCAL;
    tempGAINCAL.U                 = edsadc->CH[channel].GAINCAL.U;
    tempGAINCAL.B.CALFACTOR       = calFactor;
    tempGAINCAL.B.CALTARGET       = calTarget;
    edsadc->CH[channel].GAINCAL.U = tempGAINCAL.U;
}


void IfxEdsadc_configureModulator(Ifx_EDSADC *edsadc, IfxEdsadc_ChannelId channel, IfxEdsadc_ModulatorConfig *config)
{
    Ifx_EDSADC_CH_MODCFG modcfg;

    modcfg.U                     = 0;

    modcfg.B.INCFGP              = config->positiveInput;
    modcfg.B.INCFGN              = config->negativeInput;
    modcfg.B.GAINSEL             = config->inputGain;
    modcfg.B.INSEL               = config->inputPin;
    modcfg.B.INMAC               = config->inputMuxActionControl;
    modcfg.B.INMODE              = config->triggerEvent;
    modcfg.B.INCWC               = 1; // enable write access for these bitfields
    modcfg.B.DIVM                = config->modulatorClockPeriod;
    modcfg.B.ACSD                = config->analogClockSyncDelay;
    modcfg.B.DITHEN              = config->ditheringEnabled;
    modcfg.B.IREN                = config->integratorResetEnabled;
    modcfg.B.MMWC                = 1; // enable write access for these bitfields

    edsadc->CH[channel].MODCFG.U = modcfg.U;
}
