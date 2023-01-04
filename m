Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2E465D15C
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 12:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233892AbjADL0t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 06:26:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233067AbjADL0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 06:26:47 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70FD91A219
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 03:26:45 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1pD1ur-0006Cd-Ng; Wed, 04 Jan 2023 12:26:42 +0100
Message-ID: <06dd45ab-5430-a57e-0705-fd78587df0b5@pengutronix.de>
Date:   Wed, 4 Jan 2023 12:26:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH][v2] arm64: dts: imx8mm: add EVK with LPDDR4 and PCA9450a
 as PMIC
Content-Language: en-US
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230104110214.1432840-2-johannes.schneider@leica-geosystems.com>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230104110214.1432840-2-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

i.MX maintainers are missing as well as LAKML. Please resend after
consulting MAINTAINERS. Some comments below.

On 04.01.23 12:02, Johannes Schneider wrote:
> new/current EVKs come with a different PMIC: old(er) ones used to use
> "rohm,bd71847", which is now replaced "nxp,pca9450a" on the LPDDR4
> EVKs
> 
> to keep backwards compatibility with the old EVK, the nodes are moved
> into imx8mm-evk.dtsi, with the old boards using imx8mm-evk.dts; while
> the newer boards get to use imx8mm-lpddr4-evk.dts
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---

patch changelog missing.

>  .../devicetree/bindings/arm/fsl.yaml          |   1 +
>  .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 130 ++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 224 +++++++++--------
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 230 ++++++++----------
>  .../boot/dts/freescale/imx8mm-lpddr4-evk.dts  | 133 ++++++++++
>  5 files changed, 491 insertions(+), 227 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index fbfc4f99c01e..5b387ab6b42d 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -817,6 +817,7 @@ properties:
>                - dmo,imx8mm-data-modul-edm-sbc # i.MX8MM eDM SBC
>                - emtrion,emcon-mx8mm-avari # emCON-MX8MM SoM on Avari Base
>                - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
> +              - fsl,imx8mm-lpddr4-evk     # i.MX8MM LPDDR4 EVK Board
>                - fsl,imx8mm-evk            # i.MX8MM EVK Board

