Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E8C5582E4E
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 19:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbiG0RJz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 13:09:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241638AbiG0RJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 13:09:22 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A955774374
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:41:01 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id t17so15670788lfk.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pixZf6AxzKsbblWkPgEa/wCEjEyv0eH7Z0aYp8YUpGU=;
        b=vNCansP6Trr0iw18LZc9CTOYN+jcJ/hP3lk/BF0RUdZbtfbg4+HowoEuynrmouACf7
         o04lz9lo+1IVXZtXMMJbnuK7BmlaKr2DgxuLzRhQCQjpznp8J0FkmLp4zQ2LwUkfFMtx
         6urFZ06hO/g5AibAezm9Fi9ybD/kFR6al2ZO7slNIbPv4/cpuzQFFekqkwVBvSWv5vYs
         +OwBIm6YiNQs7Abkj2eMLulvzgZSIYUFyb923C+ovEiC6j7W3BijHM+ZaRTid7+ou1Jt
         Sk8bvlrPrQQwskCrr5ogokAmvMocGONqjWs48T6Pt2l5D/GVcDKT+p0pUTi9mGIN2LgH
         aAUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pixZf6AxzKsbblWkPgEa/wCEjEyv0eH7Z0aYp8YUpGU=;
        b=chjREMP2ufkw8ZWFrX3FYqItL3hD/BMk+ZUrKLWX1dLNQsEuWG1P6Mw9OmbIzIPwsM
         siiGs3PQ9bGjCmdOlzmJ1yiZPi2VZSMhUIkbYaQoD6LwUTJg8e4AIL3/+d0jbvGWDILh
         I+bLfgCHv4tjE/01L07JrZJu2OpynmXFica6iuIXocOhXQOLraMil8y+SXgfd2lemk6x
         I1xpB1QYz/G8rpRh3HjV/3JCbqU87cfiqGdbDJrfrS//RlDYOQ9U50X0teloRQBoffmy
         Rbbiwf9Wzjnqgbmi2sYvMtqVwsy/iQ1SE4jU9burNBqcKrXul5cRpygC/vUjNEAjUJ2V
         XMPA==
X-Gm-Message-State: AJIora+gVNt9xfd5GB6ZFPSUdxMCGRZNNDugn9w5u/XMyET2ZFURE0RI
        4kRatwToFxwthtx+H/UpzwBlUw==
X-Google-Smtp-Source: AGRyM1sEa8xnb9s4uf0W9nB9PCobLc+j3L3f+ElRoTRRKIH1ldBG30FknIESIJMvaO4t5rvFhQ1TEQ==
X-Received: by 2002:a19:6408:0:b0:48a:139e:67b7 with SMTP id y8-20020a196408000000b0048a139e67b7mr7923551lfb.203.1658940059516;
        Wed, 27 Jul 2022 09:40:59 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id v3-20020a05651203a300b00478f174c598sm489358lfp.95.2022.07.27.09.40.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 09:40:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Bogdan Togorean <bogdan.togorean@analog.com>,
        - <patches@opensource.cirrus.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: use spi-peripheral-props.yaml
Date:   Wed, 27 Jul 2022 18:40:50 +0200
Message-Id: <20220727164050.385241-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Instead of listing directly properties typical for SPI peripherals,
reference the spi-peripheral-props.yaml schema.  This allows using all
properties typical for SPI-connected devices, even these which device
bindings author did not tried yet.

Remove the spi-* properties which now come via spi-peripheral-props.yaml
schema, except for the cases when device schema adds some constraints
like maximum frequency.

While changing additionalProperties->unevaluatedProperties, put it in
typical place, just before example DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Technically, this depends on [1] merged to SPI tree, if we want to
preserve existing behavior of not allowing SPI CPHA and CPOL in each of
schemas in this patch.

If this patch comes independently via different tree, the SPI CPHA and
CPOL will be allowed for brief period of time, before [1] is merged.
This will not have negative impact, just DT schema checks will be
loosened for that period.

[1] https://lore.kernel.org/all/20220722191539.90641-2-krzysztof.kozlowski@linaro.org/
---
 .../devicetree/bindings/sound/adi,adau1977.yaml          | 7 ++++---
 Documentation/devicetree/bindings/sound/wlf,wm8731.yaml  | 9 +++++----
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/adi,adau1977.yaml b/Documentation/devicetree/bindings/sound/adi,adau1977.yaml
index b80454ad97da..847b83398d3d 100644
--- a/Documentation/devicetree/bindings/sound/adi,adau1977.yaml
+++ b/Documentation/devicetree/bindings/sound/adi,adau1977.yaml
@@ -32,8 +32,6 @@ properties:
   reset-gpios:
     maxItems: 1
 
-  spi-max-frequency: true
-
   AVDD-supply:
     description: Analog power support for the device.
 
@@ -52,7 +50,10 @@ required:
   - compatible
   - AVDD-supply
 
-additionalProperties: false
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
index e7220e8b49f0..15795f63b5a3 100644
--- a/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
+++ b/Documentation/devicetree/bindings/sound/wlf,wm8731.yaml
@@ -52,10 +52,6 @@ properties:
   DCVDD-supply:
     description: Digital core supply regulator for the DCVDD pin.
 
-  spi-max-frequency: true
-
-additionalProperties: false
-
 required:
   - reg
   - compatible
@@ -64,6 +60,11 @@ required:
   - DBVDD-supply
   - DCVDD-supply
 
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
 examples:
   - |
     spi {
-- 
2.34.1

