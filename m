Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01D3B2EA738
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 10:25:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725860AbhAEJZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 04:25:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725831AbhAEJZN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 04:25:13 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F348DC061574
        for <devicetree@vger.kernel.org>; Tue,  5 Jan 2021 01:24:32 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kwiZo-0006Ez-Fw; Tue, 05 Jan 2021 10:24:28 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kwiZn-0005hV-L7; Tue, 05 Jan 2021 10:24:27 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     shawnguo@kernel.org, festevam@gmail.com, linux-imx@nxp.com
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix i2c_lcd/cam default status
Date:   Tue,  5 Jan 2021 10:24:07 +0100
Message-Id: <20210105092406.21852-1-m.felsch@pengutronix.de>
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

Fix typo so the gpio i2c busses are really disabled.

Fixes: 2125212785c9 ("ARM: dts: imx6qdl-kontron-samx6i: add Kontron SMARC SoM Support")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 36c2f0d9ce16..b167b33bd108 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -167,7 +167,7 @@
 		i2c-gpio,delay-us = <2>; /* ~100 kHz */
 		#address-cells = <1>;
 		#size-cells = <0>;
-		status = "disabld";
+		status = "disabled";
 	};
 
 	i2c_cam: i2c-gpio-cam {
@@ -179,7 +179,7 @@
 		i2c-gpio,delay-us = <2>; /* ~100 kHz */
 		#address-cells = <1>;
 		#size-cells = <0>;
-		status = "disabld";
+		status = "disabled";
 	};
 };
 
-- 
2.20.1

