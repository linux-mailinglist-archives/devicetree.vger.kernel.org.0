Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61ACF4C4B9
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 03:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726262AbfFTBCc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 21:02:32 -0400
Received: from foss.arm.com ([217.140.110.172]:38328 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726165AbfFTBCc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 Jun 2019 21:02:32 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40347360;
        Wed, 19 Jun 2019 18:02:31 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 096333F718;
        Wed, 19 Jun 2019 18:02:29 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
Date:   Thu, 20 Jun 2019 02:01:27 +0100
Message-Id: <20190620010127.12071-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In recent Allwinner SoCs the first USB host controller (HCI0) shares
the first PHY with the MUSB controller. Probably to make this sharing
work, we were avoiding to declare this in the DT. This has two
shortcomings:
- U-Boot (which uses the same .dts) cannot use this port without a PHY
  linked, so we were loosing one USB port there.
- It requires the MUSB driver to be enabled and loaded, although we
  don't actually use it.

For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
a "phys" property pointing to the USB PHY 0.

This makes it work in U-Boot, also improves compatiblity when no MUSB
driver is loaded (for instance in distribution installers).

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
Hi,

I have the feeling this belongs into the .dtsi, but cant't tell for sure
how this interacts with the MUSB driver. If need be, we can always pull
this up later, I guess.

Thanks,
Andre

 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts           | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts  | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts       | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts          | 2 ++
 5 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 409523cb0950..b23e827a6065 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -93,6 +93,7 @@
 };
 
 &ehci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
@@ -147,6 +148,7 @@
 };
 
 &ohci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index e6fb9683f213..b422bef19fff 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -105,6 +105,7 @@
 };
 
 &ehci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
@@ -151,6 +152,7 @@
 };
 
 &ohci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
index 9887948d5c86..5da9cdfb4f48 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
@@ -124,6 +124,7 @@
 };
 
 &ehci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
@@ -179,6 +180,7 @@
 };
 
 &ohci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
index 0dc33c90dd60..293f66c44032 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
@@ -58,6 +58,7 @@
 };
 
 &ehci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
@@ -104,6 +105,7 @@
 };
 
 &ohci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 9e464d40cbff..577f8133181e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -96,6 +96,7 @@
 };
 
 &ehci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
@@ -120,6 +121,7 @@
 };
 
 &ohci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
-- 
2.14.5

