Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9BB11E9DA
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 19:11:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728721AbfLMSLT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 13:11:19 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:42277 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728690AbfLMSLS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 13:11:18 -0500
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id 37ADF200010;
        Fri, 13 Dec 2019 18:11:16 +0000 (UTC)
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
Subject: [PATCH 12/12] arm64: dts: rockchip: Add PX30 LVDS
Date:   Fri, 13 Dec 2019 19:10:51 +0100
Message-Id: <20191213181051.25983-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Also create to port endpoints to link with the CRTCs.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 27 ++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 337306281c07..347432fba865 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -449,6 +449,33 @@
 			compatible = "rockchip,px30-io-voltage-domain";
 			status = "disabled";
 		};
+
+		lvds: lvds {
+			compatible = "rockchip,px30-lvds";
+			rockchip,grf = <&grf>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			phys = <&dsi_dphy>;
+			phy-names = "dphy";
+			rockchip,output = "lvds";
+			status = "disabled";
+
+			port@0 {
+				reg = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				lvds_vopb_in: endpoint@0 {
+					reg = <0>;
+					remote-endpoint = <&vopb_out_lvds>;
+				};
+
+				lvds_vopl_in: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&vopl_out_lvds>;
+				};
+			};
+		};
 	};
 
 	uart1: serial@ff158000 {
-- 
2.20.1

