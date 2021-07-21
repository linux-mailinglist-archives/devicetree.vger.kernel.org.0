Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA0613D109F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:05:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238964AbhGUNYk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:24:40 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:40215 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238151AbhGUNYj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:24:39 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 2E6CF5C0222;
        Wed, 21 Jul 2021 10:05:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 21 Jul 2021 10:05:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=yf7dXElC7ncwv
        F7IOZPxN7+Wo05bvCcM3rAsZDphbGM=; b=rQL5/RCOSBHevd/WXgyyt0lGONm/a
        YuEIzm/id+gYRQBJZl9mqy+DJygrUE41G/k5YRt/0KgdHAb3UL7b8/0EONPd0Wwb
        qzAqlJedFPfm0js2hdcUs8wKuzd+qjTaWQfg6nMJxwp4VluNye1jdlOl5Q6bM9wH
        hXbTia1k3obHFiI92HzUzK6cXGSts3cMeKZZRJ1ZGv/e/gwaSOCWM3phgwKOfvmQ
        CG3mxqoWUAqLd2Evzaqo4A22SU22ez5Vd3NE7jvhzlPyLI1RvCfzjGDJtgmiDUsL
        XA4sB+15mKuTTOPOQjZudbK0q7hoQPBgZR1HDP4AClECPTgjrarUkmfwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yf7dXElC7ncwvF7IOZPxN7+Wo05bvCcM3rAsZDphbGM=; b=Xc0RMUgo
        +pyLr5BwrpHSX0AFJpxXR+ZvJIgpkuOAEiknaWG6PgZ2RZ05Dn5jLbZ1by6F0bvx
        IyKtK2p0ExVJ880tiRUkJVPFdVz/sUiH/JiUZ6iaXhsgBwxgoME8VRwfeWUzB8et
        43hx64Yw/xjajUyBgZEaRvhYV1gw7K0wQ6/XwCi6ZrFJ2cTRriRBvp0JVvw5hXYf
        pn/Ba9Hhtdxaj4AB6L9vDGFy1xxub3pzBWeRmoSgsIgkRwQ8sjD8Q9WZMz5xII5R
        3n5Bb08ARk5i/wycCppI0U9P34cifojp4QdMGGs0Mwx9/Ea3e1UV8VyBcAYgJuAG
        YcXkd0b8ngEWkw==
X-ME-Sender: <xms:nCn4YCGpJoArOjHwBGwjYaBGLtj81atyht8CdfMOVKJzmhMe3iTTQg>
    <xme:nCn4YDXFyxwzQ0IinTHoNErB2OGaFE6aAgn8_OuEBHTNfy_WtD8gvRAILC3pb5rQc
    lS2bldt60vjR0modSY>
X-ME-Received: <xmr:nCn4YMLtLBDUhHB6WxhlVbdJUmoenP_fwzdodI-YN0xxpQwT2BoaNw4p87SUktrEWB3eLb3Og4torJimJ9QBtYIOmssXXZTMWN5u>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeggdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
    evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
    ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
    himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
    gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
    hvihgtvghtrhgvvgdrohhrghenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nCn4YMHzePDXtexK6dKcgi7UTxZLittz5cePK36ss86EY_dslvwkZw>
    <xmx:nCn4YIXzrl4hHRl1F0e3cdU_wUsqBqSuerWabMLkcomsd-Fk5vdbiw>
    <xmx:nCn4YPPJydQf7sffoQ9Kp_vDQgJOov_fjOAJ4ZFhpZQ2rh203zcbog>
    <xmx:nCn4YLEGtRVYrReLA2TWaVIVGWHdss2OQAxnOnVq7doR98zoC3TBCg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Jul 2021 10:05:15 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Lee Jones <lee.jones@linaro.org>
Subject: [PATCH 23/54] dt-bindings: mfd: Convert X-Powers AC100 binding to a schema
Date:   Wed, 21 Jul 2021 16:03:53 +0200
Message-Id: <20210721140424.725744-24-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210721140424.725744-1-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The X-Powers AC100 hybrid devices are supported by Linux thanks to its
device tree binding.

Now that we have the DT validation in place, let's convert the device
tree bindings for that driver over to a YAML schema.

Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/mfd/ac100.txt         |  50 --------
 .../bindings/mfd/x-powers,ac100.yaml          | 113 ++++++++++++++++++
 2 files changed, 113 insertions(+), 50 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/ac100.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml

