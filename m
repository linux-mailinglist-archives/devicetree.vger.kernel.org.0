Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78E2F303332
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 05:48:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727910AbhAZEry (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 23:47:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730683AbhAYSsU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 13:48:20 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73E95C061786
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:47:39 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1l46tl-0007Cg-GU; Mon, 25 Jan 2021 19:47:37 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH 02/10] ARM: dts: imx6: RDU2: reduce i2c drive-strength
Date:   Mon, 25 Jan 2021 19:47:28 +0100
Message-Id: <20210125184736.1226435-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125184736.1226435-1-l.stach@pengutronix.de>
References: <20210125184736.1226435-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current 25 Ohm drive-strength is much too strong, resulting in
significant overshoot of the signal. Reduce the drive-strength to
75 Ohm to get rid of those issues.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 04a66339ceb3..56323890430e 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -984,22 +984,22 @@
 
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
-			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
-			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
+			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b811
+			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b811
 		>;
 	};
 
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
-			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
-			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
+			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b811
+			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b811
 		>;
 	};
 
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
-			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b8b1
-			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
+			MX6QDL_PAD_GPIO_3__I2C3_SCL		0x4001b811
+			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b811
 		>;
 	};
 
-- 
2.20.1

