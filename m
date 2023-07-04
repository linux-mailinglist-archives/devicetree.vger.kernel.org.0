Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9767B747864
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 20:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbjGDSlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 14:41:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbjGDSlb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 14:41:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C043210D5
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 11:41:28 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <m.felsch@pengutronix.de>)
        id 1qGkxi-00040x-Mh; Tue, 04 Jul 2023 20:41:18 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, marex@denx.de,
        frieder.schrempf@kontron.de
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: arm: Add Polyhex DEBIX SOM A based boards
Date:   Tue,  4 Jul 2023 20:41:08 +0200
Message-Id: <20230704184109.991104-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704184109.991104-1-m.felsch@pengutronix.de>
References: <20230704184109.991104-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX8MP based DEBIX SOM A and SOM A I/O
baseboard:
  - https://debix.io/hardware/debix-som-a.html
  - https://debix.io/hardware/debix-som-a-io-board.html

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d9e763ef932e5..6240485ba13b2 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1059,6 +1059,14 @@ properties:
           - const: polyhex,imx8mp-debix             # Polyhex Debix boards
           - const: fsl,imx8mp
 
+      - description: Polyhex DEBIX i.MX8MP SOM A based boards
+        items:
+          - enum:
+              - polyhex,imx8mp-debix-som-a-bmb-08   # Polyhex Debix SOM A on SOM A I/O board
+          - const: polyhex,imx8mp-debix-som-a       # Polyhex Debix SOM A
+          - const: polyhex,imx8mp-debix             # Polyhex Debix boards
+          - const: fsl,imx8mp
+
       - description: Toradex Boards with Verdin iMX8M Plus Modules
         items:
           - enum:
-- 
2.39.2

