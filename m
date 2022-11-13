Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BAE3626F89
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 13:45:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232799AbiKMMpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 07:45:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234216AbiKMMpW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 07:45:22 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE92912ACC
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 04:45:20 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id t19-20020a9d7753000000b0066d77a3d474so1391577otl.10
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 04:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pSAdv97rQJGIlStjDzC5noXtfwV7sWRUVGqjgBie380=;
        b=HUWa4rOlYnFsRcVPoNXri0tknUynXAu58uVt3DL7+aWhxIPv/okmff4x4LaJYXqrmc
         V8o+DggSUCAr0Ag9jl5rvd8h1zoswSpsULwiLtkJrMNTxWRLqxad17BbbS5msfLgSxkV
         MdRVREr06IRMU/7CZCMjYojjskj4dMTlaWrSaxTDaa31lypVgrWn/dFFjzasIS+84BSS
         n0RqvqAeN/vBsmqdaVJI1k+S1jhuMLb2Z/82QlC0LrSbh3Mg1euqfSxSQs4MUl8KuRpP
         fzhQq2sYhT3H4Tg6C6Io0aEdha5qssWgQkLkXGWqeAQIvDq8nC5Yqxjxy4a64kS29Tln
         WpXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pSAdv97rQJGIlStjDzC5noXtfwV7sWRUVGqjgBie380=;
        b=7BZM+8/7j80FswcHR76VewPbzL6r9GJuMR3oDtmJK2XcUksjmcGXTvQOh+3t8AkThl
         9osRMyS6jzAdD9Zhw3/6OQneMFo4SFGh2C77cYD/bNhFRIoP9a3swWJZJk4yVwO8K1v+
         OGXpKNF8LqheKpyCOCmYQNy8LUseOTGhKFE+oMAe7jFwNeBTN8OtJPiTxRTMLWlNNdyT
         /QEV02Ae5h95xtkbClC6LSfiiBOq5p/9p5UHrgH1d8qv9Vgbv/Zo32G1UlxaKz1qZ0S8
         NkWUJ+e4Cc/jtE2OB3jWFUqJ7AtJOBXMVo+Jrz81RzNeFR3rN/pftBO/JsyZ+IUTBpaj
         KA7Q==
X-Gm-Message-State: ANoB5pkPJlPRcTeeld9ocFcDd8vjSzXH5y3ELiznYdNOBHHNleCRfV6a
        4fVh+9Y5fh1zaujw4UDNplFt6nnyr5Q=
X-Google-Smtp-Source: AA0mqf5SsywFcfsd6gR0EnXYWNmO0pshG2Ta1IfeihtjOwyjvmA1zpdIeFPJHRLb+H4VGk76/odeZA==
X-Received: by 2002:a05:6830:1d90:b0:663:bd3a:2e4b with SMTP id y16-20020a0568301d9000b00663bd3a2e4bmr4722595oti.157.1668343520065;
        Sun, 13 Nov 2022 04:45:20 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:d950:2f03:b64d:2009])
        by smtp.gmail.com with ESMTPSA id z19-20020a0568301db300b006690f65a830sm3016481oti.14.2022.11.13.04.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 04:45:19 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] arm64: dts: imx8mm-phg: Add initial board support
Date:   Sun, 13 Nov 2022 09:44:59 -0300
Message-Id: <20221113124459.662004-3-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221113124459.662004-1-festevam@gmail.com>
References: <20221113124459.662004-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add the initial support for the i.MX8MM Cloos PHG board.

This board uses a imx8mm-tqma8mqml SoM from TQ-Group.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/Makefile       |   1 +
 arch/arm64/boot/dts/freescale/imx8mm-phg.dts | 266 +++++++++++++++++++
 2 files changed, 267 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-phg.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c901404197c3..ef6f364eaa18 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -62,6 +62,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-kontron-bl-osm-s.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-mx8menlo.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-nitrogen-r2.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mm-phg.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-phyboard-polis-rdk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-tqma8mqml-mba8mx.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-var-som-symphony.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-phg.dts b/arch/arm64/boot/dts/freescale/imx8mm-phg.dts
