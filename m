Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B1734A665
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 18:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729319AbfFRQQG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 12:16:06 -0400
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]:34949 "EHLO
        19.mo1.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729349AbfFRQQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 12:16:06 -0400
X-Greylist: delayed 1039 seconds by postgrey-1.27 at vger.kernel.org; Tue, 18 Jun 2019 12:16:06 EDT
Received: from player776.ha.ovh.net (unknown [10.108.35.223])
        by mo1.mail-out.ovh.net (Postfix) with ESMTP id 13F9517F247
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 17:58:45 +0200 (CEST)
Received: from armadeus.com (lfbn-1-7591-179.w90-126.abo.wanadoo.fr [90.126.248.179])
        (Authenticated sender: sebastien.szymanski@armadeus.com)
        by player776.ha.ovh.net (Postfix) with ESMTPSA id A37AB6F58780;
        Tue, 18 Jun 2019 15:58:34 +0000 (UTC)
From:   =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>
Subject: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
Date:   Tue, 18 Jun 2019 17:58:34 +0200
Message-Id: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 735494114359399676
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrtddtgdeiiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interrupt
summary", the interrupts for the PWM[1-4] go from 83 to 86.

Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index bbf010c73336..a7f6d1d58e20 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -358,7 +358,7 @@
 			pwm1: pwm@2080000 {
 				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
 				reg = <0x02080000 0x4000>;
-				interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_PWM1>,
 					 <&clks IMX6UL_CLK_PWM1>;
 				clock-names = "ipg", "per";
@@ -369,7 +369,7 @@
 			pwm2: pwm@2084000 {
 				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
 				reg = <0x02084000 0x4000>;
-				interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_PWM2>,
 					 <&clks IMX6UL_CLK_PWM2>;
 				clock-names = "ipg", "per";
@@ -380,7 +380,7 @@
 			pwm3: pwm@2088000 {
 				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
 				reg = <0x02088000 0x4000>;
-				interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_PWM3>,
 					 <&clks IMX6UL_CLK_PWM3>;
 				clock-names = "ipg", "per";
@@ -391,7 +391,7 @@
 			pwm4: pwm@208c000 {
 				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
 				reg = <0x0208c000 0x4000>;
-				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+				interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_PWM4>,
 					 <&clks IMX6UL_CLK_PWM4>;
 				clock-names = "ipg", "per";
-- 
2.21.0

