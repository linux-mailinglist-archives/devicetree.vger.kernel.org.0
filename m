Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED0B52ED45
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 15:37:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349867AbiETNhv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 09:37:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345592AbiETNhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 09:37:48 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C699AABF69
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 06:37:45 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24K8Zk4R020575;
        Fri, 20 May 2022 15:37:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=RaAxrMrTs+miyXLoIokOwv2YkNg3Rluz8qGa0ZB8SJw=;
 b=WWDd6v6LY5lEzVBOuBzo18RQaV1q1OFdgCFfI39srh+Yw4ozXmyqusDyJZla7EivTegG
 ePl7u3iJGj0vclRFxfXkCZeypN6z+SB73VfYEKmTw9YbuuzbXZEHJCZIkL3lMI5BCgll
 xZVpMHeWcHnPjm9cIu55JZ9Ftu5eoAWkQWSCmLPyR/wnx5DLc5C4HYITlRoUyFKs+LUq
 am0dDcgUzaAesDI/G2bBBfZ07HxVby4eOdYgtI79X9AAPuOs/4fe6jXJoJswn9c1yTgn
 SgLPnvzwSeVX7g8EbosZX3Jrxad5U953ivyZpQJLZPoXCuCLCsGFIT2elh8yh+lcoOxP FA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3g23aj8gy7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Fri, 20 May 2022 15:37:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 30B1F100044;
        Fri, 20 May 2022 15:37:17 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 128FF233C71;
        Fri, 20 May 2022 15:37:07 +0200 (CEST)
Received: from [10.48.1.102] (10.75.127.46) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2308.20; Fri, 20 May
 2022 15:37:05 +0200
Message-ID: <d47fecb5-9f62-292b-f797-d63a771133df@foss.st.com>
Date:   Fri, 20 May 2022 15:37:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 2/2] ARM: dts: stm32mp15x: Add timer interrupts
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>
CC:     <devicetree@vger.kernel.org>, <kernel@pengutronix.de>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>
References: <20220519162838.695404-1-u.kleine-koenig@pengutronix.de>
 <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
From:   Fabrice Gasnier <fabrice.gasnier@foss.st.com>
In-Reply-To: <20220519162838.695404-2-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-20_04,2022-05-20_02,2022-02-23_01
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/19/22 18:28, Uwe Kleine-König wrote:
> The timer units in the stm32mp15x CPUs have interrupts, depending on the
> timer flavour either one "global" or four dedicated ones. Add the irqs
> to the timer units on stm32mp15x.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Hi Uwe,

You can add my:
Reviewed-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Best Regards,
Thanks
Fabrice

> ---
>  arch/arm/boot/dts/stm32mp151.dtsi | 34 +++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
> index f9aa9af31efd..ae290a04771a 100644
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
> @@ -623,6 +641,11 @@ timers1: timer@44000000 {
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
> @@ -659,6 +682,11 @@ timers8: timer@44001000 {
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
> @@ -746,6 +774,8 @@ timers15: timer@44006000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44006000 0x400>;
> +			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM15_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 105 0x400 0x1>,
> @@ -773,6 +803,8 @@ timers16: timer@44007000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44007000 0x400>;
> +			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM16_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 109 0x400 0x1>,
> @@ -797,6 +829,8 @@ timers17: timer@44008000 {
>  			#size-cells = <0>;
>  			compatible = "st,stm32-timers";
>  			reg = <0x44008000 0x400>;
> +			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global";
>  			clocks = <&rcc TIM17_K>;
>  			clock-names = "int";
>  			dmas = <&dmamux1 111 0x400 0x1>,
