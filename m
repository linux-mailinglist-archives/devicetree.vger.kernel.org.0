Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 538433E443A
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 12:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234354AbhHIKyC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 06:54:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234353AbhHIKyB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 06:54:01 -0400
X-Greylist: delayed 563 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 09 Aug 2021 03:53:41 PDT
Received: from antares.kleine-koenig.org (antares.kleine-koenig.org [IPv6:2a01:4f8:c0c:3a97::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B5B0C0613D3
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 03:53:41 -0700 (PDT)
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 27D9CC31FB5; Mon,  9 Aug 2021 12:44:15 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-oxnas@groups.io
Subject: [PATCH] ARM: oxnas: Add basic support for Zyxel NSA210
Date:   Mon,  9 Aug 2021 12:43:51 +0200
Message-Id: <20210809104351.2050187-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Patch-Hashes: v=1; h=sha256; i=2WLiqSIK2DZ2fBJHwbPXtZpQy6Ja3F3n0+qWfjGUYyg=; m=JF0Saz+zURrIOs0oVur2l9XnTlvtHIiQBEL7NIza7AA=; p=WFskAoKpkFrr7bTKPqCFeAks3nLoxk4kmUd01SHoFE0=; g=1c1a2c1298278170f31b6795ae792e3231f0b0e3
X-Patch-Sig: m=pgp; i=uwe@kleine-koenig.org; s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6; b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmERBuQACgkQwfwUeK3K7An4LAf/fx0 M02RinCHyn9yvmMMEx/6xCGwPY89qlvmw64/E4k6GoLX+DnZzZGCDWRLtznvcO/jdZy+ODyqucRnY 3HRpmvkSY4n73d0cTmxjUOGvFaziCisX5RhfmJh4nqA+H5JJwa57WXnOdVqhDYRbc5/gVCdracX+t Nyg8EdxAOfJmHVXH4L+DxKz19yPBvDk82w0w+wO1kGVz6DIPopL7+xbqX4fZcGDH28EKIvECTIAWA qz6xi+Ij4rWjZt0xkAIWEuMTHGFArzkHuzClJ4bUcRNiw92IRJWEBaQQE1F7k7TuUOOl++vzsGw9C RW9UaKVQ+YrwAXQPA89yRE+OAiCb+jA==
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a one bay NAS originally shipping Linux 2.6.24.4. It features

 - 128 MiB RAM
 - 2x eSATA (1x internal, 1x external)
 - 2x USB 2.0
 - 4 MiB NOR
 - battery powered RTC on i2c (PCF8563)
 - 1x GBit ethernet

For now only the low-hanging fruits are added to the device tree, eSATA,
USB, i2c and networking needs more work as there are no drivers
available.

Such a machine was offered to me by Richard Fröhning. Thanks!

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 .../devicetree/bindings/arm/oxnas.txt         |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/ox810se-zyxel-nsa210.dts    | 156 ++++++++++++++++++
 3 files changed, 158 insertions(+)
 create mode 100644 arch/arm/boot/dts/ox810se-zyxel-nsa210.dts

diff --git a/Documentation/devicetree/bindings/arm/oxnas.txt b/Documentation/devicetree/bindings/arm/oxnas.txt
index ac64e60f99f1..c1529d6c9666 100644
--- a/Documentation/devicetree/bindings/arm/oxnas.txt
+++ b/Documentation/devicetree/bindings/arm/oxnas.txt
@@ -11,4 +11,5 @@ Boards with the OX820 SoC shall have the following properties:
 
 Board compatible values:
   - "wd,mbwe" (OX810SE)
+  - "zyxel,nsa210" (OX810SE)
   - "cloudengines,pogoplugv3" (OX820)
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 863347b6b65e..720b7d7e342a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -913,6 +913,7 @@ dtb-$(CONFIG_ARCH_PXA) += \
 	pxa300-raumfeld-speaker-s.dtb
 dtb-$(CONFIG_ARCH_OXNAS) += \
 	ox810se-wd-mbwe.dtb \
+	ox810se-zyxel-nsa210.dtb \
 	ox820-cloudengines-pogoplug-series-3.dtb
 dtb-$(CONFIG_ARCH_QCOM) += \
 	qcom-apq8060-dragonboard.dtb \
diff --git a/arch/arm/boot/dts/ox810se-zyxel-nsa210.dts b/arch/arm/boot/dts/ox810se-zyxel-nsa210.dts
new file mode 100644
index 000000000000..88d0e065cf99
--- /dev/null
+++ b/arch/arm/boot/dts/ox810se-zyxel-nsa210.dts
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device tree file for Zyxel NSA-210
+ */
+
+/dts-v1/;
+#include "ox810se.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Zyxel NSA-210";
+
+	compatible = "zyxel,nsa210", "oxsemi,ox810se";
+
+	chosen {
+		bootargs = "console=ttyS2,115200n8";
+	};
+
+	memory {
+		reg = <0x48000000 0x8000000>;
+	};
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	flash@41000000 {
+		compatible = "cfi-flash";
+		reg = <0x41000000 0x00400000>;
+		bank-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partitions@0 {
+				label = "uboot";
+				reg = <0x00000000 0x00020000>;
+			};
+
+			partitions@1 {
+				label = "kernel";
+				reg = <0x00020000 0x001c0000>;
+			};
+
+			partitions@2 {
+				label = "initrd";
+				reg = <0x001e0000 0x001a0000>;
+			};
+
+			partitions@3 {
+				label = "etc";
+				reg = <0x00380000 0x00070000>;
+			};
+
+			/* 448k gap */
+
+			partitions@4 {
+				label = "env1";
+				reg = <0x003fc000 0x00002000>;
+			};
+
+			partitions@5 {
+				label = "env2";
+				reg = <0x003fe000 0x00002000>;
+			};
+		};
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		reset {
+			label = "Reset";
+			gpios = <&gpio0 2 GPIO_ACTIVE_LOW>;
+		};
+
+		power {
+			label = "Power";
+			gpios = <&gpio0 4 GPIO_ACTIVE_LOW>;
+		};
+
+		sync {
+			label = "Copy/Sync";
+			gpio = <&gpio0 10 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		/*
+		 * The vendor U-Boot enables a PWM to make this LED blink during boot.
+		 * This must be disabled to be able to drive the LED using the
+		 * GPIO as defined here by unsetting bit 9 in the
+		 * SYS_CTRL_GPIO_PWMSEL_CTRL_0 register.
+		 * E.g. do before starting Linux: mw 0x4500009c 0
+		 */
+		led1 {
+			label = "nsa210:green:sys";
+			gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+		};
+
+		led2 {
+			label = "nsa210:red:hdd";
+			gpios = <&gpio0 27 GPIO_ACTIVE_HIGH>;
+		};
+
+		led3 {
+			label = "nsa210:green:hdd";
+			gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
+		};
+
+		led4 {
+			label = "nsa210:red:usb";
+			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>;
+		};
+
+		led5 {
+			label = "nsa210:green:usb";
+			gpios = <&gpio0 31 GPIO_ACTIVE_HIGH>;
+		};
+
+		led6 {
+			label = "nsa210:red:esata";
+			gpios = <&gpio0 28 GPIO_ACTIVE_HIGH>;
+		};
+
+		led7 {
+			label = "nsa210:green:esata";
+			gpios = <&gpio0 26 GPIO_ACTIVE_HIGH>;
+		};
+
+		led8 {
+			label = "nsa210:red:copy";
+			gpios = <&gpio0 24 GPIO_ACTIVE_HIGH>;
+		};
+
+		led9 {
+			label = "nsa210:green:copy";
+			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+		};
+	};
+};
+
+&uart2 {
+	/*
+	 * To make this device work as expected bit 2 of register
+	 * SYS_CTRL_UART_CTRL must be set. Otherwise the interrupt doesn't
+	 * trigger, so console messages make it through, but userspace cannot
+	 * make use of it.
+	 * E.g. do before starting Linux: mw 0x45000094 4
+	 */
+	status = "okay";
+};
-- 
2.30.2

