Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C26A53B7E7
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 13:36:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234271AbiFBLfL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 07:35:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234243AbiFBLfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 07:35:11 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30BFC167FB
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 04:35:09 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id w27so5862554edl.7
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 04:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=pppSECDFQzz8RxxEbEbf8/8PRZs/XeHhLH/LB3VldIY=;
        b=vc3S3ab60PsluWlNZRDqLr12IyggdliNJyEZ0c6ZXNOtaZwq4ryHVKmU0mLxZrD8zA
         jbr+Gi/Mt0xh8lDunheyIpiQXfqWrXjecV3t3izP+YH5+JDQLtUwIQmN5hunDhATZYq1
         KasnOmZfTJFZzz5edoewXdObtdI+b/7QdXDL8KKbaYJUkt9mSyLuD/wCaXi2O6xGTIIQ
         wntx7wbqOH8wewyPheeZk4gRfwZCukW4CJw3zrmM0F2FpM8ak/qzre959Fr9rzijsw5Q
         8VsUhSczQfAlGR3N7BV/r3AxloBO3EyEIbA8zVtFuKbz958BQpUsF7TCzGGqDV6nmYmV
         WQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pppSECDFQzz8RxxEbEbf8/8PRZs/XeHhLH/LB3VldIY=;
        b=kCmDQPG20VQ3mKLW4G48Om/7QlXx4Fs6lQIld8UaIoeyPeKgTfEXcP2lLhPH+H0MEe
         w3LnIuaEFGiTPPh6QsCIRfOIYtjwMrEX3TTQOUfmkzwRQUilCy762WCtCThBGHsgBJwq
         te7CtqOUYBkU0CV4712s2Gcs1S9CXqvmymMuGfRAqD4p6z656MJUCodhleEulcLXChIF
         88D2hY+iCQcKZiGDwnZwiET9j0Oz9F1vZZwcr43yiCz+TjlAoRkumVvMPdWCha4WYDZe
         YEziBrYJPj1/cM5jlEcmSwGyFbCZWdGkTNyv29O0ncK1lLgyLY5IPLl81B7qAFgewkH3
         Ea7A==
X-Gm-Message-State: AOAM533MdnTbazB1yoP02LWlHqM1a7YIZYyBJjMZW2JEbL6Xl60nbC8j
        yYHJVpmdKJ8Jioj8VyfDIgOT1g==
X-Google-Smtp-Source: ABdhPJzzJ9O7uRykHFPRLw96zjtVfMICrKJi9AT5ziEKWC//zPFVxmabm9LUgGjS3njoyEBcgYa4Nw==
X-Received: by 2002:a05:6402:5008:b0:42d:c421:48c8 with SMTP id p8-20020a056402500800b0042dc42148c8mr4912543eda.422.1654169707715;
        Thu, 02 Jun 2022 04:35:07 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l4-20020a170906644400b006feb047502bsm1642106ejn.151.2022.06.02.04.35.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 04:35:07 -0700 (PDT)
Message-ID: <e27588ff-d30e-c265-285a-9e64f0522245@linaro.org>
Date:   Thu, 2 Jun 2022 13:35:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/3] arm64: dts: freescale: Add phyBOARD-Polis-i.MX8MM
 support
Content-Language: en-US
To:     Teresa Remmet <t.remmet@phytec.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
References: <20220602101138.2492028-1-t.remmet@phytec.de>
 <20220602101138.2492028-3-t.remmet@phytec.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602101138.2492028-3-t.remmet@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2022 12:11, Teresa Remmet wrote:
> Add initial support for phyBOARD-Polis-i.MX8MM.
> Main features are:
> 	* Bluetooth and Wifi
> 	* CANFD
> 	* eMMC
> 	* i2c RTC
> 	* Ethernet
> 	* PCIe
> 	* RS232/RS485
> 	* SD-Card
> 	* SPI-NOR flash
> 	* USB

Thank you for your patch. There is something to discuss/improve.

> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../freescale/imx8mm-phyboard-polis-rdk.dts   | 450 ++++++++++++++++++
>  .../dts/freescale/imx8mm-phycore-som.dtsi     | 433 +++++++++++++++++
>  3 files changed, 884 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 238a83e5b8c6..1e25dec2109b 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-icore-mx8mm-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-n801x-s.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-mx8menlo.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-nitrogen-r2.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-rdk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mm-venice-gw71xx-0x.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> new file mode 100644
> index 000000000000..532b435b6871
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phyboard-polis-rdk.dts
> @@ -0,0 +1,450 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include "imx8mm-phycore-som.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Polis-i.MX8MM RDK";
> +	compatible = "phytec,imx8mm-phyboard-polis-rdk",
> +		     "phytec,imx8mm-phycore-som","fsl,imx8mm";

Missing space after comma                      ^^^

