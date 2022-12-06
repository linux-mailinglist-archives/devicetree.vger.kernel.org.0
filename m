Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2170644920
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 17:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229780AbiLFQZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 11:25:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231255AbiLFQZB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 11:25:01 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F07F811A28
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 08:24:59 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1p2akW-0003Bf-Fy; Tue, 06 Dec 2022 17:24:52 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1p2akT-0005IK-0h; Tue, 06 Dec 2022 17:24:49 +0100
Date:   Tue, 6 Dec 2022 17:24:48 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Daniel Scally <dan.scally@ideasonboard.com>
Cc:     krzysztof.kozlowski@linaro.org, shawnguo@kernel.org,
        robh@kernel.org, marcel.ziswiler@toradex.com, leoyang.li@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        s.hauer@pengutronix.de, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net, linux-imx@nxp.com, kernel@pengutronix.de,
        festevam@gmail.com, laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v5 3/3] arm64: dts: Add device tree for the Debix Model A
 Board
Message-ID: <20221206162448.5hq4l3tifu5mlmhh@pengutronix.de>
References: <20221206154414.1461492-1-dan.scally@ideasonboard.com>
 <20221206154414.1461492-4-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221206154414.1461492-4-dan.scally@ideasonboard.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

sorry for jumping in that late, please see my comment(s) inline.

On 22-12-06, Daniel Scally wrote:
> Add a device tree file describing the Debix Model A board from
> Polyhex Technology Co.
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Tested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Tested-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
> Changes in v5:
> 
>         - Fixed some formatting (blank lines, compatible property order) (Shawn)
>         - Renamed the led nodes (Shawn)
>         - Added the less specific compatible string (Ahmad)
>         - Added a comment describing the eth phy (Ahmad)
>         - Removed some elements that turn out to be unused (Ahmad)

It would be cool to see the whole history.

> 
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx8mp-debix-model-a.dts    | 509 ++++++++++++++++++
>  2 files changed, 510 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts

...

> +&iomuxc {
> +	pinctrl-names = "default";

This is useless if you have no pinctrl-0.

> +	pinctrl_eqos: eqosgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_ENET_MDC__ENET_QOS_MDC				0x3
> +			MX8MP_IOMUXC_ENET_MDIO__ENET_QOS_MDIO				0x3
> +			MX8MP_IOMUXC_ENET_RD0__ENET_QOS_RGMII_RD0			0x91
> +			MX8MP_IOMUXC_ENET_RD1__ENET_QOS_RGMII_RD1			0x91
> +			MX8MP_IOMUXC_ENET_RD2__ENET_QOS_RGMII_RD2			0x91
> +			MX8MP_IOMUXC_ENET_RD3__ENET_QOS_RGMII_RD3			0x91
> +			MX8MP_IOMUXC_ENET_RXC__CCM_ENET_QOS_CLOCK_GENERATE_RX_CLK	0x91
> +			MX8MP_IOMUXC_ENET_RX_CTL__ENET_QOS_RGMII_RX_CTL			0x91
> +			MX8MP_IOMUXC_ENET_TD0__ENET_QOS_RGMII_TD0			0x1f
> +			MX8MP_IOMUXC_ENET_TD1__ENET_QOS_RGMII_TD1			0x1f
> +			MX8MP_IOMUXC_ENET_TD2__ENET_QOS_RGMII_TD2			0x1f
> +			MX8MP_IOMUXC_ENET_TD3__ENET_QOS_RGMII_TD3			0x1f
> +			MX8MP_IOMUXC_ENET_TX_CTL__ENET_QOS_RGMII_TX_CTL			0x1f
> +			MX8MP_IOMUXC_ENET_TXC__CCM_ENET_QOS_CLOCK_GENERATE_TX_CLK	0x1f
> +			MX8MP_IOMUXC_SAI1_RXFS__ENET1_1588_EVENT0_IN			0x1f
> +			MX8MP_IOMUXC_SAI1_RXC__ENET1_1588_EVENT0_OUT			0x1f
> +			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18				0x19
> +		>;
> +	};
> +
> +	pinctrl_fec: fecgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC				0x3
> +			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO				0x3
> +			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0				0x91
> +			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1				0x91
> +			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2				0x91
> +			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3				0x91
> +			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC				0x91
> +			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL			0x91
> +			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0				0x1f
> +			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1				0x1f
> +			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2				0x1f
> +			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3				0x1f
> +			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL			0x1f
> +			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC				0x1f
> +			MX8MP_IOMUXC_SAI1_RXD1__ENET1_1588_EVENT1_OUT			0x1f
> +			MX8MP_IOMUXC_SAI1_RXD0__ENET1_1588_EVENT1_IN			0x1f
> +			MX8MP_IOMUXC_SAI1_TXD7__GPIO4_IO19				0x19
> +		>;
> +	};
> +
> +	pinctrl_gpio_led: gpioledgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_READY_B__GPIO3_IO16				0x19
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL					0x400001c2
> +			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA					0x400001c2
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL					0x400001c2
> +			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA					0x400001c2
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL					0x400001c2
> +			MX8MP_IOMUXC_I2C3_SDA__I2C3_SDA					0x400001c2
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_I2C4_SCL__I2C4_SCL					0x400001c3
> +			MX8MP_IOMUXC_I2C4_SDA__I2C4_SDA					0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c6: i2c6grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI5_RXFS__I2C6_SCL				0x400001c3
> +			MX8MP_IOMUXC_SAI5_RXC__I2C6_SDA					0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicirqgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO03__GPIO1_IO03				0x41
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19				0x41
> +		>;
> +	};
> +
> +	pinctrl_rtc_int: rtcintgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11				0x140
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX				0x14f
> +			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX				0x14f
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART3_RXD__UART3_DCE_RX				0x49
> +			MX8MP_IOMUXC_UART3_TXD__UART3_DCE_TX				0x49
> +		>;
> +	};
> +
> +	pinctrl_uart4: uart4grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_UART4_RXD__UART4_DCE_RX				0x49
> +			MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX				0x49
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d0
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x194
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d4
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d4
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d4
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d4
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d4
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x196
> +			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD				0x1d6
> +			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0				0x1d6
> +			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1				0x1d6
> +			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2				0x1d6
> +			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3				0x1d6
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12				0x1c4
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x190
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d0
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d0
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d0
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d0
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d0
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d0
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d0
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d0
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d0
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x190
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x194
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d4
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d4
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d4
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d4
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d4
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d4
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d4
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d4
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d4
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x194
> +		>;
> +	};
> +
> +	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK				0x196
> +			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD				0x1d6
> +			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0				0x1d6
> +			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1				0x1d6
> +			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2				0x1d6
> +			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3				0x1d6
> +			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4				0x1d6
> +			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5				0x1d6
> +			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6				0x1d6
> +			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7				0x1d6
> +			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE				0x196
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdoggrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B				0xc6
> +		>;
> +	};
> +};

We order the DTS alphabetical but the iomuxc is the only exception here.
Since this is very long it is quite common to put it at the end.

Regards,
  Marco

> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	/* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	status = "okay";
> +};
> +
> +/* SD Card */
> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +/* eMMC */
> +&usdhc3 {
> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
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
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> -- 
> 2.34.1
> 
> 
> 
