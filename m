Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C70ED48F62B
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 10:36:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232714AbiAOJgV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 04:36:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231494AbiAOJgV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 04:36:21 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6E20C06161C
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 01:36:20 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JbY2T69MHzQl7d;
        Sat, 15 Jan 2022 10:36:17 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1642239375;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=JGeD3QzFPU1pjEdT6qw89+d4qhCqqcOr7Z2VTDU4NIM=;
        b=KDFU3Xt5IiZMDkdiKLD8VOg+qWol9MwHYmx6rchApxPk86UmyKGeYMn685PXe2YFkhOa6D
        v7JeD/z38ZPH1XzwLFeUbVM1QgWokLDRVgx2P0S6QIq3SvuRVKwySV4EiUNcLQTDWSlflS
        zc3/WLFzOVeQmQfuzvAS0tXw+816lUKMb4NYep/zhJrkOr299ZGD66rNRjHlZA4WzJoaNs
        qpfxTgbD0HZ3lC6XxabF0kgaY3hb51EYUveDlZESBIPXSkVSDo1UNpgv5DY6CjwqAsnATJ
        IPBvgoJPLIqORiqtvRNLngBO8QKw37JSKP+smiRu5wxIBYGu52QCFilZnZTFbA==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 2/2] ASoC: meson: axg-fifo: convert Amlogic FIFO controller to yaml
Date:   Sat, 15 Jan 2022 10:35:57 +0100
Message-Id: <20220115093557.30498-2-alexander.stein@mailbox.org>
In-Reply-To: <20220115093557.30498-1-alexander.stein@mailbox.org>
References: <20220115093557.30498-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert Amlogic FIFO controller documentation to yaml format.

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
Things to note:
First of, Jerome, sorry for adding you as maintainer, but
1) it's mandatory
2) your are the (only) author of amlogic,axg-fifo.txt

Please add your Signed-off-by if that is okay with you.

License is mandated by checkpath, not my choice.

I'm not so sure about the compatible check. Essentially it is either
* 'amlogic,axg-frddr' OR
* 'amlogic,g12a-frddr' + 'amlogic,axg-frddr'
  (or 'sm1' instead of 'g12a')

Same goes for *-toddr. Is this schema correct in that regard? At least I
got no warnings on existing device trees.

 .../bindings/sound/amlogic,axg-fifo.txt       | 34 -------
 .../bindings/sound/amlogic,axg-fifo.yaml      | 97 +++++++++++++++++++
 2 files changed, 97 insertions(+), 34 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml

diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
deleted file mode 100644
index fa4545ed81ca..000000000000
--- a/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.txt
+++ /dev/null
@@ -1,34 +0,0 @@
-* Amlogic Audio FIFO controllers
-
-Required properties:
-- compatible: 'amlogic,axg-toddr' or
-	      'amlogic,axg-toddr' or
-	      'amlogic,g12a-frddr' or
-	      'amlogic,g12a-toddr' or
-	      'amlogic,sm1-frddr' or
-	      'amlogic,sm1-toddr'
-- reg: physical base address of the controller and length of memory
-       mapped region.
-- interrupts: interrupt specifier for the fifo.
-- clocks: phandle to the fifo peripheral clock provided by the audio
-	  clock controller.
-- resets: list of reset phandle, one for each entry reset-names.
-- reset-names: should contain the following:
-  * "arb" : memory ARB line (required)
-  * "rst" : dedicated device reset line (optional)
-- #sound-dai-cells: must be 0.
-- amlogic,fifo-depth: The size of the controller's fifo in bytes. This
-  		      is useful for determining certain configuration such
-		      as the flush threshold of the fifo
-
-Example of FRDDR A on the A113 SoC:
-
-frddr_a: audio-controller@1c0 {
-	compatible = "amlogic,axg-frddr";
-	reg = <0x0 0x1c0 0x0 0x1c>;
-	#sound-dai-cells = <0>;
-	interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
-	clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
-	resets = <&arb AXG_ARB_FRDDR_A>;
-	fifo-depth = <512>;
-};
diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
new file mode 100644
index 000000000000..54bc073591f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
@@ -0,0 +1,97 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,axg-fifo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Audio FIFO controllers
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+allOf:
+  - $ref: name-prefix.yaml#
+
+properties:
+  $nodename:
+    pattern: "^audio-controller@.*"
+
+  "#sound-dai-cells":
+    const: 0
+
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - amlogic,g12a-frddr
+              - amlogic,sm1-frddr
+          - const: amlogic,axg-frddr
+      - const: amlogic,axg-frddr
+      - items:
+          - enum:
+              - amlogic,g12a-toddr
+              - amlogic,sm1-toddr
+          - const: amlogic,axg-toddr
+      - const: amlogic,axg-toddr
+
+  reg:
+    items:
+      - description: physical base address of the controller
+
+  interrupts:
+    items:
+      - description: FIFO interrupt
+
+  clocks:
+    items:
+      - description: FIFO peripheral clock provided by the audio clock controller
+
+  resets:
+    minItems: 1
+    items:
+      - description: memory ARB line
+      - description: optional device reset line
+
+  reset-names:
+    minItems: 1
+    items:
+      - const: arb
+      - const: rst
+
+  amlogic,fifo-depth:
+    description: >
+      The size of the controller's fifo in bytes. This
+      is useful for determining certain configuration such
+      as the flush threshold of the fifo
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  sound-name-prefix: true
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - reset-names
+  - '#sound-dai-cells'
+  - amlogic,fifo-depth
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/axg-audio-clkc.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
+
+    frddr_a: audio-controller@1c0 {
+        compatible = "amlogic,axg-frddr";
+        reg = <0x1c0 0x1c>;
+        #sound-dai-cells = <0>;
+        interrupts = <88 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
+        resets = <&arb AXG_ARB_FRDDR_A>;
+        reset-names = "arb";
+        amlogic,fifo-depth = <512>;
+    };
-- 
2.34.1

