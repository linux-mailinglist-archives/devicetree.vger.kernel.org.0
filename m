Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45916581280
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 13:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232593AbiGZL7M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 07:59:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238930AbiGZL7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 07:59:03 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0969A33356
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:58:59 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bf9so22201792lfb.13
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w3XtkKUKbD1b4UgKVPlGooII0Pk7FHBibUL8j/WSqjs=;
        b=cgtEFIf5L+ce5XEM6PfOjbUlpwDuYfOaqdA0uA1MRphOhGXmysD/4zLTiXgQBmjUDC
         VosLSoaIFYQ9aSic1aBksLVCN7oqwOwHlp9YLcPRjVCFzAuG/l1Y1YzNWXeVqA48K2Wm
         PyeVC058GIts1KmLsUBY6BJb1hJKyoVv2UakJhoj9QX9Yx1JQiz3pbmZyQA+/c7ARxMF
         bVG1eHN9aR0orl4m4xUvzIYUzjZehtNCvAML6kHDYWjlnwNEa/aG/4fd/sEpli3Cu3nX
         AIRwoGs9yAOkoM1zG6IVVQ5Hv0GRgfTgvU4C/3UMfJMBUtNq9Xdhs/vDmS29ls3kQWZ0
         98/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w3XtkKUKbD1b4UgKVPlGooII0Pk7FHBibUL8j/WSqjs=;
        b=TjQaLNArIakNvQmyBil+vXcAGRHnRxg0FlBPtn/Mp0piShkVJhxJCRvkY7lARaAscb
         XSsi/6YogTanWMaKqnE4lEeKaK2ye06vg3OyvyfLp0I80idJM40zrhBj4Uu8mmaXp7Cs
         y8hyz/iGzI3Ed1o0ZgPetsRS0XvzQGsK5Mi/3dKyda+HFcGf7RVffj41WCcoZG9OAxOi
         lmrZ2CkPwu9Su3K9AQp+QJlKV+Y9CEM+wLmX97RFTHTeKZ5rYn1Nx27rs1YaK+mM5nm6
         DzbtMpvZen8SrbQ1pLwQoRg9u+1cllLTYpoQIoPFN6Ew9kib5HVu6BoO/tG1THx2heG5
         dcMw==
X-Gm-Message-State: AJIora/urt6a3gk4BnDopX4YEJedDpKVrVySAzJDS+DDTZWAMafgQBDV
        KbjBVHrGgWRtNZyotiGjwPI3eg==
X-Google-Smtp-Source: AGRyM1sAlwvl3au2HeenO+uyoXA1JzXuRyXnOmGFcmsQSJgM6cmNpRF5qIFC6PBqx0v9aSbqPl4P4A==
X-Received: by 2002:a19:8c46:0:b0:48a:839d:6639 with SMTP id i6-20020a198c46000000b0048a839d6639mr5441735lfj.270.1658836738209;
        Tue, 26 Jul 2022 04:58:58 -0700 (PDT)
Received: from krzk-bin.lan (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id u5-20020a05651220c500b0048a9526c7d9sm773000lfr.257.2022.07.26.04.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 04:58:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Saenz Julienne <nsaenz@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] dt-bindings: soc: microchip: use absolute path to other schema
Date:   Tue, 26 Jul 2022 13:58:41 +0200
Message-Id: <20220726115841.101249-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220726115841.101249-1-krzysztof.kozlowski@linaro.org>
References: <20220726115841.101249-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Absolute path to other DT schema is preferred over relative one.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
index 2f8cf6191812..33748a061898 100644
--- a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
+++ b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
@@ -75,7 +75,7 @@ patternProperties:
 
   "^pwm@[0-2]$":
     description: The timer block channels that are used as PWMs.
-    $ref: ../../pwm/pwm.yaml#
+    $ref: /schemas/pwm/pwm.yaml#
     type: object
     properties:
       compatible:
-- 
2.34.1

