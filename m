Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77963463B56
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 17:12:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232345AbhK3QPT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 11:15:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbhK3QPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 11:15:17 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB4CC061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 08:11:58 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1ms5jU-0006YV-Kl; Tue, 30 Nov 2021 17:11:52 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1ms5jT-001xE3-NJ; Tue, 30 Nov 2021 17:11:50 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1ms5jS-0000QL-Ct; Tue, 30 Nov 2021 17:11:50 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: [PATCH] arm: bcm2711-rpi-4-b: Add gpio offsets to line name array
Date:   Tue, 30 Nov 2021 17:11:47 +0100
Message-Id: <20211130161147.317653-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Patch-Hashes: v=1; h=sha256; i=kBVidhOxwShimdZcqlEPcyBTQw9/orJrGa8fDCbEi7I=; m=gn/r04GgTDu+2Wucrdhl+C9zSpEcfdMj4AZIWd0sxyg=; p=Ws+68farOMBRTTUg38TESQR8cYQZo+aKlzNlq2qqV9Y=; g=94a11cd512e065304801117b79115690e5c4d916
X-Patch-Sig: m=pgp; i=u.kleine-koenig@pengutronix.de; s=0x0D2511F322BFAB1C1580266BE2DCDD9132669BD6; b=iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmGmTUAACgkQwfwUeK3K7AnAzggAinM lRLsepI5c4CnO1yGqaz72ipFf/j+FDSzMqaJaSk/RJtN68aIeTTaIAr91HxqrLE5nKMSAcrbuU97R ZFUgdMhBiDo+NbS/CE0GoMFoE7cq0zvtjPL2enD6sH7dWliPsU28Zd1gSXQ7ZeMFaDuV/nijSbMzE lOloFxIQ7kitz9a4g8b5dvXw/yYFs1FhaiQ1gY8yPq8C7nvzMYTrv3L0a7uthUgKRJWnoZf1WZoDN f0f9EUKtb8MBwSkehwbELV5gVTKWi7ZUKT350laHt4PTzKJNKRfHQEy3EuPY5EBEvsRri0Jm9nDRs 9Zx8m9Vk4FD6w7wwYEVIIVTZb5r5U3Q==
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

this helps human readers considerably to determine the line name for a
given offset or vice versa.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 28 +++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 631dd5baf68d..4432412044de 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -65,12 +65,12 @@ &ddc1 {
 };
 
 &expgpio {
-	gpio-line-names = "BT_ON",
+	gpio-line-names = "BT_ON",		/*  0 */
 			  "WL_ON",
 			  "PWR_LED_OFF",
 			  "GLOBAL_RESET",
 			  "VDD_SD_IO_SEL",
-			  "CAM_GPIO",
+			  "CAM_GPIO",		/*  5 */
 			  "SD_PWR_ON",
 			  "";
 };
@@ -84,66 +84,66 @@ &gpio {
 	 * "FOO" = GPIO line named "FOO" on the schematic
 	 * "FOO_N" = GPIO line named "FOO" on schematic, active low
 	 */
-	gpio-line-names = "ID_SDA",
+	gpio-line-names = "ID_SDA",		/*  0 */
 			  "ID_SCL",
 			  "SDA1",
 			  "SCL1",
 			  "GPIO_GCLK",
-			  "GPIO5",
+			  "GPIO5",		/*  5 */
 			  "GPIO6",
 			  "SPI_CE1_N",
 			  "SPI_CE0_N",
 			  "SPI_MISO",
-			  "SPI_MOSI",
+			  "SPI_MOSI",		/* 10 */
 			  "SPI_SCLK",
 			  "GPIO12",
 			  "GPIO13",
 			  /* Serial port */
 			  "TXD1",
-			  "RXD1",
+			  "RXD1",		/* 15 */
 			  "GPIO16",
 			  "GPIO17",
 			  "GPIO18",
 			  "GPIO19",
-			  "GPIO20",
+			  "GPIO20",		/* 20 */
 			  "GPIO21",
 			  "GPIO22",
 			  "GPIO23",
 			  "GPIO24",
-			  "GPIO25",
+			  "GPIO25",		/* 25 */
 			  "GPIO26",
 			  "GPIO27",
 			  "RGMII_MDIO",
 			  "RGMIO_MDC",
 			  /* Used by BT module */
-			  "CTS0",
+			  "CTS0",		/* 30 */
 			  "RTS0",
 			  "TXD0",
 			  "RXD0",
 			  /* Used by Wifi */
 			  "SD1_CLK",
-			  "SD1_CMD",
+			  "SD1_CMD",		/* 35 */
 			  "SD1_DATA0",
 			  "SD1_DATA1",
 			  "SD1_DATA2",
 			  "SD1_DATA3",
 			  /* Shared with SPI flash */
-			  "PWM0_MISO",
+			  "PWM0_MISO",		/* 40 */
 			  "PWM1_MOSI",
 			  "STATUS_LED_G_CLK",
 			  "SPIFLASH_CE_N",
 			  "SDA0",
-			  "SCL0",
+			  "SCL0",		/* 45 */
 			  "RGMII_RXCLK",
 			  "RGMII_RXCTL",
 			  "RGMII_RXD0",
 			  "RGMII_RXD1",
-			  "RGMII_RXD2",
+			  "RGMII_RXD2",		/* 50 */
 			  "RGMII_RXD3",
 			  "RGMII_TXCLK",
 			  "RGMII_TXCTL",
 			  "RGMII_TXD0",
-			  "RGMII_TXD1",
+			  "RGMII_TXD1",		/* 55 */
 			  "RGMII_TXD2",
 			  "RGMII_TXD3";
 };

base-commit: fa55b7dcdc43c1aa1ba12bca9d2dd4318c2a0dbf
-- 
2.30.2

