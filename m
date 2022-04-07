Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE3614F8178
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:20:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343870AbiDGOWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243138AbiDGOWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:22:40 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEA141252A9
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:20:40 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id c42so6594442edf.3
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8yiAtg3rQQsYQrz3HB5ABJGFof1KEIaqkT/i4ea96+g=;
        b=i+7pZ9/Nair/2xYhlI9bGgpJiP5BqE3ziFD/WqnsIpu2jvt84iP1oK+U2wYZqW1n70
         HjumBvZnYJ/Wm4eDrzj4CqPltjkoCmt5D2d44nl+l0Nrpj7tbIJbWXWi5DRbOqSyuBtd
         5B9ycEYP05uCBB2bHC/MRChDklzSw+81GkmmnKj9vkS6tnL5DeftHBkyDc8ZCynVgii2
         emGWXqGiNnT/5K8HSpLui38zySkSZ/SqAQUjZVGg+O6jZW6weetXZ/wi/FTtQfULiSbx
         bPk9oFmxDOuw8cbt6h/kKflta3iwlniNkPOV9ib8J7uaVlDq8S648DouwLwtl+F4lhsG
         5RZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8yiAtg3rQQsYQrz3HB5ABJGFof1KEIaqkT/i4ea96+g=;
        b=i1+o7E4qPx83LzxrdaGrq+dCtz0ftPfYTvpU9jCTJ21/BmmslOj6TY1YZ/Hqoazsce
         mQAsbhQ2azDls0MRyUrHVogkBL6U13U87exeB54HRqoIQKg2CvNV2oQAlj6gNN2n9MpE
         26YYKlvehvHtwPLMwlW3Gz8SmEcSVSh2WoYfUmU4wfpiFUiePJG/quFXveNue4I9qhz3
         lqLe7SVWNGRBWjtHaM5WsVqVGuMqnqYfyzLpYOgUy6TMWGHvbF0urzWrKpa+7EBfTjfv
         UvE080/7AaZy4ddCBMJxxCBLdib6P8F8M02fBYFhjmrE/wQTOgYTW5yMhVzqNRHLZDSW
         xsXQ==
X-Gm-Message-State: AOAM5328r3dKgOLtF8YDibNJsRCX9AEeFKQdXypGd7TSlphIP2cp9HcD
        kKFiGLf61z0fp6FziownXfEPUA==
X-Google-Smtp-Source: ABdhPJzyaOBLTEXENkXIMPbhz9LkdnGmd3J+mXWjFUZRe447oVTT7rG0hn9KUNzp9DqfPtB4nY3OSw==
X-Received: by 2002:a05:6402:368d:b0:419:31c4:4db8 with SMTP id ej13-20020a056402368d00b0041931c44db8mr14563757edb.93.1649341207567;
        Thu, 07 Apr 2022 07:20:07 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c1-20020a50cf01000000b0041cb7e02a5csm7416182edk.87.2022.04.07.07.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:20:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Tudor Ambarus <tudor.ambarus@microchip.com>,
        Pratyush Yadav <p.yadav@ti.com>,
        Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mtd: jedec,spi-nor: remove unneeded properties
Date:   Thu,  7 Apr 2022 16:20:04 +0200
Message-Id: <20220407142004.292782-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

After conversion the jedec,spi-nor DT schema to reference other schemas
(SPI and MTD) and use unevaluatedProperties, several properties are
redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mtd/jedec,spi-nor.yaml        | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 4abfb4cfc157..708e7f88fd92 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
@@ -50,10 +50,6 @@ properties:
     minItems: 1
     maxItems: 2
 
-  spi-max-frequency: true
-  spi-rx-bus-width: true
-  spi-tx-bus-width: true
-
   m25p,fast-read:
     type: boolean
     description:
@@ -74,14 +70,9 @@ properties:
       be used on such systems, to denote the absence of a reliable reset
       mechanism.
 
-  label: true
-
   partitions:
     type: object
 
-  '#address-cells': true
-  '#size-cells': true
-
 patternProperties:
   # Note: use 'partitions' node for new users
   '^partition@':
@@ -99,8 +90,6 @@ examples:
         #size-cells = <0>;
 
         flash@0 {
-            #address-cells = <1>;
-            #size-cells = <1>;
             compatible = "spansion,m25p80", "jedec,spi-nor";
             reg = <0>;
             spi-max-frequency = <40000000>;
-- 
2.32.0

