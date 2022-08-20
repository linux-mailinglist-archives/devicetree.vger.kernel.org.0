Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85FF959B005
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231173AbiHTTsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231213AbiHTTsh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:37 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B0341C13F
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=i0HCilCw6jcCPr1vZi4sizB85H9MNozoRsxg1qi40w4=; b=4xUgFpS7OET3aArXH2UNyCuo7+
        RESNRVGdyJ1MX74HpX8NN2/zMxVa9zTKGowhGwpOICd/0qoKwOo+FwV5hGpK1JIaISQc62A6/Jfft
        p7E8prDj0FgY2CjtYUIAq+9++RhzWevHYuosOBdgLlsMpNw9oY5ll53HrW33LQSfkYvo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E48A-F4; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 02/11] DT: thermal: marvell,kirkwood-thermal: Convert to YAML
Date:   Sat, 20 Aug 2022 21:47:55 +0200
Message-Id: <20220820194804.3352415-3-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220820194804.3352415-1-andrew@lunn.ch>
References: <20220820194804.3352415-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a simple YAML description of the thermal binding for the kirkwood
thermal sensor.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/thermal/kirkwood-thermal.txt     | 15 ---------
 .../thermal/marvell,kirkwood-thermal.yaml     | 32 +++++++++++++++++++
 2 files changed, 32 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/thermal/kirkwood-thermal.txt
 create mode 100644 Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/kirkwood-thermal.txt b/Documentation/devicetree/bindings/thermal/kirkwood-thermal.txt
deleted file mode 100644
index 8c0f5eb86da7..000000000000
--- a/Documentation/devicetree/bindings/thermal/kirkwood-thermal.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-* Kirkwood Thermal
-
-This version is for Kirkwood 88F8262 & 88F6283 SoCs. Other kirkwoods
-don't contain a thermal sensor.
-
-Required properties:
-- compatible : "marvell,kirkwood-thermal"
-- reg : Address range of the thermal registers
-
-Example:
-
-	thermal@10078 {
-		compatible = "marvell,kirkwood-thermal";
-		reg = <0x10078 0x4>;
-	};
diff --git a/Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml b/Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml
new file mode 100644
index 000000000000..5d0cc6c1af33
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/marvell,kirkwood-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood Thermal Controller Device Tree Bindings
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+properties:
+  compatible:
+    enum:
+      - marvell,kirkwood-thermal
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    thermal@10078 {
+        compatible = "marvell,kirkwood-thermal";
+        reg = <0x10078 0x4>;
+    };
+...
-- 
2.37.2

