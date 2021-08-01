Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D80A33DCBA7
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231849AbhHAM3y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:54 -0400
Received: from mout.kundenserver.de ([212.227.126.134]:37295 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231803AbhHAM3x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:53 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MMXYN-1mQSpL4Ash-00JXBO; Sun, 01 Aug 2021 14:29:29 +0200
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
Subject: [PATCH 5/9] ARM: dts: bcm283x-rpi: Move Wifi/BT into separate dtsi
Date:   Sun,  1 Aug 2021 14:28:48 +0200
Message-Id: <1627820932-7247-6-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:V065umsLCW62fzJJtPkz66ZECcZMWTu7Tglw7Y1xI/FEBJwVxtQ
 PFp/XAxoYFvo7UWR6DkFP9LrZ4JBLX/hDhMaftX0xDV9AdsxTJ6F2BooX4YEN1aZwQS4woY
 iFDWkTVyxdC5HGrVNKhT6uoNpWzjfek1QzkG6gnoCrUl5SzYctZxG9jrjX5KhLXhog55u+e
 tmTLF/VXFpeUdikH6wZzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QnplmWGv/Kk=:2ei/TpwFJ6KCiYyIk4uE2E
 HBtE8WP2t1DL5ffsFAAqmXygmpM1Dl55Wr0EfV2gKqDxrlZpf7V3TyiLAEWMqsDTbgfBJKCCX
 abhErbnxtnZmPBuOnXdSdmitdhyEm0//5Ss0J6PLA5WkAHO1vtn+/al/ZukUrHUl3B07gbSax
 9rY5gHas4d5Ja84gN0BX5SAJvLb0HuG1A+WnUc67VtC7wX+Guvlvl5/oNRjhYM+UX+V4N0nRU
 wEWCB6VSrIp//Wo3DcfZx/dOs2kB23ujZy6OGDQRy0Bt5jUdiw2WRuA3Um1I+lylSAmPTC48c
 eerR14hnnNm1x7qdW/sGZCMOII2YwSmqGGHDa4pZRMbLIEt0y5yYJQXTJjZp3hDT5oofdn5Sx
 MCiL+UxnfEmrR7iI4Z5RiL4HVB74RsQ+Z/JeGiS5t1EHiKMUFjIpRmHUQQoI8Ujt8hQQu3gvv
 XMZho6FUM/vxcN0eSBLgd9qYXDDzjubbZNqrX4OjXDBn0vrlVfNv/q0Y4aeyoeEnIVEhAg9ux
 XNce6bQtW/1k+bFstK95jSYU7XcxlMc3Qg/iikkfcC/FNeGKlYY9fIKPBx42UG+MREQnmGx4Z
 0lUKds4u0zJGR+qRViENOLyn8VFFvkNqwwWuZoogDBEqB1BSMQJuXy2OuzJM3e8k+n+JMUuj2
 52WubtlFIWWD3JYz5x+umEa5FlKLx3l2nUi4uOJmqJLFEMHurKiG5Y1YtCFx/XuOkQ5Xh7veD
 i7SZpv+diEpj7ZwHxc6a3kF+n47uRsFe5JIPfkoAd7DD6P8dGxmZSSDLnvNQL2mDTRtc+ws/Y
 D14Z+enLG9Jp4cwtCIzJlo0Ikvk935FXuZ/kjgcxZENE7vsob65Ela/B1ZoRyT9apWG+eDPM/
 Sy8HjqwarzYsFpdFhEgQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A Wifi/BT chip is quite common for the Raspberry Pi boards. So move those
definitions into a separate dtsi in order to avoid copy & paste. This
change was inspired by a vendor tree patch from Phil Elwell.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts      | 38 +++++++-----------------------
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   | 31 +++++++-----------------
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 36 ++++++----------------------
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 36 +++++++---------------------
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      | 36 +++++++---------------------
 arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi | 34 ++++++++++++++++++++++++++
 6 files changed, 74 insertions(+), 137 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index abf8298..c54ba5cf 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -3,6 +3,7 @@
 #include "bcm2711.dtsi"
 #include "bcm2711-rpi.dtsi"
 #include "bcm283x-rpi-usb-peripheral.dtsi"
+#include "bcm283x-rpi-wifi-bt.dtsi"
 
 / {
 	compatible = "raspberrypi,4-model-b", "brcm,bcm2711";
@@ -26,11 +27,6 @@
 		};
 	};
 
