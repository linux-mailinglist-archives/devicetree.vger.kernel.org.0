Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA4243DCBA4
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231461AbhHAM3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:52 -0400
Received: from mout.kundenserver.de ([212.227.126.133]:41657 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231722AbhHAM3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:51 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mv2tE-1n0thp3QtU-00qwn3; Sun, 01 Aug 2021 14:29:29 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 7/9] ARM: dts: Add Raspberry Pi Compute Module 4
Date:   Sun,  1 Aug 2021 14:28:50 +0200
Message-Id: <1627820932-7247-8-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:WbKKs17Qhop5sXa6JmjERDfiVmI2V5q0a28h4r4dQTTfP/2Upi9
 5OiB+pnfiGdXgnucQqrfqXUFbcPSnMmjPqikvWjRqhrm53oBDpiWipLBG+6187SFW8D4o30
 ptBncSpPMnhiTeLymk15UFtdcoh0nrg64H+Uj8HlLJMYe96BGIIg0wpF2j73aeNuE7t5nhI
 LuIBbY+LWjeOscw+rCSEg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:v5ieOR9NT6w=:51JGS52qdu/Z8raPsZ1Ph6
 C9MlDq8vy0z0VPB3nZioxfpg2nxwl/YcSB979DYui+PEmpyepplQAXl2k1PfY5QmH/frJgIie
 aFMZ2jNmOn2P3qWCTasQCl9aNClw3os2Cup3n87ZFQJMwxt/TSLPw/QYC+DOh0oNpa4HTE9NA
 +1hgPOIGLrxLwR3OsQE3tdTM6/8Iroff+u4eZgFAV7G0oRsDzUr1WjZ7Ak9gecvGm5sMhqgB/
 9Mc5wvXjGrhzsfLFBihNWcJrxje6mvhsJgVU7OQEIBC5uJphK8dCv7dKEHd7gPB6Zl/fwk0Zf
 TsbfrH9EoZeRQgX8KBZVEEv6/lY3BIpgs6CCDWTwnkdM3MtXqu+2pCnyVjk/QL1SdaTlJ31bD
 pGZvgfG6BkFzLTSvsE/h8BPoOwwpUDCzGVb10sQiYQLwZiUpg4zmCZUR7WFywpSYZBUXq2esV
 q9MJQ4EFVOdN8qW+WmaRBENmVWNK+VushyKPIvMEV/IAdekYx6lzcwN5z7BsyWdxk8MHRZ5TD
 6e8rpcy4DXCrGmalpm80R9Jt+eBKOzVAVr/vcMace8N358J61MEXFhThInKzUpTsx/xLQseVz
 v/7im5RkATO4Z7ahMoL2uqXV4UXDwtXcFD2ygeo2O1V6+w9OY8R8qId2kyqisQRVs0fKuB+VZ
 YYVUKCEU3ktRSpIS1j9Ri1lJpxKKVRxMxfnGUxIa/d0VZrGs65h2b0SGVhd1o5ba/iSw/ZIzC
 fmC2BM49VBHkXIxZln/a8kUwH8f74xrqW2Tzw+ZVHj33ghhpL6asELJg8GLnMkgPlUyA/w+56
 k+b+aeW0Q2HuLBhJgWHdg0FOFSKnaMlaFZOHR3TihyW75P8S6NHspykPz3WZNw7X7MJegT60P
 eyn+jnqRGQ8p/mzNN/TQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Raspberry Pi Compute Module 4 (CM4) are SoMs which contain the
following:
  * BCM2711 quad core processor
  * up to 8 GB RAM
  * up to 32 GB eMMC
  * a GPIO expander
  * Gigabit PHY BCM54210PE
  * Wifi/BT module with internal and external antenna

The eMMC and the Wifi/BT module are optional.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi | 112 +++++++++++++++++++++++++++++++++
 1 file changed, 112 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi

diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi b/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi
new file mode 100644
index 0000000..2fa8704
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2711.dtsi"
+#include "bcm2711-rpi.dtsi"
+#include "bcm283x-rpi-wifi-bt.dtsi"
+
+/ {
+	compatible = "raspberrypi,4-compute-module", "brcm,bcm2711";
+
+	chosen {
+		/* 8250 auxiliary UART instead of pl011 */
+		stdout-path = "serial1:115200n8";
+	};
+
+	sd_io_1v8_reg: sd_io_1v8_reg {
+		compatible = "regulator-gpio";
+		regulator-name = "vdd-sd-io";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+		regulator-settling-time-us = <5000>;
+		gpios = <&expgpio 4 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x1>,
+			 <3300000 0x0>;
+		status = "okay";
+	};
+
+	sd_vcc_reg: sd_vcc_reg {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&expgpio 6 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&bt {
+	shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
+};
+
+/*
+ * EMMC2 is used to drive the eMMC
+ * Unfortunately the IP block seems to be limited to 100 MHz
+ */
+&emmc2 {
+	bus-width = <8>;
+	vqmmc-supply = <&sd_io_1v8_reg>;
+	vmmc-supply = <&sd_vcc_reg>;
+	broken-cd;
+	status = "okay";
+};
+
+&expgpio {
+	gpio-line-names = "BT_ON",
+			  "WL_ON",
+			  "PWR_LED_OFF",
+			  "ANT1",
+			  "VDD_SD_IO_SEL",
+			  "CAM_GPIO",
+			  "SD_PWR_ON",
+			  "ANT2";
+
+	ant1: ant1-hog {
+		/* internal antenna enabled */
+		gpio-hog;
+		gpios = <3 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "ant1";
+	};
+
+	ant2: ant2-hog {
+		/* external antenna disabled */
+		gpio-hog;
+		gpios = <7 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "ant2";
+	};
+};
+
+&genet {
+	phy-handle = <&phy1>;
+	phy-mode = "rgmii-rxid";
+	status = "okay";
+};
+
+&genet_mdio {
+	phy1: ethernet-phy@0 {
+		/* No PHY interrupt */
+		reg = <0x0>;
+	};
+};
+
+/* uart0 communicates with the BT module */
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_ctsrts_gpio30 &uart0_gpio32>;
+	uart-has-rtscts;
+};
+
+/* uart1 is mapped to the pin header */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_gpio14>;
+	status = "okay";
+};
+
+&wifi_pwrseq {
+	reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
+};
-- 
2.7.4

