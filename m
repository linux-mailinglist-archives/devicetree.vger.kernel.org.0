Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16F5559AFFE
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbiHTTsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229714AbiHTTsg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:36 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8F5B17E08
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=MqBoY6asFsnJ4KiZLXZnONKNd+gruNm2z3a/NF1uweA=; b=2RBnx2Qnw6G9lixXxGq4v0FCDW
        08Q0YRWOhDGmpX2Y/x9uADs2a902XnJEyTDYv+/cDI5XjC3kLPb6neMhF9yJ/Amk6Gq7Ccx/SZgcu
        08eCZ5X7c5HlM8LDzdO7xCK/qBqICQzTvwAJIpgFfOrRvsrTq66EKAYNbMO+MDOTUsDA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E48L-Kk; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 05/11] DT: watchdog: Convert marvel.txt to YAML
Date:   Sat, 20 Aug 2022 21:47:58 +0200
Message-Id: <20220820194804.3352415-6-andrew@lunn.ch>
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

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../devicetree/bindings/watchdog/marvel.txt   | 45 ----------
 .../bindings/watchdog/marvell,orion-wdt.yaml  | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/watchdog/marvel.txt
 create mode 100644 Documentation/devicetree/bindings/watchdog/marvell,orion-wdt.yaml

diff --git a/Documentation/devicetree/bindings/watchdog/marvel.txt b/Documentation/devicetree/bindings/watchdog/marvel.txt
deleted file mode 100644
index c1b67a78f00c..000000000000
--- a/Documentation/devicetree/bindings/watchdog/marvel.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Marvell Orion Watchdog Time
-
-Required Properties:
-
-- Compatibility : "marvell,orion-wdt"
-		  "marvell,armada-370-wdt"
-		  "marvell,armada-xp-wdt"
-		  "marvell,armada-375-wdt"
-		  "marvell,armada-380-wdt"
-
-- reg		: Should contain two entries: first one with the
-		  timer control address, second one with the
-		  rstout enable address.
-
-For "marvell,armada-375-wdt" and "marvell,armada-380-wdt":
-
-- reg		: A third entry is mandatory and should contain the
-                  shared mask/unmask RSTOUT address.
-
-Clocks required for compatibles = "marvell,orion-wdt",
-				  "marvell,armada-370-wdt":
-- clocks : Must contain a single entry describing the clock input
-
-Clocks required for compatibles = "marvell,armada-xp-wdt"
-				  "marvell,armada-375-wdt"
-				  "marvell,armada-380-wdt":
-- clocks : Must contain an entry for each entry in clock-names.
-- clock-names : Must include the following entries:
-  "nbclk" (L2/coherency fabric clock),
-  "fixed" (Reference 25 MHz fixed-clock).
-
-Optional properties:
-
-- interrupts	: Contains the IRQ for watchdog expiration
-- timeout-sec	: Contains the watchdog timeout in seconds
-
-Example:
-
-	wdt@20300 {
-		compatible = "marvell,orion-wdt";
-		reg = <0x20300 0x28>, <0x20108 0x4>;
-		interrupts = <3>;
-		timeout-sec = <10>;
-		clocks = <&gate_clk 7>;
-	};
diff --git a/Documentation/devicetree/bindings/watchdog/marvell,orion-wdt.yaml b/Documentation/devicetree/bindings/watchdog/marvell,orion-wdt.yaml
new file mode 100644
index 000000000000..8607e1620f72
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/marvell,orion-wdt.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/marvell,orion-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Orion Watchdog Device Tree Bindings
+
+allOf:
+  - $ref: "watchdog.yaml#"
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+properties:
+  compatible:
+    enum:
+      - marvell,orion-wdt
+      - marvell,armada-370-wdt
+      - marvell,armada-xp-wdt
+      - marvell,armada-375-wdt
+      - marvell,armada-380-wdt
+
+  reg:
+    description:
+      Normally two items, the timer control address and the rstout enable
+      address. However armada-375 and 380 require and additional shared
+      mask/unmask rstout address
+
+  clocks:
+    minItems: 1
+    items:
+      - description: L2/coherency fabric clock
+      - description: Reference 25 MHz fixed-clock
+
+  interrupts:
+    maxItems: 1
+
+  timeout-sec: true
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - marvell,armada-xp-wdt
+          - marvell,armada-375-wdt
+          - marvell,armada-380-wdt
+then:
+  properties:
+    clocks:
+      minItems: 2
+    clock-names:
+      items:
+        - const: nbclk
+        - const: fixed
+
+  required:
+    - clock-names
+
+else:
+  properties:
+    clocks:
+      maxItems: 1
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    watchdog@20300 {
+        compatible = "marvell,orion-wdt";
+        reg = <0x20300 0x28>, <0x20108 0x4>;
+        interrupts = <3>;
+        timeout-sec = <10>;
+        clocks = <&gate_clk 7>;
+    };
+...
-- 
2.37.2

