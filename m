Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6374FDBF7
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 13:00:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354999AbiDLKIq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 06:08:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354004AbiDLIKF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 04:10:05 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 121E510A5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 00:40:19 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1neB8F-0007gI-Ch; Tue, 12 Apr 2022 09:40:11 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ore@pengutronix.de>)
        id 1neB89-00AQZu-Fv; Tue, 12 Apr 2022 09:40:05 +0200
From:   Oleksij Rempel <o.rempel@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Cc:     David Jander <david@protonic.nl>,
        Oleksij Rempel <o.rempel@pengutronix.de>,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Robin van der Gracht <robin@protonic.nl>
Subject: [PATCH v1 09/17] arm: dts: imx6q-vicut1.dts: remove sata node
Date:   Tue, 12 Apr 2022 09:39:56 +0200
Message-Id: <20220412074004.2485264-10-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220412074004.2485264-1-o.rempel@pengutronix.de>
References: <20220412074004.2485264-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
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

From: David Jander <david@protonic.nl>

Only the prototype had the SATA interface. No are no existing products
and plans to add any.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/imx6q-vicut1.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-vicut1.dts b/arch/arm/boot/dts/imx6q-vicut1.dts
index 0a4e251be162..e6c5d3cb48d7 100644
--- a/arch/arm/boot/dts/imx6q-vicut1.dts
+++ b/arch/arm/boot/dts/imx6q-vicut1.dts
@@ -11,7 +11,3 @@ / {
 	model = "Kverneland UT1Q Board";
 	compatible = "kvg,vicut1q", "fsl,imx6q";
 };
-
-&sata {
-	status = "okay";
-};
-- 
2.30.2