new file mode 100644
index 000000000000..e9447738b104
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mm-phg.dts
@@ -0,0 +1,266 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2022 Fabio Estevam <festevam@denx.de>
+ */
+
+/dts-v1/;
+
+#include "imx8mm-tqma8mqml.dtsi"
+
+/ {
+	model = "Cloos i.MX8MM PHG board";
+	compatible = "cloos,imx8mm-phg", "tq,imx8mm-tqma8mqml", "fsl,imx8mm";
+
+	aliases {
+		mmc0 = &usdhc3;
+		mmc1 = &usdhc2;
+	};
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	beeper {
+		compatible = "gpio-beeper";
+		pinctrl-0 = <&pinctrl_beeper>;
+		gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_led>;
+
+		led-0 {
+			label = "status1";
+			gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-1 {
+			label = "status2";
+			gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-2 {
+			label = "status3";
+			gpios = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-3 {
+			label = "run";
+			gpios = <&gpio1 7 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-4 {
+			label = "powerled";
+			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	reg_usb_otg_vbus: regulator-usb-otg-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_otg_vbus_ctrl>;
+		regulator-name = "usb_otg_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio2 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usdhc2_vmmc: regulator-vmmc {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		regulator-name = "VSD_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		startup-delay-us = <100>;
+		off-on-delay-us = <12000>;
+	};
+};
+
+&ecspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_ecspi1>;
+	cs-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			reg = <0>;
+			compatible = "ethernet-phy-ieee802.3-c22";
+		};
+	};
+};
+
+&i2c2 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+&usbphynop1 {
+	power-domains = <&pgc_otg1>;
+};
+
+&usbphynop2 {
+	power-domains = <&pgc_otg2>;
+};
+
+&usbotg1 {
+	dr_mode = "host";
+	vbus-supply = <&reg_usb_otg_vbus>;
+	status = "okay";
+};
+
+&usbotg2 {
+	dr_mode = "host";
+	status = "okay";
+};
+
+&usdhc2 {
+	assigned-clocks = <&clk IMX8MM_CLK_USDHC2>;
+	assigned-clock-rates = <400000000>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_400M>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	bus-width = <4>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	no-mmc;
+	no-sdio;
+	sd-uhs-sdr104;
+	sd-uhs-ddr50;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_beeper: beepergrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO00_GPIO1_IO0		0x19
+		>;
+	};
+
+	pinctrl_ecspi1: ecspi1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ECSPI1_MISO_ECSPI1_MISO		0x82
+			MX8MM_IOMUXC_ECSPI1_MOSI_ECSPI1_MOSI		0x82
+			MX8MM_IOMUXC_ECSPI1_SCLK_ECSPI1_SCLK		0x82
+			MX8MM_IOMUXC_ECSPI1_SS0_GPIO5_IO9		0x19
+		>;
+	};
+
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_ENET_MDC_ENET1_MDC		0x40000002
+			MX8MM_IOMUXC_ENET_MDIO_ENET1_MDIO		0x40000002
+			MX8MM_IOMUXC_ENET_TD3_ENET1_RGMII_TD3		0x14
+			MX8MM_IOMUXC_ENET_TD2_ENET1_RGMII_TD2		0x14
+			MX8MM_IOMUXC_ENET_TD1_ENET1_RGMII_TD1		0x14
+			MX8MM_IOMUXC_ENET_TD0_ENET1_RGMII_TD0		0x14
+			MX8MM_IOMUXC_ENET_RD3_ENET1_RGMII_RD3		0x90
+			MX8MM_IOMUXC_ENET_RD2_ENET1_RGMII_RD2		0x90
+			MX8MM_IOMUXC_ENET_RD1_ENET1_RGMII_RD1		0x90
+			MX8MM_IOMUXC_ENET_RD0_ENET1_RGMII_RD0		0x90
+			MX8MM_IOMUXC_ENET_TXC_ENET1_RGMII_TXC		0x14
+			MX8MM_IOMUXC_ENET_RXC_ENET1_RGMII_RXC		0x90
+			MX8MM_IOMUXC_ENET_RX_CTL_ENET1_RGMII_RX_CTL	0x90
+			MX8MM_IOMUXC_ENET_TX_CTL_ENET1_RGMII_TX_CTL	0x14
+			MX8MM_IOMUXC_SAI2_RXC_GPIO4_IO22		0x10
+		>;
+	};
+
+	pinctrl_gpio_led: gpioledgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x19
+			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x19
+			MX8MM_IOMUXC_GPIO1_IO06_GPIO1_IO6		0x19
+			MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7		0x19
+			MX8MM_IOMUXC_GPIO1_IO01_GPIO1_IO1		0x19
+		>;
+	};
+
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
+			MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_otg_vbus_ctrl: otgvbusctrlgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD1_DATA0_GPIO2_IO2		0x119
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_UART2_RXD_UART2_DCE_RX		0x140
+			MX8MM_IOMUXC_UART2_TXD_UART2_DCE_TX		0x140
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CD_B_GPIO2_IO12		0x1c4
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x190
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d0
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d0
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d0
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d0
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d0
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x194
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d4
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d4
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d4
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d4
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d4
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_SD2_CLK_USDHC2_CLK		0x196
+			MX8MM_IOMUXC_SD2_CMD_USDHC2_CMD		0x1d6
+			MX8MM_IOMUXC_SD2_DATA0_USDHC2_DATA0		0x1d6
+			MX8MM_IOMUXC_SD2_DATA1_USDHC2_DATA1		0x1d6
+			MX8MM_IOMUXC_SD2_DATA2_USDHC2_DATA2		0x1d6
+			MX8MM_IOMUXC_SD2_DATA3_USDHC2_DATA3		0x1d6
+		>;
+	};
+};
-- 
2.25.1

