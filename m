Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18E065A05A4
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232024AbiHYBd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229796AbiHYBd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:28 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3FA38A1E5
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=17gN+D+74XVrl708FcOfazYIryQGSX1KtKWwuinOqlM=; b=4c4gYu9G0lrZMhPj4OLK7MHa/w
        PbLZeu5kpTM14hnj41GJ/VTuckN5THQIIUuhmuJWKPQzMkC5QoX5yFxhRF+PaKK+a/MeqNODqmW4F
        hZwVJylm82D8UxaveygI4o4A/+aiviPdxcO8Xs5pJ2R8bvCR4ONUgcJAheyqgtnbBUEo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2g-Bz; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 02/12] dt-bindings: thermal: marvell,kirkwood-thermal: Convert to DT schema
Date:   Thu, 25 Aug 2022 03:32:48 +0200
Message-Id: <20220825013258.3459714-3-andrew@lunn.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220825013258.3459714-1-andrew@lunn.ch>
References: <20220825013258.3459714-1-andrew@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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
index 000000000000..760cfccd02b0
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/marvell,kirkwood-thermal.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/marvell,kirkwood-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Kirkwood Thermal Controller
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

