Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F167302AB0
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 19:50:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730627AbhAYStq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 13:49:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730861AbhAYSst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 13:48:49 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7379EC061793
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 10:47:41 -0800 (PST)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1l46tn-0007Cg-GJ; Mon, 25 Jan 2021 19:47:39 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH 07/10] arm64: dts: zii-ultra: fix i2c pin configuration
Date:   Mon, 25 Jan 2021 19:47:33 +0100
Message-Id: <20210125184736.1226435-7-l.stach@pengutronix.de>
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

Reduce slew rate and set drive strength to 105 Ohm. The previous settings
had some issues with signal ringing, due to the slew rate being too fast.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../boot/dts/freescale/imx8mq-zii-ultra.dtsi     | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index e6469e15bcbd..aa05d5fd1b3b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -661,29 +661,29 @@
 
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
-			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x4000007f
+			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x40000022
+			MX8MQ_IOMUXC_I2C1_SDA_I2C1_SDA			0x400000a2
 		>;
 	};
 
 	pinctrl_i2c2: i2c2grp {
 		fsl,pins = <
-			MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA			0x4000007f
+			MX8MQ_IOMUXC_I2C2_SCL_I2C2_SCL			0x40000022
+			MX8MQ_IOMUXC_I2C2_SDA_I2C2_SDA			0x400000a2
 		>;
 	};
 
 	pinctrl_i2c3: i2c3grp {
 		fsl,pins = <
-			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA			0x4000007f
+			MX8MQ_IOMUXC_I2C3_SCL_I2C3_SCL			0x40000022
+			MX8MQ_IOMUXC_I2C3_SDA_I2C3_SDA			0x400000a2
 		>;
 	};
 
 	pinctrl_i2c4: i2c4grp {
 		fsl,pins = <
-			MX8MQ_IOMUXC_I2C4_SCL_I2C4_SCL			0x4000007f
-			MX8MQ_IOMUXC_I2C4_SDA_I2C4_SDA			0x4000007f
+			MX8MQ_IOMUXC_I2C4_SCL_I2C4_SCL			0x40000022
+			MX8MQ_IOMUXC_I2C4_SDA_I2C4_SDA			0x400000a2
 		>;
 	};
 
-- 
2.20.1

