Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE7156092FD
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 14:50:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbiJWMt7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 08:49:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230297AbiJWMt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 08:49:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 694A32AC6E
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 05:49:56 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id BED0960A4B
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 12:49:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7467BC433C1;
        Sun, 23 Oct 2022 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666529395;
        bh=LcPjMbiIv1T903b3ECM5z2QT5Gdi5SRyIX2gP7GvCZw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cM8Ta9wuBZL23zU8NNW00bvAgiY04qJKT0DDN9S/eFQzb7GYVbQ3cLjNHARMIKWPN
         4fnnvwy33TEp2ZGaGjZYdYXuSEBXubuCXHRv1AlgX2CgaTGP+xc/iNXwTXGfyIUaNC
         6zNXqL7dZrRxoCUYUUYs7dSweVWtpQbtNaZbiMTFCMuTwF8uy5n1Vk89xGaiUXPYlq
         V8yhwzDv6JDSXG4UR5OXTpJL0DjZt/S7g26yOULcKV1QNmNCGXgBe5fC+9WpkcM4BA
         9f7Gx4G4th3ahr7LIvBOswdQRh7Gef/zsux4bygaZzRfHkH6FI30k5FvPueTQK0tiq
         0KDm2YeTyopsQ==
Date:   Sun, 23 Oct 2022 20:49:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v4 3/3] arm64: dts: freescale: Add InnoComm i.MX8MM based
 WB15 SoM and EVK
Message-ID: <20221023124949.GH125525@dragon>
References: <20220922081347.3860008-1-s.hauer@pengutronix.de>
 <20220922081347.3860008-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220922081347.3860008-4-s.hauer@pengutronix.de>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 22, 2022 at 10:13:47AM +0200, Sascha Hauer wrote:
