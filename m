Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A27B1789558
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 11:39:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232457AbjHZJjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 05:39:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232453AbjHZJi7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 05:38:59 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB67E94
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 02:38:56 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99c136ee106so206604466b.1
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 02:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693042735; x=1693647535;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HrYqC/NgvPNZZPzsGiT/lg4ia/WmMQNaEEMcPhrqy+o=;
        b=Ho2ZKHMnGtGNdGBuf86HZIZy5cvOfdsx/KMTyiDrlVTzJ2p9I4hJoHcb21XFxbq794
         7kCprWerLTbqDDzakcT6GCYaPw6UVjpPRNQkBx16TJ7AIveo2Wg43tGSbUTle8ODEz2T
         zaRfar9T1WSVgnz/0RN22bVhj77cLh5rAwiyqIdOfTx5D1l3ZpWu1pXuSIyFwvVPiHJf
         9QcicRlmjb0M1cweqrnQlDcpUGb8N3+UZ5RA7T1xjy5XmfCqNIV6ojgJBPdB3RG5V3sd
         Aatvm5O6xThcji9w6UH/PcTGMMbFTyh+BxEo+1Rnu8+tEbp1WJ/pV9LN6m9dwamLS9va
         tkMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693042735; x=1693647535;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrYqC/NgvPNZZPzsGiT/lg4ia/WmMQNaEEMcPhrqy+o=;
        b=DOwUI/LL2B0sENzYGgUQI69Qa0cdgAyS4FoEmz0tE3xqmus1RHh6Dn1ylxUI1jb7uu
         Rfrn/5JJciR+KMHZkv28VNQmMtn3r29W0th/Kk5V5cZ8FtQJwWItoMCkQ6mjXqdNcB4O
         U4c3Wey6kUJCLSrEPQstdVhQ9vIgCv8t0Pg3UAxYmA8o9qT/q0dj5D44bYmRxuMOmQ7P
         w+GoibcYn97zPY2uG/DAprMKXhq9A3LREopcmosQPUJZU3gUBD5uGgaQ7x5Sf3kI8r8C
         NogqFVWVNapAdHupkRrPy1W2LBwQYTNRGAc0b3SZ+qhj4D/QOu0Dxv+v9IzGydwfL4lb
         W/rw==
X-Gm-Message-State: AOJu0Yz5Hkvr28OWyvynJfjQH7lPUFL4DVbgF4pvAy7b9Cy7SRIeu/nP
        ItfxERs86uTF5moYjPav+o+b/A==
X-Google-Smtp-Source: AGHT+IHjmbFg1H57TDNIZjkNJapebQSvKKTp1AGIcQS1jr/gn0VFF7slvzzVWFYNMDNRDpABgPxOqw==
X-Received: by 2002:a17:906:2ca:b0:9a1:c352:b6a5 with SMTP id 10-20020a17090602ca00b009a1c352b6a5mr9915168ejk.69.1693042735263;
        Sat, 26 Aug 2023 02:38:55 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id h7-20020a170906718700b0099bcf1c07c6sm1952970ejk.138.2023.08.26.02.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 02:38:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liang Yang <liang.yang@amlogic.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mtd: amlogic,meson-nand: drop unneeded quotes
Date:   Sat, 26 Aug 2023 11:38:52 +0200
Message-Id: <20230826093852.9334-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Drop unneeded quotes over simple string values to fix recently enabled
yamllint warning:

  [error] string value is redundantly quoted with any quotes (quoted-strings)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml b/Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml
index 1c79815e1f7f..57b6957c8415 100644
--- a/Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/amlogic,meson-nand.yaml
@@ -67,8 +67,8 @@ patternProperties:
     unevaluatedProperties: false
 
     dependencies:
-      nand-ecc-strength: ['nand-ecc-step-size']
-      nand-ecc-step-size: ['nand-ecc-strength']
+      nand-ecc-strength: [nand-ecc-step-size]
+      nand-ecc-step-size: [nand-ecc-strength]
 
 
 required:
-- 
2.34.1

