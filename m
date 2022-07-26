Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2917C5813CB
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 15:05:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233016AbiGZNFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 09:05:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233343AbiGZNFh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 09:05:37 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF311E3E8
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:05:36 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1oGKFb-0002fx-P2; Tue, 26 Jul 2022 15:05:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1oGKFa-003JvW-SU; Tue, 26 Jul 2022 15:05:26 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1oGKFZ-00CWkB-KC; Tue, 26 Jul 2022 15:05:25 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH 4/4] ARM: dts: imx6qdl-kontron-samx6i: hook up DDC i2c bus
Date:   Tue, 26 Jul 2022 15:05:23 +0200
Message-Id: <20220726130523.2985735-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220726130523.2985735-1-m.felsch@pengutronix.de>
References: <20220726130523.2985735-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Lucas Stach <l.stach@pengutronix.de>

i2c2 is routed to the pins dedicated as DDC in the module standard.
Reduce clock rate to 100kHz to be in line with VESA standard and hook
this bus up to the HDMI node.

Fixes: 708ed2649ad8 ("ARM: dts: imx6qdl-kontron-samx6i: increase i2c-frequency")
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
[m.felsch@pengutronix.de: add fixes line]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
index 158344bc13d1..85aeebc9485d 100644
--- a/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-kontron-samx6i.dtsi
@@ -275,6 +275,10 @@ ethphy: ethernet-phy@1 {
 	};
 };
 
+&hdmi {
+	ddc-i2c-bus = <&i2c2>;
+};
+
 &i2c_intern {
 	pmic@8 {
 		compatible = "fsl,pfuze100";
@@ -399,7 +403,7 @@ &i2c1 {
 
 /* HDMI_CTRL */
 &i2c2 {
-	clock-frequency = <375000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 };
-- 
2.30.2

