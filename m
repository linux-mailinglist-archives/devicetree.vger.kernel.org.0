Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8DC3A3DDE
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 10:14:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbhFKIQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 04:16:18 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:58208 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbhFKIQR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 04:16:17 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id AD8EBBC7F45; Fri, 11 Jun 2021 10:14:18 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add support for USB on helios64
Date:   Fri, 11 Jun 2021 10:14:14 +0200
Message-Id: <20210611081414.1448786-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This enables the USB hardware needed to access devices on the sockets J1
and J13.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 037dc5cdc3f3..c142649cd1bd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -155,6 +155,20 @@ regulator-state-mem {
 		};
 	};
 
+	vcc5v0_usb: vcc5v0-usb {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_en>;
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_perdev>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -407,6 +421,12 @@ pmic_int_l: pmic-int-l {
 		};
 	};
 
+	power {
+		vcc5v0_usb_en: vcc5v0-usb-en {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	vcc3v0-sd {
 		sdmmc0_pwr_h: sdmmc0-pwr-h {
 			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -449,6 +469,30 @@ &sdmmc {
 	status = "okay";
 };
 
+&tcphy1 {
+	// phy for &usbdrd_dwc3_1
+	status = "okay";
+};
+
+&u2phy1 {
+	status = "okay";
+
+	otg-port {
+		// phy for &usbdrd_dwc3_1
+		phy-supply = <&vcc5v0_usb>
+		status = "okay";
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
+
+&usbdrd3_1 {
+	status = "okay";
+
+	usb@fe900000 {
+		dr_mode = "host";
+		status = "okay";
+	};
+};
-- 
2.30.2

