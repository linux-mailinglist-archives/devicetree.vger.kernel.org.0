Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D675268C1E3
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 16:42:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbjBFPmM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 10:42:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230224AbjBFPlz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 10:41:55 -0500
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 828282CC61
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 07:41:05 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id r2so10755749wrv.7
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 07:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dE4PzawJ8Ivz1Xkrb1ainxw3MHkOCZBpNlDJteLfhvQ=;
        b=7+0Oo1DVaqD7naQ+tMMYeuBowi/hiXS2Pth67RgSbzizIqJCJUg91R28kFILkD38nm
         OW1Xpyp6KIBZhnCdiQok71iMY/Bn5tV3amkYRfb/6DeGwaBaCJJLlUJWhiUtmAaR/VQf
         +w7cNV6/oG8nPnlySxo+KIWUT9IfR/s5N7Xm4UpDemXPzr/+mAwXl99X2m0FimpJpTwL
         mEM1h4wzIEpayxRIUbK9mwOXPc5D9JOkHvfRjwaH6oaZCNjhpB0yoFqaETseakuwffoP
         cUEd+FaJVNgXGpLVPFXCOXuI8bxrcWl2sdURbnW9SxhM+FaKlM2h0nJ/KKfZrVFpN7L8
         bKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dE4PzawJ8Ivz1Xkrb1ainxw3MHkOCZBpNlDJteLfhvQ=;
        b=8KSwDYpUsgZDAXJd39Dg/IaHYRks1HE5x0AzjccIAIJb3rf9A8jwTr6dxVU8t+SkPd
         IyuFZcJoozmaT+3J2lSpeJ8xIP5lNFfUll12xG4zM2jboeP54aSe5HiDmOGxkk7bqyN2
         evsgoCBlkb9njbida1E5lokXk4aKSIQC7/z6DrLP4IRyWsSHOqzEGlOG8Sjye3D6ooDz
         NES3R/NSsJSu3t1q8zGO/i7SoKorzEkhYyr/VePOlQwYlY0CDuCIHzPj9OCIQVy6M3P1
         7zmpIfemEwQkRuQl0rAj76nj6jbT8WTTFmr1SZuVz1N+aXqMx5yCaSx3YlLWtV2NTHxg
         z1iw==
X-Gm-Message-State: AO0yUKWQ62U8362mVVKX2MpjrfkYXvTGFqhvJQPGHduK5H4q51EmG6Zz
        xehm4WI+8xvdFuGL9d9zqJEXmQ==
X-Google-Smtp-Source: AK7set+Cme49xULbeUvBE9RVSvhB4aDvKFF0sWuGFJ6rilNHj3MTFMavhArsApfIKncV0218UZWksA==
X-Received: by 2002:a5d:6d8b:0:b0:2bf:dcfb:b58a with SMTP id l11-20020a5d6d8b000000b002bfdcfbb58amr26988602wrs.68.1675697699115;
        Mon, 06 Feb 2023 07:34:59 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e12-20020a5d500c000000b002c3ea9655easm2197317wrt.108.2023.02.06.07.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 07:34:58 -0800 (PST)
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
Subject: [PATCH v2 2/7] ASoC: dt-bindings: meson: convert axg tdm formatters to schema
Date:   Mon,  6 Feb 2023 16:34:44 +0100
Message-Id: <20230206153449.596326-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230206153449.596326-1-jbrunet@baylibre.com>
References: <20230206153449.596326-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the DT binding documentation for the Amlogic tdm formatters to
schema.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../sound/amlogic,axg-tdm-formatters.txt      | 36 --------
 .../sound/amlogic,axg-tdm-formatters.yaml     | 88 +++++++++++++++++++
 2 files changed, 88 insertions(+), 36 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
 create mode 100644 Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml

diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
deleted file mode 100644
index 5996c0cd89c2..000000000000
--- a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-* Amlogic Audio TDM formatters
-
-Required properties:
-- compatible: 'amlogic,axg-tdmin' or
-	      'amlogic,axg-tdmout' or
-	      'amlogic,g12a-tdmin' or
-	      'amlogic,g12a-tdmout' or
-	      'amlogic,sm1-tdmin' or
-	      'amlogic,sm1-tdmout
-- reg: physical base address of the controller and length of memory
-       mapped region.
-- clocks: list of clock phandle, one for each entry clock-names.
-- clock-names: should contain the following:
-  * "pclk"     : peripheral clock.
-  * "sclk"     : bit clock.
-  * "sclk_sel" : bit clock input multiplexer.
-  * "lrclk"    : sample clock
-  * "lrclk_sel": sample clock input multiplexer
-
-Optional property:
-- resets: phandle to the dedicated reset line of the tdm formatter.
-
-Example of TDMOUT_A on the S905X2 SoC:
-
-tdmout_a: audio-controller@500 {
-	compatible = "amlogic,axg-tdmout";
-	reg = <0x0 0x500 0x0 0x40>;
-	resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
-	clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
-		 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
-	clock-names = "pclk", "sclk", "sclk_sel",
-		      "lrclk", "lrclk_sel";
-};
diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
new file mode 100644
index 000000000000..719ca8fc98c7
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-formatters.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Audio AXG TDM formatters
+
+maintainers:
+  - Jerome Brunet <jbrunet@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,g12a-tdmout
+      - amlogic,sm1-tdmout
+      - amlogic,axg-tdmout
+      - amlogic,g12a-tdmin
+      - amlogic,sm1-tdmin
+      - amlogic,axg-tdmin
+
+  clocks:
+    items:
+      - description: Peripheral clock
+      - description: Bit clock
+      - description: Bit clock input multiplexer
+      - description: Sample clock
+      - description: Sample clock input multiplexer
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: sclk
+      - const: sclk_sel
+      - const: lrclk
+      - const: lrclk_sel
+
+  reg:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+allOf:
+  - $ref: component-common.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,g12a-tdmin
+              - amlogic,sm1-tdmin
+              - amlogic,g12a-tdmout
+              - amlogic,sm1-tdmout
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
+    #include <dt-bindings/reset/amlogic,meson-g12a-audio-reset.h>
+
+    audio-controller@500 {
+        compatible = "amlogic,g12a-tdmout";
+        reg = <0x500 0x40>;
+        resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
+        clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>,
+                 <&clkc_audio AUD_CLKID_TDMOUT_A_LRCLK>;
+        clock-names = "pclk", "sclk", "sclk_sel",
+                      "lrclk", "lrclk_sel";
+    };
-- 
2.39.0

