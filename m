Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39FC4680CB3
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:00:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235451AbjA3MAC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:00:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235858AbjA3MAA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:00:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57ECAB748
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 03:59:38 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pMSoq-0001JY-K0; Mon, 30 Jan 2023 12:59:28 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pMSoh-0000A8-Fc; Mon, 30 Jan 2023 12:59:19 +0100
Date:   Mon, 30 Jan 2023 12:59:19 +0100
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
Subject: Re: [PATCH v10 1/2] arm64: dts: imx8mm-evkb: add support for
 i.MX8MM-EVKB
Message-ID: <20230130115919.adtxohrp7vtn5ou2@pengutronix.de>
References: <20230130025632.4101943-1-johannes.schneider@leica-geosystems.com>
 <20230130025632.4101943-2-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130025632.4101943-2-johannes.schneider@leica-geosystems.com>
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

Hi Johannes,

thanks for the patch.

On 23-01-30, Johannes Schneider wrote:
> Add devicetree for the EVKB, which comes with LPDDR4 and a different
> PMIC.
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 128 ++++++++++++++++++
>  2 files changed, 129 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 3ea9edc87909..3bccc4d10928 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-evkb.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> new file mode 100644
> index 000000000000..9ada2512d9a0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> @@ -0,0 +1,128 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019-2020 NXP

Is the copyright correct?

> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mm-evk.dtsi"
> +
> +/ {
> +	model = "FSL i.MX8MM EVKB"; // with LPDDR4 and PCA9450 PMIC
> +	compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";
> +};
> +
> +&i2c1 {
> +	/*
> +	replace "rohm,bd71847" pmic found on previous evks
> +	with "nxp,pca9450a"
> +	*/

This is not how we do comments in dts(i) files. Either use:

 // Comment

or

 /*
  * Multi line
  * Comment
  */

> +	/delete-node/ pmic@4b
> +
> +	pmic: pmic@25 {
> +		compatible = "nxp,pca9450a";
> +		reg = <0x25>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		pinctrl-names = "default";
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		regulators {

The min/max voltages should be adapted.

> +			buck1_reg: BUCK1 {

Please add a comment like "VDD_SOC with PCIe" above the node.

> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;

min/max should be set to 850000.

> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-name = "BUCK2";
> +				regulator-min-microvolt = <700000>;

min should be: 850000

> +				regulator-max-microvolt = <1300000>;

max should be: 1000000

> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <1000000>;

You just copied the rohm nodes instead the property should be:
nxp,dvs-run-voltage. However, the dvs-run-voltage is not required so
drop it completely.


> +				rohm,dvs-idle-voltage = <900000>;

This should be:

nxp,dvs-standby-voltage = <850000>;

> +			};
> +
> +			buck3_reg: BUCK3 {
> +				regulator-name = "BUCK3";
> +				// BUCK5 in datasheet

Unrelated comment.

> +				regulator-min-microvolt = <700000>;

min: 850000

> +				regulator-max-microvolt = <1350000>;

max: 1000000

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				regulator-name = "BUCK4";
> +				// BUCK6 in datasheet

Unrelated comment.

> +				regulator-min-microvolt = <3000000>;

min: 3300000

> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				regulator-name = "BUCK5";
> +				// BUCK7 in datasheet

Unrelated comment.

> +				regulator-min-microvolt = <1605000>;

min: 1800000

> +				regulator-max-microvolt = <1995000>;

max: 1800000

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {

Please add follwoing comment above the node name:
"NVCC_DRAM for LPDDR4".

> +				regulator-name = "BUCK6";
> +				// BUCK8 in datasheet

Unrelated comment.

> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;

min/max: 1100000

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;

min/max: 1800000.

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <900000>;

max: 800000

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-name = "LDO3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;

min/max: 1800000

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;

min/max: 900000

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo5_reg: LDO5 {
> +				regulator-name = "LDO5";
> +				regulator-min-microvolt = <900000>;

min: 1800000

> +				regulator-max-microvolt = <1800000>;

max: 3300000

With the voltages fixed and the comments adapted this approach looks
good.

Regards,
  Marco

> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> -- 
> 2.25.1
> 
> 
> 
