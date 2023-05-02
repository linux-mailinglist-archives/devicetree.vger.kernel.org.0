Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCF136F46F5
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 17:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234565AbjEBPVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 11:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234407AbjEBPVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 11:21:07 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A9F519D
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 08:21:03 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 342DAHRq004639;
        Tue, 2 May 2023 17:20:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=1qvqglpRTIs9Plz1+tVBVNIDgzy97cte54MqficYL1A=;
 b=IuSoldTdoIX+wgbSNYEs5028/1CqaDrykz9M8SHUJY926TYl32edMLS3ECRy2RFjXaIP
 FHYze0r/TegXOgBS2hCTGWcmWGrhMWAnnRAuWPxr2rvJkcUSePRqPYqy8ZKBOF5J/3p3
 0ooerTZTIUVcVJmnDvZJr2De6f1pe3qVQJzcs5mEQBKKUYk48PweYDMTkymTtb/HeS7G
 6cJ7TjSOgW0BfmrHeDxaZC0cVAgTCx7GyeVQZa9GXpfA6ShNLQp1yub0/8oqwLhxXdr9
 kUONzIhghmHphiGGEdLGmy0bLf+UtqN7y5opkBBAkWppodywSZIQ9p3QcVEXH0DiC8Q8 pg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3qayunjah9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 02 May 2023 17:20:50 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 398D810002A;
        Tue,  2 May 2023 17:20:47 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2F2CF2278B4;
        Tue,  2 May 2023 17:20:47 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Tue, 2 May
 2023 17:20:46 +0200
Message-ID: <ebb3050c-c045-3758-5c23-349ab949340e@foss.st.com>
Date:   Tue, 2 May 2023 17:20:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 01/10] ARM: dts: stm32: Add alternate pinmux for
 ethernet
Content-Language: en-US
To:     Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        <linux-stm32@st-md-mailman.stormreply.com>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
References: <20230411083045.2850138-1-s.trumtrar@pengutronix.de>
 <20230411083045.2850138-2-s.trumtrar@pengutronix.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20230411083045.2850138-2-s.trumtrar@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-02_09,2023-04-27_01,2023-02-09_01
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Steffen

On 4/11/23 10:30, Steffen Trumtrar wrote:
> Add another option for the ethernet0 pins.
> It is almost identical to ethernet0_rgmii_pins_c apart from TXD0/1.
> 
> This is used on the Phycore STM32MP1.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 50 ++++++++++++++++++++++++
>   1 file changed, 50 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index a9d2bec990141..1c97db4dbfc6d 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -341,6 +341,56 @@ pins1 {
>   		};
>   	};
>   
> +	ethernet0_rgmii_pins_d: rgmii-3 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
> +				 <STM32_PINMUX('G', 13, AF11)>,	/* ETH_RGMII_TXD0 */
> +				 <STM32_PINMUX('G', 14, AF11)>,	/* ETH_RGMII_TXD1 */
> +				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
> +				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
> +				 <STM32_PINMUX('B', 11, AF11)>,	/* ETH_RGMII_TX_CTL */
> +				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <2>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins3 {
> +			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
> +				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
> +				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
> +				 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
> +				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
> +				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
> +			bias-disable;
> +		};
> +	};
> +
> +	ethernet0_rgmii_sleep_pins_d: rgmii-sleep-8 {

Mistake here, it should be rgmii-sleep-3

> +		pins1 {
> +			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
> +				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
> +				 <STM32_PINMUX('G', 13, ANALOG)>, /* ETH_RGMII_TXD0 */
> +				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
> +				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
> +				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
> +				 <STM32_PINMUX('B', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
> +				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
> +				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
> +				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
> +				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
> +				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
> +				 <STM32_PINMUX('B', 1, ANALOG)>, /* ETH_RGMII_RXD3 */
> +				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
> +				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
> +		};
> +	};
> +
>   	ethernet0_rmii_pins_a: rmii-0 {
>   		pins1 {
>   			pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH1_RMII_TXD0 */

