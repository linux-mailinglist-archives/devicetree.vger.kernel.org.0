Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BB2B2CC485
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 19:08:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387563AbgLBSGs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 13:06:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387548AbgLBSGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 13:06:48 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51BB2C0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 10:06:08 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kkWVv-0002La-GR; Wed, 02 Dec 2020 19:06:03 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kkWVt-0003ql-Rw; Wed, 02 Dec 2020 19:06:01 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        u.kleine-koenig@pengutronix.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Subject: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix pwms for lcd-backlight
Date:   Wed,  2 Dec 2020 19:05:58 +0100
Message-Id: <20201202180558.14541-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pwms property have to specify the no-/inverted flag since
commit fa28d8212ede ("ARM: dts: imx: default to #pwm-cells = <3>
in the SoC dtsi files").

Fixes: fa28d8212ede ("ARM: dts: imx: default to #pwm-cells = <3> in the SoC dtsi files")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index d6df598bd1c2..36c2f0d9ce16 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -137,7 +137,7 @@
 
 	lcd_backlight: lcd-backlight {
 		compatible = "pwm-backlight";
-		pwms = <&pwm4 0 5000000>;
+		pwms = <&pwm4 0 5000000 0>;
 		pwm-names = "LCD_BKLT_PWM";
 
 		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;
-- 
2.20.1

