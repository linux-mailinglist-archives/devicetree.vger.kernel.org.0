Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E03E2FBCC4
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 17:46:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389551AbhASQmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 11:42:17 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:55038 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389476AbhASQll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 11:41:41 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdSB6100342;
        Tue, 19 Jan 2021 10:39:28 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611074368;
        bh=WO1UZGPGCnPRdym99mlzBr57TbPPaHA4ECodHTR539s=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=Y8vJfo8fxFqmFPxhtXonVw8wzPyftS/DN3960VSbnW9kXceZqEDP4B/MiQUBF9i35
         8vGeRYnLzxUBWu+6LgbK92xfNhPOBFQfbUhS3+5ukjY9IA+GXZ63SQdqDpoyS14yHz
         RqkXcqpnfWbCT7b7xG2VgKD36QHQO7ARRbrCyW1A=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10JGdSrM054864
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 19 Jan 2021 10:39:28 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 Jan 2021 10:39:27 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 Jan 2021 10:39:27 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10JGdRRB072922;
        Tue, 19 Jan 2021 10:39:27 -0600
From:   Dave Gerlach <d-gerlach@ti.com>
To:     Nishanth Menon <nm@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v2 5/5] arm64: dts: ti: Add support for AM642 EVM
Date:   Tue, 19 Jan 2021 10:39:27 -0600
Message-ID: <20210119163927.774-6-d-gerlach@ti.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210119163927.774-1-d-gerlach@ti.com>
References: <20210119163927.774-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AM642 EValuation Module (EVM) is a board that provides access to
various peripherals available on the AM642 SoC, such as PCIe, USB 2.0,
CPSW Ethernet, ADC, and more.

