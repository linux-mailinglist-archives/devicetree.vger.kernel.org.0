Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84AB61B3B2D
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2020 11:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgDVJZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Apr 2020 05:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726420AbgDVJZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Apr 2020 05:25:09 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A550C03C1AC
        for <devicetree@vger.kernel.org>; Wed, 22 Apr 2020 02:25:09 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1jRBcr-0007Rh-33; Wed, 22 Apr 2020 11:25:01 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1jRBco-0006Ku-K1; Wed, 22 Apr 2020 11:24:58 +0200
From:   Oleksij Rempel <o.rempel@pengutronix.de>
To:     Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Oleksij Rempel <o.rempel@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-kernel@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
        Marek Vasut <marex@denx.de>, David Jander <david@protonic.nl>,
        devicetree@vger.kernel.org
Subject: [PATCH net-next v5 1/4] dt-bindings: net: phy: Add support for NXP TJA11xx
Date:   Wed, 22 Apr 2020 11:24:53 +0200
Message-Id: <20200422092456.24281-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422092456.24281-1-o.rempel@pengutronix.de>
References: <20200422092456.24281-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the NXP TJA11xx PHY bindings.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/net/nxp,tja11xx.yaml  | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nxp,tja11xx.yaml

diff --git a/Documentation/devicetree/bindings/net/nxp,tja11xx.yaml b/Documentation/devicetree/bindings/net/nxp,tja11xx.yaml
new file mode 100644
index 0000000000000..42be0255512b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/nxp,tja11xx.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/nxp,tja11xx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP TJA11xx PHY
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Florian Fainelli <f.fainelli@gmail.com>
+  - Heiner Kallweit <hkallweit1@gmail.com>
+
+description:
+  Bindings for NXP TJA11xx automotive PHYs
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+patternProperties:
+  "^ethernet-phy@[0-9a-f]+$":
+    type: object
+    description: |
+      Some packages have multiple PHYs. Secondary PHY should be defines as
+      subnode of the first (parent) PHY.
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 31
+        description:
+          The ID number for the child PHY. Should be +1 of parent PHY.
+
+    required:
+      - reg
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        tja1101_phy0: ethernet-phy@4 {
+            reg = <0x4>;
+        };
+    };
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        tja1102_phy0: ethernet-phy@4 {
+            reg = <0x4>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            tja1102_phy1: ethernet-phy@5 {
+                reg = <0x5>;
+            };
+        };
+    };
-- 
2.26.1

