Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDBFE2C5C97
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 20:23:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731736AbgKZTW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 14:22:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728078AbgKZTW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 14:22:59 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22509C0613D4
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 11:22:59 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kiMqz-0008NV-O0; Thu, 26 Nov 2020 20:22:53 +0100
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kiMqy-0001ag-UH; Thu, 26 Nov 2020 20:22:52 +0100
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        plaes@plaes.org
Cc:     kernel@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6qdl-kontron-samx6i: increase i2c-frequency
Date:   Thu, 26 Nov 2020 20:22:52 +0100
Message-Id: <20201126192252.6067-1-m.felsch@pengutronix.de>
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

Set it to max. allowed 375kHz for faster transfers. The limit is given
by the erratum [1].

[1] https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 265f5f3dbff6..b6a0b8809e74 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -390,21 +390,21 @@
 
 /* I2C_GP */
 &i2c1 {
-	clock-frequency = <100000>;
+	clock-frequency = <375000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
 };
 
 /* HDMI_CTRL */
 &i2c2 {
-	clock-frequency = <100000>;
+	clock-frequency = <375000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 };
 
 /* I2C_PM */
 &i2c3 {
-	clock-frequency = <100000>;
+	clock-frequency = <375000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
-- 
2.20.1

