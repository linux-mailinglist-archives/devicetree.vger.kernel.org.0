Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 358BE11E9D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 19:11:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728719AbfLMSLR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 13:11:17 -0500
Received: from relay12.mail.gandi.net ([217.70.178.232]:55413 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728690AbfLMSLR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 13:11:17 -0500
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id B5BB720000B;
        Fri, 13 Dec 2019 18:11:14 +0000 (UTC)
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
Subject: [PATCH 11/12] arm64: dts: rockchip: Add PX30 DSI DPHY
Date:   Fri, 13 Dec 2019 19:10:50 +0100
Message-Id: <20191213181051.25983-12-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213181051.25983-1-miquel.raynal@bootlin.com>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the PHY which outputs MIPI DSI and LVDS.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1c96ba556daf..337306281c07 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -859,6 +859,17 @@
 		};
 	};
 
+	dsi_dphy: phy@ff2e0000 {
+		compatible = "rockchip,px30-dsi-dphy";
+		reg = <0x0 0xff2e0000 0x0 0x10000>;
+		clocks = <&pmucru SCLK_MIPIDSIPHY_REF>, <&cru PCLK_MIPIDSIPHY>;
+		clock-names = "ref", "pclk";
+		resets = <&cru SRST_MIPIDSIPHY_P>;
+		reset-names = "apb";
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	usb20_otg: usb@ff300000 {
 		compatible = "rockchip,px30-usb", "rockchip,rk3066-usb",
 			     "snps,dwc2";
-- 
2.20.1

