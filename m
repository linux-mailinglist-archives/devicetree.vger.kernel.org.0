Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA8768C20E
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 16:44:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjBFPoM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 10:44:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230104AbjBFPoB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 10:44:01 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F1D629E19
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 07:43:25 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id u27so12454643ljo.12
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 07:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uq9H1tcXk6HETzwlofFPzIzEQPctitFjzIM/SIe7Gs=;
        b=U6oXxdflVh5EjAdAf9l2pohgICfOD56RXCSxtpKDoY6tFpJdY/gtAZOnQMBC1hZLlZ
         ZLJk3wTnMot8h5o9wl6lf4NIlAOmMdFCtXnqHXuQH8kNmOUT4bw5+tiMxfqKgLJD2chS
         bmEPFvzK2/u99cpb97W8PbrplYKtbqSdY0KZxnijuhiKQ6tEdWiQyN9SGpFjaByD9zfI
         zUY1nBPeEbvWWZYEoEDAVWGZkZwj7myD+J+2Zk2KdR3jOBQrbR87rZnbJlEbOZWGN68v
         l+Z16QUCgqmtb8qbVP7N7PrHy36uks9vsqFg7sBqviYhqLu7ytBC96wwEarnGlO2J4M9
         tA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7uq9H1tcXk6HETzwlofFPzIzEQPctitFjzIM/SIe7Gs=;
        b=mDh4f4JyaNKB9ypYpIyjM8Wk55BxqPsnjYvF+YIIDuJ6wMz9XuD27FOq3OtDHkTTl9
         UHmXCNY3RknVUr8p36XAEVs7sILyzkA79H/AJlDotv/5mNq/ItuY7jOJZH8p8twOtWim
         rNHQ0WxL7pBWiSUO7XtyPHi72Y3CSUb5af1rMPXEKTbB4qoBwgKiY2d3x9iZ+MJlgKyQ
         ThcGk6AG5zcDxC0TjPQODz4cFhzZ3FnzDugylpI5nqnPKK54zL//BF/2S+VA5uaY6Jv2
         eavvwUMnJIIDMDnUFFTqwsREG/i0phSGmWIs0PfuVzwBig8+PMEIPEwY3GdiA3ljE535
         IxHg==
X-Gm-Message-State: AO0yUKU3Qog8UtYrkRKk3XBw10Q8er+oV7LmROKV/Gbf4A+PFOfRdiTY
        cK3AepXTKFY6EUimBkoo+ozpHF/q4imIj1kZ
X-Google-Smtp-Source: AK7set/3gt+QIgKlnSPPhK6wmHyjE44gaTTK4Jxmfzqi39RNTb6+xUx4RIEYembGamlVtVI4ulVwDg==
X-Received: by 2002:a05:6000:118c:b0:2c3:eaff:aae8 with SMTP id g12-20020a056000118c00b002c3eaffaae8mr3587288wrx.18.1675697700681;
        Mon, 06 Feb 2023 07:35:00 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e12-20020a5d500c000000b002c3ea9655easm2197317wrt.108.2023.02.06.07.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:35:00 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] ASoC: dt-bindings: meson: convert axg fifo to schema
Date:   Mon,  6 Feb 2023 16:34:46 +0100
Message-Id: <20230206153449.596326-5-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230206153449.596326-1-jbrunet@baylibre.com>
References: <20230206153449.596326-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the DT binding documentation for the Amlogic axg audio FIFOs to
schema.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/amlogic,axg-fifo.txt       |  34 ------
 .../bindings/sound/amlogic,axg-fifo.yaml      | 112 ++++++++++++++++++
 2 files changed, 112 insertions(+), 34 deletions(-)
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
index 000000000000..b1b48d683101
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-fifo.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,axg-fifo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic AXG Audio FIFO controllers
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - amlogic,axg-toddr
+          - amlogic,axg-frddr
+      - items:
+          - enum:
+              - amlogic,g12a-toddr
+              - amlogic,sm1-toddr
+          - const: amlogic,axg-toddr
+      - items:
+          - enum:
+              - amlogic,g12a-frddr
+              - amlogic,sm1-frddr
+          - const: amlogic,axg-frddr
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: Peripheral clock
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
+    maxItems: 2
+
+  amlogic,fifo-depth:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Size of the controller's fifo in bytes
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+  - clocks
+  - interrupts
+  - resets
+  - amlogic,fifo-depth
+
+allOf:
+  - $ref: dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,g12a-toddr
+              - amlogic,sm1-toddr
+              - amlogic,g12a-frddr
+              - amlogic,sm1-frddr
+
+    then:
+      properties:
+        resets:
+          minItems: 2
+        reset-names:
+          items:
+            - const: arb
+            - const: rst
+      required:
+        - reset-names
+
+    else:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          const: arb
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/axg-audio-clkc.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
+    #include <dt-bindings/reset/amlogic,meson-g12a-audio-reset.h>
+
+    audio-controller@1c0 {
+        compatible = "amlogic,g12a-frddr", "amlogic,axg-frddr";
+        reg = <0x1c0 0x1c>;
+        #sound-dai-cells = <0>;
+        clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
+        interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
+        resets = <&arb>, <&clkc_audio AUD_RESET_FRDDR_A>;
+        reset-names = "arb", "rst";
+        amlogic,fifo-depth = <512>;
+    };
-- 
2.39.0

