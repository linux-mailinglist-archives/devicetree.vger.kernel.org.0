Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60DAC59AFFF
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231393AbiHTTso (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231262AbiHTTsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:39 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E708D1EC67
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=gZ05criROPJOI6jRGySfjkdG7y3rkJwp0PpmApMj5Ys=; b=jzcLYikkjeq7hW3GTmFDGDqJ8e
        Hu5uQ5aqtTanUgR7nxi1ySPGb7XyzJecoEO6uyKRQd5cZl46nXQOUZk1wm03b/u4t6WGKS8GARqud
        kakL0cR/mn4ibwY+SkAl0pqpie/KTjmoYIJZt7KOlrM7rfa8OMEMyn/hno+MkYRdekYw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E48a-RE; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 10/11] DT: timer: Convert marvell,orion-timer.txt to YAML
Date:   Sat, 20 Aug 2022 21:48:03 +0200
Message-Id: <20220820194804.3352415-11-andrew@lunn.ch>
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
 .../bindings/timer/marvell,orion-timer.txt    | 16 ------
 .../bindings/timer/marvell,orion-timer.yaml   | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/timer/marvell,orion-timer.txt
 create mode 100644 Documentation/devicetree/bindings/timer/marvell,orion-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/marvell,orion-timer.txt b/Documentation/devicetree/bindings/timer/marvell,orion-timer.txt
deleted file mode 100644
index cd1a0c256f94..000000000000
--- a/Documentation/devicetree/bindings/timer/marvell,orion-timer.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Marvell Orion SoC timer
-
-Required properties:
-- compatible: shall be "marvell,orion-timer"
-- reg: base address of the timer register starting with TIMERS CONTROL register
-- interrupts: should contain the interrupts for Timer0 and Timer1
-- clocks: phandle of timer reference clock (tclk)
-
-Example:
-	timer: timer {
-		compatible = "marvell,orion-timer";
-		reg = <0x20300 0x20>;
-		interrupt-parent = <&bridge_intc>;
-		interrupts = <1>, <2>;
-		clocks = <&core_clk 0>;
-	};
diff --git a/Documentation/devicetree/bindings/timer/marvell,orion-timer.yaml b/Documentation/devicetree/bindings/timer/marvell,orion-timer.yaml
new file mode 100644
index 000000000000..330bb3cd9c26
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/marvell,orion-timer.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/marvell,orion-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Orion Timer bindings
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+properties:
+  $nodename:
+    pattern: '^timer@[a-f0-9]+$'
+
+  compatible:
+    const: marvell,orion-timer
+
+  reg:
+    description:
+      Base address of the timer register starting with TIMERS CONTROL register
+    maxItems: 1
+
+  interrupts:
+    description:
+      Should contain the interrupts for Timer0 and Timer1
+    minItems: 2
+    maxItems: 2
+
+  clocks:
+    description:
+      phandle of timer reference clock (tclk)
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    timer: timer@20300 {
+        compatible = "marvell,orion-timer";
+        reg = <0x20300 0x20>;
+        interrupt-parent = <&bridge_intc>;
+        interrupts = <1>, <2>;
+        clocks = <&core_clk 0>;
+    };
+...
-- 
2.37.2

