Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB00175EF6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2020 16:58:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727401AbgCBP6Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Mar 2020 10:58:24 -0500
Received: from relay8-d.mail.gandi.net ([217.70.183.201]:41491 "EHLO
        relay8-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727304AbgCBP6Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Mar 2020 10:58:24 -0500
X-Originating-IP: 90.89.41.158
Received: from localhost.localdomain (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 175FB1BF217;
        Mon,  2 Mar 2020 15:58:21 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        <linux-arm-kernel@lists.infradead.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Describe PX30 GPU
Date:   Mon,  2 Mar 2020 16:58:08 +0100
Message-Id: <20200302155808.11273-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200302155808.11273-1-miquel.raynal@bootlin.com>
References: <20200302155808.11273-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PX30 SoCs feature an ARM Bifrost GPU.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---

Hello, this change is just adding basic GPU support, more work is
needed on the devfreq/opp side to be sure everything works and is
properly described. Hence, this proposal aims at describing the HW
block only, not its hability to change voltages/frequencies.

Thanks,
Miquèl

 arch/arm64/boot/dts/rockchip/px30.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f99988b08244..7780e532d31b 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -997,6 +997,19 @@
 		status = "disabled";
 	};
 
+	gpu: gpu@ff400000 {
+		compatible = "rockchip,px30-mali", "arm,mali-bifrost";
+		reg = <0x0 0xff400000 0x0 0x4000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "gpu", "mmu", "job";
+		clocks = <&cru SCLK_GPU>;
+		clock-names = "clk_mali";
+		power-domains = <&power PX30_PD_GPU>;
+		status = "disabled";
+	};
+
 	vopb: vop@ff460000 {
 		compatible = "rockchip,px30-vop-big";
 		reg = <0x0 0xff460000 0x0 0xefc>;
-- 
2.20.1

