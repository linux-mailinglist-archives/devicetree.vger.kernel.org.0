Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30EFC49CD0A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 15:58:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242470AbiAZO6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 09:58:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242477AbiAZO6c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 09:58:32 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0B36C06173B
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 06:58:32 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjkc-0005fX-DY; Wed, 26 Jan 2022 15:58:22 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nCjka-002l7C-R8; Wed, 26 Jan 2022 15:58:20 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 23/27] arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a
Date:   Wed, 26 Jan 2022 15:55:45 +0100
Message-Id: <20220126145549.617165-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Riesch <michael.riesch@wolfvision.net>

Enable the RK356x Video Output Processor (VOP) 2 on the Pine64
Quartz64 Model A.

Changes since v3:
- Fix HDMI connector type

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 166399b7f13f..64de5b15f572 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3566.dtsi"
 
 / {
@@ -35,6 +36,17 @@ fan: gpio_fan {
 		#cooling-cells = <2>;
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -205,6 +217,18 @@ &gmac1m0_clkinout
 	status = "okay";
 };
 
+&hdmi {
+	avdd-0v9-supply = <&vdda_0v9>;
+	avdd-1v8-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -551,3 +575,27 @@ bluetooth {
 &uart2 {
 	status = "okay";
 };
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint@0 {
+		reg = <0>;
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@RK3568_VOP2_EP_HDMI {
+		reg = <RK3568_VOP2_EP_HDMI>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.30.2

