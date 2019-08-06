Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7411083471
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:55:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733163AbfHFOzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:55:36 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:56477 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733162AbfHFOzf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:55:35 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id EFB86E0011;
        Tue,  6 Aug 2019 14:55:32 +0000 (UTC)
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
Subject: [PATCH 19/20] arm64: dts: marvell: Add support for Marvell CN9131-DB
Date:   Tue,  6 Aug 2019 16:54:59 +0200
Message-Id: <20190806145500.24109-20-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Grzegorz Jaszczyk <jaz@semihalf.com>

Extend the support of the CN9130 by adding an external CP115.

The last number indicates how many external CP115 are used.

New available interfaces:
* CP1 CRYPTO-0 (disabled)
* CP1 ETH-0 (SFI, problem with the SFP cage, disabled)
* CP1 GPIO-1
* CP1 GPIO-2
* CP1 I2C-0
* CP1 PCIe-0 x2
* CP1 SPI-1
* CP1 SATA-0-1
* CP1 USB3-1

Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/Makefile      |   1 +
 arch/arm64/boot/dts/marvell/cn9131-db.dts | 202 ++++++++++++++++++++++
 2 files changed, 203 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/cn9131-db.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 922910d05863..92767d5be069 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -10,3 +10,4 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8040-mcbin-singleshot.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-8080-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += cn9130-db.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += cn9131-db.dtb
diff --git a/arch/arm64/boot/dts/marvell/cn9131-db.dts b/arch/arm64/boot/dts/marvell/cn9131-db.dts
new file mode 100644
index 000000000000..3c975f98b2a3
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/cn9131-db.dts
@@ -0,0 +1,202 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Marvell International Ltd.
+ *
+ * Device tree for the CN9131-DB board.
+ */
+
+#include "cn9130-db.dts"
+
+/ {
+	model = "Marvell Armada CN9131-DB";
+	compatible = "marvell,cn9131", "marvell,cn9130",
+		     "marvell,armada-ap807-quad", "marvell,armada-ap807";
+
+	aliases {
+		gpio3 = &cp1_gpio1;
+		gpio4 = &cp1_gpio2;
+		ethernet3 = &cp1_eth0;
+		ethernet4 = &cp1_eth1;
+	};
+
+	cp1_reg_usb3_vbus0: cp1_usb3_vbus@0 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&cp1_xhci0_vbus_pins>;
+		regulator-name = "cp1-xhci0-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&cp1_gpio1 3 GPIO_ACTIVE_HIGH>;
+	};
+
+	cp1_usb3_0_phy0: cp1_usb3_phy0 {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&cp1_reg_usb3_vbus0>;
+	};
+
+	cp1_sfp_eth1: sfp-eth1 {
+		compatible = "sff,sfp";
+		i2c-bus = <&cp1_i2c0>;
+		los-gpio = <&cp1_gpio1 11 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&cp1_gpio1 10 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&cp1_gpio1 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&cp1_gpio1 8 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&cp1_sfp_pins>;
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
+ * Instantiate the first slave CP115
+ */
+
+#define CP11X_NAME		cp1
+#define CP11X_BASE		f4000000
+#define CP11X_PCIEx_MEM_BASE(iface) (0xe2000000 + (iface * 0x1000000))
+#define CP11X_PCIEx_MEM_SIZE(iface) 0xf00000
+#define CP11X_PCIE0_BASE	f4600000
+#define CP11X_PCIE1_BASE	f4620000
+#define CP11X_PCIE2_BASE	f4640000
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
+&cp1_crypto {
+	status = "disabled";
+};
+
+&cp1_ethernet {
+	status = "okay";
+};
+
+/* CON50 */
+&cp1_eth0 {
+	status = "disabled";
+	phy-mode = "10gbase-kr";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp1_comphy4 0>;
+	managed = "in-band-status";
+	sfp = <&cp1_sfp_eth1>;
+};
+
+&cp1_gpio1 {
+	status = "okay";
+};
+
+&cp1_gpio2 {
+	status = "okay";
+};
+
+&cp1_i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp1_i2c0_pins>;
+	clock-frequency = <100000>;
+};
+
+/* CON40 */
+&cp1_pcie0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp1_pcie_reset_pins>;
+	num-lanes = <2>;
+	num-viewport = <8>;
+	marvell,reset-gpio = <&cp1_gpio1 0 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp1_comphy0 0
+		&cp1_comphy1 0>;
+};
+
+&cp1_sata0 {
+	status = "okay";
+
+	/* CON32 */
+	sata-port@1 {
+		/* Generic PHY, providing serdes lanes */
+		phys = <&cp1_comphy5 1>;
+	};
+};
+
+/* U24 */
+&cp1_spi1 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&cp1_spi0_pins>;
+	reg = <0x700680 0x50>;
+
+	spi-flash@0 {
+		#address-cells = <0x1>;
+		#size-cells = <0x1>;
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		/* On-board MUX does not allow higher frequencies */
+		spi-max-frequency = <40000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "U-Boot-1";
+				reg = <0x0 0x200000>;
+			};
+
+			partition@400000 {
+				label = "Filesystem-1";
+				reg = <0x200000 0xe00000>;
+			};
+		};
+	};
+
+};
+
+&cp1_syscon0 {
+	cp1_pinctrl: pinctrl {
+		compatible = "marvell,cp115-standalone-pinctrl";
+
+		cp1_i2c0_pins: cp1-i2c-pins-0 {
+			marvell,pins = "mpp37", "mpp38";
+			marvell,function = "i2c0";
+		};
+		cp1_spi0_pins: cp1-spi-pins-0 {
+			marvell,pins = "mpp13", "mpp14", "mpp15", "mpp16";
+			marvell,function = "spi1";
+		};
+		cp1_xhci0_vbus_pins: cp1-xhci0-vbus-pins {
+			marvell,pins = "mpp3";
+			marvell,function = "gpio";
+		};
+		cp1_sfp_pins: sfp-pins {
+			marvell,pins = "mpp8", "mpp9", "mpp10", "mpp11";
+			marvell,function = "gpio";
+		};
+		cp1_pcie_reset_pins: cp1-pcie-reset-pins {
+			marvell,pins = "mpp0";
+			marvell,function = "gpio";
+		};
+	};
+};
+
+/* CON58 */
+&cp1_usb3_1 {
+	status = "okay";
+	usb-phy = <&cp1_usb3_0_phy0>;
+	/* Generic PHY, providing serdes lanes */
+	phys = <&cp1_comphy3 1>;
+	phy-names = "usb";
+};
-- 
2.20.1

