Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 133EC54FC38
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 19:33:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbiFQRdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 13:33:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbiFQRdE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 13:33:04 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B74F81D324
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 10:33:03 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1o2Fq8-00054T-R4; Fri, 17 Jun 2022 19:33:00 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1o2Fq5-0016Ig-AF; Fri, 17 Jun 2022 19:32:58 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1o2Fq5-00H0lC-Tl; Fri, 17 Jun 2022 19:32:57 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: freescale/imx8mp-evk.dts: reorder nodes alphabetically
Date:   Fri, 17 Jun 2022 19:32:54 +0200
Message-Id: <20220617173254.340007-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2059; h=from:subject; bh=nDoeNLJRdly1OGOsdFYP8RYlwbAObLXbgV4JaJbVy2c=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBirLrAXlpmECTSGUMfIi/zUh1Tv8OOiSBFYpJYSBBY Fl8ZCsmJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYqy6wAAKCRDB/BR4rcrsCXV/B/ 9Pt/2ojciDBFZslMwhH2q4GaKWm/+GEmoe8mqWJMZ5lVCkGTsH+1mX0yRVdk8LRsqFVtgIb6uiffrN f4ZC6MQZ1HMY2+51OwFHtuFAMLD8isSuq944BqmLtZ2gxZLx5bqG0jl61wAY4otFWFrjSHSDu+/RON k4ujTmpJ+KXb37KK5faKTdBoeJLprIhYjCsUJy3Agz4ORVt2/H5Xelwgpj9WIMYEs+J8Yc96Z+j8qZ PMd8marRxk6436/TqqpWGgHPs3jXWf3oji6kCZhY1VmremF4dx6R1a4sRqCa3qgI76r0FRJSXySH3S wJAU311MDJB+dw2CAQrY7L9/zSnJIh
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The nodes after the root nodes are supposed to be ordered
alphabetically. There is however an expection for &pinctrl that some
consider to be good placed at the end of the file. So only move flexcan1
and flexcan2 to their proper place.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
(implicit) v1 was send a year ago and also moved pinctrl. Just stumbled
over this mail and the concerns back then that pinctrl is good at the
end. I don't fully agree, but here comes at least the non-disputed part
of the patch.

Reference: https://lore.kernel.org/linux-arm-kernel/20210707105309.1693138-1-u.kleine-koenig@pengutronix.de

Best regards
Uwe

 arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 28 ++++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
index 4c3ac4214a2c..97e91db08ae8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
@@ -67,20 +67,6 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 	};
 };
 
-&flexcan1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan1>;
-	xceiver-supply = <&reg_can1_stby>;
-	status = "okay";
-};
-
-&flexcan2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan2>;
-	xceiver-supply = <&reg_can2_stby>;
-	status = "disabled";/* can2 pin conflict with pdm */
-};
-
 &eqos {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_eqos>;
@@ -197,6 +183,20 @@ ethphy1: ethernet-phy@1 {
 	};
 };
 
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	xceiver-supply = <&reg_can1_stby>;
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	xceiver-supply = <&reg_can2_stby>;
+	status = "disabled";/* can2 pin conflict with pdm */
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";

base-commit: b13baccc3850ca8b8cccbf8ed9912dbaa0fdf7f3
-- 
2.36.1

