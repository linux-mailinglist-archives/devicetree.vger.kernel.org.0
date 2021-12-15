Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9C3A475F8D
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 18:43:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234301AbhLORn2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 12:43:28 -0500
Received: from mx07-00178001.pphosted.com ([185.132.182.106]:42784 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232645AbhLORn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 12:43:27 -0500
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 1BFGovat014145;
        Wed, 15 Dec 2021 18:43:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=ycM4N0uy64wR1/3vvP+mqTytinbOJwEnhN6gwQx8mpQ=;
 b=rgGamqhiwt22+VQTB3U0PIRbvGa+Bha+2Qxwt00RCEE4NMa/8r0XM4HxKoJc8QTwtwC3
 k73cLuX2l5/a0ufleWfIppXN0DyKS/eskG0C5nVrbFiud/RqWy7KSWM2aNWqCXNkCIcV
 yz9U3tQlhWmhrYy/ptwAN4fkdAaFgmG2OJNngTMqIyIxWn4lxBZ8Y0igh0QJgkuRYzhy
 3QX2GyUFzg2n4jCV1xRgn9P6wJhSRLNb+jmMaIl5pLo7HLnIrly7f06SS0qiDAA9rxRJ
 a+Et243HAmkU+SSSL7agQ9fy1qEupd+VLwwxKrKKpOTFdQIELf8OxPqsY/Mkc9SF/QOP rg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3cyekaa546-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Wed, 15 Dec 2021 18:43:09 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C426510002A;
        Wed, 15 Dec 2021 18:43:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BBB292163EC;
        Wed, 15 Dec 2021 18:43:08 +0100 (CET)
Received: from [10.48.0.126] (10.75.127.49) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.26; Wed, 15 Dec
 2021 18:43:07 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Add timer interrupts
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <kernel@pengutronix.de>,
        Olivier MOYSAN <olivier.moysan@foss.st.com>
References: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
From:   Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Message-ID: <4ecadf77-0fa7-80eb-7f1f-0404a236ce58@foss.st.com>
Date:   Wed, 15 Dec 2021 18:43:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211215152535.41200-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-15_10,2021-12-14_01,2021-12-02_01
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/15/21 4:25 PM, Uwe Kleine-König wrote:
> The timer units in the stm32mp1 CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  .../bindings/mfd/st,stm32-timers.yaml         | 13 +++++++
>  arch/arm/boot/dts/stm32mp151.dtsi             | 34 +++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> index 10b330d42901..5e4214d1613b 100644
> --- a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> @@ -46,6 +46,19 @@ properties:
>      minItems: 1
>      maxItems: 7
>  
> +  interrupts:
> +    maxItems: 4
> +
> +  interrupt-names:
> +    anyOf:
> +      - items:
> +          - const: global
> +      - items:
> +          - const: brk
> +          - const: up
> +          - const: trg-com
> +          - const: cc
> +
>    "#address-cells":
>      const: 1

Hi Uwe,

Could you split dt-bindings into a separate patch ?

I'm a bit curious... I don't see driver update here, to use the timer
interrupts from the MFD, or child drivers.
Do you have particular use case in mind ?

Thanks,
Regards,
Fabrice

>  
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index 1cfc2f011e70..dab3972fcffd 100644
> --- a/arch/arm/boot/dts/stm32mp151.dtsi
> +++ b/arch/arm/boot/dts/stm32mp151.dtsi
> @@ -127,6 +127,8 @@ timers2: timer@40000000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40000000 0x400>;
> +			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM2_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 18 0x400 0x1>,
> @@ -160,6 +162,8 @@ timers3: timer@40001000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40001000 0x400>;
> +			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM3_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 23 0x400 0x1>,
> @@ -194,6 +198,8 @@ timers4: timer@40002000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40002000 0x400>;
> +			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM4_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 29 0x400 0x1>,
> @@ -226,6 +232,8 @@ timers5: timer@40003000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40003000 0x400>;
> +			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM5_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 55 0x400 0x1>,
> @@ -260,6 +268,8 @@ timers6: timer@40004000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40004000 0x400>;
> +			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM6_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 69 0x400 0x1>;
> @@ -278,6 +288,8 @@ timers7: timer@40005000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40005000 0x400>;
> +			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM7_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 70 0x400 0x1>;
> @@ -296,6 +308,8 @@ timers12: timer@40006000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40006000 0x400>;
> +			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM12_K>;
>  			clock-names = "int";
>  			status = "disabled";
> @@ -318,6 +332,8 @@ timers13: timer@40007000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40007000 0x400>;
> +			interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM13_K>;
>  			clock-names = "int";
>  			status = "disabled";
> @@ -340,6 +356,8 @@ timers14: timer@40008000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x40008000 0x400>;
> +			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM14_K>;
>  			clock-names = "int";
>  			status = "disabled";
> @@ -605,6 +623,11 @@ timers1: timer@44000000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44000000 0x400>;
> +			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "brk", "up", "trg-com", "cc";
>  			clocks = <&rcc TIM1_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 11 0x400 0x1>,
> @@ -641,6 +664,11 @@ timers8: timer@44001000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44001000 0x400>;
> +			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "brk", "up", "trg-com", "cc";
>  			clocks = <&rcc TIM8_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 47 0x400 0x1>,
> @@ -725,6 +753,8 @@ timers15: timer@44006000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44006000 0x400>;
> +			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM15_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 105 0x400 0x1>,
> @@ -752,6 +782,8 @@ timers16: timer@44007000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44007000 0x400>;
> +			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM16_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 109 0x400 0x1>,
> @@ -776,6 +808,8 @@ timers17: timer@44008000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44008000 0x400>;
> +			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM17_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 111 0x400 0x1>,
> 
> base-commit: 0bafb8f3ebc84525d0ae0fcea22d12151b99312f
> 
