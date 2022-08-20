Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0051F59B001
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 21:49:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231164AbiHTTsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Aug 2022 15:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231173AbiHTTsh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Aug 2022 15:48:37 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC2771C13D
        for <devicetree@vger.kernel.org>; Sat, 20 Aug 2022 12:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=1EJJYFLvGwEug/sfNcp8w1KYG92RoXrIliHndeGXgho=; b=XzH1zC46RtfgGb/7MbXdhotLFg
        n8nTORqCsVsU35P0jwvV4YW6vK/8gy9ft07D8SgqWPwY+b+tRyKO6KtPdPdakc/mwu+o2NRgWtQ0T
        Jy2IY/gGpg4Z2Ge0PgEeiQLh4ivIbU+3f883sWmOTfZYVPl7PxdBpEInNgTEVZQxZTuM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oPUSL-00E487-DW; Sat, 20 Aug 2022 21:48:29 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH 01/11] DT: RTC: orion-rtc: Convert to YAML
Date:   Sat, 20 Aug 2022 21:47:54 +0200
Message-Id: <20220820194804.3352415-2-andrew@lunn.ch>
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

Covert the text description to YAML. The clock is optional, Orion5x
based boards don't have it, but kirkwood should.

Signed-off-by: Andrew Lunn <andrew@lunn.ch>
---
 .../bindings/rtc/marvell,orion-rtc.yaml       | 48 +++++++++++++++++++
 .../devicetree/bindings/rtc/orion-rtc.txt     | 18 -------
 2 files changed, 48 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
 delete mode 100644 Documentation/devicetree/bindings/rtc/orion-rtc.txt

diff --git a/Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml b/Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
new file mode 100644
index 000000000000..d240e67a4555
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/marvell,orion-rtc.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/marvell,orion-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MVEBU Orion RTC Device Tree Bindings
+
+allOf:
+  - $ref: "rtc.yaml#"
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - marvell,orion-rtc
+      - items:
+          - enum:
+              - marvell,kirkwood-rtc
+          - const: marvell,orion-rtc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
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
+    rtc@10300 {
+        compatible = "marvell,orion-rtc";
+        reg = <0xd0010300 0x20>;
+        interrupts = <50>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/rtc/orion-rtc.txt b/Documentation/devicetree/bindings/rtc/orion-rtc.txt
deleted file mode 100644
index 3bf63ffa5160..000000000000
--- a/Documentation/devicetree/bindings/rtc/orion-rtc.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* Mvebu Real Time Clock
-
-RTC controller for the Kirkwood, the Dove, the Armada 370 and the
-Armada XP SoCs
-
-Required properties:
-- compatible : Should be "marvell,orion-rtc"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: IRQ line for the RTC.
-
-Example:
-
-rtc@10300 {
-        compatible = "marvell,orion-rtc";
-        reg = <0xd0010300 0x20>;
-        interrupts = <50>;
-};
-- 
2.37.2

