Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B325B2ECC73
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 10:13:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727149AbhAGJNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 04:13:13 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:60292 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726436AbhAGJNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 04:13:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1610010733; x=1612602733;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=hsSDqf/W4WFlylKPtyUU6v5oVOXUaVkxt9VV976kJC4=;
        b=alORRi3LR2yZKxUs2uUIbe1j+a0WNpgG03wT8Gk0GmVWbED2vSaWVQsMNd0xp36Z
        SxsGUiRjXmOvefRZ7hH5CLLqq+FCcoxfqYLQ300UhIVrbthti1wRSkQ6uCeGSaVS
        iBgMoZfdWZwm/VQkcQJUeLp49MHcGy+YUcMV3Lae4Ng=;
X-AuditID: c39127d2-0c7b670000001c86-11-5ff6d06dd9e7
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id D9.B1.07302.D60D6FF5; Thu,  7 Jan 2021 10:12:13 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021010710121298-64474 ;
          Thu, 7 Jan 2021 10:12:12 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alexander Dahl <ada@thorsis.com>
Subject: [PATCH v4 4/4] arm64: dts: freescale: Add support for phyBOARD-Pollux-i.MX8MP
Date:   Thu, 7 Jan 2021 10:12:11 +0100
Message-Id: <1610010731-44779-5-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
References: <1610010731-44779-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:13,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 07.01.2021 10:12:13,
        Serialize complete at 07.01.2021 10:12:13
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPLMWRmVeSWpSXmKPExsWyRoCBSzf3wrd4g5vTBS36DjJZvF/Ww2gx
        /8g5VouHV/0tzp/fwG6x6fE1VovWvUfYLf5u38Ri8WKLuAOnx5p5axg9ds66y+6xaVUnm8fm
        JfUe/X8NPNbNfc/u8XmTXAB7FJdNSmpOZllqkb5dAlfGpPUTGQt2ZVf0f53L0sD4JbyLkZND
        QsBEom3pduYuRi4OIYGtjBJrF/xig3DOMkrceP6GHaSKTUBD4umK00wgtoiAi8TmCc+YQIqY
        BVqYJG7OX8wGkhAWCJPY++gAC4jNIqAicWxnJyOIzSvgJHFh5WRWiHVyEjfPdQKt4+DgFHCW
        WPWlAiQsBFRy4OZldpCZEgKNTBLN558xQtQLSZxefJZ5AiPfAkaGVYxCuZnJ2alFmdl6BRmV
        JanJeimpmxiBgXh4ovqlHYx9czwOMTJxMB5ilOBgVhLhtTj2JV6INyWxsiq1KD++qDQntfgQ
        ozQHi5I47wbekjAhgfTEktTs1NSC1CKYLBMHp1QDY7NB7oObj1ONvq6rOtevvOK9otbSX1oW
        zP2LzzJeUvgUf/vm+Ssl2/qXXDNTrc9TeH1WRquagYORdwHHzYvXHC6dyFZgl3j4zH/lc+Hl
        azMiJ8lZ/vnbv87b9rHwKpUb3ZZczkv2BPa52Fuxceh3iOy/vmVf41/tKT86Odb4KNvIrP8o
        v3tpiBJLcUaioRZzUXEiANl9U6EyAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add initial support for phyBOARD-Pollux-i.MX8MP.
Supported basic features:
	* eMMC
	* i2c EEPROM
	* i2c RTC
	* i2c LED
	* PMIC
	* debug UART
	* SD card
	* 1Gbit Ethernet (fec)
	* watchdog

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/freescale/Makefile             |   1 +
 .../dts/freescale/imx8mp-phyboard-pollux-rdk.dts   | 161 +++++++++++
 .../boot/dts/freescale/imx8mp-phycore-som.dtsi     | 293 +++++++++++++++++++++
 3 files changed, 455 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 6f0777ee6cd6..621ad581f83a 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -38,6 +38,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
