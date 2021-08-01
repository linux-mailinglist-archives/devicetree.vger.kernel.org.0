Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E7243DCBA6
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231527AbhHAM3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:53 -0400
Received: from mout.kundenserver.de ([212.227.126.134]:59389 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231802AbhHAM3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:52 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MmDAW-1ms3z81BMe-00iFcv; Sun, 01 Aug 2021 14:29:30 +0200
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
Subject: [PATCH 8/9] ARM: dts: Add Raspberry Pi Compute Module 4 IO Board
Date:   Sun,  1 Aug 2021 14:28:51 +0200
Message-Id: <1627820932-7247-9-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:2jetCim34p6ap75Xqy26PhO2lduWOyLudtsU2pHgNjTSm/s3eZx
 /Wd+7vDECXOnzuYajk3G12zvNjY1Tf8p3EwPczluK7cN4+iBjz04DRVgptndBolndB76/rL
 xiMVMqHiVXm3fL+XC4f5d6e2aAgS3RjmuMWFgeCQxoipca0uYtfVvvF+mFOi5BOuntnoEbV
 rLX+DCT4lprPTLSzgJutA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yx0vFK5YTAo=:85YUabGtmLoa6s4/06fZi8
 w3/6MYhRZL+hjfcWSvxGxCB8fmwr83nYiPVK7xN2tpgWTw4GHJc2TuffUu8RzSf/BM4aKDr+c
 bFASPafTZHFyiYYefwbkgcqrygA7+OwVldV3jzRK/LwY/Ijji+VOFCUa0upaD0EKi5uyI7/4o
 /Awz4wpoVOS3lewBqdbaVaeeGtxDaTEX8+9UILEPq6liuwRkHeeA/yqmcz5rSAyDj6JQbuug3
 71z8Iki+ebB8mKtEx+vcJhBogiPwN7UFpUh6FUZLkfRLaHQTnscMYFvOskyIC+l2rlEBu7Y4S
 dLr+4gVqJ4iHb+TuKYNsbXy8o0wdMOEO5Rsv9gOviNigceZp4L4XVGC99r9KqBU2A+xIwRh3e
 Ek/8MI62oaqskcgjH/QyfNd56JDfF9mb3iZXrSMJy6hNekCB7h1cYHB2PM5fPQADwvXm38WE0
 FFxmLKbjAEu5MTZ2OWfaYW7ru0DDB1A7mNQgH+rLrrJa8LZePYcSt42qCeJ1Rp9SIM9fXmKcm
 Z2FNdxPgxXT4PaC9Mgxp1ZcAimAo0kj08g/iWt4csMLpZzyj0/2haHyTu05wMgKMyJbh4V88c
 cLSByZax2FRXlhSU2LdGRq5/GGLcejhP1E92F0S+ZN/kRS5J8NOnxvQm+9IO/K+++hpe8GMUn
 zLC23rwQkahuMbBV0DXPpqqPgX4/Mz7oTGwNGSaHiCU+tphi2I8HTIufmEsYTiV1zxvBmNQLt
 LasThY/8Hro9qxWMiZ32wjgqr7WrPZWwIQrJnPj6Zu8A6yOdqRt2eIopWjLerp7UPR8BvrGkG
 mq//jz2Te8k0gE04lRZTol2EuDYMKLcklupyoSxVeI3jwO6mUxmNd6uA4X1eOz0RwJ5WeS5Ze
 SmQlW42nSfgeTyYrOfMA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the matching carrier for Raspberry Pi Compute Module 4.
Instead of xHCI USB host controller there is just a USB 2.0 interface
connected to the DWC2 controller from the BCM2711. As a result
there is a free PCIe Gen 2 socket. Also there are 2 full-size HDMI 2.0
connectors.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 arch/arm/boot/dts/Makefile               |   1 +
 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts | 138 +++++++++++++++++++++++++++++++
 2 files changed, 139 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 863347b..d3f25b9 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -90,6 +90,7 @@ dtb-$(CONFIG_ARCH_BCM2835) += \
 	bcm2837-rpi-cm3-io3.dtb \
 	bcm2711-rpi-400.dtb \
 	bcm2711-rpi-4-b.dtb \
+	bcm2711-rpi-cm4-io.dtb \
 	bcm2835-rpi-zero.dtb \
 	bcm2835-rpi-zero-w.dtb
 dtb-$(CONFIG_ARCH_BCM_5301X) += \
diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
new file mode 100644
index 0000000..19600b6
--- /dev/null
+++ b/arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+#include "bcm2711-rpi-cm4.dtsi"
+#include "bcm283x-rpi-usb-host.dtsi"
+
+/ {
+	model = "Raspberry Pi Compute Module 4 IO Board";
+
+	leds {
+		led-act {
+			gpios = <&gpio 42 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-pwr {
+			label = "PWR";
+			gpios = <&expgpio 2 GPIO_ACTIVE_LOW>;
+			default-state = "keep";
+			linux,default-trigger = "default-on";
+		};
+	};
+};
+
+&ddc0 {
+	status = "okay";
+};
+
+&ddc1 {
+	status = "okay";
+};
+
+&gpio {
+	/*
+	 * Parts taken from rpi_SCH_4b_4p0_reduced.pdf and
+	 * the official GPU firmware DT blob.
+	 *
+	 * Legend:
+	 * "FOO" = GPIO line named "FOO" on the schematic
+	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
+	 */
+	gpio-line-names = "ID_SDA",
+			  "ID_SCL",
+			  "SDA1",
+			  "SCL1",
+			  "GPIO_GCLK",
+			  "GPIO5",
+			  "GPIO6",
+			  "SPI_CE1_N",
+			  "SPI_CE0_N",
+			  "SPI_MISO",
+			  "SPI_MOSI",
+			  "SPI_SCLK",
+			  "GPIO12",
+			  "GPIO13",
+			  /* Serial port */
+			  "TXD1",
+			  "RXD1",
+			  "GPIO16",
+			  "GPIO17",
+			  "GPIO18",
+			  "GPIO19",
+			  "GPIO20",
+			  "GPIO21",
+			  "GPIO22",
+			  "GPIO23",
+			  "GPIO24",
+			  "GPIO25",
+			  "GPIO26",
+			  "GPIO27",
+			  "RGMII_MDIO",
+			  "RGMIO_MDC",
+			  /* Used by BT module */
+			  "CTS0",
+			  "RTS0",
+			  "TXD0",
+			  "RXD0",
+			  /* Used by Wifi */
+			  "SD1_CLK",
+			  "SD1_CMD",
+			  "SD1_DATA0",
+			  "SD1_DATA1",
+			  "SD1_DATA2",
+			  "SD1_DATA3",
+			  /* Shared with SPI flash */
+			  "PWM0_MISO",
+			  "PWM1_MOSI",
+			  "STATUS_LED_G_CLK",
+			  "SPIFLASH_CE_N",
+			  "SDA0",
+			  "SCL0",
+			  "RGMII_RXCLK",
+			  "RGMII_RXCTL",
+			  "RGMII_RXD0",
+			  "RGMII_RXD1",
+			  "RGMII_RXD2",
+			  "RGMII_RXD3",
+			  "RGMII_TXCLK",
+			  "RGMII_TXCTL",
+			  "RGMII_TXD0",
+			  "RGMII_TXD1",
+			  "RGMII_TXD2",
+			  "RGMII_TXD3";
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi1 {
+	status = "okay";
+};
+
+&genet {
+	status = "okay";
+};
+
+&pixelvalve0 {
+	status = "okay";
+};
+
+&pixelvalve1 {
+	status = "okay";
+};
+
+&pixelvalve2 {
+	status = "okay";
+};
+
+&pixelvalve4 {
+	status = "okay";
+};
+
+&vc4 {
+	status = "okay";
+};
+
+&vec {
+	status = "disabled";
+};
-- 
2.7.4

