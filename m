Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 460E9777060
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 08:33:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232713AbjHJGdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 02:33:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233600AbjHJGdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 02:33:11 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74C0AE6B
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 23:33:10 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe7e1ef45dso775785e87.1
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 23:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691649188; x=1692253988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V+hlC8d67YmntwV4mHtT3ZdGF2DLfbF3GgSUytsMD/g=;
        b=xU/RO30vWACYxqjtnyOxfTI3eJXujWzw/tOzIRF0AjoT3K3pqKUkKXyMg1cLZOOP3v
         /yaW305bxyPasG0lRF7V+44ce5JFDRMIfoTnxZeZfjcNWGkAAKBJfCMWWE/BxgFqkryh
         CHaNdvUeOra1W8UrXNDmgWCY+EkAOo/gHYitQwjbXaGsOJlE6ybXURT/L0xRlFZFceNp
         ZSBm7qtK88v0UuRLyz+nXh8MVuaPxzEq0FcRHmHV7R7OPfUFaYxJh0dsEzGQsK2PHSZD
         3lCkvhEqO/1yjUXL7T9lSyfklQFQW5cIKHgx1X8AI7lcbVQblucLHS3P12I/vKLtHG6Z
         no9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691649188; x=1692253988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+hlC8d67YmntwV4mHtT3ZdGF2DLfbF3GgSUytsMD/g=;
        b=UuNHBziZV7QJMkkyot0NyD8bYYK40CBt7vPqXch7HkrKk/px8HpGPCOsaC6Hc2TPT3
         KpGiNhZD6TRspPB8sG9M1ZNPr/1/2HNUnJ5wGGF2/+7ovPoIfX0RVYY4ejpBg+0t3pyK
         IkHooz6alqgDZdXgNbcyUyadL13AUVg+1zJVw4sQSTFiZ2naqpERQvs5r68Mb1nOV6Ya
         wMwP9Fw5tYKhU25pmH1xUwpfUkjjfkd7Xi4JomLE0e9RtlTbMUqqL1DjS7AfLC4jAVuq
         TG9l1gJFwun0yQckfUmqEoNAlffC7ujXVTG10lT96ocdClP4XcN3c+VdjMwAExNfYht+
         BJPw==
X-Gm-Message-State: AOJu0Yxqeqnoem+Lz8BP3OYSXbgeCVSBTE6CJ9lvie7UAQZABLsXdVLo
        lDDEhkWf5YBnrOG7l2piheJCog==
X-Google-Smtp-Source: AGHT+IErGy790Xkb6/KzdX9Bvv40e18+/V59YRvZrbqtUlAQog8GWO8fIcwIyb/Yl5HGLGY7G2ICtw==
X-Received: by 2002:a05:6512:3483:b0:4fe:347c:874b with SMTP id v3-20020a056512348300b004fe347c874bmr907453lfr.8.1691649188761;
        Wed, 09 Aug 2023 23:33:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id o10-20020a1c750a000000b003fe2b6d64c8sm4020018wmc.21.2023.08.09.23.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 23:33:08 -0700 (PDT)
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
Subject: [PATCH v2 03/11] ASoC: dt-bindings: samsung,aries-wm8994: use common sound card
Date:   Thu, 10 Aug 2023 08:32:51 +0200
Message-Id: <20230810063300.20151-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
References: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
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

