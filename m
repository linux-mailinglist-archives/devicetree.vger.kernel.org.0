Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DB053D7A98
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 18:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbhG0QLP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 12:11:15 -0400
Received: from finn.gateworks.com ([108.161.129.64]:58992 "EHLO
        finn.localdomain" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S229494AbhG0QLP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 12:11:15 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1m8Pfe-005DjI-I3; Tue, 27 Jul 2021 16:11:06 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 4/5] arm64: dts: imx8mm-venice-gw7901: add support for USB hub subload
Date:   Tue, 27 Jul 2021 09:11:00 -0700
Message-Id: <20210727161101.32267-4-tharvey@gateworks.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210727161101.32267-1-tharvey@gateworks.com>
References: <20210727161101.32267-1-tharvey@gateworks.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USB hub has it's reset as GPIO4_IO17 but can be sub-loaded and
VBUS provided by a VBUS regulator with GPIO4_IO2 as the enable and
GPIO1_IO15 as the active-low over-current.

Enable pull-up for GPIO4_IO17 to keep hub out of reset and move VBUS
enable to GPIO4_IO2. Additionally enable pull-up on GPIO1_IO15 so that
if the hub is loaded it never over-currents.

This allows USB to work in both configurations without a device-tree
change.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index 5a1e9df39bec..db43ee28bdb6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -216,7 +216,7 @@
 		pinctrl-0 = <&pinctrl_reg_usb2>;
 		compatible = "regulator-fixed";
 		regulator-name = "usb_usb2_vbus";
-		gpio = <&gpio4 17 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio4 2 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -824,8 +824,9 @@
 
 	pinctrl_reg_usb2: regusb1grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_SAI1_TXD5_GPIO4_IO17	0x41
-			MX8MM_IOMUXC_GPIO1_IO15_USB2_OTG_OC	0x41
+			MX8MM_IOMUXC_SAI1_RXD0_GPIO4_IO2	0x41
+			MX8MM_IOMUXC_SAI1_TXD5_GPIO4_IO17	0x140
+			MX8MM_IOMUXC_GPIO1_IO15_USB2_OTG_OC	0x140
 		>;
 	};
 
-- 
2.17.1

