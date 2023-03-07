Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BB376ADB4E
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 11:04:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbjCGKEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 05:04:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230077AbjCGKEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 05:04:21 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8571743449
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 02:04:16 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pZUB4-0005Gr-PS; Tue, 07 Mar 2023 11:04:14 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1pZT8l-0004mQ-OM; Tue, 07 Mar 2023 09:57:47 +0100
Date:   Tue, 7 Mar 2023 09:57:47 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>,
        devicetree@vger.kernel.org, Richard Zhu <hongxing.zhu@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v11 1/2] arm64: dts: imx8mm-evkb: add support for
 i.MX8MM-EVKB
Message-ID: <20230307085747.mrqeoi4mkggby73o@pengutronix.de>
References: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
 <20230130172553.2738182-2-johannes.schneider@leica-geosystems.com>
 <20230307031426.GI143566@dragon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230307031426.GI143566@dragon>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shawn,

On 23-03-07, Shawn Guo wrote:
> On Mon, Jan 30, 2023 at 06:25:52PM +0100, Johannes Schneider wrote:
> > Add devicetree for the EVKB, which comes with LPDDR4 and a different
> > PMIC.
> > 
> > The regulator min/max values are taken from the evk's schematic:
> > 8MMINILPD4-CPU  SPF-31399_C2.pdf
> > 
> > Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> 
> The patch doesn't compile at all (see below), so I took a closer look
> and decided to drop the series.
> 
> > ---
> >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> >  arch/arm64/boot/dts/freescale/imx8mm-evkb.dts | 134 ++++++++++++++++++
> >  2 files changed, 135 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > index 3ea9edc87909..3bccc4d10928 100644
> > --- a/arch/arm64/boot/dts/freescale/Makefile
> > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-data-modul-edm-sbc.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-ddr4-evk.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
> > +dtb-$(CONFIG_ARCH_MXC) += imx8mm-evkb.dtb
> 
> I prefer to name it imx8mm-evk-revb.dtb or imx8mm-evk-b.dtb.

Unfortunately it's not revision B, it is evkb. The 'first' evk has
plenty revisions. I think the most recent for the imx8mm-evk is C5. For
the imx8mm-evkb the most recent revision is A4. Even this is not 100
percent correct since the EVK consist of a SoM and a baseboard. The
baseboard isn't changed for the EVKB but the SoM. The new SoM schematics
name the new SoM 8MMINILPD4-CPU2. But in the end you can't buy it
separately:
- https://www.nxp.com/design/development-boards/i-mx-evaluation-and-development-boards/evaluation-kit-for-the-i-mx-8m-mini-applications-processor:8MMINILPD4-EVK

> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
> >  dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl.dtb
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> > new file mode 100644
> > index 000000000000..2c3947d68982
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm-evkb.dts
> > @@ -0,0 +1,134 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright 2019-2022 NXP
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "imx8mm-evk.dtsi"
> > +
> > +/ {
> > +	model = "FSL i.MX8MM EVKB"; // with LPDDR4 and PCA9450 PMIC
> 
> "FSL i.MX8MM EVK Revision B"

Please see my above explanation, it's not revision b.
> 
> imx8mm-evk board has LPDDR4 too, so LPDDR4 is not a difference.  It
> seems PMIC is the only difference between imx8mm-evk and imx8mm-evk-b.
> In that case, we may want to include "imx8mm-evk.dts" rather than
> "imx8mm-evk.dtsi".  Otherwise, things like flexspi and usdhc3 get lost.

Your're right.

Regards,
  Marco

> Also /* ... */ style of comment is recommended.
> 
> > +	compatible = "fsl,imx8mm-evkb", "fsl,imx8mm";
> 
> "fsl,imx8mm-evk-revb" or "fsl,imx8mm-evk-b"
> 
> > +};
> > +
> > +&i2c1 {
> > +	/*
> > +	 * replace "rohm,bd71847" pmic found on previous evks
> > +	 * with "nxp,pca9450a"
> > +	 */
> > +	/delete-node/ pmic@4b
> 
> Missing semicolon causes DTC error.
> 
> 	/delete-node/ pmic@4b;
> 
> Shawn
> 
> > +
> > +	pmic: pmic@25 {
> > +		compatible = "nxp,pca9450a";
> > +		reg = <0x25>;
> > +		pinctrl-0 = <&pinctrl_pmic>;
> > +		pinctrl-names = "default";
> > +		interrupt-parent = <&gpio1>;
> > +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> > +
> > +		regulators {
> > +			// VDD_SOC_0V8
> > +			buck1_reg: BUCK1 {
> > +				regulator-name = "BUCK1";
> > +				regulator-min-microvolt = <780000>;
> > +				regulator-max-microvolt = <900000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <1250>;
> > +			};
> > +
> > +			// VDD_ARM_0V9
> > +			buck2_reg: BUCK2 {
> > +				regulator-name = "BUCK2";
> > +				regulator-min-microvolt = <805000>;
> > +				regulator-max-microvolt = <1050000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-ramp-delay = <1250>;
> > +				nxp,dvs-standby-voltage = <850000>;
> > +			};
> > +
> > +			// VDD_DRAM&PU_0V9 (BUCK5 in datasheet)
> > +			buck3_reg: BUCK3 {
> > +				regulator-name = "BUCK3";
> > +				regulator-min-microvolt = <805000>;
> > +				regulator-max-microvolt = <1000000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// VDD_3V3/NVCC_3V3 (BUCK6 in datasheet)
> > +			buck4_reg: BUCK4 {
> > +				regulator-name = "BUCK4";
> > +				regulator-min-microvolt = <3000000>;
> > +				regulator-max-microvolt = <3600000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// VDD_1V8/NVCC_1V8 (BUCK7 in datasheet)
> > +			buck5_reg: BUCK5 {
> > +				regulator-name = "BUCK5";
> > +				regulator-min-microvolt = <1650000>;
> > +				regulator-max-microvolt = <1950000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// NVCC_DRAM_1V1 (BUCK8 in datasheet)
> > +			buck6_reg: BUCK6 {
> > +				regulator-name = "BUCK6";
> > +				regulator-min-microvolt = <1060000>;
> > +				regulator-max-microvolt = <1140000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// NVCC_SNVS_1V8
> > +			ldo1_reg: LDO1 {
> > +				regulator-name = "LDO1";
> > +				regulator-min-microvolt = <1620000>;
> > +				regulator-max-microvolt = <19800000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// VDD_SNVS_0V8
> > +			ldo2_reg: LDO2 {
> > +				regulator-name = "LDO2";
> > +				regulator-min-microvolt = <760000>;
> > +				regulator-max-microvolt = <900000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// VDDA_1V8
> > +			ldo3_reg: LDO3 {
> > +				regulator-name = "LDO3";
> > +				regulator-min-microvolt = <1710000>;
> > +				regulator-max-microvolt = <1890000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// VDD_PHY_0V9
> > +			ldo4_reg: LDO4 {
> > +				regulator-name = "LDO4";
> > +				regulator-min-microvolt = <855000>;
> > +				regulator-max-microvolt = <1000000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +
> > +			// VDD_PHY_1V2 (LDO6 in datasheet)
> > +			ldo5_reg: LDO5 {
> > +				regulator-name = "LDO5";
> > +				regulator-min-microvolt = <1140000>;
> > +				regulator-max-microvolt = <1260000>;
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +			};
> > +		};
> > +	};
> > +};
> > -- 
> > 2.25.1
> > 
> 
> 
