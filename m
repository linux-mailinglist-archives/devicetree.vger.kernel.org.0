Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8ADBD377F02
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 11:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbhEJJKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 05:10:40 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:35534 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230093AbhEJJKj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 05:10:39 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id 64E7FB91E57; Mon, 10 May 2021 11:09:34 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] arm64: dts: rockchip: helios64: Add support for PCIe
Date:   Mon, 10 May 2021 11:09:32 +0200
Message-Id: <20210510090932.970447-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is enough to make the SATA controller visible:

# lspci
00:00.0 PCI bridge: Fuzhou Rockchip Electronics Co., Ltd RK3399 PCI Express Root Port
01:00.0 SATA controller: JMicron Technology Corp. JMB58x AHCI SATA controller

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 1dd9535520b2..3c532c4e1cfe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -23,6 +23,16 @@ aliases {
 		mmc1 = &sdhci;
 	};
 
+	avdd_0v9_s0: avdd-0v9-s0 {
+		compatible = "regulator-fixed";
+		regulator-name = "avdd_0v9_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc1v8_sys_s3>;
+	};
+
 	avdd_1v8_s0: avdd-1v8-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "avdd_1v8_s0";
@@ -72,6 +82,18 @@ fan2 {
 		cooling-levels = <0 80 170 255>;
 	};
 
+	pcie_power: pcie-power {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pcie_pwr>;
+		pinctrl-names = "default";
+		regulator-boot-on;
+		regulator-name = "pcie_power";
+		startup-delay-us = <10000>;
+		vin-supply = <&vcc5v0_perdev>;
+	};
+
 	vcc1v8_sys_s0: vcc1v8-sys-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc1v8_sys_s0";
@@ -109,6 +131,16 @@ regulator-state-mem {
 		};
 	};
 
+	vcc5v0_perdev: vcc5v0-perdev {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_perdev";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin_bkup>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -331,6 +363,20 @@ &io_domains {
 	status = "okay";
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	num-lanes = <2>;
+	status = "okay";
+
+	vpcie12v-supply = <&vcc12v_dcin>;
+	vpcie3v3-supply = <&pcie_power>;
+	vpcie1v8-supply = <&avdd_1v8_s0>;
+	vpcie0v9-supply = <&avdd_0v9_s0>;
+};
+
 &pinctrl {
 	gmac {
 		gphy_reset: gphy-reset {
@@ -348,6 +394,13 @@ sys_red_led_on: sys-red-led-on {
 		};
 	};
 
+	pcie {
+		pcie_pwr: pcie-pwr {
+			rockchip,pins =
+				<1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.30.2

