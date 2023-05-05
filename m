Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C15E96F7C8F
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 07:50:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230354AbjEEFuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 01:50:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbjEEFt7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 01:49:59 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87998156AC
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 22:49:56 -0700 (PDT)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=igor.pengutronix.de)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1puoKI-00046m-Rk; Fri, 05 May 2023 07:49:54 +0200
References: <20230411083045.2850138-1-s.trumtrar@pengutronix.de>
 <20230411083045.2850138-2-s.trumtrar@pengutronix.de>
 <ebb3050c-c045-3758-5c23-349ab949340e@foss.st.com>
User-agent: mu4e 1.8.14; emacs 30.0.50
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v8 01/10] ARM: dts: stm32: Add alternate pinmux for
 ethernet
Date:   Fri, 05 May 2023 07:48:57 +0200
In-reply-to: <ebb3050c-c045-3758-5c23-349ab949340e@foss.st.com>
Message-ID: <87y1m31g5c.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2023-05-02 at 17:20 +02, Alexandre TORGUE <alexandre.torgue@foss.st.com> wrote:
> Hi Steffen
>
> On 4/11/23 10:30, Steffen Trumtrar wrote:
>> Add another option for the ethernet0 pins.
>> It is almost identical to ethernet0_rgmii_pins_c apart from TXD0/1.
>> This is used on the Phycore STM32MP1.
>> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
>> ---
>>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 50 ++++++++++++++++++++++++
>>   1 file changed, 50 insertions(+)
>> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
>> b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
>> index a9d2bec990141..1c97db4dbfc6d 100644
>> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
>> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
>> @@ -341,6 +341,56 @@ pins1 {
>>   		};
>>   	};
>>   +	ethernet0_rgmii_pins_d: rgmii-3 {
>> +		pins1 {
>> +			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
>> +				 <STM32_PINMUX('G', 13, AF11)>,	/* ETH_RGMII_TXD0 */
>> +				 <STM32_PINMUX('G', 14, AF11)>,	/* ETH_RGMII_TXD1 */
>> +				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
>> +				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
>> +				 <STM32_PINMUX('B', 11, AF11)>,	/* ETH_RGMII_TX_CTL */
>> +				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
>> +			bias-disable;
>> +			drive-push-pull;
>> +			slew-rate = <2>;
>> +		};
>> +		pins2 {
>> +			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
>> +			bias-disable;
>> +			drive-push-pull;
>> +			slew-rate = <0>;
>> +		};
>> +		pins3 {
>> +			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
>> +				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
>> +				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
>> +				 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
>> +				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
>> +				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
>> +			bias-disable;
>> +		};
>> +	};
>> +
>> +	ethernet0_rgmii_sleep_pins_d: rgmii-sleep-8 {
>
> Mistake here, it should be rgmii-sleep-3

Meh, good catch. You're right of course, will send a v9.


Thanks,
Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |
