Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E933075E033
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 09:07:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbjGWHHW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 03:07:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbjGWHHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 03:07:22 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E39CC1BCE
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 00:07:20 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3142a9ff6d8so2860126f8f.3
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 00:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690096039; x=1690700839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z1cZF8UIJrQQxPNeBfoi/RgUpd17bU7m/3eYVNGbu9A=;
        b=RNkpnN35O+0EmLHV4um1fvy94dzBVUpUG0EEbY+El0Mqs9vYMTJE9fJZd+b56YIYEZ
         QTDZuR2YqM7pf7eEYu4kJnza6TaZ42wc0WJ7FOGaj6pIHLF7X+Ht7PYpb+2fVnA/AZwf
         Dn70DFxbioQEM0xMztMhpvMD2MGWtl4LcTFeLyZMool5O3BXq4MICYbzQGx8Z4Ox/gFu
         qYfrbLave7sXw4dEuqwlAQCisS0fIS+DFOF9y0pEuQSGQDWNZe/1zjWQJB2Oi9JXgyp+
         3zq04PPsIMBBOIEQnvCyyBSXS8IbIzykVhM8ZC6Lp6sRnEnRsH2/CBXWcOvJFs4cteqS
         EFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690096039; x=1690700839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z1cZF8UIJrQQxPNeBfoi/RgUpd17bU7m/3eYVNGbu9A=;
        b=CveZDLhvtXo9u6NVAINlwtpFW01bXFVhGadsl/gvApVIixh0x4qVHh6HboZrn7a7cT
         FWvGxyJ6mxh+BKuNclyahch/HLUjJxkxDlvUmTUvEujzaEOC5IJZI4WLd/ZloAl8LbN5
         lQ8VUJ0uCsfpUBWLjAt8h2WgOQZNp9nJv5Iut+iE91o+/rkq4VLdPlCl9dIW8J3IffCL
         kGj8Fc2vaHv05DzFpAbxzv+iDZW3eAd/Wx7xp5KXSsXA7mIkdnoqijEfFkAVCEXaPD4l
         hGPSCBcG0LNJDT3z/XMVBDLrUISQb+lnbqiSwoZlzEBPlopkvQYE6yJP3eX4DELtpmB3
         7APQ==
X-Gm-Message-State: ABy/qLZ1u0qyioV1F6K1z1GpCnneJsK3Tw8cVEhXDNzdPVN2HwnVEznw
        YjNTb0g4KcfX5tc9SqrMmbSwTA==
X-Google-Smtp-Source: APBJJlH9+6uOnEjDKIYlwnVFfzebOP7WZ2/kfBPL8KbKVx589ugcVLP3kwdzYhVKRowEjgXCEJ7r+w==
X-Received: by 2002:adf:f488:0:b0:315:9fb7:bd9 with SMTP id l8-20020adff488000000b003159fb70bd9mr4856638wro.69.1690096039304;
        Sun, 23 Jul 2023 00:07:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id s11-20020a5d4ecb000000b003144b50034esm8851788wrv.110.2023.07.23.00.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 00:07:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: maxim,max77693: add USB connector
Date:   Sun, 23 Jul 2023 09:07:15 +0200
Message-Id: <20230723070715.34650-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add micro-USB connector to properly represent the hardware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

DTS change using this:
https://lore.kernel.org/linux-samsung-soc/20230722202039.35877-1-krzysztof.kozlowski@linaro.org/T/#u
---
 Documentation/devicetree/bindings/mfd/maxim,max77693.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
index 1b06a77ec798..8503fc2defad 100644
--- a/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
@@ -31,6 +31,10 @@ properties:
   charger:
     $ref: /schemas/power/supply/maxim,max77693.yaml
 
+  connector:
+    $ref: /schemas/connector/usb-connector.yaml#
+    unevaluatedProperties: false
+
   led:
     $ref: /schemas/leds/maxim,max77693.yaml
 
-- 
2.34.1

