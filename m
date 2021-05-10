Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9C56377EEF
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 11:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230093AbhEJJHU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 05:07:20 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:35176 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbhEJJHU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 05:07:20 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id F21D5B91E0B; Mon, 10 May 2021 11:06:11 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Aditya Prayoga <aditya@kobol.io>
Subject: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM fans
Date:   Mon, 10 May 2021 11:06:07 +0200
Message-Id: <20210510090607.970145-1-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On the helios64 board the two connectors P6 and P7 are supposed to
power two fans. Add the corresponding pwm-fan devices.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 39a1d276bd05..1dd9535520b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -58,6 +58,20 @@ led-1 {
 		};
 	};
 
+	fan1 {
+		/* fan connected to P7 */
+		compatible = "pwm-fan";
+		pwms = <&pwm0 0 40000 0>;
+		cooling-levels = <0 80 170 255>;
+	};
+
+	fan2 {
+		/* fan connected to P6 */
+		compatible = "pwm-fan";
+		pwms = <&pwm1 0 40000 0>;
+		cooling-levels = <0 80 170 255>;
+	};
+
 	vcc1v8_sys_s0: vcc1v8-sys-s0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc1v8_sys_s0";
@@ -352,6 +366,16 @@ &pmu_io_domains {
 	status = "okay";
 };
 
+&pwm0 {
+	/* pwm-fan on P7 */
+	status = "okay";
+};
+
+&pwm1 {
+	/* pwm-fan on P6 */
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	mmc-hs200-1_8v;
-- 
2.30.2

