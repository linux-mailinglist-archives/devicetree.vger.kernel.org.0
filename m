Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AB6E5A05AB
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232111AbiHYBdc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231989AbiHYBda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:30 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 615388B9BC
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=36RXCWaSwWrm73imhWTCf6+E7hQEUBds/+vtP1cyQPM=; b=My6u0RBsJRY4rZiYpXne1DGEM3
        NYiYCBzYeekvz+ueWLNhqx9noPZOwMa2Mc7WH3W4zHUcfRaURbwoS0XaP2atqSq9XmE2JoNXn/PZq
        HeJFQN/wvKo8ufxJrUD0AJYXkg3PQlzHToCC4DTA4tky1o2O4m7Mb+wjQHTJTp3zScoM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW37-P9; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 11/12] dt-bindings: timer: Convert marvell,orion-timer.txt to DT schema
Date:   Thu, 25 Aug 2022 03:32:57 +0200
Message-Id: <20220825013258.3459714-12-andrew@lunn.ch>
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
index 000000000000..f9f79dbd4542
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/marvell,orion-timer.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/marvell,orion-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Orion Timer
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

