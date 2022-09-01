Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41E4B5A9594
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 13:20:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233114AbiIALUt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 07:20:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232840AbiIALUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 07:20:48 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB3A8107C53
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 04:20:45 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1oTiFY-0006U4-Az; Thu, 01 Sep 2022 13:20:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1oTiFV-003HxX-Ns; Thu, 01 Sep 2022 13:20:43 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1oTiFW-007dXb-HC; Thu, 01 Sep 2022 13:20:42 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 2/3] dt-bindings: arm: fsl: Add Innocom WB15 EVK
Date:   Thu,  1 Sep 2022 13:20:39 +0200
Message-Id: <20220901112040.1471879-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220901112040.1471879-1-s.hauer@pengutronix.de>
References: <20220901112040.1471879-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
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

Add board compatibles for the Innocom WB15 EVK board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7431579ab0e85..0044b053dd86c 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -831,6 +831,7 @@ properties:
               - gw,imx8mm-gw7901          # i.MX8MM Gateworks Board
               - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
               - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
+              - innocom,wb15-evk          # i.MX8MM Innocom EVK board with WB15 SoM
               - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
               - menlo,mx8menlo            # i.MX8MM Menlo board with Verdin SoM
               - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
-- 
2.30.2