> Add the InnoComm i.MX8MM based WB15 SoM and its EVK. The WB15 is a
> half credit card sized board featuring:
> 
> - i.MX8MM CPU
> - LPDDR4, 1GiB
> - eMMC, 8GiB
> - 1Gb Ethernet RGMII interface
> - WiFi 802.11 a/b/g/n/ac, Bluetooth 4.2
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v3:
>     - Remove unnecessary status = "okay" from new node
>     
>     Changes since v2:
>     - Fix remaining s/innocom/innocomm/
>     - no underscores in node names
>     - use IRQ_TYPE_LEVEL_LOW for specifying GPIO interrupt polarity
>     
>     Changes since v1:
>     - Fix spelling of InnoComm
> 
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../freescale/imx8mm-innocomm-wb15-evk.dts    | 146 ++++++
>  .../dts/freescale/imx8mm-innocomm-wb15.dtsi   | 480 ++++++++++++++++++
>  3 files changed, 627 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15-evk.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 8bf7f7ecebaa1..387746c8d8dc2 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -55,6 +55,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-emcon-avari.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-ctouch2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-innocomm-wb15-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-mx8menlo.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-nitrogen-r2.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15-evk.dts
> new file mode 100644
> index 0000000000000..055faae79930c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15-evk.dts
> @@ -0,0 +1,146 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2018 Bang & Olufsen
> + * Copyright 2022 Pengutronix
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8mm-innocomm-wb15.dtsi"
> +
> +/ {
> +	model = "InnoComm WB15-EVK";
> +	compatible = "innocomm,wb15-evk", "fsl,imx8mm";
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_leds>;
> +
> +		led-0 {
> +			label = "debug";
> +			gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +	};
> +
> +	reg_vsd_3v3: regulator-vsd-3v3 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_vsd_3v3>;
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_ethphy: regulator-eth-phy {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_fec_phy_reg>;
> +		regulator-name = "PHY_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@1 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0x1>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinctrl_fec_phy>;
> +			reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +			phy-supply = <&reg_ethphy>;
> +		};
> +	};
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	dr_mode = "otg";
> +	samsung,picophy-pre-emp-curr-control = <3>;
> +	samsung,picophy-dc-vol-level-adjust = <7>;
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	dr_mode = "host";
> +	samsung,picophy-pre-emp-curr-control = <3>;
> +	samsung,picophy-dc-vol-level-adjust = <7>;
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_vsd_3v3>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_fec: fec-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC			0x03
> +			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x03
> +			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x1f
> +			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x1f
> +			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x1f
> +			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x1f
> +			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x91
> +			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x91
> +			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x91
> +			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x91
> +			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x1f
> +			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x91
> +			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x91
> +			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x1f
> +		>;
> +	};
> +
> +	pinctrl_fec_phy: fec-phy-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO09_GPIO1_IO9		0x19
> +		>;
> +	};
> +
> +	pinctrl_fec_phy_reg: fec-phy-reg-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x16
> +		>;
> +	};
> +
> +	pinctrl_gpio_leds: led-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SAI1_RXD1_GPIO4_IO3	0xd6
> +		>;
> +	};
> +
> +	pinctrl_reg_vsd_3v3: reg-vsd-3v3-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
> +		>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
> new file mode 100644
> index 0000000000000..59be159315942
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-innocomm-wb15.dtsi
> @@ -0,0 +1,480 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2018 Bang & Olufsen
> + */
> +
> +#include "imx8mm.dtsi"
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +
> +/ {
> +	reg_modem: regulator-modem {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_modem_regulator>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "epdev_on";
> +		gpio = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	reg_3v3_out: regulator-3v3-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3_OUT";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +};
> +
> +&cpu_alert0 {
> +	temperature = <95000>;
> +};
> +
> +&cpu_crit0 {
> +	temperature = <105000>;
> +};
> +
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25000000 {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +
> +		opp-100000000 {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +		rohm,reset-snvs-powered;
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-name = "buck1";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <850000>;
> +				rohm,dvs-idle-voltage = <850000>;
> +				rohm,dvs-suspend-voltage = <850000>;
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
> +				// buck5 in datasheet
> +				regulator-name = "buck3";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				// buck6 in datasheet
> +				regulator-name = "buck4";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				// buck7 in datasheet
> +				regulator-name = "buck5";
> +				regulator-min-microvolt = <1605000>;
> +				regulator-max-microvolt = <1995000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				// buck8 in datasheet
> +				regulator-name = "buck6";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-name = "ldo1";
> +				regulator-min-microvolt = <1800000>;
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
> +			ldo5_reg: LDO5 {
> +				regulator-name = "ldo5";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
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
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
> +	scl-gpios = <&gpio5 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +};
> +
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
> +	fsl,tx-deemph-gen1 = <0x2d>;
> +	fsl,tx-deemph-gen2 = <0xf>;
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie0>;
> +	reset-gpio = <&gpio5 21 GPIO_ACTIVE_LOW>;
> +	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_PHY>,
> +		 <&clk IMX8MM_CLK_PCIE1_AUX>;
> +	clock-names = "pcie", "pcie_bus", "pcie_aux";
> +	fsl,max-link-speed = <1>;
> +	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>, <&clk IMX8MM_CLK_PCIE1_CTRL>;
> +	assigned-clock-rates = <10000000>, <250000000>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>, <&clk IMX8MM_SYS_PLL2_250M>;
> +	status = "okay";
> +};
> +
> +&uart1 { /* BT */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	assigned-clocks = <&clk IMX8MM_CLK_UART1>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	fsl,uart-has-rtscts;

'fsl,uart-has-rtscts' is deprecated, should use 'uart-has-rtscts'.

Fixed it and applied the series.

Shawn

> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "brcm,bcm4349-bt";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_modem_bt>;
> +		device-wakeup-gpios = <&gpio3 3 GPIO_ACTIVE_HIGH>;
> +		host-wakeup-gpios = <&gpio3 4 GPIO_ACTIVE_HIGH>;
> +		shutdown-gpios = <&gpio3 15 GPIO_ACTIVE_HIGH>;
> +		vbat-supply = <&reg_3v3_out>;
> +		vddio-supply = <&reg_3v3_out>;
> +		clocks = <&osc_32k>;
> +		max-speed = <3000000>;
> +		clock-names = "extclk";
> +	};
> +};
> +
> +&uart2 { /* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	bus-width = <8>;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	bus-width = <4>;
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
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
> +/delete-node/ &sec_jr1; /* Job ring in use by OP-TEE */
> +
> +&iomuxc {
> +	pinctrl_i2c1: i2c1-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL	0x400001c3
> +			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c1_gpio: i2c1-gpio-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SCL_GPIO5_IO14	0x400001c3
> +			MX8MM_IOMUXC_I2C1_SDA_GPIO5_IO15	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL	0x400001c3
> +			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c2_gpio: i2c2-gpio-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C2_SCL_GPIO5_IO16	0x400001c3
> +			MX8MM_IOMUXC_I2C2_SDA_GPIO5_IO17	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C3_SCL_I2C3_SCL		0x400001c3
> +			MX8MM_IOMUXC_I2C3_SDA_I2C3_SDA		0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_i2c3_gpio: i2c3-gpio-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C3_SCL_GPIO5_IO18	0x400001c3
> +			MX8MM_IOMUXC_I2C3_SDA_GPIO5_IO19	0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pcie0: pcie0-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C4_SCL_PCIE1_CLKREQ_B	0x61
> +			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21	0x6
> +		>;
> +	};
> +
> +	pinctrl_modem_bt: modem-bt-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_CLE_GPIO3_IO5			0x19
> +			MX8MM_IOMUXC_NAND_CE2_B_GPIO3_IO3		0x19
> +			MX8MM_IOMUXC_NAND_CE3_B_GPIO3_IO4		0x19
> +			MX8MM_IOMUXC_NAND_RE_B_GPIO3_IO15		0x19
> +			MX8MM_IOMUXC_GPIO1_IO00_ANAMIX_REF_CLK_32K	0x141
> +		>;
> +	};
> +
> +	pinctrl_modem_regulator: modem-reg-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16    0x41
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmic-irq-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3	0x41
> +		>;
> +	};
> +
> +	pinctrl_uart1: uart1-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_UART1_RXD_UART1_DCE_RX	0x140
> +			MX8MM_IOMUXC_UART1_TXD_UART1_DCE_TX	0x140
> +			MX8MM_IOMUXC_UART3_RXD_UART1_DCE_CTS_B	0x140
> +			MX8MM_IOMUXC_UART3_TXD_UART1_DCE_RTS_B	0x140
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
> +			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX	0x140
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x40000190
> +			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d0
> +			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA4_USDHC1_DATA4	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA5_USDHC1_DATA5	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA6_USDHC1_DATA6	0x1d0
> +			MX8MM_IOMUXC_SD1_DATA7_USDHC1_DATA7	0x1d0
> +			MX8MM_IOMUXC_SD1_STROBE_USDHC1_STROBE	0x190
> +			MX8MM_IOMUXC_SD1_RESET_B_USDHC1_RESET_B	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1-100mhz-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x40000194
> +			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d4
> +			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA4_USDHC1_DATA4	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA5_USDHC1_DATA5	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA6_USDHC1_DATA6	0x1d4
> +			MX8MM_IOMUXC_SD1_DATA7_USDHC1_DATA7	0x1d4
> +			MX8MM_IOMUXC_SD1_STROBE_USDHC1_STROBE	0x194
> +			MX8MM_IOMUXC_SD1_RESET_B_USDHC1_RESET_B	0x1d4
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1-200mhz-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD1_CLK_USDHC1_CLK		0x40000196
> +			MX8MM_IOMUXC_SD1_CMD_USDHC1_CMD		0x1d6
> +			MX8MM_IOMUXC_SD1_DATA0_USDHC1_DATA0	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA1_USDHC1_DATA1	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA2_USDHC1_DATA2	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA3_USDHC1_DATA3	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA4_USDHC1_DATA4	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA5_USDHC1_DATA5	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA6_USDHC1_DATA6	0x1d6
> +			MX8MM_IOMUXC_SD1_DATA7_USDHC1_DATA7	0x1d6
> +			MX8MM_IOMUXC_SD1_STROBE_USDHC1_STROBE	0x196
> +			MX8MM_IOMUXC_SD1_RESET_B_USDHC1_RESET_B	0x1d6
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2-gpio-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d0
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d0
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_100mhz: usdhc2-100mhz-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d4
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d4
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_200mhz: usdhc2-200mhz-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
> +			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
> +			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2	0x1d6
> +			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3	0x1d6
> +			MX8MM_IOMUXC_GPIO1_IO04_USDHC2_VSELECT	0x1d0
> +		>;
> +	};
> +
> +	pinctrl_wdog: wdog-grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO02_WDOG1_WDOG_B	0xc6
> +		>;
> +	};
> +};
> -- 
> 2.30.2
> 
