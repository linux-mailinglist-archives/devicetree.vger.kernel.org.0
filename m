Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF2467350D
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 11:04:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230344AbjASKEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 05:04:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230353AbjASKEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 05:04:08 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43EAE6F88E
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 02:03:04 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pIRl8-0008IC-BF; Thu, 19 Jan 2023 11:03:02 +0100
Message-ID: <c461cdd8-2173-80e4-797d-c3d7555ca209@pengutronix.de>
Date:   Thu, 19 Jan 2023 11:02:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v7 1/3] arm64: dts: imx8mm-evk: move PMIC configuration
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc:     devicetree@vger.kernel.org, Richard Zhu <hongxing.zhu@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        linux-arm-kernel@lists.infradead.org
References: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
 <20230110152316.1149940-2-johannes.schneider@leica-geosystems.com>
 <20230119095112.mpo56lf4nd3udtht@pengutronix.de>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230119095112.mpo56lf4nd3udtht@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Marco,

On 19.01.23 10:51, Marco Felsch wrote:
> Do we really need to move it into another dtsi file? I would either
> suggest to move the pmic description into the .dts file since it is not
> common anymore. This way we can avoid the imx8mm-evk-rohm-pmic.dtsi.

The PMIC DTSIs were my suggestion. The Rohm PMIC is still common between
old LPDDR4 EVK and DDR4 EVK.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>  / {
>>  	model = "FSL i.MX8MM DDR4 EVK with CYW43455 WIFI/BT board";
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
>> new file mode 100644
>> index 000000000000..0b056996a27b
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
>> @@ -0,0 +1,118 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright 2020 NXP
>> + */
>> +
>> +&i2c1 {
>> +	pmic@4b {
>> +		compatible = "rohm,bd71847";
>> +		reg = <0x4b>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pinctrl_pmic>;
>> +		interrupt-parent = <&gpio1>;
>> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>> +		rohm,reset-snvs-powered;
>> +
>> +		#clock-cells = <0>;
>> +		clocks = <&osc_32k 0>;
>> +		clock-output-names = "clk-32k-out";
>> +
>> +		regulators {
>> +			buck1_reg: BUCK1 {
>> +				regulator-name = "buck1";
>> +				regulator-min-microvolt = <700000>;
>> +				regulator-max-microvolt = <1300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +				regulator-ramp-delay = <1250>;
>> +			};
>> +
>> +			buck2_reg: BUCK2 {
>> +				regulator-name = "buck2";
>> +				regulator-min-microvolt = <700000>;
>> +				regulator-max-microvolt = <1300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +				regulator-ramp-delay = <1250>;
>> +				rohm,dvs-run-voltage = <1000000>;
>> +				rohm,dvs-idle-voltage = <900000>;
>> +			};
>> +
>> +			buck3_reg: BUCK3 {
>> +				// BUCK5 in datasheet
>> +				regulator-name = "buck3";
>> +				regulator-min-microvolt = <700000>;
>> +				regulator-max-microvolt = <1350000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			buck4_reg: BUCK4 {
>> +				// BUCK6 in datasheet
>> +				regulator-name = "buck4";
>> +				regulator-min-microvolt = <3000000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			buck5_reg: BUCK5 {
>> +				// BUCK7 in datasheet
>> +				regulator-name = "buck5";
>> +				regulator-min-microvolt = <1605000>;
>> +				regulator-max-microvolt = <1995000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			buck6_reg: BUCK6 {
>> +				// BUCK8 in datasheet
>> +				regulator-name = "buck6";
>> +				regulator-min-microvolt = <800000>;
>> +				regulator-max-microvolt = <1400000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldo1_reg: LDO1 {
>> +				regulator-name = "ldo1";
>> +				regulator-min-microvolt = <1600000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldo2_reg: LDO2 {
>> +				regulator-name = "ldo2";
>> +				regulator-min-microvolt = <800000>;
>> +				regulator-max-microvolt = <900000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldo3_reg: LDO3 {
>> +				regulator-name = "ldo3";
>> +				regulator-min-microvolt = <1800000>;
>> +				regulator-max-microvolt = <3300000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldo4_reg: LDO4 {
>> +				regulator-name = "ldo4";
>> +				regulator-min-microvolt = <900000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +
>> +			ldo6_reg: LDO6 {
>> +				regulator-name = "ldo6";
>> +				regulator-min-microvolt = <900000>;
>> +				regulator-max-microvolt = <1800000>;
>> +				regulator-boot-on;
>> +				regulator-always-on;
>> +			};
>> +		};
>> +	};
>> +};
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
>> index a2b24d4d4e3e..d2b6d7de7e53 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
>> @@ -7,6 +7,7 @@
>>  
>>  #include <dt-bindings/usb/pd.h>
>>  #include "imx8mm-evk.dtsi"
>> +#include "imx8mm-evk-rohm-pmic.dtsi"
>>  
>>  / {
>>  	model = "FSL i.MX8MM EVK board";
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
>> index 7d6317d95b13..21d0614af44c 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
>> @@ -182,118 +182,6 @@ &i2c1 {
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&pinctrl_i2c1>;
>>  	status = "okay";
>> -
>> -	pmic@4b {
>> -		compatible = "rohm,bd71847";
>> -		reg = <0x4b>;
>> -		pinctrl-names = "default";
>> -		pinctrl-0 = <&pinctrl_pmic>;
>> -		interrupt-parent = <&gpio1>;
>> -		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>> -		rohm,reset-snvs-powered;
>> -
>> -		#clock-cells = <0>;
>> -		clocks = <&osc_32k 0>;
>> -		clock-output-names = "clk-32k-out";
>> -
>> -		regulators {
>> -			buck1_reg: BUCK1 {
>> -				regulator-name = "buck1";
>> -				regulator-min-microvolt = <700000>;
>> -				regulator-max-microvolt = <1300000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -				regulator-ramp-delay = <1250>;
>> -			};
>> -
>> -			buck2_reg: BUCK2 {
>> -				regulator-name = "buck2";
>> -				regulator-min-microvolt = <700000>;
>> -				regulator-max-microvolt = <1300000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -				regulator-ramp-delay = <1250>;
>> -				rohm,dvs-run-voltage = <1000000>;
>> -				rohm,dvs-idle-voltage = <900000>;
>> -			};
>> -
>> -			buck3_reg: BUCK3 {
>> -				// BUCK5 in datasheet
>> -				regulator-name = "buck3";
>> -				regulator-min-microvolt = <700000>;
>> -				regulator-max-microvolt = <1350000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			buck4_reg: BUCK4 {
>> -				// BUCK6 in datasheet
>> -				regulator-name = "buck4";
>> -				regulator-min-microvolt = <3000000>;
>> -				regulator-max-microvolt = <3300000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			buck5_reg: BUCK5 {
>> -				// BUCK7 in datasheet
>> -				regulator-name = "buck5";
>> -				regulator-min-microvolt = <1605000>;
>> -				regulator-max-microvolt = <1995000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			buck6_reg: BUCK6 {
>> -				// BUCK8 in datasheet
>> -				regulator-name = "buck6";
>> -				regulator-min-microvolt = <800000>;
>> -				regulator-max-microvolt = <1400000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			ldo1_reg: LDO1 {
>> -				regulator-name = "ldo1";
>> -				regulator-min-microvolt = <1600000>;
>> -				regulator-max-microvolt = <3300000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			ldo2_reg: LDO2 {
>> -				regulator-name = "ldo2";
>> -				regulator-min-microvolt = <800000>;
>> -				regulator-max-microvolt = <900000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			ldo3_reg: LDO3 {
>> -				regulator-name = "ldo3";
>> -				regulator-min-microvolt = <1800000>;
>> -				regulator-max-microvolt = <3300000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			ldo4_reg: LDO4 {
>> -				regulator-name = "ldo4";
>> -				regulator-min-microvolt = <900000>;
>> -				regulator-max-microvolt = <1800000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -
>> -			ldo6_reg: LDO6 {
>> -				regulator-name = "ldo6";
>> -				regulator-min-microvolt = <900000>;
>> -				regulator-max-microvolt = <1800000>;
>> -				regulator-boot-on;
>> -				regulator-always-on;
>> -			};
>> -		};
>> -	};
>>  };
>>  
>>  &i2c2 {
>> -- 
>> 2.25.1
>>
>>
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

