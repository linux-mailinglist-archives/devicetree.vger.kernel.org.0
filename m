Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 094EE729C50
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:08:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240397AbjFIOIY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:08:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240645AbjFIOIK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:08:10 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59E453A9B
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:07:42 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f6195d2b3fso2323326e87.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319652; x=1688911652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BNpjcXkr4XdA1aEMYzKVhMl+Nwfx5E6NuXkWy4+942c=;
        b=YE8YFrictyQKV/0Cl7h8zFEtuwc7hRkTvM5tzIbYABx4wBQ5jtZMCL6mQzreu+5ebz
         abBtRCIS8OKn0uYYqFnbOfDZnB/pWbWdeDcKYCneD0m2ssq4JJuRcOpKyAmqmxovKirx
         SMZkCnCRS+3+BgAnK/qgGC7+izGZ7FwJpr5JiUX4GChVxO/vIgD3vOhpJ2orfferC/KO
         Sm2dKzk9Wx9OtGQ1OioUkw16OVkmHPvvCZg6iGxRJqAu4994PDXpSkROcAV3DgKIiyRJ
         4/k6d6ZuXyWrS02G5If7j0+FmP8SihgkAYk6ryC1gAX+5na0USk6hpaIysmvvczajfXO
         ipVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319652; x=1688911652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BNpjcXkr4XdA1aEMYzKVhMl+Nwfx5E6NuXkWy4+942c=;
        b=c0PJSceM+YXAgBEereAjubm7CuNt61trgXwme1pIhy+mauiQGeMEBjFMn38BKrUzGc
         TlLztN9x7Nf9lbtCfGG932rBmN7ayxoKqirZoCSwK00WwS+uoR7hA7VSDUbcOMUFLwIh
         Lcf1EUhnB6mSjWMSD9vLfqhgR+ncoGvkUEeR2Z4raPUE4AkDfIv7Aph1uttVsZNjRuzO
         chNN30d1oA78zMiUADbQEeEOYaLtZFyBBY018MV4uL/fnxT3T5b63oZcsNscW4/3JvP0
         szV33pSyxlr8tLQOlKbjySX5ZFcuBDwCKTIuY1cHGJEaJVi5pwbc/2Gy5yUIafNbSNkL
         kjpQ==
X-Gm-Message-State: AC+VfDz8LNvMPJac5adCeGWUQiefmVmFS3wPkGis2RM1f28wUCQZYmxX
        7+is1ztj40k5+zUlU6rU6ipvbKYvpS8hTktQlNQ=
X-Google-Smtp-Source: ACHHUZ6tu0S7jpijz8wYA/H2VIUA9frrKVPVS0WyI8s8uHqseYj4pLDhHub+2PrCg8ZxcgNEya9nBQ==
X-Received: by 2002:a19:5f5d:0:b0:4f6:2b74:d05c with SMTP id a29-20020a195f5d000000b004f62b74d05cmr1033768lfj.62.1686319652088;
        Fri, 09 Jun 2023 07:07:32 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n24-20020a05640206d800b005169f9365c3sm1807036edy.20.2023.06.09.07.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        openipmi-developer@lists.sourceforge.net,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: ipmi: aspeed,ast2400-kcs-bmc: drop unneeded quotes
Date:   Fri,  9 Jun 2023 16:07:29 +0200
Message-Id: <20230609140729.64799-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
index 4ff6fabfcb30..129e32c4c774 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml
@@ -41,7 +41,7 @@ properties:
       - description: STR register
 
   aspeed,lpc-io-reg:
-    $ref: '/schemas/types.yaml#/definitions/uint32-array'
+    $ref: /schemas/types.yaml#/definitions/uint32-array
     minItems: 1
     maxItems: 2
     description: |
@@ -50,7 +50,7 @@ properties:
       status address may be optionally provided.
 
   aspeed,lpc-interrupts:
-    $ref: "/schemas/types.yaml#/definitions/uint32-array"
+    $ref: /schemas/types.yaml#/definitions/uint32-array
     minItems: 2
     maxItems: 2
     description: |
@@ -63,12 +63,12 @@ properties:
 
   kcs_chan:
     deprecated: true
-    $ref: '/schemas/types.yaml#/definitions/uint32'
+    $ref: /schemas/types.yaml#/definitions/uint32
     description: The LPC channel number in the controller
 
   kcs_addr:
     deprecated: true
-    $ref: '/schemas/types.yaml#/definitions/uint32'
+    $ref: /schemas/types.yaml#/definitions/uint32
     description: The host CPU IO map address
 
 required:
-- 
2.34.1

