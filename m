Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D5E3115477
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2019 16:42:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726256AbfLFPmw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Dec 2019 10:42:52 -0500
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:43107 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726251AbfLFPmw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Dec 2019 10:42:52 -0500
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 20E62240003;
        Fri,  6 Dec 2019 15:42:50 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        <linux-rockchip@lists.infradead.org>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH] arm64: dts: rockchip: Change RK809 PMIC interrupt polarity
Date:   Fri,  6 Dec 2019 16:42:47 +0100
Message-Id: <20191206154247.28057-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PMIC interrupt can be active high or active low depending on BIT(1) of
the GPIO_INT_CFG pin. The default is 0x1, which means active
high. Change the polarity in the device tree to reflect the default
state.

Without this and with the current code base, the interrupt never stops
triggering while the MFD driver does not see anything to
check/clear/mask so after 100000 spurious IRQs, the kernel simply
desactivates the interrupt:

        irq 36: nobody cared (try booting with the "irqpoll" option)
        [...]
        handlers:
        [<(____ptrval____)>] irq_default_primary_handler threaded
	[<(____ptrval____)>] regmap_irq_thread
        Disabling IRQ #36

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 869f90cbf0da..a922ea75639d 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -138,7 +138,7 @@
 		compatible = "rockchip,rk809";
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <7 IRQ_TYPE_LEVEL_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>;
 		rockchip,system-power-controller;
-- 
2.20.1

