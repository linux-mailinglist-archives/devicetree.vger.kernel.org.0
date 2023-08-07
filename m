Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D32C6772C91
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 19:18:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230348AbjHGRSk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 13:18:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231958AbjHGRQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 13:16:06 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C33B1FCE
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 10:15:37 -0700 (PDT)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <m.felsch@pengutronix.de>)
        id 1qT3p7-0001hr-7J; Mon, 07 Aug 2023 19:15:17 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com,
        laurent.pinchart@ideasonboard.com, dan.scally@ideasonboard.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/4] dt-bindings: arm: Add Polyhex DEBIX SOM A based boards
Date:   Mon,  7 Aug 2023 19:15:12 +0200
Message-Id: <20230807171513.156907-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230807171513.156907-1-m.felsch@pengutronix.de>
References: <20230807171513.156907-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changelog:

v3:
- add Laurents rb
- v2-link: https://lore.kernel.org/all/20230717165127.2882535-1-m.felsch@pengutronix.de/

v2:
- drop to generic polyhex,imx8mp-debix binding

 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index d86004aba1db..e91cc5fc87b5 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1073,6 +1073,13 @@ properties:
           - const: polyhex,imx8mp-debix             # Polyhex i.MX8MP Debix SBCs
           - const: fsl,imx8mp
 
+      - description: Polyhex DEBIX i.MX8MP SOM A based boards
+        items:
+          - enum:
+              - polyhex,imx8mp-debix-som-a-bmb-08   # Polyhex Debix SOM A on SOM A I/O board
+          - const: polyhex,imx8mp-debix-som-a       # Polyhex Debix SOM A
+          - const: fsl,imx8mp
+
       - description: Toradex Boards with Verdin iMX8M Plus Modules
         items:
           - enum:
-- 
2.39.2

