Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95183378EB6
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 15:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235085AbhEJNbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 09:31:06 -0400
Received: from foss.arm.com ([217.140.110.172]:57990 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1351234AbhEJNDL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 10 May 2021 09:03:11 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C20F1688;
        Mon, 10 May 2021 06:02:06 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 461B53F73B;
        Mon, 10 May 2021 06:02:04 -0700 (PDT)
From:   Andre Przywara <andre.przywara@arm.com>
To:     Rob Herring <robh@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     Jernej Skrabec <jernej.skrabec@gmail.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Samuel Holland <samuel@sholland.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev
Subject: [PATCH] arm64: dts: allwinner: Pine H64: Enable USB 3.0 port
Date:   Mon, 10 May 2021 14:01:19 +0100
Message-Id: <20210510130119.6534-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Pine H64 board features an USB 3.0 type A port, which works just
fine.

Enable the controller and USB PHY in the .dts to make it usable.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 1ffd68f43f87..9061c9913f4c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -89,6 +89,10 @@
 	status = "okay";
 };
 
+&dwc3 {
+	status = "okay";
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -332,3 +336,8 @@
 	usb3_vbus-supply = <&reg_usb_vbus>;
 	status = "okay";
 };
+
+&usb3phy {
+	phy-supply = <&reg_usb_vbus>;
+	status = "okay";
+};
-- 
2.17.5

