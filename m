Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD614D4301
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 16:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726671AbfJKOhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 10:37:08 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:33549 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726707AbfJKOhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 10:37:07 -0400
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28] helo=dude02.pengutronix.de.)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1iIw2R-0007EF-Fb; Fri, 11 Oct 2019 16:37:03 +0200
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Markus Niebel <Markus.Niebel@tq-group.com>,
        Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: arm: fsl: Add TQ TQMa6{S,Q,QP} on MBa6x
Date:   Fri, 11 Oct 2019 16:36:51 +0200
Message-Id: <20191011143651.6424-3-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011143651.6424-1-p.zabel@pengutronix.de>
References: <20191011143651.6424-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the TQ MBa6x mainboard with TQMa6S,
TQMa6Q, or TQMa6QP SoM.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b4b4e6573b5..8cc2d4a76e77 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -114,6 +114,8 @@ properties:
               - fsl,imx6q-sabresd
               - technologic,imx6q-ts4900
               - technologic,imx6q-ts7970
+              - tq,mba6a                  # TQ TQMa6Q SoM on MBa6x
+              - tq,mba6b
           - const: fsl,imx6q
 
       - description: i.MX6QP based Boards
@@ -121,6 +123,8 @@ properties:
           - enum:
               - fsl,imx6qp-sabreauto      # i.MX6 Quad Plus SABRE Automotive Board
               - fsl,imx6qp-sabresd        # i.MX6 Quad Plus SABRE Smart Device Board
+              - tq,mba6a                  # TQ TQMa6QP SoM on MBa6x
+              - tq,mba6b
           - const: fsl,imx6qp
 
       - description: i.MX6DL based Boards
@@ -133,6 +137,8 @@ properties:
               - fsl,imx6dl-sabresd        # i.MX6 DualLite SABRE Smart Device Board
               - technologic,imx6dl-ts4900
               - technologic,imx6dl-ts7970
+              - tq,mba6a                  # TQ TQMa6S SoM on MBa6x
+              - tq,mba6b
               - ysoft,imx6dl-yapp4-draco  # i.MX6 DualLite Y Soft IOTA Draco board
               - ysoft,imx6dl-yapp4-hydra  # i.MX6 DualLite Y Soft IOTA Hydra board
               - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
-- 
2.20.1

