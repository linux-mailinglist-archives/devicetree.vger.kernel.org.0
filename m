Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F7B866244E
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 12:37:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236937AbjAILhh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 06:37:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236945AbjAILhO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 06:37:14 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DDBCBA8
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 03:36:40 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pEqSD-00042T-D4; Mon, 09 Jan 2023 12:36:37 +0100
Message-ID: <a6298f1d-7056-573a-6a3b-27cce7d19ddf@pengutronix.de>
Date:   Mon, 9 Jan 2023 12:36:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/2][v3] arm64: dts: imx8mm-evk: move PMIC setup of A53
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230104130511.1560237-1-johannes.schneider@leica-geosystems.com>
 <20230104130511.1560237-2-johannes.schneider@leica-geosystems.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230104130511.1560237-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX maintainers and LAKML are still missing.

On 04.01.23 14:05, Johannes Schneider wrote:
> from the dtsi to the two dts's

I think a imx8mm-evk-rohm-pmic.dtsi (or some other name)
is worthwhile to avoid the duplication.

> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 130 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 130 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 128 -----------------
>  3 files changed, 260 insertions(+), 128 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> index 6c079c0a3a48..8274ddee49ac 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> @@ -55,3 +55,133 @@ MX8MM_IOMUXC_NAND_CE3_B_GPIO3_IO4	0x19
>  		>;
>  	};
>  };
> +
> +&A53_0 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&i2c1 {
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		rohm,reset-snvs-powered;
> +
> +		#clock-cells = <0>;
> +		clocks = <&osc_32k 0>;
> +		clock-output-names = "clk-32k-out";
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name = "buck1";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name = "buck2";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <1000000>;
> +				rohm,dvs-idle-voltage = <900000>;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				// BUCK5 in datasheet
> +				regulator-name = "buck3";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				// BUCK6 in datasheet
> +				regulator-name = "buck4";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				// BUCK7 in datasheet
> +				regulator-name = "buck5";
> +				regulator-min-microvolt = <1605000>;
> +				regulator-max-microvolt = <1995000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				// BUCK8 in datasheet
> +				regulator-name = "buck6";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "ldo1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name = "ldo2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name = "ldo3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "ldo4";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo6_reg: LDO6 {
> +				regulator-name = "ldo6";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index a2b24d4d4e3e..2b5b9c923dc6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -126,3 +126,133 @@ MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
>  		>;
>  	};
>  };
> +
> +&A53_0 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
> +&i2c1 {
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		rohm,reset-snvs-powered;
> +
> +		#clock-cells = <0>;
> +		clocks = <&osc_32k 0>;
> +		clock-output-names = "clk-32k-out";
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name = "buck1";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name = "buck2";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <1000000>;
> +				rohm,dvs-idle-voltage = <900000>;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				// BUCK5 in datasheet
> +				regulator-name = "buck3";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				// BUCK6 in datasheet
> +				regulator-name = "buck4";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				// BUCK7 in datasheet
> +				regulator-name = "buck5";
> +				regulator-min-microvolt = <1605000>;
> +				regulator-max-microvolt = <1995000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				// BUCK8 in datasheet
> +				regulator-name = "buck6";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "ldo1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name = "ldo2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name = "ldo3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "ldo4";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo6_reg: LDO6 {
> +				regulator-name = "ldo6";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index 7d6317d95b13..b26460586f68 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -133,22 +133,6 @@ simple-audio-card,codec {
>  	};
>  };
>  
> -&A53_0 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
> -&A53_1 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
> -&A53_2 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
> -&A53_3 {
> -	cpu-supply = <&buck2_reg>;
> -};
> -
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fec1>;
> @@ -182,118 +166,6 @@ &i2c1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_i2c1>;
>  	status = "okay";
> -
> -	pmic@4b {
> -		compatible = "rohm,bd71847";
> -		reg = <0x4b>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_pmic>;
> -		interrupt-parent = <&gpio1>;
> -		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> -		rohm,reset-snvs-powered;
> -
> -		#clock-cells = <0>;
> -		clocks = <&osc_32k 0>;
> -		clock-output-names = "clk-32k-out";
> -
> -		regulators {
> -			buck1_reg: BUCK1 {
> -				regulator-name = "buck1";
> -				regulator-min-microvolt = <700000>;
> -				regulator-max-microvolt = <1300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -				regulator-ramp-delay = <1250>;
> -			};
> -
> -			buck2_reg: BUCK2 {
> -				regulator-name = "buck2";
> -				regulator-min-microvolt = <700000>;
> -				regulator-max-microvolt = <1300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -				regulator-ramp-delay = <1250>;
> -				rohm,dvs-run-voltage = <1000000>;
> -				rohm,dvs-idle-voltage = <900000>;
> -			};
> -
> -			buck3_reg: BUCK3 {
> -				// BUCK5 in datasheet
> -				regulator-name = "buck3";
> -				regulator-min-microvolt = <700000>;
> -				regulator-max-microvolt = <1350000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			buck4_reg: BUCK4 {
> -				// BUCK6 in datasheet
> -				regulator-name = "buck4";
> -				regulator-min-microvolt = <3000000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			buck5_reg: BUCK5 {
> -				// BUCK7 in datasheet
> -				regulator-name = "buck5";
> -				regulator-min-microvolt = <1605000>;
> -				regulator-max-microvolt = <1995000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			buck6_reg: BUCK6 {
> -				// BUCK8 in datasheet
> -				regulator-name = "buck6";
> -				regulator-min-microvolt = <800000>;
> -				regulator-max-microvolt = <1400000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo1_reg: LDO1 {
> -				regulator-name = "ldo1";
> -				regulator-min-microvolt = <1600000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo2_reg: LDO2 {
> -				regulator-name = "ldo2";
> -				regulator-min-microvolt = <800000>;
> -				regulator-max-microvolt = <900000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo3_reg: LDO3 {
> -				regulator-name = "ldo3";
> -				regulator-min-microvolt = <1800000>;
> -				regulator-max-microvolt = <3300000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo4_reg: LDO4 {
> -				regulator-name = "ldo4";
> -				regulator-min-microvolt = <900000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -
> -			ldo6_reg: LDO6 {
> -				regulator-name = "ldo6";
> -				regulator-min-microvolt = <900000>;
> -				regulator-max-microvolt = <1800000>;
> -				regulator-boot-on;
> -				regulator-always-on;
> -			};
> -		};
> -	};
>  };
>  
>  &i2c2 {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

