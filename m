Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD70343A58D
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 23:10:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234721AbhJYVNH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 17:13:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:42410 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234369AbhJYVNG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 17:13:06 -0400
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 22DE061076;
        Mon, 25 Oct 2021 21:10:44 +0000 (UTC)
Received: from sofa.misterjones.org ([185.219.108.64] helo=wait-a-minute.lan)
        by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <maz@kernel.org>)
        id 1mf7Ew-001WA3-A8; Mon, 25 Oct 2021 22:10:42 +0100
From:   Marc Zyngier <maz@kernel.org>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Sven Peter <sven@svenpeter.dev>,
        Hector Martin <marcan@marcan.st>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        kernel-team@android.com, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/5] arm64: apple: Add pinctrl nodes
Date:   Mon, 25 Oct 2021 22:10:14 +0100
Message-Id: <20211025211018.744363-2-maz@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211025211018.744363-1-maz@kernel.org>
References: <20211025211018.744363-1-maz@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kettenis@openbsd.org, sven@svenpeter.dev, marcan@marcan.st, alyssa@rosenzweig.io, kernel-team@android.com, linus.walleij@linaro.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Mark Kettenis <kettenis@openbsd.org>

Add pinctrl nodes corresponding to the gpio,t8101 nodes in the
Apple device tree for the Mac mini (M1, 2020).

Clock references are left out at the moment and will be added once
the appropriate bindings have been settled upon.

Signed-off-by: Mark Kettenis <kettenis@openbsd.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20210520171310.772-3-mark.kettenis@xs4all.nl
---
 arch/arm64/boot/dts/apple/t8103.dtsi | 87 ++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8103.dtsi b/arch/arm64/boot/dts/apple/t8103.dtsi
index a1e22a2ea2e5..7af1ffbc970d 100644
--- a/arch/arm64/boot/dts/apple/t8103.dtsi
+++ b/arch/arm64/boot/dts/apple/t8103.dtsi
@@ -9,6 +9,7 @@
 
 #include <dt-bindings/interrupt-controller/apple-aic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/apple.h>
 
 / {
 	compatible = "apple,t8103", "apple,arm-platform";
@@ -131,5 +132,91 @@ aic: interrupt-controller@23b100000 {
 			interrupt-controller;
 			reg = <0x2 0x3b100000 0x0 0x8000>;
 		};
+
+		pinctrl_ap: pinctrl@23c100000 {
+			compatible = "apple,t8103-pinctrl", "apple,pinctrl";
+			reg = <0x2 0x3c100000 0x0 0x100000>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl_ap 0 0 212>;
+			apple,npins = <212>;
+
+			interrupt-controller;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 190 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 191 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 192 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 193 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 194 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 195 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 196 IRQ_TYPE_LEVEL_HIGH>;
+
+			pcie_pins: pcie-pins {
+				pinmux = <APPLE_PINMUX(150, 1)>,
+					 <APPLE_PINMUX(151, 1)>,
+					 <APPLE_PINMUX(32, 1)>;
+			};
+		};
+
+		pinctrl_aop: pinctrl@24a820000 {
+			compatible = "apple,t8103-pinctrl", "apple,pinctrl";
+			reg = <0x2 0x4a820000 0x0 0x4000>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl_aop 0 0 42>;
+			apple,npins = <42>;
+
+			interrupt-controller;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 268 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 269 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 270 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 271 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 272 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 273 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 274 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		pinctrl_nub: pinctrl@23d1f0000 {
+			compatible = "apple,t8103-pinctrl", "apple,pinctrl";
+			reg = <0x2 0x3d1f0000 0x0 0x4000>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl_nub 0 0 23>;
+			apple,npins = <23>;
+
+			interrupt-controller;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 330 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 331 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 332 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 333 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 334 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 335 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 336 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		pinctrl_smc: pinctrl@23e820000 {
+			compatible = "apple,t8103-pinctrl", "apple,pinctrl";
+			reg = <0x2 0x3e820000 0x0 0x4000>;
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pinctrl_smc 0 0 16>;
+			apple,npins = <16>;
+
+			interrupt-controller;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 391 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 392 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 393 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 394 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 395 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 396 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 397 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
-- 
2.30.2

