Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4740E4548E8
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:34:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238621AbhKQOhQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:37:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238615AbhKQOhP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:37:15 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C993C061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:34:17 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mnM0h-0005ti-5r; Wed, 17 Nov 2021 15:34:03 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mnM0b-001P6W-54; Wed, 17 Nov 2021 15:33:57 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 09/12] arm64: dts: rockchip: rk356x: Add HDMI nodes
Date:   Wed, 17 Nov 2021 15:33:44 +0100
Message-Id: <20211117143347.314294-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the HDMI port found on RK3568.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 65 ++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 6ebf7c14e096a..53be61a7ce595 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -472,18 +472,36 @@ vp0: port@0 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <0>;
+
+				vp0_out_hdmi: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_in_vp0>;
+					status = "disabled";
+				};
 			};
 
 			vp1: port@1 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <1>;
+
+				vp1_out_hdmi: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_in_vp1>;
+					status = "disabled";
+				};
 			};
 
 			vp2: port@2 {
 				#address-cells = <1>;
 				#size-cells = <0>;
 				reg = <2>;
+
+				vp2_out_hdmi: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&hdmi_in_vp2>;
+					status = "disabled";
+				};
 			};
 		};
 	};
@@ -499,6 +517,53 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	hdmi: hdmi@fe0a0000 {
+		compatible = "rockchip,rk3568-dw-hdmi";
+		reg = <0x0 0xfe0a0000 0x0 0x20000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI_HOST>,
+			 <&cru CLK_HDMI_SFR>,
+			 <&cru CLK_HDMI_CEC>,
+			 <&cru HCLK_VOP>;
+		clock-names = "iahb", "isfr", "cec", "hclk";
+		power-domains = <&power RK3568_PD_VO>;
+		reg-io-width = <4>;
+		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm0_cec>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				hdmi_in_vp0: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vp0_out_hdmi>;
+					status = "disabled";
+				};
+
+				hdmi_in_vp1: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vp1_out_hdmi>;
+					status = "disabled";
+				};
+
+				hdmi_in_vp2: endpoint@2 {
+					reg = <2>;
+					remote-endpoint = <&vp2_out_hdmi>;
+					status = "disabled";
+				};
+			};
+		};
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.30.2

