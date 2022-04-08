Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E81D4F8F24
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:07:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233533AbiDHGjb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 02:39:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbiDHGja (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 02:39:30 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AD748BF15
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 23:37:27 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id l26so15367673ejx.1
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 23:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hbooFuUTQsLms6josv+xfBkuUKWCG8qBtv0jZriAQsE=;
        b=KUiGrzywkzIJieuqry4LzLftOUGd4CK09HkQZxMiCdN41F5MvltjUSmSUiJoSn8/Tv
         /4hf+9nkj+E5PaUY+g0FORT2PQIn5Bn4IXXhX0IwC5kbzKvBhUosYY3ZbkheRDxg8/M6
         u2QxcyO+KlJ30iCG0aizbUuB3XESflzEmrPbQW2+LnmVovj8cMAht94miIwUvSRbFQ2A
         q6z/JkazuuECcKj8yXUtiXdnwYgywiu54BLbkPPGhSmpUJRD9CWjx1IxuELC8cqnEzYx
         x9eSqbTp46UtX9Jojy6NFIDczxQy6klYRWGv9C6V5DwLN7n8g74x+C7L+yfdhdGDVRfn
         APrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hbooFuUTQsLms6josv+xfBkuUKWCG8qBtv0jZriAQsE=;
        b=2Vnr9Gx/UFOFngBDyplUQiHMYDnW5smUWs4m2AhWIF9tp+T2WjKDZCJGCLqMFFVlJ8
         5qIYgY4BemoJKyghS+rdPcE2av7vcZe/mkA6q1PXDhthkJbLo1SQRF6u5g8XLZ1pyKBb
         LfB1LKMOSelmA1ctXVGrlo6cv1AgPKTuXGa/eohwqxVQvndCVKTGlwX8eyDnBiRJXRZy
         zY2fWjXKql/ox3vYbIYkuDdwMFUo0c1menKznz/oLJMlnrcbJZmDnXDhmGKT94TFLqWd
         /7OmP9N3BIIwRL4Fz8g3LykDfMMYCWqjwIYHBhAeGpNFzmD0ypM8Jwi2EtZSJWLOykRp
         wZTA==
X-Gm-Message-State: AOAM531G1jAQFalQh12CZE+o7tAt5FenupumHeXRYTlOnAb9rES25nu3
        FITwFBBoVmMvr52M3JDBc+n1Jg==
X-Google-Smtp-Source: ABdhPJxGgqOBfEFbjzp6nSVerXvXLKhjPaD3/BrgxDhHC+YAAie/Hv8OQJLm5NEQpFm+7M8v9mD0Ew==
X-Received: by 2002:a17:907:2d9f:b0:6e8:58d9:8c4 with SMTP id gt31-20020a1709072d9f00b006e858d908c4mr550595ejc.386.1649399845877;
        Thu, 07 Apr 2022 23:37:25 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id t1-20020a170906178100b006e7edb2c0bdsm5705086eje.15.2022.04.07.23.37.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 23:37:25 -0700 (PDT)
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
Subject: [PATCH v2] dt-bindings: mtd: jedec,spi-nor: remove unneeded properties
Date:   Fri,  8 Apr 2022 08:37:20 +0200
Message-Id: <20220408063720.12826-1-krzysztof.kozlowski@linaro.org>
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
(SPI and MTD) and use unevaluatedProperties, few properties are
redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Pratyush Yadav <p.yadav@ti.com>

---

Changes since v1:
1. Do not remove address/size cells (Rob).
2. Add Pratyush review.
---
 Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
index 4abfb4cfc157..7149784a36ac 100644
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
@@ -74,8 +70,6 @@ properties:
       be used on such systems, to denote the absence of a reliable reset
       mechanism.
 
-  label: true
-
   partitions:
     type: object
 
@@ -99,8 +93,6 @@ examples:
         #size-cells = <0>;
 
         flash@0 {
-            #address-cells = <1>;
-            #size-cells = <1>;
             compatible = "spansion,m25p80", "jedec,spi-nor";
             reg = <0>;
             spi-max-frequency = <40000000>;
-- 
2.32.0

