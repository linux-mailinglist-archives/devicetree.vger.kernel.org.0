Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8627168C1C8
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 16:37:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231676AbjBFPhl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 10:37:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231313AbjBFPhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 10:37:18 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 722BF2BEFF
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 07:36:09 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id j25so7227875wrc.4
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 07:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8FN4EvykAI4IHl4CftNphEVB0wNAxrQh05VKdmQXhI=;
        b=uITFYSqUqgTIidcd8LPSMOTw2ZmKXAI7KBgKeOsy2BerfLW0io7swQkw+HoDvo6eq5
         Dw8M9NeSttjleVMYaHHFzDuWQozgyw/dW3zVGer/ABF7wwLFgZVKR61ZXnlN+qlRG6Zy
         pI8CpKEhgrHmzF9n354GduIygtpF+6064V20DuNIntgczh9xPtOP55HGJY4tEYWrMLtT
         gqKkN8mdGu/uldfgydcvg24BqU4MIJ433HNUH+ghKJSCi71d+5sTfIQzuwynE6YPq5MD
         cVSrF7er8jx5U9QUkE9+Ssf6lSaFsc79zSAoyCT4ycIBBDqFmVH028QrXI+bfCFl/Q8o
         rVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W8FN4EvykAI4IHl4CftNphEVB0wNAxrQh05VKdmQXhI=;
        b=4Puu1Td/70+hzLMGjybVxmmFGNG6VIXXRAGPO/m7LX2jkKFteBFyC2unnaIFdZbH+X
         RzjR8wUMUE3VkyWwZ9WqR5eWXQjbakE9eJ4/Dxfr4FNsfnfA0ZuoSom4Z+Hjc1QTEOmD
         f119pzCFiSJPXJs9AdTYX5cHEp/zg1Rrw2GL+pz4i6KRkYklZghdK4fieAPk6BRe08fB
         f97DZeUMkJgBr67NyD80t4d98M0egjJqgSGmMoxsjMg7O6ZnEt+BXezUBe7e8n2Bk7J4
         t9lKUQ7yz7MZp6aOv2odIyzRuTykMgiDcEOqxGxKZQm2tpEV6mKeHmtFLWCPJ0oB1Ynz
         FvCw==
X-Gm-Message-State: AO0yUKU39Qmsbb/UFPImX0jRE7BYDuIU5Bo/XC1NfRySUxKOJMDukj2b
        iA5KZ2TA+PWHtGJH+6yJCb5yWQ==
X-Google-Smtp-Source: AK7set9OiM48xEewyoAZU7y5zm+UkbyRMEhymrKbpEYSJglqGuv4o0288BnponDYegoB13uBs+DSJA==
X-Received: by 2002:adf:e0c3:0:b0:2c3:d808:e82f with SMTP id m3-20020adfe0c3000000b002c3d808e82fmr11851675wri.17.1675697702228;
        Mon, 06 Feb 2023 07:35:02 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e12-20020a5d500c000000b002c3ea9655easm2197317wrt.108.2023.02.06.07.35.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:35:01 -0800 (PST)
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
Subject: [PATCH v2 6/7] ASoC: dt-bindings: meson: convert axg spdif output to schema
Date:   Mon,  6 Feb 2023 16:34:48 +0100
Message-Id: <20230206153449.596326-7-jbrunet@baylibre.com>
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

Convert the DT binding documentation for the Amlogic axg spdif output to
schema.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/amlogic,axg-spdifout.txt   | 25 ------
 .../bindings/sound/amlogic,axg-spdifout.yaml  | 79 +++++++++++++++++++
 2 files changed, 79 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.yaml

diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.txt
deleted file mode 100644
index 28381dd1f633..000000000000
--- a/Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-* Amlogic Audio SPDIF Output
-
-Required properties:
-- compatible: 'amlogic,axg-spdifout' or
-	      'amlogic,g12a-spdifout' or
-	      'amlogic,sm1-spdifout'
-- clocks: list of clock phandle, one for each entry clock-names.
-- clock-names: should contain the following:
-  * "pclk" : peripheral clock.
-  * "mclk" : master clock
-- #sound-dai-cells: must be 0.
-
-Optional property:
-- resets: phandle to the dedicated reset line of the spdif output.
-
-Example on the A113 SoC:
-
-spdifout: audio-controller@480 {
-	compatible = "amlogic,axg-spdifout";
-	reg = <0x0 0x480 0x0 0x50>;
-	#sound-dai-cells = <0>;
-	clocks = <&clkc_audio AUD_CLKID_SPDIFOUT>,
-		 <&clkc_audio AUD_CLKID_SPDIFOUT_CLK>;
-	clock-names = "pclk", "mclk";
-};
diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.yaml
new file mode 100644
index 000000000000..15be8dae9398
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-spdifout.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,axg-spdifout.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Audio AXG SPDIF Output
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,axg-spdifout
+      - items:
+          - enum:
+              - amlogic,g12a-spdifout
+              - amlogic,sm1-spdifout
+          - const: amlogic,axg-spdifout
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
+      - description: SPDIF output master clock
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: mclk
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#sound-dai-cells"
+  - clocks
+  - clock-names
+
+allOf:
+  - $ref: dai-common.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,g12a-spdifout
+              - amlogic,sm1-spdifout
+    then:
+      required:
+        - resets
+
+    else:
+      properties:
+        resets: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/axg-audio-clkc.h>
+
+    audio-controller@480 {
+        compatible = "amlogic,axg-spdifout";
+        reg = <0x480 0x50>;
+        #sound-dai-cells = <0>;
+        clocks = <&clkc_audio AUD_CLKID_SPDIFOUT>,
+                 <&clkc_audio AUD_CLKID_SPDIFOUT_CLK>;
+        clock-names = "pclk", "mclk";
+    };
-- 
2.39.0

