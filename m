Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A1A9CBD2B
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:28:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389050AbfJDO2M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:28:12 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:35673 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389020AbfJDO2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:28:12 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9BEA7C0008;
        Fri,  4 Oct 2019 14:28:08 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 21/21] arm64: dts: marvell: Add support for Marvell CN9132-DB
Date:   Fri,  4 Oct 2019 16:27:38 +0200
Message-Id: <20191004142738.7370-22-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Extend the support of the CN9131 with yet another additional CP115.

The last number indicates how many external CP115 are used.

New available interfaces:
* CP2 CRYPTO-0 (disabled)
* CP2 ETH-0 (SFI, problem with the SFP cage, disabled)
* CP2 GPIO-1
* CP2 GPIO-2
* CP2 I2C-0
* CP2 PCIe-0 x2
* CP2 PCIe-2 x1 (disabled)
* CP2 SDHCI-0
* CP2 USB3-1 (High-speed)

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/Makefile      |   1 +
 arch/arm64/boot/dts/marvell/cn9132-db.dts | 221 ++++++++++++++++++++++
 2 files changed, 222 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9132-db.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 9fbf8f460153..f1b5127f0b89 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -12,3 +12,4 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin-singleshot.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8080-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9130-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9131-db.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9132-db.dtb
diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dts b/arch/arm64/boot/dts/marvell/cn9132-db.dts
new file mode 100644
index 000000000000..4ef0df3097ca
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9132-db.dts
@@ -0,0 +1,221 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell International Ltd.
+ *
+ * Device tree for the CN9132-DB board.
+ */
+
+#include "cn9131-db.dts"
+
+/ {
+	model = "Marvell Armada CN9132-DB";
+	compatible = "marvell,cn9132", "marvell,cn9131", "marvell,cn9130",
+		     "marvell,armada-ap807-quad", "marvell,armada-ap807";
+
+	aliases {
+		gpio5 = &cp2_gpio1;
+		gpio6 = &cp2_gpio2;
+		ethernet5 = &cp2_eth0;
+	};
+
+	cp2_reg_usb3_vbus0: cp2_usb3_vbus@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp2-xhci0-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&cp2_gpio1 2 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp2_usb3_0_phy0: cp2_usb3_phy0 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp2_reg_usb3_vbus0>;
+	};
+
+	cp2_reg_usb3_vbus1: cp2_usb3_vbus@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp2-xhci1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&cp2_gpio1 3 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp2_usb3_0_phy1: cp2_usb3_phy1 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp2_reg_usb3_vbus1>;
+	};
+
+	cp2_reg_sd_vccq: cp2_sd_vccq@0 {
+		compatible = "regulator-gpio";
+		regulator-name = "cp2_sd_vcc";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&cp2_gpio2 17 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1 3300000 0x0>;
+	};
+
+	cp2_sfp_eth0: sfp-eth0 {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp2_sfpp0_i2c>;
+		los-gpio = <&cp2_module_expander1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&cp2_module_expander1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&cp2_module_expander1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&cp2_module_expander1 8 GPIO_ACTIVE_HIGH>;
+		/*
+		 * SFP cages are unconnected on early PCBs because of an the I2C
+		 * lanes not being connected. Prevent the port for being
+		 * unusable by disabling the SFP node.
+		 */
+		status = "disabled";
+	};
+};
+
+/*
+ * Instantiate the second slave CP115
+ */
+
+#define CP11X_NAME		cp2
+#define CP11X_BASE		f6000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xe5000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
+#define CP11X_PCIE0_BASE	f6600000
+#define CP11X_PCIE1_BASE	f6620000
+#define CP11X_PCIE2_BASE	f6640000
+
+#include "armada-cp115.dtsi"
+
+#undef CP11X_NAME
+#undef CP11X_BASE
+#undef CP11X_PCIEx_MEM_BASE
+#undef CP11X_PCIEx_MEM_SIZE
+#undef CP11X_PCIE0_BASE
+#undef CP11X_PCIE1_BASE
+#undef CP11X_PCIE2_BASE
+
+&cp2_crypto {
+	status = "disabled";
+};
+
+&cp2_ethernet {
+	status = "okay";
+};
+
+/* SLM-1521-V2, CON9 */
+&cp2_eth0 {
+	status = "disabled";
+	phy-mode = "10gbase-kr";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy4 0>;
+	managed = "in-band-status";
+	sfp = <&cp2_sfp_eth0>;
+};
+
+&cp2_gpio1 {
+	status = "okay";
+};
+
+&cp2_gpio2 {
+	status = "okay";
+};
+
+&cp2_i2c0 {
+	clock-frequency = <100000>;
+
+	/* SLM-1521-V2 - U3 */
+	i2c-mux@72 {
+		compatible = "nxp,pca9544";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x72>;
+		cp2_sfpp0_i2c: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+			/* U12 */
+			cp2_module_expander1: pca9555@21 {
+				compatible = "nxp,pca9555";
+				pinctrl-names = "default";
+				gpio-controller;
+				#gpio-cells = <2>;
+				reg = <0x21>;
+			};
+		};
+	};
+};
+
+/* SLM-1521-V2, CON6 */
+&cp2_pcie0 {
+	status = "okay";
+	num-lanes = <2>;
+	num-viewport = <8>;
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy0 0
+		&cp2_comphy1 0>;
+};
+
+/* SLM-1521-V2, CON8 */
+&cp2_pcie2 {
+	status = "okay";
+	num-lanes = <1>;
+	num-viewport = <8>;
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy5 2>;
+};
+
+&cp2_sata0 {
+	status = "okay";
+
+	/* SLM-1521-V2, CON4 */
+	sata-port@0 {
+		/* Generic PHY, providing serdes lanes */
+		phys = <&cp2_comphy2 0>;
+	};
+};
+
+/* CON 2 on SLM-1683 - microSD */
+&cp2_sdhci0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp2_sdhci_pins>;
+	bus-width = <4>;
+	cd-gpios = <&cp2_gpio2 23 GPIO_ACTIVE_LOW>;
+	vqmmc-supply = <&cp2_reg_sd_vccq>;
+};
+
+&cp2_syscon0 {
+	cp2_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+
+		cp2_i2c0_pins: cp2-i2c-pins-0 {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+		cp2_sdhci_pins: cp2-sdhi-pins-0 {
+			marvell,pins = "mpp56", "mpp57", "mpp58",
+				       "mpp59", "mpp60", "mpp61";
+			marvell,function = "sdio";
+		};
+	};
+};
+
+&cp2_usb3_0 {
+	status = "okay";
+	usb-phy = <&cp2_usb3_0_phy0>;
+	phy-names = "usb";
+};
+
+/* SLM-1521-V2, CON11 */
+&cp2_usb3_1 {
+	status = "okay";
+	usb-phy = <&cp2_usb3_0_phy1>;
+	phy-names = "usb";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp2_comphy3 1>;
+};
-- 
2.20.1

