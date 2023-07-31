Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E466769200
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232267AbjGaJnt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:43:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232050AbjGaJna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:43:30 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 662C710DE
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:43:24 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99bcc0adab4so686070566b.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690796602; x=1691401402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Vd2V8E3DB7z7kEvHV823551js9h9Apx/nKUpTAbbk0=;
        b=cVfLolvoYQFivQtun6RFjLWCxlxVEXn4VFabZs/4FJ357EbhrsHgVX9Sxi6T9gMYYS
         eyn/2o6gLXNpLk7pu0Hyc+kiXAA/1WqneNKhJo3fTb2QJ48tykBm3CEJygbTAAtyOJpO
         LKaNyPtg/44/gJJ/pgQVxajd4jDKTqOUeOtV/oR13z2aQ6jQl/VFTR+o99HNg/7nqZqI
         ASN5wVEIJGYtbU8l799jjI/+q1y7WcxjAi1iKiCB/oRHa75zbfwpS+W3iWxZ2qv7/1yx
         iuEiJsyHYWnf43/269BrkcDjxyReyKVi+YpxnCvwQqlwDwwuzO/WhTATgrXB4UmN81BK
         eOXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690796602; x=1691401402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Vd2V8E3DB7z7kEvHV823551js9h9Apx/nKUpTAbbk0=;
        b=HcOEqvoU1NUPmVB4KeUzMvHSlBBYPwh/jKRoteIQLbSIP4pnv0M0oXBpKfB7aunqkM
         RZbziKDVmA4Ihv6UcT1uKgHnmf98DSbJnj8UZYu1GVJxJHrwqEp5395j2lkCarsN4NE3
         Pc3/b0hclbm1k7yNyuQooBGk0eaLknYWzojstskc6QO1nb2Q+WIIp3X8T1Q/4VxWXif5
         zrVbga2gejgjotTt4t9S9cNj4mNyBx6QtMVSlGng87t5tXzrKQCo17IPIgzsR2SnnQbp
         PefuY22iUVPaKQwOF1vGfapeUpsRehHPAbZ1Cj3BJdTI+zJ9jOHoUjRBHeNufYuRJEr8
         Ba5A==
X-Gm-Message-State: ABy/qLYK3XNeGYsCxxjn2BQHggGTKY9G6y1UAG2rNh4vMnNnT4gz/oUL
        vNNEeLcESHsieLMkSV8VUsOLpw==
X-Google-Smtp-Source: APBJJlHDwXOgJtQLI73QXcvqo/WffZBIS9gmKGKdfzbOS8PNioPjtmvyx8qIi4hFsHUaY2kjvho8ig==
X-Received: by 2002:a17:906:8a63:b0:993:da87:1c7b with SMTP id hy3-20020a1709068a6300b00993da871c7bmr6154064ejc.10.1690796602231;
        Mon, 31 Jul 2023 02:43:22 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id z17-20020a170906815100b0099bcdfff7cbsm5867547ejw.160.2023.07.31.02.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:43:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Rohit kumar <quic_rohkumar@quicinc.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Rao Mandadapu <srivasam@codeaurora.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Trevor Wu <trevor.wu@mediatek.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/12] ASoC: dt-bindings: samsung,aries-wm8994: use common sound card
Date:   Mon, 31 Jul 2023 11:42:55 +0200
Message-Id: <20230731094303.185067-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
References: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference the common sound card properties and deprecate the
custom "samsung,audio-routing" in favor of generic one.  This allows to
remove "model" property and make the binding closer to other sounds
cards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/samsung,aries-wm8994.yaml     | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml b/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml
index 447e013f6e17..5ea0819a261a 100644
--- a/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml
+++ b/Documentation/devicetree/bindings/sound/samsung,aries-wm8994.yaml
@@ -9,6 +9,9 @@ title: Samsung Aries audio complex with WM8994 codec
 maintainers:
   - Jonathan Bakker <xc-racer2@live.ca>
 
+allOf:
+  - $ref: sound-card-common.yaml#
+
 properties:
   compatible:
     enum:
@@ -17,10 +20,6 @@ properties:
       # Without FM radio and modem slave
       - samsung,fascinate4g-wm8994
 
-  model:
-    $ref: /schemas/types.yaml#/definitions/string
-    description: The user-visible name of this sound complex.
-
   cpu:
     type: object
     additionalProperties: false
@@ -46,6 +45,7 @@ properties:
 
   samsung,audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    deprecated: true
     description: |
       List of the connections between audio
       components;  each entry is a pair of strings, the first being the
@@ -56,6 +56,7 @@ properties:
       or FM In
       For samsung,fascinate4g-wm8994: HP, SPK, RCV, LINE, Main Mic,
       or HeadsetMic
+      Deprecated, use audio-routing.
 
   extcon:
     description: Extcon phandle for dock detection
@@ -87,10 +88,9 @@ properties:
 
 required:
   - compatible
-  - model
   - cpu
   - codec
-  - samsung,audio-routing
+  - audio-routing
   - extcon
   - main-micbias-supply
   - headset-micbias-supply
@@ -98,7 +98,7 @@ required:
   - headset-detect-gpios
   - headset-key-gpios
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
@@ -121,7 +121,7 @@ examples:
         headset-detect-gpios = <&gph0 6 GPIO_ACTIVE_HIGH>;
         headset-key-gpios = <&gph3 6 GPIO_ACTIVE_HIGH>;
 
-        samsung,audio-routing =
+        audio-routing =
             "HP", "HPOUT1L",
             "HP", "HPOUT1R",
 
-- 
2.34.1

