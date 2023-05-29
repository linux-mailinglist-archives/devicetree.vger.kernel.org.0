Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48D8A714C23
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 16:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbjE2Ogo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 10:36:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbjE2Ogm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 10:36:42 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EC62A0
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 07:36:40 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-96f7bf3cf9eso663517366b.0
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 07:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685370998; x=1687962998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Imn+CVwrZJtyv1pmcN9LMeOD3o4qWPh5+WMlc2rK8js=;
        b=mfkgAqW6EihS8kP8YQKChzyGM1xJlZeIAmp6lE5FzcBG6BVtF4TNGRCr0oLmJPVQT4
         e7eGblhBxM/QbJCa5pIIAdjeIgfoFzqAdlelFZRT8/IAKoxdhEGRJbag4oS1VZv4YFOJ
         axLQ/Fo1l2hj6PhA3FZgOcPvt8jO3sprWPDhjsWI+gddAy9QzGj8i3ycSskytWN5x90k
         VxuIPpf1kaYnDaNwqMQYg7PMp9dtVoqTOqRUoRd7YVH2OK+g9QuoT2u3QG7cV9w4Vb7J
         KihElyPFF6u0TVaH5mXpSJLVZ3cOc3xqJpY7K8W4mLt5dP3oNbB/hievVGGY1l2aDMVp
         OzXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685370998; x=1687962998;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Imn+CVwrZJtyv1pmcN9LMeOD3o4qWPh5+WMlc2rK8js=;
        b=axi1y+kKoDvn9qo4neqDjp8rPHkXogaP0Vy7MWuaMw1P/fIV8ERKmT+IcCrdzzLIXd
         Rmtlexo58I/7tNz5EG6ZrASl2xhXDFWFtOafjTncZuRAHHhrWzq2Nt+1zvIIu1SeHfqf
         CmzHVuwWX/4JWNvQDdAOXnwZMqz/1uLjXWb1uzLDDlMTUCvrMmjF7Ofd21dkND9Dq2G0
         YD6g7r6k6M4rUACAsplp8/dfyb+o6osnW7CN3q4PsST1TRpKhe4AR35cRKoSbrGglNwB
         OoNGbw4halqci5QdsGcS8Fm4DBwCEy6gWXEpqnilTDVT+J0ptRmOJxgfFFq9QYrAh3Yx
         4dAw==
X-Gm-Message-State: AC+VfDwW1CZ0Or3X5GcNNJZ07MyPJQIqTFET1vUt7JPStzgZu8AmAoTl
        2NxBNIP50Ax79Susjwdj5SuNkA==
X-Google-Smtp-Source: ACHHUZ6HAi8OaiQCSTcRK5XREAVu/RA9lyqnqLEhBW3lss9xJehOUE8vu/vjAXFRGN/nRQr/mN6UVQ==
X-Received: by 2002:a17:907:1c0d:b0:96b:4ed5:a1d8 with SMTP id nc13-20020a1709071c0d00b0096b4ed5a1d8mr12615395ejc.36.1685370998453;
        Mon, 29 May 2023 07:36:38 -0700 (PDT)
Received: from [127.0.0.1] (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id le8-20020a170907170800b0096f803afbe3sm5993654ejc.66.2023.05.29.07.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 07:36:37 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Mon, 29 May 2023 16:30:58 +0200
Subject: [PATCH v4 1/8] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20220919-v4-1-687f09a06dd9@baylibre.com>
References: <20220919-v4-0-687f09a06dd9@baylibre.com>
In-Reply-To: <20220919-v4-0-687f09a06dd9@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
        Jitao shi <jitao.shi@mediatek.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, mac.shen@mediatek.com,
        stuart.lee@mediatek.com, Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mt8195 SoC bindings for hdmi and hdmi-ddc

On mt8195 the ddc i2c controller is part of the hdmi IP block and thus has no
specific register range, power domain or interrupt, making it simpler
than the legacy "mediatek,hdmi-ddc" binding.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 .../bindings/display/mediatek/mediatek,hdmi.yaml   | 59 ++++++++++++++++++----
 .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml | 45 +++++++++++++++++
 2 files changed, 93 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
index b90b6d18a828..4f62e6b94048 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
@@ -21,6 +21,7 @@ properties:
       - mediatek,mt7623-hdmi
       - mediatek,mt8167-hdmi
       - mediatek,mt8173-hdmi
+      - mediatek,mt8195-hdmi
 
   reg:
     maxItems: 1
@@ -29,18 +30,10 @@ properties:
     maxItems: 1
 
   clocks:
-    items:
-      - description: Pixel Clock
-      - description: HDMI PLL
-      - description: Bit Clock
-      - description: S/PDIF Clock
+    maxItems: 4
 
   clock-names:
-    items:
-      - const: pixel
-      - const: pll
-      - const: bclk
-      - const: spdif
+    maxItems: 4
 
   phys:
     maxItems: 1
@@ -58,6 +51,9 @@ properties:
     description: |
       phandle link and register offset to the system configuration registers.
 
+  power-domains:
+    maxItems: 1
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -86,9 +82,50 @@ required:
   - clock-names
   - phys
   - phy-names
-  - mediatek,syscon-hdmi
   - ports
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: mediatek,mt8195-hdmi
+    then:
+      properties:
+        clocks:
+          items:
+            - description: APB
+            - description: HDCP
+            - description: HDCP 24M
+            - description: Split HDMI
+        clock-names:
+          items:
+            - const: hdmi_apb_sel
+            - const: hdcp_sel
+            - const: hdcp24_sel
+            - const: split_hdmi
+
+      required:
+        - power-domains
+    else:
+      properties:
+        clocks:
+          items:
+            - description: Pixel Clock
+            - description: HDMI PLL
+            - description: Bit Clock
+            - description: S/PDIF Clock
+
+        clock-names:
+          items:
+            - const: pixel
+            - const: pll
+            - const: bclk
+            - const: spdif
+
+      required:
+        - mediatek,syscon-hdmi
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
new file mode 100644
index 000000000000..84c096835b47
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Mediatek HDMI DDC for mt8195
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  The HDMI DDC i2c controller is used to interface with the HDMI DDC pins.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt8195-hdmi-ddc
+
+  clocks:
+    maxItems: 1
+
+  mediatek,hdmi:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      A phandle to the mt8195 hdmi controller
+
+required:
+  - compatible
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    hdmiddc0: i2c {
+      compatible = "mediatek,mt8195-hdmi-ddc";
+      mediatek,hdmi = <&hdmi0>;
+      clocks = <&clk26m>;
+    };
+
+...

-- 
2.40.0

