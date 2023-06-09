Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EDAD729C41
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:07:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240587AbjFIOHa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:07:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240527AbjFIOHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:07:18 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2859035B8
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:07:14 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b1a86cdec6so19880741fa.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319632; x=1688911632;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jCeEbW1U8X5tsZ4C4X/AN2VQz3Te0cG/Jf+u2WdiQhA=;
        b=Ts+urxZPApGt0XBPTXgusp3g46WRrEeespxkpm2YhTx4scmVZLcCBxFk3uP6DxV+uf
         WN6eG0NJwH7RZ1E6L9AHyqbNzdaDRdX4zD0cYnfK3tO4HXMNlwfhaiEw3TIgCkP9qiNQ
         9iNsDNhvICxqOwA1dbgfgYbpGtGTgQHjRdXMijsThBI4U9yu42yTNgT5e2M5mQAf9oAd
         a+Gvb6QBZgaFFtTz4Ct59nJ+QsDL71nuScd4frj824CaOzpeIej0+cEL5+nx+G+d7clP
         7qam1XfhLs+cKTZ+Rr0JT5q6tU746JDLC7A6XQRoIf3/pYf5OtfddbncqVOTSYazp1xA
         18jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319632; x=1688911632;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCeEbW1U8X5tsZ4C4X/AN2VQz3Te0cG/Jf+u2WdiQhA=;
        b=jmDSJTB+odgPOF18611ddwVsDawsikaDdFWLX9xQiqe9XHAKiyaM4KUN/u0UeQMddb
         TqEiFjSdmWtY1czG3W9wYRxbHh7hUaqAi+ONHYjsOakCxyMnILTp40tRH4owfwrG6Ppw
         LiK4cS3wsZZGijoVbaqV+YTXdD4P2sWMs1qQ1OusFUY1A1npC45QzFgHtTC5sKNkdmzl
         EumhrQZVy7vHKpq/Wi8yvxf2DvQroAuC2cidYJIltCn4i0NKkNpnHajQa+0IenqY+MWR
         DbCSXfOvClIk94+Bd+sCJdYwgYAnY8t/u6bdE9ckJEJRv/HDTf0HEiYzihnLITaV7Y66
         ARaA==
X-Gm-Message-State: AC+VfDxqzid7Rx4oVs5g/eRyHnKpq5YRBBqtfOEz+Nh772XS2G6PLqab
        lgTm+ziIKkZKV7WH4Is6lBVYOA==
X-Google-Smtp-Source: ACHHUZ6hAzhcinWv3jhYYd7EDXnoILzhszPHvrOnNXmIrY+BsxwZzC+2GchphS4lR8xtpjG8FhaLwQ==
X-Received: by 2002:a2e:9656:0:b0:2ad:95dd:8802 with SMTP id z22-20020a2e9656000000b002ad95dd8802mr1292972ljh.38.1686319632281;
        Fri, 09 Jun 2023 07:07:12 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id kg6-20020a17090776e600b009661484e84esm1319651ejc.191.2023.06.09.07.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:11 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Claudiu Beznea <claudiu.beznea@microchip.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Anson Huang <anson.huang@nxp.com>,
        linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: pwm: drop unneeded quotes
Date:   Fri,  9 Jun 2023 16:07:09 +0200
Message-Id: <20230609140709.64655-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pwm/atmel,at91sam-pwm.yaml | 2 +-
 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/atmel,at91sam-pwm.yaml b/Documentation/devicetree/bindings/pwm/atmel,at91sam-pwm.yaml
index ab45df80345d..d84268b59784 100644
--- a/Documentation/devicetree/bindings/pwm/atmel,at91sam-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/atmel,at91sam-pwm.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Claudiu Beznea <claudiu.beznea@microchip.com>
 
 allOf:
-  - $ref: "pwm.yaml#"
+  - $ref: pwm.yaml#
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
index a34cbc13f691..6ffbed204c25 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -25,7 +25,7 @@ properties:
     const: 3
 
   fsl,pwm-number:
-    $ref: '/schemas/types.yaml#/definitions/uint32'
+    $ref: /schemas/types.yaml#/definitions/uint32
     description: u32 value representing the number of PWM devices
 
 required:
-- 
2.34.1

