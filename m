Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70C5350B19D
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 09:30:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382677AbiDVHbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 03:31:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381055AbiDVHbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 03:31:48 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4A851585
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 00:28:56 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nhnii-0008KD-Se; Fri, 22 Apr 2022 09:28:48 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nhnih-004VyS-SO; Fri, 22 Apr 2022 09:28:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nhnid-009IU9-9b; Fri, 22 Apr 2022 09:28:43 +0200
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
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date:   Fri, 22 Apr 2022 09:28:33 +0200
Message-Id: <20220422072841.2206452-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VOP2 is the display output controller on the RK3568. Add the node
for it to the dtsi file along with the required display-subsystem node
and the iommu node.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v6:
    - Change RK3568_ prefix to ROCKCHIP_ prefix
    - start counting from one instead of zero
    
    Changes since v4:
    - Add Robs Ack
    
    Changes since v3:
    - Bring back gamma_lut regs
    - Drop redundant _vop suffix from clock names

 arch/arm64/boot/dts/rockchip/rk3566.dtsi |  4 ++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi |  4 ++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 51 ++++++++++++++++++++++++
 include/dt-bindings/soc/rockchip,vop2.h  | 14 +++++++
 4 files changed, 73 insertions(+)
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
index 5b0f528d68180..4deab90e83834 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -114,3 +114,7 @@ power-domain@RK3568_PD_PIPE {
 		#power-domain-cells = <0>;
 	};
 };
+
+&vop {
+	compatible = "rockchip,rk3568-vop";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 7cdef800cb3ce..fdb7a9a6ca743 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -129,6 +129,11 @@ opp-1800000000 {
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
@@ -569,6 +574,52 @@ gmac1_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	vop: vop@fe040000 {
+		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
+		reg-names = "regs", "gamma_lut";
+		interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>, <&cru DCLK_VOP0>,
+			 <&cru DCLK_VOP1>, <&cru DCLK_VOP2>;
+		clock-names = "aclk", "hclk", "dclk_vp0", "dclk_vp1", "dclk_vp2";
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
index 0000000000000..6e66a802b96a5
--- /dev/null
+++ b/include/dt-bindings/soc/rockchip,vop2.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
+
+#ifndef __DT_BINDINGS_ROCKCHIP_VOP2_H
+#define __DT_BINDINGS_ROCKCHIP_VOP2_H
+
+#define ROCKCHIP_VOP2_EP_RGB0	1
+#define ROCKCHIP_VOP2_EP_HDMI0	2
+#define ROCKCHIP_VOP2_EP_EDP0	3
+#define ROCKCHIP_VOP2_EP_MIPI0	4
+#define ROCKCHIP_VOP2_EP_LVDS0	5
+#define ROCKCHIP_VOP2_EP_MIPI1	6
+#define ROCKCHIP_VOP2_EP_LVDS1	7
+
+#endif /* __DT_BINDINGS_ROCKCHIP_VOP2_H */
-- 
2.30.2