-	wifi_pwrseq: wifi-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
-	};
-
 	sd_io_1v8_reg: sd_io_1v8_reg {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
@@ -56,6 +52,10 @@
 	};
 };
 
+&bt {
+	shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
+};
+
 &ddc0 {
 	status = "okay";
 };
@@ -178,23 +178,6 @@
 	status = "okay";
 };
 
-/* SDHCI is used to control the SDIO for wireless */
-&sdhci {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_gpio34>;
-	bus-width = <4>;
-	non-removable;
-	mmc-pwrseq = <&wifi_pwrseq>;
-	status = "okay";
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
 /* EMMC2 is used to drive the SD card */
 &emmc2 {
 	vqmmc-supply = <&sd_io_1v8_reg>;
@@ -236,13 +219,6 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ctsrts_gpio30 &uart0_gpio32>;
 	uart-has-rtscts;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		max-speed = <2000000>;
-		shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
-	};
 };
 
 /* uart1 is mapped to the pin header */
@@ -259,3 +235,7 @@
 &vec {
 	status = "disabled";
 };
+
+&wifi_pwrseq {
+	reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index 33b2b77..243236b 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -7,6 +7,7 @@
 #include "bcm2835.dtsi"
 #include "bcm2835-rpi.dtsi"
 #include "bcm283x-rpi-usb-otg.dtsi"
+#include "bcm283x-rpi-wifi-bt.dtsi"
 
 / {
 	compatible = "raspberrypi,model-zero-w", "brcm,bcm2835";
@@ -27,11 +28,10 @@
 			gpios = <&gpio 47 GPIO_ACTIVE_LOW>;
 		};
 	};
+};
 
-	wifi_pwrseq: wifi-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&gpio 41 GPIO_ACTIVE_LOW>;
-	};
+&bt {
+	shutdown-gpios = <&gpio 45 GPIO_ACTIVE_HIGH>;
 };
 
 &gpio {
@@ -110,19 +110,7 @@
 };
 
 &sdhci {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	pinctrl-names = "default";
 	pinctrl-0 = <&emmc_gpio34 &gpclk2_gpio43>;
-	bus-width = <4>;
-	mmc-pwrseq = <&wifi_pwrseq>;
-	non-removable;
-	status = "okay";
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
 };
 
 &sdhost {
@@ -135,13 +123,6 @@
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio32 &uart0_ctsrts_gpio30>;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		max-speed = <2000000>;
-		shutdown-gpios = <&gpio 45 GPIO_ACTIVE_HIGH>;
-	};
 };
 
 &uart1 {
@@ -149,3 +130,7 @@
 	pinctrl-0 = <&uart1_gpio14>;
 	status = "okay";
 };
+
+&wifi_pwrseq {
+	reset-gpios = <&gpio 41 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index 77099a7..d73daf5 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -3,6 +3,7 @@
 #include "bcm2837.dtsi"
 #include "bcm2836-rpi.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
+#include "bcm283x-rpi-wifi-bt.dtsi"
 
 / {
 	compatible = "raspberrypi,3-model-a-plus", "brcm,bcm2837";
@@ -130,28 +131,6 @@
 	status = "okay";
 };
 
-/*
- * SDHCI is used to control the SDIO for wireless
- *
- * WL_REG_ON and BT_REG_ON of the CYW43455 Wifi/BT module are driven
- * by a single GPIO. We can't give GPIO control to one of the drivers,
- * otherwise the other part would get unexpectedly disturbed.
- */
-&sdhci {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_gpio34>;
-	status = "okay";
-	bus-width = <4>;
-	non-removable;
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
 /* SDHOST is used to drive the SD card */
 &sdhost {
 	pinctrl-names = "default";
@@ -160,16 +139,15 @@
 	bus-width = <4>;
 };
 
-/* uart0 communicates with the BT module */
+/* uart0 communicates with the BT module
+ *
+ * WL_REG_ON and BT_REG_ON of the CYW43455 Wifi/BT module are driven
+ * by a single GPIO. We can't give GPIO control to one of the drivers,
+ * otherwise the other part would get unexpectedly disturbed.
+ */
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ctsrts_gpio30 &uart0_gpio32 &gpclk2_gpio43>;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		max-speed = <2000000>;
-	};
 };
 
 /* uart1 is mapped to the pin header */
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index 6101026..e12938b 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -4,6 +4,7 @@
 #include "bcm2836-rpi.dtsi"
 #include "bcm283x-rpi-lan7515.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