new file mode 100644
index 000000000000..0e1a6d953389
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phyboard-pollux-rdk.dts
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/leds-pca9532.h>
+#include <dt-bindings/pwm/pwm.h>
+#include "imx8mp-phycore-som.dtsi"
+
+/ {
+	model = "PHYTEC phyBOARD-Pollux i.MX8MP";
+	compatible = "phytec,imx8mp-phyboard-pollux-rdk",
+		     "phytec,imx8mp-phycore-som", "fsl,imx8mp";
+
+	chosen {
+		stdout-path = &uart2;
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
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
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	pinctrl-1 = <&pinctrl_i2c2_gpio>;
+	sda-gpios = <&gpio5 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio5 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	eeprom@51 {
+		compatible = "atmel,24c02";
+		reg = <0x51>;
+		pagesize = <16>;
+	};
+
+	leds@62 {
+		compatible = "nxp,pca9533";
+		reg = <0x62>;
+
+		led1 {
+			type = <PCA9532_TYPE_LED>;
+		};
+
+		led2 {
+			type = <PCA9532_TYPE_LED>;
+		};
+
+		led3 {
+			type = <PCA9532_TYPE_LED>;
+		};
+	};
+};
+
+&snvs_pwrkey {
+	status = "okay";
+};
+
+/* debug console */
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	status = "okay";
+};
+
+/* SD-Card */
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_pins>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_pins>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_pins>;
+	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__I2C2_SCL		0x400001c3
+			MX8MP_IOMUXC_I2C2_SDA__I2C2_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_i2c2_gpio: i2c2gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C2_SCL__GPIO5_IO16	0x1e3
+			MX8MP_IOMUXC_I2C2_SDA__GPIO5_IO17	0x1e3
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19	0x41
+		>;
+	};
+
+	pinctrl_uart2: uart2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_UART2_RXD__UART2_DCE_RX	0x49
+			MX8MP_IOMUXC_UART2_TXD__UART2_DCE_TX	0x49
+		>;
+	};
+
+	pinctrl_usdhc2_pins: usdhc2-gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CD_B__GPIO2_IO12	0x1c4
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x190
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d0
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d0
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d0
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d0
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d0
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x194
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d4
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d4
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d4
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d4
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d4
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK	0x196
+			MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD	0x1d6
+			MX8MP_IOMUXC_SD2_DATA0__USDHC2_DATA0	0x1d6
+			MX8MP_IOMUXC_SD2_DATA1__USDHC2_DATA1	0x1d6
+			MX8MP_IOMUXC_SD2_DATA2__USDHC2_DATA2	0x1d6
+			MX8MP_IOMUXC_SD2_DATA3__USDHC2_DATA3	0x1d6
+			MX8MP_IOMUXC_GPIO1_IO04__USDHC2_VSELECT	0xc1
+		>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
new file mode 100644
index 000000000000..44a8c2337cee
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-phycore-som.dtsi
@@ -0,0 +1,293 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 PHYTEC Messtechnik GmbH
+ * Author: Teresa Remmet <t.remmet@phytec.de>
+ */
+
+#include <dt-bindings/net/ti-dp83867.h>
+#include "imx8mp.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX8MP";
+	compatible = "phytec,imx8mp-phycore-som", "fsl,imx8mp";
+
+	aliases {
+		rtc0 = &rv3028;
+		rtc1 = &snvs_rtc;
+	};
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0 0x80000000>;
+	};
+};
+
+&A53_0 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_1 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_2 {
+	cpu-supply = <&buck2>;
+};
+
+&A53_3 {
+	cpu-supply = <&buck2>;
+};
+
+/* ethernet 1 */
+&fec {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec>;
+	phy-mode = "rgmii-id";
+	phy-handle = <&ethphy1>;
+	fsl,magic-packet;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy1: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <0>;
+			interrupt-parent = <&gpio1>;
+			interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
+			ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+			ti,tx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+			ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+			ti,clk-output-sel = <DP83867_CLK_O_SEL_OFF>;
+			enet-phy-lane-no-swap;
+		};
+	};
+};
+
+&i2c1 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1>;
+	pinctrl-1 = <&pinctrl_i2c1_gpio>;
+	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	scl-gpios = <&gpio5 14 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+
+	pmic: pmic@25 {
+		reg = <0x25>;
+		compatible = "nxp,pca9450c";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pmic>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <18 IRQ_TYPE_LEVEL_LOW>;
+
+		regulators {
+			buck1: BUCK1 {
+				regulator-compatible = "BUCK1";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck2: BUCK2 {
+				regulator-compatible = "BUCK2";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <2187500>;
+				regulator-boot-on;
+				regulator-always-on;
+				regulator-ramp-delay = <3125>;
+			};
+
+			buck4: BUCK4 {
+				regulator-compatible = "BUCK4";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck5: BUCK5 {
+				regulator-compatible = "BUCK5";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			buck6: BUCK6 {
+				regulator-compatible = "BUCK6";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo1: LDO1 {
+				regulator-compatible = "LDO1";
+				regulator-min-microvolt = <1600000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo2: LDO2 {
+				regulator-compatible = "LDO2";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <1150000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo3: LDO3 {
+				regulator-compatible = "LDO3";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo4: LDO4 {
+				regulator-compatible = "LDO4";
+				regulator-min-microvolt = <800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
+
+			ldo5: LDO5 {
+				regulator-compatible = "LDO5";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+			};
+		};
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+
+	rv3028: rtc@52 {
+		compatible = "microcrystal,rv3028";
+		reg = <0x52>;
+		trickle-resistor-ohms = <3000>;
+	};
+};
+
+/* eMMC */
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fec: fecgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_RXD2__ENET1_MDC		0x3
+			MX8MP_IOMUXC_SAI1_RXD3__ENET1_MDIO		0x3
+			MX8MP_IOMUXC_SAI1_RXD4__ENET1_RGMII_RD0		0x91
+			MX8MP_IOMUXC_SAI1_RXD5__ENET1_RGMII_RD1		0x91
+			MX8MP_IOMUXC_SAI1_RXD6__ENET1_RGMII_RD2		0x91
+			MX8MP_IOMUXC_SAI1_RXD7__ENET1_RGMII_RD3		0x91
+			MX8MP_IOMUXC_SAI1_TXC__ENET1_RGMII_RXC		0x91
+			MX8MP_IOMUXC_SAI1_TXFS__ENET1_RGMII_RX_CTL	0x91
+			MX8MP_IOMUXC_SAI1_TXD0__ENET1_RGMII_TD0		0x1f
+			MX8MP_IOMUXC_SAI1_TXD1__ENET1_RGMII_TD1		0x1f
+			MX8MP_IOMUXC_SAI1_TXD2__ENET1_RGMII_TD2		0x1f
+			MX8MP_IOMUXC_SAI1_TXD3__ENET1_RGMII_TD3		0x1f
+			MX8MP_IOMUXC_SAI1_TXD4__ENET1_RGMII_TX_CTL	0x1f
+			MX8MP_IOMUXC_SAI1_TXD5__ENET1_RGMII_TXC		0x1f
+			MX8MP_IOMUXC_GPIO1_IO15__GPIO1_IO15		0x11
+		>;
+	};
+
+	pinctrl_i2c1: i2c1grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__I2C1_SCL		0x400001c3
+			MX8MP_IOMUXC_I2C1_SDA__I2C1_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_i2c1_gpio: i2c1gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_I2C1_SCL__GPIO5_IO14	0x1e3
+			MX8MP_IOMUXC_I2C1_SDA__GPIO5_IO15	0x1e3
+		>;
+	};
+
+	pinctrl_pmic: pmicirqgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_SAI1_TXD6__GPIO4_IO18	0x141
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x190
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d0
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d0
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d0
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d0
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d0
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d0
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d0
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d0
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d0
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x190
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x194
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d4
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d4
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d4
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d4
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d4
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d4
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d4
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d4
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d4
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x194
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_NAND_WE_B__USDHC3_CLK	0x196
+			MX8MP_IOMUXC_NAND_WP_B__USDHC3_CMD	0x1d6
+			MX8MP_IOMUXC_NAND_DATA04__USDHC3_DATA0	0x1d6
+			MX8MP_IOMUXC_NAND_DATA05__USDHC3_DATA1	0x1d6
+			MX8MP_IOMUXC_NAND_DATA06__USDHC3_DATA2	0x1d6
+			MX8MP_IOMUXC_NAND_DATA07__USDHC3_DATA3	0x1d6
+			MX8MP_IOMUXC_NAND_RE_B__USDHC3_DATA4	0x1d6
+			MX8MP_IOMUXC_NAND_CE2_B__USDHC3_DATA5	0x1d6
+			MX8MP_IOMUXC_NAND_CE3_B__USDHC3_DATA6	0x1d6
+			MX8MP_IOMUXC_NAND_CLE__USDHC3_DATA7	0x1d6
+			MX8MP_IOMUXC_NAND_CE1_B__USDHC3_STROBE	0x196
+		>;
+	};
+
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0xc6
+		>;
+	};
+};
-- 
2.7.4

