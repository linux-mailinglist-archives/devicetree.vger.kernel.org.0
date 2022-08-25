Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58B565A05A8
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 03:33:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231964AbiHYBdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 21:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiHYBd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 21:33:29 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7542F90823
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 18:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:From:Sender:Reply-To:Subject:Date:
        Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=04zdnnUMeK5ejnVgunNM/hxwDpYfXMSGUxjB1CVtres=; b=CgVLv4Qb+UA/gcjGGz+hjRiJEJ
        LJqrytsHsefEBLK/uu4TVc4LE8oYpUKedFJA8Y9n73CTKqzeaPa0SYZJi1gBrqTNHYG/w70CqwRJx
        xhYNjMhWMT1O4O2eb03G92Y9RQYkDHSfkC8BkSRiJXEE9VFfbcAOs4W/x8MTxqsOguZ4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1oR1kH-00EW2p-H4; Thu, 25 Aug 2022 03:33:21 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Gregory Clement <gregory.clement@bootlin.com>
Cc:     arm-soc <arm@kernel.org>, Device Tree <devicetree@vger.kernel.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 05/12] dt-bindings: USB: Convert ehci-orion to DT schema
Date:   Thu, 25 Aug 2022 03:32:51 +0200
Message-Id: <20220825013258.3459714-6-andrew@lunn.ch>
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
 .../devicetree/bindings/usb/ehci-orion.txt    | 22 ---------
 .../bindings/usb/marvell,orion-ehci.yaml      | 48 +++++++++++++++++++
 arch/arm/boot/dts/kirkwood-c200-v1.dts        |  2 +-
 arch/arm/boot/dts/kirkwood-l-50.dts           |  2 +-
 arch/arm/boot/dts/kirkwood-ts219.dtsi         |  2 +-
 5 files changed, 51 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/ehci-orion.txt
 create mode 100644 Documentation/devicetree/bindings/usb/marvell,orion-ehci.yaml

diff --git a/Documentation/devicetree/bindings/usb/ehci-orion.txt b/Documentation/devicetree/bindings/usb/ehci-orion.txt
deleted file mode 100644
index 2855bae79fda..000000000000
--- a/Documentation/devicetree/bindings/usb/ehci-orion.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* EHCI controller, Orion Marvell variants
-
-Required properties:
-- compatible: must be one of the following
-	"marvell,orion-ehci"
-	"marvell,armada-3700-ehci"
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: The EHCI interrupt
-
-Optional properties:
-- clocks: reference to the clock
-- phys: reference to the USB PHY
-- phy-names: name of the USB PHY, should be "usb"
-
-Example:
-
-	ehci@50000 {
-		compatible = "marvell,orion-ehci";
-		reg = <0x50000 0x1000>;
-		interrupts = <19>;
-	};
diff --git a/Documentation/devicetree/bindings/usb/marvell,orion-ehci.yaml b/Documentation/devicetree/bindings/usb/marvell,orion-ehci.yaml
new file mode 100644
index 000000000000..99f640711800
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/marvell,orion-ehci.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/marvell,orion-ehci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Orion USB Controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+
+properties:
+  compatible:
+    enum:
+      - marvell,orion-ehci
+      - marvell,armada-3700-ehci
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
+  phys:
+    maxItems: 1
+
+  phy-names:
+    description: Name of the USB PHY
+    const: 'usb'
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
+    ehci@50000 {
+        compatible = "marvell,orion-ehci";
+        reg = <0x50000 0x1000>;
+        interrupts = <19>;
+    };
+...
diff --git a/arch/arm/boot/dts/kirkwood-c200-v1.dts b/arch/arm/boot/dts/kirkwood-c200-v1.dts
index f59ff7578dfc..a38f69331284 100644
--- a/arch/arm/boot/dts/kirkwood-c200-v1.dts
+++ b/arch/arm/boot/dts/kirkwood-c200-v1.dts
@@ -170,7 +170,7 @@ &i2c0 {
 	status = "okay";
 
 	rtc@30 {
-		compatible = "s35390a";
+		compatible = "sii,s35390a";
 		reg = <0x30>;
 	};
 
diff --git a/arch/arm/boot/dts/kirkwood-l-50.dts b/arch/arm/boot/dts/kirkwood-l-50.dts
index 0d81c43a6a73..b5a658b38b6d 100644
--- a/arch/arm/boot/dts/kirkwood-l-50.dts
+++ b/arch/arm/boot/dts/kirkwood-l-50.dts
@@ -86,7 +86,7 @@ gpio3: gpio-expander@21{
 			};
 
 			rtc@30 {
-				compatible = "s35390a";
+				compatible = "sii,s35390a";
 				reg = <0x30>;
 			};
 		};
diff --git a/arch/arm/boot/dts/kirkwood-ts219.dtsi b/arch/arm/boot/dts/kirkwood-ts219.dtsi
index 994cabcf4b51..de5b3cb516dd 100644
--- a/arch/arm/boot/dts/kirkwood-ts219.dtsi
+++ b/arch/arm/boot/dts/kirkwood-ts219.dtsi
@@ -19,7 +19,7 @@ i2c@11000 {
 			clock-frequency = <400000>;
 
 			s35390a: s35390a@30 {
-				compatible = "s35390a";
+				compatible = "sii,s35390a";
 				reg = <0x30>;
 			};
 		};
-- 
2.37.2