+#include "bcm283x-rpi-wifi-bt.dtsi"
 
 / {
 	compatible = "raspberrypi,3-model-b-plus", "brcm,bcm2837";
@@ -31,11 +32,10 @@
 			linux,default-trigger = "default-on";
 		};
 	};
+};
 
-	wifi_pwrseq: wifi-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
-	};
+&bt {
+	shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
 };
 
 &firmware {
@@ -137,23 +137,6 @@
 	status = "okay";
 };
 
-/* SDHCI is used to control the SDIO for wireless */
-&sdhci {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_gpio34>;
-	status = "okay";
-	bus-width = <4>;
-	non-removable;
-	mmc-pwrseq = <&wifi_pwrseq>;
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
 /* SDHOST is used to drive the SD card */
 &sdhost {
 	pinctrl-names = "default";
@@ -166,13 +149,6 @@
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ctsrts_gpio30 &uart0_gpio32 &gpclk2_gpio43>;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		max-speed = <2000000>;
-		shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
-	};
 };
 
 /* uart1 is mapped to the pin header */
@@ -181,3 +157,7 @@
 	pinctrl-0 = <&uart1_gpio14>;
 	status = "okay";
 };
+
+&wifi_pwrseq {
+	reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
index dd4a486..42b5383 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
@@ -4,6 +4,7 @@
 #include "bcm2836-rpi.dtsi"
 #include "bcm283x-rpi-smsc9514.dtsi"
 #include "bcm283x-rpi-usb-host.dtsi"
+#include "bcm283x-rpi-wifi-bt.dtsi"
 
 / {
 	compatible = "raspberrypi,3-model-b", "brcm,bcm2837";
@@ -24,11 +25,10 @@
 			gpios = <&expgpio 2 GPIO_ACTIVE_HIGH>;
 		};
 	};
+};
 
-	wifi_pwrseq: wifi-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
-	};
+&bt {
+	shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
 };
 
 &firmware {
@@ -134,13 +134,6 @@
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_gpio32 &gpclk2_gpio43>;
-	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		max-speed = <2000000>;
-		shutdown-gpios = <&expgpio 0 GPIO_ACTIVE_HIGH>;
-	};
 };
 
 /* uart1 is mapped to the pin header */
@@ -150,23 +143,6 @@
 	status = "okay";
 };
 
-/* SDHCI is used to control the SDIO for wireless */
-&sdhci {
-	#address-cells = <1>;
-	#size-cells = <0>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_gpio34>;
-	status = "okay";
-	bus-width = <4>;
-	non-removable;
-	mmc-pwrseq = <&wifi_pwrseq>;
-
-	brcmf: wifi@1 {
-		reg = <1>;
-		compatible = "brcm,bcm4329-fmac";
-	};
-};
-
 /* SDHOST is used to drive the SD card */
 &sdhost {
 	pinctrl-names = "default";
@@ -174,3 +150,7 @@
 	status = "okay";
 	bus-width = <4>;
 };
+
+&wifi_pwrseq {
+	reset-gpios = <&expgpio 1 GPIO_ACTIVE_LOW>;
+};
diff --git a/arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi b/arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi
new file mode 100644
index 0000000..0b64cc1
--- /dev/null
+++ b/arch/arm/boot/dts/bcm283x-rpi-wifi-bt.dtsi
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/ {
+	wifi_pwrseq: wifi-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+	};
+};
+
+/* SDHCI is used to control the SDIO for wireless */
+&sdhci {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_gpio34>;
+	bus-width = <4>;
+	non-removable;
+	mmc-pwrseq = <&wifi_pwrseq>;
+	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
+/* uart0 communicates with the BT module */
+&uart0 {
+	status = "okay";
+
+	bt: bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		max-speed = <2000000>;
+	};
+};
-- 
2.7.4

