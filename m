Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F30582C5B37
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 18:57:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404604AbgKZR4p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 12:56:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404605AbgKZR4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 12:56:45 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3B86C0613D4
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 09:56:44 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kiLVX-0007Qi-TA; Thu, 26 Nov 2020 18:56:39 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kiLVX-0000Up-1K; Thu, 26 Nov 2020 18:56:39 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        plaes@plaes.org
Cc:     kernel@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: fix I2C_PM scl pin
Date:   Thu, 26 Nov 2020 18:56:28 +0100
Message-Id: <20201126175628.1852-1-m.felsch@pengutronix.de>
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

From: Bernd Bauer <bernd.bauer@anton-paar.com>

Use the correct pin for the i2c scl signal else we can't access the
SoM eeprom.

Fixes: 2a51f9dae13d ("ARM: dts: imx6qdl-kontron-samx6i: Add iMX6-based Kontron SMARC-sAMX6i module")
Signed-off-by: Bernd Bauer <bernd.bauer@anton-paar.com>
[m.felsch@pengutronix.de: Adapt commit message]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 265f5f3dbff6..24f793ca2886 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -551,7 +551,7 @@
 
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
-			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
+			MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
 			MX6QDL_PAD_GPIO_16__I2C3_SDA		0x4001b8b1
 		>;
 	};
-- 
2.20.1

