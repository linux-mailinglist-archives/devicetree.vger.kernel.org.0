Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EAE44548E4
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:34:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231565AbhKQOhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238621AbhKQOhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:37:06 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 482F9C061764
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:34:08 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mnM0h-0005th-5s; Wed, 17 Nov 2021 15:34:03 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mnM0b-001P6T-4S; Wed, 17 Nov 2021 15:33:57 +0100
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
Subject: [PATCH 08/12] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date:   Wed, 17 Nov 2021 15:33:43 +0100
Message-Id: <20211117143347.314294-9-s.hauer@pengutronix.de>
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

The VOP2 is the display output controller on the RK3568. Add the node
for it to the dtsi file along with the required display-subsystem node
and the iommu node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f60284..6ebf7c14e096a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -447,6 +447,58 @@ gmac1_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
+	vop: vop@fe040000 {
+		compatible = "rockchip,rk3568-vop";
+		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
+		reg-names = "regs", "gamma_lut";
+		rockchip,grf = <&grf>;
+		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>, <&cru DCLK_VOP0>, <&cru DCLK_VOP1>, <&cru DCLK_VOP2>;
+		clock-names = "aclk_vop", "hclk_vop", "dclk_vp0", "dclk_vp1", "dclk_vp2";
+		iommus = <&vop_mmu>;
+		power-domains = <&power RK3568_PD_VO>;
+		status = "disabled";
+
+		vop_out: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vp0: port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+			};
+
+			vp1: port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+			};
+
+			vp2: port@2 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <2>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@fe043e00 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfe043e00 0x0 0x100>, <0x0 0xfe043f00 0x0 0x100>;
+		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "vop_mmu";
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		status = "disabled";
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
-- 
2.30.2