> +
> +	chosen {
> +		stdout-path = &uart3;
> +	};
> +
> +	bt_osc_32k: bt_lp-clock {

No underscores in node names, please.

> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "bt_osc_32k";
> +		#clock-cells = <0>;
> +	};
> +
> +	can_osc_40m: can-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <40000000>;
> +		clock-output-names = "can_osc_40m";
> +		#clock-cells = <0>;
> +	};
> +
> +	fan {
> +		compatible = "gpio-fan";
> +		gpios = <&gpio4 8 GPIO_ACTIVE_HIGH>;
> +		gpio-fan,speed-map = <0     0
> +				      13000 1>;> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_fan>;
> +		#cooling-cells = <2>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		led-0 {
> +			color = <LED_COLOR_ID_RED>;
> +			function = LED_FUNCTION_DISK;
> +			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc2";
> +		};
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_BLUE>;
> +			function = LED_FUNCTION_DISK;
> +			gpios = <&gpio1 15 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "mmc1";
> +		};
> +
> +		led-2 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			function = LED_FUNCTION_CPU;
> +			gpios = <&gpio1 14 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	usdhc1_pwrseq: pwr-seq {
> +		compatible = "mmc-pwrseq-simple";
> +		post-power-on-delay-ms = <100>;
> +		power-off-delay-us = <60>;
> +		reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	reg_can_en: regulator-can-en {
> +		compatible = "regulator-fixed";
> +		gpio = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_can_en>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "CAN_EN";
> +		startup-delay-us = <20>;
> +	};
> +
> +	reg_usb_otg1_vbus: regulator-usb-otg1 {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 12 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbotg1pwrgrp>;
> +		regulator-name = "usb_otg1_vbus";
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +	};
> +
> +       reg_usdhc2_vmmc: regulator-usdhc2 {

Indentation (here or previous nodes) look odd, probably wrong.

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		off-on-delay-us = <20000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VSD_3V3";
> +	};
> +
> +	reg_vcc_3v3: regulator-vcc_3v3 {

No underscores in node names.

> +		compatible = "regulator-fixed";
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VCC_3V3";
> +	};
> +};
> +
> +/* SPI - CAN MCP251XFD */
> +&ecspi1 {
> +	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	can0: can@0 {
> +		compatible = "microchip,mcp251xfd";
> +		clocks = <&can_osc_40m>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_can_int>;
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +		xceiver-supply = <&reg_can_en>;
> +	};
> +};
> +
> +&gpio1 {
> +	gpio-line-names = "nINT_ETHPHY", "LED_RED", "WDOG_INT", "X_RTC_INT",
> +		"", "", "", "RESET_ETHPHY",
> +		"CAN_nINT", "CAN_EN", "nENABLE_FLATLINK", "",
> +		"USB_OTG_VBUS_EN", "", "LED_GREEN", "LED_BLUE";
> +};
> +
> +&gpio2 {
> +	gpio-line-names = "", "", "", "",
> +		"", "", "BT_REG_ON", "WL_REG_ON",
> +		"BT_DEV_WAKE", "BT_HOST_WAKE", "", "",
> +		"X_SD2_CD_B", "", "", "",
> +		"", "", "", "SD2_RESET_B";
> +};
> +
> +&gpio4 {
> +	gpio-line-names = "", "", "", "",
> +		"", "", "", "",
> +		"FAN", "miniPCIe_nPERST", "", "",
> +		"COEX1", "COEX2";
> +};
> +
> +&gpio5 {
> +	gpio-line-names = "", "", "", "",
> +		"", "", "", "",
> +		"", "ECSPI1_SS0";
> +};
> +
> +/* PCIe */
> +&pcie0 {
> +	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
> +			  <&clk IMX8MM_CLK_PCIE1_CTRL>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
> +				 <&clk IMX8MM_SYS_PLL2_250M>;
> +	assigned-clock-rates = <10000000>, <250000000>;
> +	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_AUX>,
> +		 <&clk IMX8MM_CLK_PCIE1_PHY>;
> +	clock-names = "pcie", "pcie_aux", "pcie_bus";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pcie>;
> +	reset-gpio = <&gpio4 9 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	clocks = <&clk IMX8MM_CLK_PCIE1_PHY>;
> +	fsl,clkreq-unsupported;
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_OUTPUT>;
> +	fsl,tx-deemph-gen1 = <0x2d>;
> +	fsl,tx-deemph-gen2 = <0xf>;
> +	status = "okay";
> +};
> +
> +&rv3028 {
> +	trickle-resistor-ohms = <3000>;
> +};
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +/* UART - RS232/RS485 */
> +&uart1 {
> +	assigned-clocks = <&clk IMX8MM_CLK_UART1>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +	uart-has-rtscts;
> +};
> +
> +/* UART - Sterling-LWB Bluetooth */
> +&uart2 {
> +	assigned-clocks = <&clk IMX8MM_CLK_UART2>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_80M>;
> +	fsl,dte-mode;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2_bt>;
> +	status = "okay";

Put status as last property, so after uart-has-rtscts. The same in other
places.

> +	uart-has-rtscts;
> +


(...)

> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
> new file mode 100644
> index 000000000000..1aa27291c7ff
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-phycore-som.dtsi
> @@ -0,0 +1,433 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH
> + * Author: Teresa Remmet <t.remmet@phytec.de>
> + */
> +
> +#include "imx8mm.dtsi"
> +#include <dt-bindings/net/ti-dp83867.h>
> +
> +/ {
> +	model = "PHYTEC phyCORE-i.MX8MM";
> +	compatible = "phytec,imx8mm-phycore-som", "fsl,imx8mm";
> +
> +	aliases {
> +		rtc0 = &rv3028;
> +		rtc1 = &snvs_rtc;
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x0 0x40000000 0 0x80000000>;
> +	};
> +
> +	reg_vdd_3v3_s: regulator-vdd_3v3_s {

Do not use underscores in node names.
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-name = "VDD_3V3_S";
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&reg_vdd_arm>;
> +};
> +
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +
> +		opp-750M {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +	};
> +};
> +
> +/* Ethernet */
> +&fec1 {
> +	fsl,magic-packet;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			enet-phy-lane-no-swap;
> +			interrupts = <0 IRQ_TYPE_EDGE_FALLING>;
> +			interrupt-parent = <&gpio1>;
> +			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
> +			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
> +			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +			reg = <0>;
> +			reset-gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> +			reset-assert-us = <1000>;
> +			reset-deassert-us = <1000>;
> +		};
> +	};
> +};
> +
> +/* SPI Flash */
> +&flexspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexspi0>;
> +	status = "okay";
> +
> +	som_flash: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <80000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};
> +
> +&gpio1 {
> +	gpio-line-names = "nINT_ETHPHY", "", "WDOG_INT", "X_RTC_INT",
> +		"", "", "", "RESET_ETHPHY",
> +		"", "", "nENABLE_FLATLINK";
> +};
> +
> +/* I2C1 */
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default","gpio";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	pinctrl-1 = <&pinctrl_i2c1_gpio>;
> +	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +
> +	pmic@8 {
> +		compatible = "nxp,pf8121a";
> +		reg = <0x08>;
> +
> +		regulators {
> +			reg_nvcc_sd1: ldo1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-min-microvolt = <3300000>;
> +				regulator-name = "NVCC_SD1 (LDO1)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_nvcc_sd2: ldo2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-name = "NVCC_SD2 (LDO2)";
> +				vselect-en;
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vcc_enet: ldo3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <2500000>;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-name = "VCC_ENET_2V5 (LDO3)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdda_1v8: ldo4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-min-microvolt = <1500000>;
> +				regulator-name = "VDDA_1V8 (LDO4)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-min-microvolt = <1500000>;
> +					regulator-suspend-max-microvolt = <1500000>;
> +				};
> +			};
> +
> +			reg_soc_vdda_phy: buck1 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <900000>;
> +				regulator-min-microvolt = <400000>;
> +				regulator-name = "VDD_SOC_VDDA_PHY_0P8 (BUCK1)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-min-microvolt = <400000>;
> +					regulator-suspend-max-microvolt = <400000>;
> +				};
> +			};
> +
> +			reg_vdd_gpu_dram: buck2 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-min-microvolt = <1000000>;
> +				regulator-name = "VDD_GPU_DRAM (BUCK2)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1000000>;
> +					regulator-suspend-min-microvolt = <1000000>;
> +				};
> +			};
> +
> +			reg_vdd_gpu: buck3 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1000000>;
> +				regulator-min-microvolt = <400000>;
> +				regulator-name = "VDD_VPU (BUCK3)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdd_mipi: buck4 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1050000>;
> +				regulator-min-microvolt = <900000>;
> +				regulator-name = "VDD_MIPI_0P9 (BUCK4)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdd_arm: buck5 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1050000>;
> +				regulator-min-microvolt = <400000>;
> +				regulator-name = "VDD_ARM (BUCK5)";
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			reg_vdd_1v8: buck6 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-name = "VDD_1V8 (BUCK6)";
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt = <1800000>;
> +					regulator-suspend-min-microvolt = <1800000>;
> +				};
> +			};
> +
> +			reg_nvcc_dram: buck7 {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1100000>;
> +				regulator-min-microvolt = <1100000>;
> +				regulator-name = "NVCC_DRAM_1P1V (BUCK7)";
> +			};
> +
> +			reg_vsnvs: vsnvs {
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-name = "NVCC_SNVS_1P8 (VSNVS)";
> +			};
> +		};
> +	};
> +
> +	eeprom@51 {
> +		compatible = "atmel,24c32";
> +		pagesize = <32>;
> +		reg = <0x51>;
> +		vcc-supply = <&reg_vdd_3v3_s>;
> +	};
> +
> +	sn65dsi83: mipitolvds@2d {

I think generic node name for this is "bridge"?

> +		compatible = "ti,sn65dsi83";
> +		enable-gpios = <&gpio1 10 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";

Best regards,
Krzysztof
