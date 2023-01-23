Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 208E46778C2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 11:12:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230399AbjAWKMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 05:12:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230484AbjAWKMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 05:12:30 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27DE116315
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 02:11:44 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pJtnT-0000BH-Ug; Mon, 23 Jan 2023 11:11:27 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pJtnS-00036K-Ug; Mon, 23 Jan 2023 11:11:26 +0100
Date:   Mon, 23 Jan 2023 11:11:26 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v8 1/3] arm64: dts: imx8mm-evk: move PMIC configuration
Message-ID: <20230123101126.n7j25wp37ghcfn3u@pengutronix.de>
References: <20230123071312.3297210-1-johannes.schneider@leica-geosystems.com>
 <20230123071312.3297210-2-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230123071312.3297210-2-johannes.schneider@leica-geosystems.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joannes,

please see my comments below.

On 23-01-23, Johannes Schneider wrote:
> Move the PMIC configuration out of imx8mm-evk.dtsi into a separate
> file; to accommodate devicetrees for the rev-b EVK, which comes with a
> different PMIC.
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  .../boot/dts/freescale/imx8mm-ddr4-evk.dts    |   1 +
>  .../dts/freescale/imx8mm-evk-rohm-pmic.dtsi   | 118 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |   1 +
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 112 -----------------
>  4 files changed, 120 insertions(+), 112 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> index 6c079c0a3a48..f39182ce65b4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-ddr4-evk.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
>  
>  #include "imx8mm-evk.dtsi"
> +#include "imx8mm-evk-rohm-pmic.dtsi"

After working with your previous version of this series I'm more
convinced that we should not go that way. Instead keep the pmic node
as it is (untouched) and delete it within the imx8mm-evkb.dts. Because
your approach introduce phandle refs which are resolved by another
dtsi. This should be avoided if we can avoid this since IMHO a dts(i)
should always be self-contained.

Regards,
  Marco

>  / {
>  	model = "FSL i.MX8MM DDR4 EVK with CYW43455 WIFI/BT board";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
> new file mode 100644
> index 000000000000..0b056996a27b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk-rohm-pmic.dtsi
> @@ -0,0 +1,118 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2020 NXP
> + */
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
> index a2b24d4d4e3e..d2b6d7de7e53 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -7,6 +7,7 @@
>  
>  #include <dt-bindings/usb/pd.h>
>  #include "imx8mm-evk.dtsi"
> +#include "imx8mm-evk-rohm-pmic.dtsi"
>  
>  / {
>  	model = "FSL i.MX8MM EVK board";
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> index 7d6317d95b13..21d0614af44c 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
> @@ -182,118 +182,6 @@ &i2c1 {
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
> -- 
> 2.25.1
> 
> 
> 
