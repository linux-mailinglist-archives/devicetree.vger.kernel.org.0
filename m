Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD033777065
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 08:33:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233685AbjHJGdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 02:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233655AbjHJGdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 02:33:20 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D109D1724
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 23:33:14 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3fe12820bffso4415145e9.3
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 23:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691649193; x=1692253993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eSd9+dSCMBHcEUNxg9MGXggi9cWLvGAB+LtJE315jeE=;
        b=mRr+gxVpp7pg8jiFsl0EUQi5k0c8YNKWhwr6kNOBuPuxwnKM5eZyhgXsxqDAbhRuoA
         PTWTEzAVio/vIkXOYyPEdBPSDhIgUOcWOeoZWEizWD16j9Ab7f6v3priEedUhIdxLxY0
         dukP7frX7T5QWOyLE6qZRj74zajXX9XcaRvpNY2gGNCJv69kWiQG8FAglIq1J0ovIaCW
         3WrUgKDYi7t9i+rceE/UMbW9R9MzrzADAIVpM73fHvDZiSVDHTx6Nt9xr1yG8A25FIgh
         1zj+Quf8e/cz4H6+Fv0UtOrSTXcqmfQlOrCUIwG/BQl4xzGvqT4K7AoasOrss9AoIHPo
         DwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691649193; x=1692253993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eSd9+dSCMBHcEUNxg9MGXggi9cWLvGAB+LtJE315jeE=;
        b=I/fZTXR0be2Umz8yCJMTeT2Z8Tq2QQ1n5RXpbPwT4P8wtRLQwzRkfi+Io3HS9wmN/W
         CNEaCxP5JjTyYz+1pTnAi5ZBA7N9aoEwi43VXs/W7TTLff5Hok0nkCKEGPtqi+1innYR
         /HEa9Rgljz1jwQBUEve3Ryl2mH1iI6KQtIp67G/EWniKOb6x6Hk9z5pum+GMYzJw7EFc
         XwcvkQvHptrHgWtur7mGFBf+lxKLXPmfcNlPfmWL7Vdl2lnQBHP8UGcu5UAYhz5sQzsa
         krgvBF1lGySSkBK9wDBgVPLDZtVxGRauu5uBf0YBUtTfjWBk1QF61kQQGGs6po85AU1m
         Ewnw==
X-Gm-Message-State: AOJu0Yy23O7gvqzs3nGexaHGiX08x4TY24H8O09E4SbFokOAd6/aWR/V
        yGqeyd17pcWfINq9HJtJJl71uA==
X-Google-Smtp-Source: AGHT+IEZxYb1FxIKEtJBlNcisBGSSmO94qeg2OhCBYD6jauaU1qMUChlV2aymQyGQ4CtlQKgGbb+cg==
X-Received: by 2002:a05:600c:3654:b0:3fb:403d:90c0 with SMTP id y20-20020a05600c365400b003fb403d90c0mr1018356wmq.39.1691649193448;
        Wed, 09 Aug 2023 23:33:13 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id o10-20020a1c750a000000b003fe2b6d64c8sm4020018wmc.21.2023.08.09.23.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 23:33:12 -0700 (PDT)
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
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 05/11] ASoC: dt-bindings: samsung,odroid: use common sound card
Date:   Thu, 10 Aug 2023 08:32:53 +0200
Message-Id: <20230810063300.20151-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
References: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference the common sound card properties and deprecate the
custom "samsung,audio-routing" in favor of generic one.  This allows to
remove "model" property and make the binding closer to other sounds
cards.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/samsung,odroid.yaml  | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/samsung,odroid.yaml b/Documentation/devicetree/bindings/sound/samsung,odroid.yaml
index c6751c40e63f..b77284e3e26a 100644
--- a/Documentation/devicetree/bindings/sound/samsung,odroid.yaml
+++ b/Documentation/devicetree/bindings/sound/samsung,odroid.yaml
@@ -10,6 +10,9 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
   - Sylwester Nawrocki <s.nawrocki@samsung.com>
 
+allOf:
+  - $ref: sound-card-common.yaml#
+
 properties:
   compatible:
     oneOf:
@@ -24,10 +27,6 @@ properties:
       - const: samsung,odroid-xu4-audio
         deprecated: true
 
-  model:
-    $ref: /schemas/types.yaml#/definitions/string
-    description: The user-visible name of this sound complex.
-
   assigned-clock-parents: true
   assigned-clock-rates: true
   assigned-clocks: true
@@ -52,6 +51,7 @@ properties:
 
   samsung,audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
+    deprecated: true
     description: |
       List of the connections between audio
       components;  each entry is a pair of strings, the first being the
@@ -61,6 +61,7 @@ properties:
       For Odroid X2: "Headphone Jack", "Mic Jack", "DMIC"
       For Odroid U3, XU3: "Headphone Jack", "Speakers"
       For Odroid XU4: no entries
+      Deprecated, use audio-routing.
 
   samsung,audio-widgets:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
@@ -70,18 +71,17 @@ properties:
 
 required:
   - compatible
-  - model
   - cpu
   - codec
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
     sound {
         compatible = "hardkernel,odroid-xu3-audio";
         model = "Odroid-XU3";
-        samsung,audio-routing =
+        audio-routing =
                 "Headphone Jack", "HPL",
                 "Headphone Jack", "HPR",
                 "IN1", "Mic Jack",
-- 
2.34.1

