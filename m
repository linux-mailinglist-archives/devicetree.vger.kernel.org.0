Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E68A167D57
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 13:21:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727686AbgBUMVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 07:21:45 -0500
Received: from albert.telenet-ops.be ([195.130.137.90]:39796 "EHLO
        albert.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726410AbgBUMVp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 07:21:45 -0500
Received: from ramsan ([84.195.182.253])
        by albert.telenet-ops.be with bizsmtp
        id 5QMi2200D5USYZQ06QMinh; Fri, 21 Feb 2020 13:21:42 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j57JO-0002E9-7I; Fri, 21 Feb 2020 13:21:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j57JO-0008LS-5n; Fri, 21 Feb 2020 13:21:42 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Marcus Wolf <linux@Wolf-Entwicklungen.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 3/3] staging: pi433: overlay: Convert to sugar syntax
Date:   Fri, 21 Feb 2020 13:21:33 +0100
Message-Id: <20200221122133.32024-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221122133.32024-1-geert+renesas@glider.be>
References: <20200221122133.32024-1-geert+renesas@glider.be>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Using overlay sugar syntax makes the DTS overlay files easier to read
(and write).

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Why are there two separate fragments for spi0? Can't they be combined?
Why do you need the spidev@1 entry?
---
 .../devicetree/pi433-overlay.dts              | 79 ++++++++-----------
 1 file changed, 35 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
index b584180d78d019aa..096137fcd5cc0131 100644
--- a/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
+++ b/drivers/staging/pi433/Documentation/devicetree/pi433-overlay.dts
@@ -4,54 +4,45 @@
 
 / {
 	compatible = "brcm,bcm2835", "brcm,bcm2708", "brcm,bcm2709";
+};
+
+&spi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	spidev@0{
+		reg = <0>;
+		status = "disabled";
+	};
 
-	fragment@0 {
-		target = <&spi0>;
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "okay";
-
-			spidev@0{
-				reg = <0>;
-				status = "disabled";
-			};
-
-			spidev@1{
-				reg = <1>;
-				status = "disabled";
-			};
-		};
+	spidev@1{
+		reg = <1>;
+		status = "disabled";
 	};
+};
 
-	fragment@1 {
-		target = <&gpio>;
-		__overlay__ {
-			pi433_pins: pi433_pins {
-				brcm,pins = <7 25 24>;
-				brcm,function = <0 0 0>; // in in in
-			};
-		};
+&gpio {
+	pi433_pins: pi433_pins {
+		brcm,pins = <7 25 24>;
+		brcm,function = <0 0 0>; // in in in
 	};
+};
 
-	fragment@2 {
-		target = <&spi0>;
-		__overlay__ {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			status = "okay";
-
-			pi433: pi433@0 {
-				compatible = "Smarthome-Wolf,pi433";
-				reg = <0>;
-				spi-max-frequency = <10000000>;
-				status = "okay";
-
-				pinctrl-0 = <&pi433_pins>;
-				DIO0-gpio = <&gpio 24 0>;
-				DIO1-gpio = <&gpio 25 0>;
-				DIO2-gpio = <&gpio  7 0>;
-			};
-		};
+&spi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	pi433: pi433@0 {
+		compatible = "Smarthome-Wolf,pi433";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+		status = "okay";
+
+		pinctrl-0 = <&pi433_pins>;
+		DIO0-gpio = <&gpio 24 0>;
+		DIO1-gpio = <&gpio 25 0>;
+		DIO2-gpio = <&gpio  7 0>;
 	};
 };
-- 
2.17.1

