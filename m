Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABD1B5E17C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 11:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726964AbfGCJzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 05:55:21 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:56833 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726936AbfGCJzV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 05:55:21 -0400
X-Originating-IP: 185.94.189.188
Received: from localhost (unknown [185.94.189.188])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 8A47C1C064F;
        Wed,  3 Jul 2019 09:55:19 +0000 (UTC)
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH 3/7] dt-bindings: net: mdio: Add child nodes
Date:   Wed,  3 Jul 2019 11:55:09 +0200
Message-Id: <20190703095513.12340-3-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703095513.12340-1-maxime.ripard@bootlin.com>
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The child nodes of a mdio bus are supposed to be ethernet PHYs, with a reg
property. Make sure that's validated as well.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/net/mdio.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
index 24d67074d494..5d08d2ffd4eb 100644
--- a/Documentation/devicetree/bindings/net/mdio.yaml
+++ b/Documentation/devicetree/bindings/net/mdio.yaml
@@ -39,6 +39,20 @@ properties:
       and must therefore be appropriately determined based on all PHY
       requirements (maximum value of all per-PHY RESET pulse widths).
 
+patternProperties:
+  "^ethernet-phy@[0-9a-f]+$":
+    type: object
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 31
+        description:
+          The ID number for the PHY.
+
+    required:
+      - reg
+
 examples:
   - |
     davinci_mdio: mdio@5c030000 {
-- 
2.21.0