Introduce support for the AM642 EVM to enable mmc boot, including
enabling UART, I2C, and SPI on the board.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Suman Anna <s-anna@ti.com>
Signed-off-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
---
v1 -> v2:
* Add regulators on board needed to enable sdhci for mmc card
* Add pin settings for new nodes
* Add i2c1 and gpio exapnder needed for mmc
* Add support for OSD9616P0899-10 96x16 passive matrix display.
* Add support for onboard spi eeprom
* Mark mcu uart, i2c, and spi nodes as disabled
* Add sdhci nodes which enables mmc rootfs.

 arch/arm64/boot/dts/ti/Makefile         |   2 +
 arch/arm64/boot/dts/ti/k3-am642-evm.dts | 258 ++++++++++++++++++++++++
 2 files changed, 260 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am642-evm.dts

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index 65506f21ba30..c687739e2bca 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -11,3 +11,5 @@ dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
+
+dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
new file mode 100644
index 000000000000..50b1ae1314a1
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -0,0 +1,258 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/leds/common.h>
+#include "k3-am642.dtsi"
+
+/ {
+	compatible =  "ti,am642-evm", "ti,am642";
+	model = "Texas Instruments AM642 EVM";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* 2G RAM */
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
+
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>; /* for OP-TEE */
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+
+	evm_12v0: fixedregulator-evm12v0 {
+		/* main DC jack */
+		compatible = "regulator-fixed";
+		regulator-name = "evm_12v0";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_5v0: fixedregulator-vsys5v0 {
+		/* output of LM5140 */
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&evm_12v0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_3v3: fixedregulator-vsys3v3 {
+		/* output of LM5140 */
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&evm_12v0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_mmc1: fixed-regulator-sd {
+		/* TPS2051BD */
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_mmc1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		vin-supply = <&vsys_3v3>;
+		gpio = <&exp1 6 GPIO_ACTIVE_HIGH>;
+	};
+
+	vddb: fixedregulator-vddb {
+		compatible = "regulator-fixed";
+		regulator-name = "vddb_3v3_display";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vsys_3v3>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "am64-evm:red:heartbeat";
+			gpios = <&exp1 16 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+			function = LED_FUNCTION_HEARTBEAT;
+			default-state = "off";
+		};
+	};
+};
+
+&main_pmx0 {
+	main_mmc1_pins_default: main-mmc1-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0294, PIN_INPUT_PULLUP, 0) /* (J19) MMC1_CMD */
+			AM64X_IOPAD(0x028c, PIN_INPUT_PULLDOWN, 0) /* (L20) MMC1_CLK */
+			AM64X_IOPAD(0x0288, PIN_INPUT_PULLUP, 0) /* (K21) MMC1_DAT0 */
+			AM64X_IOPAD(0x0284, PIN_INPUT_PULLUP, 0) /* (L21) MMC1_DAT1 */
+			AM64X_IOPAD(0x0280, PIN_INPUT_PULLUP, 0) /* (K19) MMC1_DAT2 */
+			AM64X_IOPAD(0x027c, PIN_INPUT_PULLUP, 0) /* (K18) MMC1_DAT3 */
+			AM64X_IOPAD(0x0298, PIN_INPUT_PULLUP, 0) /* (D19) MMC1_SDCD */
+			AM64X_IOPAD(0x029c, PIN_INPUT, 0) /* (C20) MMC1_SDWP */
+			AM64X_IOPAD(0x0290, PIN_INPUT, 0) /* MMC1_CLKLB */
+		>;
+	};
+
+	main_uart0_pins_default: main-uart0-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0238, PIN_INPUT, 0) /* (B16) UART0_CTSn */
+			AM64X_IOPAD(0x023c, PIN_OUTPUT, 0) /* (A16) UART0_RTSn */
+			AM64X_IOPAD(0x0230, PIN_INPUT, 0) /* (D15) UART0_RXD */
+			AM64X_IOPAD(0x0234, PIN_OUTPUT, 0) /* (C16) UART0_TXD */
+		>;
+	};
+
+	main_i2c1_pins_default: main-i2c1-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0268, PIN_INPUT_PULLUP, 0) /* (C18) I2C1_SCL */
+			AM64X_IOPAD(0x026c, PIN_INPUT_PULLUP, 0) /* (B19) I2C1_SDA */
+		>;
+	};
+
+	main_spi0_pins_default: main-spi0-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0210, PIN_INPUT, 0) /* (D13) SPI0_CLK */
+			AM64X_IOPAD(0x0208, PIN_OUTPUT, 0) /* (D12) SPI0_CS0 */
+			AM64X_IOPAD(0x0214, PIN_OUTPUT, 0) /* (A13) SPI0_D0 */
+			AM64X_IOPAD(0x0218, PIN_INPUT, 0) /* (A14) SPI0_D1 */
+		>;
+	};
+};
+
+&main_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart0_pins_default>;
+};
+
+/* main_uart1 is reserved for firmware usage */
+&main_uart1 {
+	status = "reserved";
+};
+
+&main_uart2 {
+	status = "disabled";
+};
+
+&main_uart3 {
+	status = "disabled";
+};
+
+&main_uart4 {
+	status = "disabled";
+};
+
+&main_uart5 {
+	status = "disabled";
+};
+
+&main_uart6 {
+	status = "disabled";
+};
+
+&mcu_uart0 {
+	status = "disabled";
+};
+
+&mcu_uart1 {
+	status = "disabled";
+};
+
+&main_i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c1_pins_default>;
+	clock-frequency = <400000>;
+
+	exp1: gpio@22 {
+		compatible = "ti,tca6424";
+		reg = <0x22>;
+		gpio-controller;
+		#gpio-cells = <2>;
+	};
+
+	/* osd9616p0899-10 */
+	display@3c {
+		compatible = "solomon,ssd1306fb-i2c";
+		reg = <0x3c>;
+		reset-gpios = <&exp1 14 GPIO_ACTIVE_LOW>;
+		vbat-supply = <&vddb>;
+		solomon,height = <16>;
+		solomon,width = <96>;
+		solomon,com-seq;
+		solomon,com-invdir;
+		solomon,page-offset = <0>;
+		solomon,prechargep1 = <2>;
+		solomon,prechargep2 = <13>;
+	};
+};
+
+&mcu_i2c0 {
+	status = "disabled";
+};
+
+&mcu_i2c1 {
+	status = "disabled";
+};
+
+&main_spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_spi0_pins_default>;
+	ti,pindir-d0-out-d1-in = <1>;
+	eeprom@0 {
+		compatible = "eeprom-93xx46";
+		reg = <0>;
+		spi-max-frequency = <1000000>;
+		spi-cs-high;
+		data-size = <16>;
+	};
+};
+
+&mcu_spi0 {
+	status = "disabled";
+};
+
+&mcu_spi1 {
+	status = "disabled";
+};
+
+&sdhci0 {
+	/* emmc */
+	bus-width = <8>;
+	non-removable;
+	ti,driver-strength-ohm = <50>;
+	disable-wp;
+};
+
+&sdhci1 {
+	/* SD/MMC */
+	vmmc-supply = <&vdd_mmc1>;
+	pinctrl-names = "default";
+	bus-width = <4>;
+	pinctrl-0 = <&main_mmc1_pins_default>;
+	ti,driver-strength-ohm = <50>;
+	disable-wp;
+};
-- 
2.28.0

