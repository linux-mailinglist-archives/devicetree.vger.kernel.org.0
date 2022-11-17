Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC7F962E64C
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 22:05:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240737AbiKQVFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 16:05:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240692AbiKQVEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 16:04:50 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F1AE8D4AA
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:06 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id kt23so8212744ejc.7
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kAZa5MFL/kgwwXWrMqu8oN1aUslhiGgDdUjW81Mvb9E=;
        b=XZBw/6JKc5rCyqd38GXo449XIEv3Pgnx/zV+EwB6bkMu7QdA3f5UMa5tHMvBjgZzBE
         uEKwrFE3SAZzIrnNf8MlwfrdlexUb7BK9KXsHO4ejyvxWkBQVNQ2OJPE5TGb6kKFePGW
         52Rll9OU9NXj61EHN95qVgdUAGOGZoNuhhtZJCVgbrSsiBtj4XK2RVNkmi8IAFBcnU1j
         9q98v1XEcO+CtNDuXUYYbW0usND2Y5IEcutXWvldYBMTxQvk6+U8/S9fQsfAiAWKYVCG
         hrba6pp1uZjPT4F7OIuywMumhy6TP2IAQNMwSiI/0uBADkwix95zhfEFzcQXdRYPmfkl
         OCLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kAZa5MFL/kgwwXWrMqu8oN1aUslhiGgDdUjW81Mvb9E=;
        b=0a81bxsMl4ht+nHGN2t2xV69Pi1B64sZi44TE2FjNnO6je3CFzNi2ZF/sDx5CNlzI3
         lRouGzvOUQoBZ+Wvv1djkSB5vOMhB2rfrhwnKqOG/XnA6+s6/C8dZPz0hM5UpfVH9u9Q
         xTAVznzZQmSVKxDB9Jyo0QvkrZRgPcDROudHiI6Dy/WqqFXobmlJbuX9F1Hf2OZqtO6E
         XmkuSoUozFzCGEKOPJkbZTCBLCTvBlQtMkotKXo1hd0328in/1kyGe0LdFf4kBuVwK3U
         /Cn68GzUG35/Sg+HC/rwEg7fM/+2UwTDI0cFFGZZ5feVaDGWr7/FzMBmnG/OF/iT/PTQ
         8YXg==
X-Gm-Message-State: ANoB5pl0GiZLzXgjnn4UNIEGwtjuhlqdc6eD7Xx5QX6KGGJNh22FMoM8
        82rkeL/Rhe12txMzbtWq7wmqSg==
X-Google-Smtp-Source: AA0mqf6W3sFv9vFKd6YCkQLpyKtG+CyoNEaecRwrtqA8rwwNVI7AEZQPgXiyZgWKtmNic/zKOZsXeg==
X-Received: by 2002:a17:906:3385:b0:7a2:b352:a0d3 with SMTP id v5-20020a170906338500b007a2b352a0d3mr3502702eja.399.1668719044782;
        Thu, 17 Nov 2022 13:04:04 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b00461c6e8453dsm970807edt.23.2022.11.17.13.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 13:04:04 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogiocchino.delregno@collabora.com
Subject: [PATCH v3 1/7] dt-bindings: arm64: dts: mediatek: Add mt8365-evk board
Date:   Thu, 17 Nov 2022 22:03:50 +0100
Message-Id: <20221117210356.3178578-2-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117210356.3178578-1-bero@baylibre.com>
References: <20221117210356.3178578-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the Mediatek mt8365-evk board.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 7642f9350d2c0..a9c18fc7905c0 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -243,6 +243,10 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8365-evk
+          - const: mediatek, mt8365
       - items:
           - enum:
               - mediatek,mt8516-pumpkin
-- 
2.38.1

