Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D7C43D7A9A
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 18:11:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbhG0QLQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 12:11:16 -0400
Received: from finn.gateworks.com ([108.161.129.64]:59000 "EHLO
        finn.localdomain" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S229665AbhG0QLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 12:11:16 -0400
Received: from 068-189-091-139.biz.spectrum.com ([68.189.91.139] helo=tharvey.pdc.gateworks.com)
        by finn.localdomain with esmtp (Exim 4.93)
        (envelope-from <tharvey@gateworks.com>)
        id 1m8Pfd-005DjI-QC; Tue, 27 Jul 2021 16:11:05 +0000
From:   Tim Harvey <tharvey@gateworks.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Tim Harvey <tharvey@gateworks.com>
Subject: [PATCH 3/5] arm64: dts: imx8mm-venice-gw71xx: fix USB OTG VBUS
Date:   Tue, 27 Jul 2021 09:10:59 -0700
Message-Id: <20210727161101.32267-3-tharvey@gateworks.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210727161101.32267-1-tharvey@gateworks.com>
References: <20210727161101.32267-1-tharvey@gateworks.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GW71xx has a USB Type-C connector with USB 2.0 signaling. GPIO1_12
is the power-enable to the TPS25821 Source controller and power switch
responsible for monitoring the CC pins and enabling VBUS. Therefore
GPIO1_12 must always be enabled and the vbus output enable from the
IMX8MM can be ignored.

To fix USB OTG VBUS enable a pull-up on GPIO1_12 to always power the
TPS25821 and change the regulator output to GPIO1_10 which is
unconnected.

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi
index 905b68a3daa5..8e4a0ce99790 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw71xx.dtsi
@@ -46,7 +46,7 @@
 		pinctrl-0 = <&pinctrl_reg_usb1_en>;
 		compatible = "regulator-fixed";
 		regulator-name = "usb_otg1_vbus";
-		gpio = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -156,7 +156,8 @@
 
 	pinctrl_reg_usb1_en: regusb1grp {
 		fsl,pins = <
-			MX8MM_IOMUXC_GPIO1_IO12_GPIO1_IO12	0x41
+			MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10	0x41
+			MX8MM_IOMUXC_GPIO1_IO12_GPIO1_IO12	0x141
 			MX8MM_IOMUXC_GPIO1_IO13_USB1_OTG_OC	0x41
 		>;
 	};
-- 
2.17.1

