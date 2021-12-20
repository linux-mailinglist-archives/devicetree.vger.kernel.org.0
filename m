Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5C7B47A845
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 12:07:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231553AbhLTLHG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 06:07:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbhLTLHF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 06:07:05 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD7E6C06173E
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 03:07:04 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVE-0004xD-DJ; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mzGVA-00EmEb-Oi; Mon, 20 Dec 2021 12:06:44 +0100
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
Subject: [PATCH 14/22] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date:   Mon, 20 Dec 2021 12:06:22 +0100
Message-Id: <20211220110630.3521121-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
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
 arch/arm64/boot/dts/rockchip/rk3566.dtsi |  4 ++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi |  4 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 50 ++++++++++++++++++++++++
 include/dt-bindings/soc/rockchip,vop2.h  | 14 +++++++
 4 files changed, 72 insertions(+)
 create mode 100644 include/dt-bindings/soc/rockchip,vop2.h

diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
index 3839eef5e4f76..595fa2562cb8e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
@@ -18,3 +18,7 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&vop {
+	compatible = "rockchip,rk3566-vop";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a295f8a..1e55efb6fcfde 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -95,3 +95,7 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&vop {
+	compatible = "rockchip,rk3568-vop";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f60284..7c62ad921cf7b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/power/rk3568-power.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -125,6 +126,11 @@ opp-1800000000 {
 		};
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	firmware {
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
@@ -447,6 +453,50 @@ gmac1_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	vop: vop@fe040000 {
+		reg = <0x0 0xfe040000 0x0 0x5000>;
+		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>, <&cru DCLK_VOP0>, <&cru DCLK_VOP1>, <&cru DCLK_VOP2>;
+		clock-names = "aclk_vop", "hclk_vop", "dclk_vp0", "dclk_vp1", "dclk_vp2";
+		iommus = <&vop_mmu>;
+		power-domains = <&power RK3568_PD_VO>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		vop_out: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vp0: port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			vp1: port@1 {
+				reg = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			vp2: port@2 {
+				reg = <2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@fe043e00 {
+		compatible = "rockchip,rk3568-iommu";
+		reg = <0x0 0xfe043e00 0x0 0x100>, <0x0 0xfe043f00 0x0 0x100>;
+		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		status = "disabled";
+	};
+
 	qos_gpu: qos@fe128000 {
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe128000 0x0 0x20>;
diff --git a/include/dt-bindings/soc/rockchip,vop2.h b/include/dt-bindings/soc/rockchip,vop2.h
new file mode 100644
index 0000000000000..0a87bc90564a7
--- /dev/null
+++ b/include/dt-bindings/soc/rockchip,vop2.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+
+#ifndef __DT_BINDINGS_ROCKCHIP_VOP2_H
+#define __DT_BINDINGS_ROCKCHIP_VOP2_H
+
+#define RK3568_VOP2_EP_RGB	0
+#define RK3568_VOP2_EP_HDMI	1
+#define RK3568_VOP2_EP_EDP	2
+#define RK3568_VOP2_EP_MIPI0	3
+#define RK3568_VOP2_EP_LVDS0	4
+#define RK3568_VOP2_EP_MIPI1	5
+#define RK3568_VOP2_EP_LVDS1	6
+
+#endif /* __DT_BINDINGS_ROCKCHIP_VOP2_H */
-- 
2.30.2

