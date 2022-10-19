Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 214B4604918
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 16:21:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbiJSOVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 10:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233310AbiJSOVO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 10:21:14 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A8C322B0C
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 07:04:44 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v1so51113wrt.11
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 07:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xtbDoRjweNPW4Ln3XA0uH8TZxjs8M3GoYCD7q6OX0gg=;
        b=pFzXbv7iB5TKy65HTPwKNi8Oya6dNVjlMeKCEG7UrRmcI/W8WpO0ouDDkOdT8BW7Fg
         HKwGZRZTy5zd2embkHjvTncf7YFv2OzUHfzw7wz6O92GFHaPyWhWyhRwMZ6BBGuZjHD6
         1t1VV8ZvdTPHDfcObLjZauweQL/2aig1HZ/KpSUYeMjb/8ZKdJ1Wnm1mq9/umctrrj0X
         dDEfpAUSB6IOT6lVgCuzpHTKdaszY6zoM0LHGXPMeVLboMNGe6I2d2vaBEBSYnSO1fXq
         V6D3K/kq57dW1QsaXmiozYGmZWeeNi57wPKnd25DgeDG8KVBRz8+ZPzwD8XiKh2eWxxs
         blXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xtbDoRjweNPW4Ln3XA0uH8TZxjs8M3GoYCD7q6OX0gg=;
        b=jqtLEE7ju5prMZUkYeiNxgPF1Y+UossagkX+7BkwzLWE9O65Y2Xt72uhIXu5wsxL7H
         MS9NBZzsbPSbVElXAXy5OSVpVRhQVoGOcvP4dD46dClFXqyu7PC8nDoU64Z1ka1+eFi2
         kyKsINiSkLkxlKcDWpZuVol8G07rGIWs+jzyiM5Qvfp7IzuJUBiyWkNJ4NPmTZ38wJSs
         ZCmzhKOF8+IVjLZWdN+iNpwulxXkSNNajjYNU7YkKhx5cecReKsTPh0j8PNQd8COtw7F
         zy5ElTgeETwKuGqy9jtp6OhJH3CtOCHbiRti1FaIbVYITupc2OP2zK5YazqBlc7a4I39
         GrZA==
X-Gm-Message-State: ACrzQf3a1HyIghVUAHJXoKLqH1ZbVcNTob2p1qn6OfGl0pSTjzy+6Fac
        1y+msz3SnCa1KPZHl/but99+BA==
X-Google-Smtp-Source: AMsMyM4PoFChrXbfrLxZbzq92mgQzakedpnzjlyjEb5hURpT7zijiVTXcJ/Kboaxwj3vyHDTY5FAXA==
X-Received: by 2002:adf:f001:0:b0:22e:4f85:3abc with SMTP id j1-20020adff001000000b0022e4f853abcmr4942257wro.107.1666188198769;
        Wed, 19 Oct 2022 07:03:18 -0700 (PDT)
Received: from [127.0.1.1] (rtr.23.90.200.126.unyc.it. [23.90.200.126])
        by smtp.googlemail.com with ESMTPSA id o5-20020a5d62c5000000b00228cbac7a25sm13998628wrv.64.2022.10.19.07.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 07:03:18 -0700 (PDT)
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
Date:   Wed, 19 Oct 2022 16:01:03 +0200
Subject: [PATCH v3 1/2] spi: dt-bindings: amlogic, meson-gx-spicc: Add pinctrl names
 for SPI signal states
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221004-up-aml-fix-spi-v3-1-89de126fd163@baylibre.com>
References: <20221004-up-aml-fix-spi-v3-0-89de126fd163@baylibre.com>
In-Reply-To: <20221004-up-aml-fix-spi-v3-0-89de126fd163@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Da Xue <da@libre.computer>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>
X-Mailer: b4 0.10.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1666188196; l=2316;
 i=aouledameur@baylibre.com; s=20220920; h=from:subject:message-id;
 bh=GT6aksNJPuRsH4QN0MrP1Ih2mkD83njM/kpnUgJ63XA=;
 b=ixcAkOk+adBdqxmgoxXlgXIVeDQnfg8RbvllBQ1SFspcrcB6O+ZI0+0K4uwlL2TcFbxZu3FcKeOF
 H7ly++vKDGHx+MCSN/UhYp09gxpJlU9dBFr2Z+0tt8yyV6TycVaP
X-Developer-Key: i=aouledameur@baylibre.com; a=ed25519;
 pk=HgYWawSL4qLGPx+RzJ+Cuu+V8Pi/KQnDDm1wjWPMOFE=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SPI pins of the SPICC Controller in Meson-GX needs to be controlled by
pin biais when idle. Therefore define three pinctrl names:
- default: SPI pins are controlled by spi function.
- idle-high: SCLK pin is pulled-up, but MOSI/MISO are still controlled
by spi function.
- idle-low: SCLK pin is pulled-down, but MOSI/MISO are still controlled
by spi function.

Reported-by: Da Xue <da@libre.computer>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
---
 .../bindings/spi/amlogic,meson-gx-spicc.yaml       | 67 ++++++++++++++--------
 1 file changed, 42 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
index 0c10f7678178..3e47fe7760a8 100644
--- a/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
+++ b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
@@ -43,31 +43,48 @@ properties:
     minItems: 1
     maxItems: 2
 
-if:
-  properties:
-    compatible:
-      contains:
-        enum:
-          - amlogic,meson-g12a-spicc
-
-then:
-  properties:
-    clocks:
-      minItems: 2
-
-    clock-names:
-      items:
-        - const: core
-        - const: pclk
-
-else:
-  properties:
-    clocks:
-      maxItems: 1
-
-    clock-names:
-      items:
-        - const: core
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson-g12a-spicc
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          items:
+            - const: core
+            - const: pclk
+
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          items:
+            - const: core
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - amlogic,meson-gx-spicc
+
+    then:
+      properties:
+        pinctrl-names:
+          minItems: 1
+          items:
+            - const: default
+            - const: idle-high
+            - const: idle-low
 
 required:
   - compatible

-- 
b4 0.10.1
