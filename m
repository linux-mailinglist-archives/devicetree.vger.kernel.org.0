Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F3382EC018
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 16:06:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726077AbhAFPGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 10:06:39 -0500
Received: from foss.arm.com ([217.140.110.172]:42206 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726011AbhAFPGj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Jan 2021 10:06:39 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B906106F;
        Wed,  6 Jan 2021 07:05:53 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 51B933F719;
        Wed,  6 Jan 2021 07:05:52 -0800 (PST)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: [PATCH 1/7] arm64: dts: allwinner: H6/A64: properly connect USB PHY to port 0
Date:   Wed,  6 Jan 2021 15:05:19 +0000
Message-Id: <20210106150525.15403-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20210106150525.15403-1-andre.przywara@arm.com>
References: <20210106150525.15403-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In recent Allwinner SoCs the first USB host controller (HCI0) shares
the first PHY with the MUSB controller. Probably to make this sharing
work, we were avoiding to declare this in the DT. This has two
shortcomings:
- U-Boot (which uses the same .dts) cannot use this port in host mode
  without a PHY linked, so we were loosing one USB port there.
- It requires the MUSB driver to be enabled and loaded, although we
  don't actually use it.

To avoid those issues, let's add this PHY link to the A64 and H6 .dtsi
files. After all PHY port 0 *is* connected to HCI0, so we should describe
it as this. Remove the part from the boards which were already doing
that.

This makes it work in U-Boot, also improves compatiblity when no MUSB
driver is loaded (for instance in distribution installers).

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts | 4 ----
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi         | 4 ++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          | 4 ++++
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 896f34fd9fc3..d07cf05549c3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -126,8 +126,6 @@
 };
 
 &ehci0 {
-	phys = <&usbphy 0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
@@ -177,8 +175,6 @@
 };
 
 &ohci0 {
-	phys = <&usbphy 0>;
-	phy-names = "usb";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 51cc30e84e26..19e9b8ca8432 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -593,6 +593,8 @@
 				 <&ccu CLK_USB_OHCI0>;
 			resets = <&ccu RST_BUS_OHCI0>,
 				 <&ccu RST_BUS_EHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -603,6 +605,8 @@
 			clocks = <&ccu CLK_BUS_OHCI0>,
 				 <&ccu CLK_USB_OHCI0>;
 			resets = <&ccu RST_BUS_OHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 8a62a9fbe347..f593cfeaecc9 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -680,6 +680,8 @@
 				 <&ccu CLK_USB_OHCI0>;
 			resets = <&ccu RST_BUS_OHCI0>,
 				 <&ccu RST_BUS_EHCI0>;
+			phys = <&usb2phy 0>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
@@ -690,6 +692,8 @@
 			clocks = <&ccu CLK_BUS_OHCI0>,
 				 <&ccu CLK_USB_OHCI0>;
 			resets = <&ccu RST_BUS_OHCI0>;
+			phys = <&usb2phy 0>;
+			phy-names = "usb";
 			status = "disabled";
 		};
 
-- 
2.17.5

