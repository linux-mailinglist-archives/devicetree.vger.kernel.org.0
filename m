Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5438A701D1D
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 13:46:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbjENLqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 07:46:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229894AbjENLqr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 07:46:47 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8763FE53
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 04:46:46 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1840ad6769fso2669854fac.0
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 04:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684064804; x=1686656804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YYMgM1UG9vHyy8j7GTdo+T8BZbiGNcbzAlQuk3viKtY=;
        b=pm5mCdaHvhWHkkE4KuQx3zc40GrEVka+HnFlOY2pcBqBYVBzWZBZCM3b2JA8QmJXQ8
         WtyfWC2zLbSmY2ClFvfm+bqFT3V+rrVjKVEwu8fvz3Rn8eujrYbYV8osf799wXxFu96J
         I7n0gDifAf1oexRfM/gPz8R346ZU8Oo25aCHpeSKePPirSiTM9tXOcmpVnMaZ5DXKFc5
         W5xHJQqec7g83scTgixR7ZaCnG/SBgSf+xuz0kCOs/LIuUvVJAvJECpbmzmbkD4l7B3D
         c297OUr8mKvgzrLqGeXiO4fRNWnHiGJsih1QXM7Li5CWyNh9glgnbIuyXvF54DVTm18A
         CHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684064804; x=1686656804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YYMgM1UG9vHyy8j7GTdo+T8BZbiGNcbzAlQuk3viKtY=;
        b=IFdXPKqdD+DbkaFUtGN7ygjmL5AKAQB5gIrcjyJ2uATfREY9CPjPf1gmrXxEBj4UM0
         1Gg44hHHzbyGDCh8ZJ7MEgMPDRrAs8y2PrIIWiI90C69Xk2ecsiS3vUXUcaEh+QtqDWl
         IRouAoPLMWNw8cNuP36Jz54b7wvb720EqgeQSmu4K8mtllah9u79h5V8IrCVOvo5gJaq
         x3AFSbKoNwOrAqQ3aV1c6oO6XOCxOQUFZiPe+JyC1psAIqq2+n6cRRHECc36MGPGcCpk
         zpWXRHFvEkYjtwwTviuwNLgf/rickGAG6QJzwT6/FFHo8FbsgVusHNVuwR34zy0ydzeZ
         /7aw==
X-Gm-Message-State: AC+VfDxfvBPuI+WQ+lDf+xzsOHZxgyjOio3XAOVLC9kIxz4LgZCwuoId
        pOceG7cEa/Ruwo1F1jZnX9c=
X-Google-Smtp-Source: ACHHUZ7cS0FBBYrkayKeycO/W1M41xYZI4loqjVINJGFLdLRYonAPrzQ9JM9x/0hNSBa1APOXykHgw==
X-Received: by 2002:a4a:b4c1:0:b0:54f:d702:a405 with SMTP id g1-20020a4ab4c1000000b0054fd702a405mr6286372ooo.1.1684064804544;
        Sun, 14 May 2023 04:46:44 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:804:1822:9c47:e4e6])
        by smtp.gmail.com with ESMTPSA id s25-20020a4ae559000000b0051134f333d3sm9961242oot.16.2023.05.14.04.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 May 2023 04:46:43 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v4 1/2] dt-bindings: samsung,mipi-dsim: Add 'lane-polarities'
Date:   Sun, 14 May 2023 08:46:24 -0300
Message-Id: <20230514114625.98372-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The Samsung DSIM IP block allows the inversion of the clock and
data lanes.

Add an optional property called 'lane-polarities' that describes the
polarities of the MIPI DSI clock and data lanes.

This property is useful for properly describing the hardware when the
board designer decided to switch the polarities of the MIPI DSI
clock and/or data lanes.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v3:
- Dropped oneOf, no need for it. (Krzysztof)
- Dropped description as it is obvious. (Krzysztof)
- Dropped items, as it is already in video-interfaces. (Krzysztof)
- Dropped "See ../../media/video-interfaces.yaml". (Krzysztof)

 .../display/bridge/samsung,mipi-dsim.yaml     | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index e841659e20cd..9f61ebdfefa8 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -105,6 +105,29 @@ properties:
           DSI output port node to the panel or the next bridge
           in the chain.
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                uniqueItems: true
+                items:
+                  enum: [ 1, 2, 3, 4 ]
+
+              lane-polarities:
+                minItems: 1
+                maxItems: 5
+                description:
+                  The Samsung MIPI DSI IP requires that all the data lanes have
+                  the same polarity.
+
+            dependencies:
+              lane-polarities: [data-lanes]
+
 required:
   - clock-names
   - clocks
-- 
2.34.1

