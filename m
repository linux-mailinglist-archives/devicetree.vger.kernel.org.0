Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C23BB11E9D8
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 19:11:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728718AbfLMSLR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 13:11:17 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:42277 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728716AbfLMSLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 13:11:16 -0500
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 3BBFC200014;
        Fri, 13 Dec 2019 18:11:13 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Sandy Huang <hjc@rock-chips.com>
Cc:     <linux-arm-kernel@lists.infradead.org>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        dri-devel@lists.freedesktop.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 10/12] arm64: dts: rockchip: Add PX30 CRTCs graph LVDS endpoints
Date:   Fri, 13 Dec 2019 19:10:49 +0100
Message-Id: <20191213181051.25983-11-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the display subsystem routes with the two available CRTCs: vopb
and vopl (big and little). For each CRTC, add the LVDS endpoints. MIPI
DSI endpoints will come later.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index b2af0f02ecbe..1c96ba556daf 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -190,6 +190,16 @@
 		compatible = "rockchip,display-subsystem";
 		ports = <&vopb_out>, <&vopl_out>;
 		status = "disabled";
+
+		route {
+			route_vopb_lvds: route-vopb-lvds {
+				connect = <&vopb_out_lvds>;
+			};
+
+			route_vopl_lvds: route-vopl-lvds {
+				connect = <&vopl_out_lvds>;
+			};
+		};
 	};
 
 	gmac_clkin: external-gmac-clock {
@@ -976,6 +986,11 @@
 		vopb_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopb_out_lvds: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&lvds_vopb_in>;
+			};
 		};
 	};
 
@@ -1008,6 +1023,11 @@
 		vopl_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vopl_out_lvds: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&lvds_vopl_in>;
+			};
 		};
 	};
 
-- 
2.20.1

