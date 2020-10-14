Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BDF128E469
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 18:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388475AbgJNQ1e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 12:27:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388353AbgJNQ1e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 12:27:34 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A1AFC061755
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 09:27:34 -0700 (PDT)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kSjce-00044v-6X; Wed, 14 Oct 2020 18:27:28 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kSjcd-00014Z-19; Wed, 14 Oct 2020 18:27:27 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        linux-imx@nxp.com, m.podolszki@phytec.de, c.hemp@phytec.de,
        j.remmet@phytec.de
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: add Phytec Nunki boards
Date:   Wed, 14 Oct 2020 18:27:23 +0200
Message-Id: <20201014162724.4041-1-m.felsch@pengutronix.de>
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

Add bindings for the PHYTEC phyBOARD-Nunki evalboards.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changelog:

v2:
- added reviewed-by tags
- s/Phytec/PHYTEC/
- s/PhyBOARD/phyBOARD/
- adapted the naming scheme within the commit message too.

 Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6da9d734cdb7..62c57749b7ba 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -156,6 +156,13 @@ properties:
           - const: gw,ventana
           - const: fsl,imx6q
 
+      - description: i.MX6Q PHYTEC phyBOARD-Nunki Board
+        items:
+          - const: phytec,imx6q-pbac11-nand
+          - const: phytec,imx6q-pbac11
+          - const: phytec,imx6qdl-pcm058
+          - const: fsl,imx6q
+
       - description: i.MX6QP based Boards
         items:
           - enum:
@@ -163,6 +170,13 @@ properties:
               - fsl,imx6qp-sabresd        # i.MX6 Quad Plus SABRE Smart Device Board
           - const: fsl,imx6qp
 
+      - description: i.MX6QP PHYTEC phyBOARD-Nunki Board
+        items:
+          - const: phytec,imx6qp-pbac11-nand
+          - const: phytec,imx6qp-pbac11
+          - const: phytec,imx6qdl-pcm058
+          - const: fsl,imx6qp
+
       - description: i.MX6DL based Boards
         items:
           - enum:
-- 
2.20.1

