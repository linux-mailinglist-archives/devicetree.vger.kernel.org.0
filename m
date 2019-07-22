Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF086FAF5
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:12:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727535AbfGVIMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:12:40 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:44431 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726339AbfGVIMk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 04:12:40 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 74F3640002;
        Mon, 22 Jul 2019 08:12:37 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        daniel.lezcano@linaro.org, tglx@linutronix.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/11] ARM: dts: sun4i: Add missing timers interrupts
Date:   Mon, 22 Jul 2019 10:12:23 +0200
Message-Id: <20190722081229.22422-5-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722081229.22422-1-maxime.ripard@bootlin.com>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The timer unit in the A10 has 6 interrupts available. List all of them.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun4i-a10.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun4i-a10.dtsi b/arch/arm/boot/dts/sun4i-a10.dtsi
index e88daa4ef1af..077d45c7db6f 100644
--- a/arch/arm/boot/dts/sun4i-a10.dtsi
+++ b/arch/arm/boot/dts/sun4i-a10.dtsi
@@ -803,7 +803,12 @@
 		timer@1c20c00 {
 			compatible = "allwinner,sun4i-a10-timer";
 			reg = <0x01c20c00 0x90>;
-			interrupts = <22>;
+			interrupts = <22>,
+				     <23>,
+				     <24>,
+				     <25>,
+				     <67>,
+				     <68>;
 			clocks = <&osc24M>;
 		};
 
-- 
2.21.0

