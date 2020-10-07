Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D630D28602E
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 15:31:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728289AbgJGNbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 09:31:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728177AbgJGNap (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 09:30:45 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5A74C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 06:30:45 -0700 (PDT)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kQ9Wi-0004Hq-Cn; Wed, 07 Oct 2020 15:30:40 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1kQ9Wh-0000pI-LH; Wed, 07 Oct 2020 15:30:39 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
        linux-imx@nxp.com, m.podolszki@phytec.de
Cc:     devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: [PATCH 1/2] dt-bindings: arm: fsl: add Phytec Nunki boards
Date:   Wed,  7 Oct 2020 15:30:36 +0200
Message-Id: <20201007133037.25315-1-m.felsch@pengutronix.de>
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

Add bindings for the Phytec PhyBOARD-Nunki evalboards.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Hi,

I copied the imx6q-phytec-nunki-rdk-nand.dts and
imx6qdl-phytec-nunki.dtsi from the phytec downstream kernel repo and
added support for the imx6qp-phytec-nunki-rdk-nand.dts.

@Phytec
I adapted the "phytec,imx6q-pbac11-nand" to "phytec,imx6qp-pbac11-nand"
and "phytec,imx6q-pbac11" to "phytec,imx6qp-pbac11". Can you verify that
since I have no knowledge about the internal naming scheme, thanks.

Regards,
  Marco

 Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6da9d734cdb7..26410a42c411 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -156,6 +156,13 @@ properties:
           - const: gw,ventana
           - const: fsl,imx6q
 
+      - description: i.MX6Q Phytec PhyBOARD-Nunki Board
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
 
+      - description: i.MX6QP Phytec PhyBOARD-Nunki Board
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

