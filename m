Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C635466200B
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 09:33:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233513AbjAIIdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 03:33:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbjAIIdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 03:33:09 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10095656C
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 00:33:07 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id p1-20020a05600c1d8100b003d8c9b191e0so5969734wms.4
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 00:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kDytp4ppEMXSrwGkxdHQ2/Mw1kec/DZDS/Y2CvEOddk=;
        b=fpkQU3VDvUACOj+YNaC9ZvbLMA+CAtC9Tvdv8hxMA4sNEcnjNRoBkA7F3xE6gbn2vM
         k6sQLcmL4g4o6cWK0qvxUc0h77czTT/3swoeaLSf2HitylMjS1J07hUlwLywdTjbcZu5
         TiwVxKZfBbgPPb8e1B6vbM+WBIm0BKoXrndfrXkmHz4kAZruAmgUbUy/WyJB0qIaJASr
         9dP9YbKO+tsWV6j4t2RS/XsLzRJWI2wZRz5OXs8ncm8CuZ4KumOynT7DmVN5Bq5N7xpx
         bT/syfsvZu3JHh9bhMwoCKY09uMFG5SfdLDAIC7r7uD1fR6nxpFw+x4cDxcg0HhU196k
         2TMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kDytp4ppEMXSrwGkxdHQ2/Mw1kec/DZDS/Y2CvEOddk=;
        b=t5GhCk+rf6gPa6H82PA3Vo/iIF057IuzQAdlqstSMK46g4Vb0tmPOOxwg3MQqnKLJC
         qD/RyHISd0PbstsGIj6umFrJqJqbfu3xcj63+eS38V8/kFXGsU07oK84AoKOvQu4o5Ag
         0Ko4dRb9CDQYy5FfqnoyPOh64pkUxtOtG2CMdqm1yCg9OpOkRoY2VOCyJOIC+4f0S5pp
         m0g9hRLVsbRjKoEltscLHTS/xJqJk1Kp/G6FZJ1FIJUQ69uj7unMWMt7huywW2HB8OKO
         +XwhFOPrNuZRv2frpt5IPPM08uCYHx/r4oMwDgMY18C+wjBpRO+jAoU3rJ9amClcxuKQ
         808w==
X-Gm-Message-State: AFqh2koUycwJQ50uYSK1cTRuH2WgJ/6qsJ4t46Q5GDzL1ZAMTf24S9TE
        uuRLRN8/idaU1/v+VExAh2iR5w==
X-Google-Smtp-Source: AMrXdXsLwyWAEbdbQRoBmwjSYWVjlFKmD8qGN6kpAD3cSTddXE5MW9DFn4WfCzGRxhPU8bOsceAXRQ==
X-Received: by 2002:a05:600c:4998:b0:3cf:68d3:3047 with SMTP id h24-20020a05600c499800b003cf68d33047mr44934987wmp.41.1673253185638;
        Mon, 09 Jan 2023 00:33:05 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f28-20020a05600c491c00b003d9bd56e9c1sm10031744wmp.11.2023.01.09.00.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 00:33:05 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: simple-card: correct DAI subnodes pattern
Date:   Mon,  9 Jan 2023 09:33:01 +0100
Message-Id: <20230109083301.76282-1-krzysztof.kozlowski@linaro.org>
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

The simple-audio-card,dai-link node does not allow address/size-cells
thus children (cpu, codec) should come without unit addresses.  For
cases with multiple nodes of same type, require a dash before index
(e.g. cpu-x) and add trailing $ to the pattern to disallow other
characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/simple-card.yaml       | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index ed19899bc94b..08743741b09e 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -244,9 +244,9 @@ patternProperties:
         maxItems: 1
 
     patternProperties:
-      "^cpu(@[0-9a-f]+)?":
+      "^cpu(-[0-9]+)?$":
         $ref: "#/definitions/dai"
-      "^codec(@[0-9a-f]+)?":
+      "^codec(-[0-9]+)?$":
         $ref: "#/definitions/dai"
     additionalProperties: false
 
@@ -462,16 +462,16 @@ examples:
 
             convert-channels = <8>; /* TDM Split */
 
-            sndcpu1: cpu0 {
+            sndcpu1: cpu-0 {
                 sound-dai = <&rcar_sound 1>;
             };
-            cpu1 {
+            cpu-1 {
                 sound-dai = <&rcar_sound 2>;
             };
-            cpu2 {
+            cpu-2 {
                 sound-dai = <&rcar_sound 3>;
             };
-            cpu3 {
+            cpu-3 {
                 sound-dai = <&rcar_sound 4>;
             };
             codec {
-- 
2.34.1