Both of these are lpddr4 (It's assumed to be the default).
You need to name your board something else. v2 or w/e NXP calls it.
You may compare part numbers between old and new boards for
inspiration.

>                - gateworks,imx8mm-gw7904
>                - gw,imx8mm-gw71xx-0x       # i.MX8MM Gateworks Development Kit
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

Moving the PMIC into the DTs should be separate commit. You can
move it into its own DTSI and include that optionally if you
want.

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
> index a2b24d4d4e3e..93ae646b696d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -11,118 +11,134 @@
>  / {
>  	model = "FSL i.MX8MM EVK board";
>  	compatible = "fsl,imx8mm-evk", "fsl,imx8mm";
> -
> -	aliases {
> -		spi0 = &flexspi;
> -	};

Moving common stuff into the imx8mm-evk.dtsi should be its own commit.

>  };
>  
> -&ddrc {
> -	operating-points-v2 = <&ddrc_opp_table>;
> -
> -	ddrc_opp_table: opp-table {
> -		compatible = "operating-points-v2";
> -
> -		opp-25M {
> -			opp-hz = /bits/ 64 <25000000>;
> -		};
> -
> -		opp-100M {
> -			opp-hz = /bits/ 64 <100000000>;
> -		};
> -
> -		opp-750M {
> -			opp-hz = /bits/ 64 <750000000>;
> -		};
> -	};
> +&A53_0 {
> +	cpu-supply = <&buck2_reg>;
>  };
>  
> -&flexspi {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexspi>;
> -	status = "okay";
> -
> -	flash@0 {
> -		reg = <0>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		compatible = "jedec,spi-nor";
> -		spi-max-frequency = <80000000>;
> -		spi-tx-bus-width = <1>;
> -		spi-rx-bus-width = <4>;
> -	};
> +&A53_1 {
> +	cpu-supply = <&buck2_reg>;
>  };
>  
> -&usdhc3 {
> -	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
> -	assigned-clock-rates = <400000000>;
> -	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> -	pinctrl-0 = <&pinctrl_usdhc3>;
> -	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> -	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> -	bus-width = <8>;
> -	non-removable;
> -	status = "okay";
> +&A53_2 {
> +	cpu-supply = <&buck2_reg>;
>  };
>  
> -&iomuxc {
> -	pinctrl_flexspi: flexspigrp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_ALE_QSPI_A_SCLK               0x1c2
> -			MX8MM_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B            0x82
> -			MX8MM_IOMUXC_NAND_DATA00_QSPI_A_DATA0           0x82
> -			MX8MM_IOMUXC_NAND_DATA01_QSPI_A_DATA1           0x82
> -			MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2           0x82
> -			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3           0x82
> -		>;
> -	};
> -
> -	pinctrl_usdhc3: usdhc3grp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
> -			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
> -			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
> -			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
> -			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
> -			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
> -			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
> -			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
> -			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
> -			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
> -		>;
> -	};
> -
> -	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
> -			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
> -			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
> -			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
> -			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
> -			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
> -			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
> -			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
> -			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
> -			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
> -		>;
> -	};
> +&A53_3 {
> +	cpu-supply = <&buck2_reg>;
> +};
>  
> -	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> -		fsl,pins = <
> -			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
> -			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
> -			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
> -			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
> -			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
> -			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
> -			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
> -			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
> -			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
> -			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
> -			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
> -		>;
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
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index 7d6317d95b13..8aee615bdc9e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -14,6 +14,10 @@ chosen {
>  		stdout-path = &uart2;
>  	};
>  
> +	aliases {
> +		spi0 = &flexspi;
> +	};
> +
>  	memory@40000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x40000000 0 0x80000000>;
> @@ -133,20 +137,24 @@ simple-audio-card,codec {
>  	};
>  };
>  
> -&A53_0 {
> -	cpu-supply = <&buck2_reg>;
> -};
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
>  
> -&A53_1 {
> -	cpu-supply = <&buck2_reg>;
> -};
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
>  
> -&A53_2 {
> -	cpu-supply = <&buck2_reg>;
> -};
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
>  
> -&A53_3 {
> -	cpu-supply = <&buck2_reg>;
> +		opp-750M {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +	};
>  };
>  
>  &fec1 {
> @@ -177,123 +185,27 @@ vddio: vddio-regulator {
>  	};
>  };
>  
> +&flexspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexspi>;
> +	status = "okay";
> +
> +	flash@0 {
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "jedec,spi-nor";
> +		spi-max-frequency = <80000000>;
> +		spi-tx-bus-width = <1>;
> +		spi-rx-bus-width = <4>;
> +	};
> +};
> +
>  &i2c1 {
>  	clock-frequency = <400000>;
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
> @@ -430,6 +342,18 @@ &usdhc2 {
>  	status = "okay";
>  };
>  
> +&usdhc3 {
> +	assigned-clocks = <&clk IMX8MM_CLK_USDHC3_ROOT>;
> +	assigned-clock-rates = <400000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
>  &wdog1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_wdog>;
> @@ -464,6 +388,17 @@ MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22		0x19
>  		>;
>  	};
>  
> +	pinctrl_flexspi: flexspigrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_ALE_QSPI_A_SCLK               0x1c2
> +			MX8MM_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B            0x82
> +			MX8MM_IOMUXC_NAND_DATA00_QSPI_A_DATA0           0x82
> +			MX8MM_IOMUXC_NAND_DATA01_QSPI_A_DATA1           0x82
> +			MX8MM_IOMUXC_NAND_DATA02_QSPI_A_DATA2           0x82
> +			MX8MM_IOMUXC_NAND_DATA03_QSPI_A_DATA3           0x82
> +		>;
> +	};
> +
>  	pinctrl_gpio_led: gpioledgrp {
>  		fsl,pins = <
>  			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
> @@ -601,6 +536,55 @@ MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
>  		>;
>  	};
>  
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x190
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d0
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d0
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d0
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d0
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d0
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d0
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d0
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x190
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x194
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d4
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d4
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d4
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d4
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d4
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d4
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d4
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d4
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d4
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x194
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_WE_B_USDHC3_CLK               0x196
> +			MX8MM_IOMUXC_NAND_WP_B_USDHC3_CMD               0x1d6
> +			MX8MM_IOMUXC_NAND_DATA04_USDHC3_DATA0           0x1d6
> +			MX8MM_IOMUXC_NAND_DATA05_USDHC3_DATA1           0x1d6
> +			MX8MM_IOMUXC_NAND_DATA06_USDHC3_DATA2           0x1d6
> +			MX8MM_IOMUXC_NAND_DATA07_USDHC3_DATA3           0x1d6
> +			MX8MM_IOMUXC_NAND_RE_B_USDHC3_DATA4             0x1d6
> +			MX8MM_IOMUXC_NAND_CE2_B_USDHC3_DATA5            0x1d6
> +			MX8MM_IOMUXC_NAND_CE3_B_USDHC3_DATA6            0x1d6
> +			MX8MM_IOMUXC_NAND_CLE_USDHC3_DATA7              0x1d6
> +			MX8MM_IOMUXC_NAND_CE1_B_USDHC3_STROBE           0x196
> +		>;
> +	};
> +
>  	pinctrl_wdog: wdoggrp {
>  		fsl,pins = <
>  			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0x166
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts
> new file mode 100644
> index 000000000000..340d3860153b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-lpddr4-evk.dts
> @@ -0,0 +1,133 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019-2020 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/usb/pd.h>

Unused header.

> +#include "imx8mm-evk.dtsi"
> +
> +/ {
> +	model = "FSL i.MX8MM EVK board with LPDDR4";
> +	compatible = "fsl,imx8mm-lpddr4-evk", "fsl,imx8mm";

As mentioned above, name it something else.

> +};
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
> +	pmic: pmic@25 {
> +		compatible = "nxp,pca9450a";
> +		reg = <0x25>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		pinctrl-names = "default";
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +				nxp,dvs-run-voltage = <820000>;
> +				nxp,dvs-standby-voltage = <800000>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name = "BUCK2";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				regulator-name = "BUCK3";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				regulator-name = "BUCK4";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				regulator-name = "BUCK5";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				regulator-name = "BUCK6";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name = "LDO3";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo5_reg: LDO5 {
> +				regulator-name = "LDO5";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +			};
> +		};
> +	};
> +};

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