diff --git a/Documentation/devicetree/bindings/mfd/ac100.txt b/Documentation/devicetree/bindings/mfd/ac100.txt
deleted file mode 100644
index dff219f07493..000000000000
--- a/Documentation/devicetree/bindings/mfd/ac100.txt
+++ /dev/null
@@ -1,50 +0,0 @@
-X-Powers AC100 Codec/RTC IC Device Tree bindings
-
-AC100 is a audio codec and RTC subsystem combo IC. The 2 parts are
-separated, including power supplies and interrupt lines, but share
-a common register address space and host interface.
-
-Required properties:
-- compatible: "x-powers,ac100"
-- reg: The I2C slave address or RSB hardware address for the chip
-- sub-nodes:
-  - codec
-    - compatible:		"x-powers,ac100-codec"
-    - interrupts:		SoC NMI / GPIO interrupt connected to the
-    				IRQ_AUDIO pin
-    - #clock-cells:		Shall be 0
-    - clock-output-names:	"4M_adda"
-
-    - see clock/clock-bindings.txt for common clock bindings
-
-  - rtc
-    - compatible:		"x-powers,ac100-rtc"
-    - clocks:			A phandle to the codec's "4M_adda" clock
-    - #clock-cells:		Shall be 1
-    - clock-output-names:	"cko1_rtc", "cko2_rtc", "cko3_rtc"
-
-    - see clock/clock-bindings.txt for common clock bindings
-
-Example:
-
-ac100: codec@e89 {
-	compatible = "x-powers,ac100";
-	reg = <0xe89>;
-
-	ac100_codec: codec {
-		compatible = "x-powers,ac100-codec";
-		interrupt-parent = <&r_pio>;
-		interrupts = <0 9 IRQ_TYPE_LEVEL_LOW>; /* PL9 */
-		#clock-cells = <0>;
-		clock-output-names = "4M_adda";
-	};
-
-	ac100_rtc: rtc {
-		compatible = "x-powers,ac100-rtc";
-		interrupt-parent = <&nmi_intc>;
-		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
-		clocks = <&ac100_codec>;
-		#clock-cells = <1>;
-		clock-output-names = "cko1_rtc", "cko2_rtc", "cko3_rtc";
-	};
-};
diff --git a/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
new file mode 100644
index 000000000000..6990765076b8
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mfd/x-powers,ac100.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: X-Powers AC100 Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+
+properties:
+  compatible:
+    const: x-powers,ac100
+
+  reg:
+    maxItems: 1
+
+  codec:
+    type: object
+
+    properties:
+      "#clock-cells":
+        const: 0
+
+      compatible:
+        const: x-powers,ac100-codec
+
+      interrupts:
+        maxItems: 1
+
+      clock-output-names:
+        description: >
+          Name of the 4M_adda clock exposed by the codec
+
+    required:
+      - "#clock-cells"
+      - compatible
+      - interrupts
+      - clock-output-names
+
+    additionalProperties: false
+
+  rtc:
+    type: object
+
+    properties:
+      "#clock-cells":
+        const: 1
+
+      compatible:
+        const: x-powers,ac100-rtc
+
+      interrupts:
+        maxItems: 1
+
+      clocks:
+        description: >
+           A phandle to the codec's "4M_adda" clock
+
+      clock-output-names:
+        description: >
+          Name of the cko1, cko2 and cko3 clocks exposed by the codec
+
+    required:
+      - "#clock-cells"
+      - compatible
+      - interrupts
+      - clocks
+      - clock-output-names
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - codec
+  - rtc
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    rsb {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        codec@e89 {
+            compatible = "x-powers,ac100";
+            reg = <0xe89>;
+
+            ac100_codec: codec {
+                compatible = "x-powers,ac100-codec";
+                interrupt-parent = <&r_pio>;
+                interrupts = <0 9 IRQ_TYPE_LEVEL_LOW>; /* PL9 */
+                #clock-cells = <0>;
+                clock-output-names = "4M_adda";
+            };
+
+            ac100_rtc: rtc {
+                compatible = "x-powers,ac100-rtc";
+                interrupt-parent = <&nmi_intc>;
+                interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
+                clocks = <&ac100_codec>;
+                #clock-cells = <1>;
+                clock-output-names = "cko1_rtc", "cko2_rtc", "cko3_rtc";
+            };
+        };
+    };
+
+...
-- 
2.31.1

