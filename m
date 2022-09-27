Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70EAD5EBC86
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 10:00:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231431AbiI0IAR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 04:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbiI0H7M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 03:59:12 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08BC3B07E9
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:56:39 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id r7so13712516wrm.2
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 00:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ADE9d2Wn62ug3S5fC01dr3GFFHi+uj6qkqBx4/1dDhY=;
        b=SFEI88fkm5llcXA8dPnC3RNaxnqCMd7HxoPOQJrSbU2s0cxl37X0bOycL9YhowtTgN
         mnYLz/9AlqlQy1PRPCzLml87bfY9x9N2HP0evWgN0cowQbY7X1RDkW7ik8/bLMNGqrZw
         gj/pflWQQDsEJgi3q/tpwD6aU9fJKGBct8AYSmELz4BW6J5bof+QhacW8Ygv0uf5qd5X
         dh+gcjuxSMP8SRkBL607z+JzJKO4rvEfuldb99VUJfFpBWGwsHc78rNLimjJer28WwTl
         xYYlaNoUx621vQERHGohqDT5a6J+gdbd3tMr8O/1w+Wc2XC67onafUfYlR3mQl7zWe2k
         zoPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ADE9d2Wn62ug3S5fC01dr3GFFHi+uj6qkqBx4/1dDhY=;
        b=CZrtL1xfQXk8EmEUxtaLr4wsfLnVpYxaxSmw2exdd7TPDkOeryUQnNNKe7sOSTrac5
         n2f+hd9EvZ7hvfjCUVFeeHePNBzMjuS3EeZqf7Vp3c8IlY9XBGSm4Ds2fbPPuxakhFER
         aYanOwLSYcozAUEFjzbpoD+9bPQK8BOfRhHgFuMB7lNTx42vmDhZY3OqxHS1gWHcH71b
         kt7K7SM1Bvnl5dnpGWESZ1MiiWEnLf5dVNPUMmNqsIuWeV5RLXENp2R8EMh0NJcevfMZ
         0rqbncAMBFDS+mp/445u/JrCOZghKoSmKe74YI/m++/1uHTXSXJx33ymv5dWGnpY97Te
         u4Ow==
X-Gm-Message-State: ACrzQf1ED20U2EYgj5Bxl8S7kXIsHew4HnffUHqE3GvV/VGsLTdpMbFZ
        +Nj/iQGpJOfMN6Wjd//Mjm9giQ==
X-Google-Smtp-Source: AMsMyM6ePM+zTcykCEiPPOORnN7IA3QoPxj/NeY87glfHwuYP7Nou0cf8S83ruI20zoa58qpPnaAZg==
X-Received: by 2002:a5d:4a01:0:b0:21d:8ce1:8b6d with SMTP id m1-20020a5d4a01000000b0021d8ce18b6dmr15738325wrq.718.1664265361715;
        Tue, 27 Sep 2022 00:56:01 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:01 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
        herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 25/33] dt-bindings: crypto: rockchip: add new compatible
Date:   Tue, 27 Sep 2022 07:55:03 +0000
Message-Id: <20220927075511.3147847-26-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since driver support new compatible, we need to update the driver bindings.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 79 +++++++++++++++++--
 1 file changed, 71 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
index 8a219d439d02..f1a9da8bff7a 100644
--- a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -13,6 +13,8 @@ properties:
   compatible:
     enum:
       - rockchip,rk3288-crypto
+      - rockchip,rk3328-crypto
+      - rockchip,rk3399-crypto
 
   reg:
     maxItems: 1
@@ -21,21 +23,82 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     maxItems: 4
 
   clock-names:
-    items:
-      - const: aclk
-      - const: hclk
-      - const: sclk
-      - const: apb_pclk
+    minItems: 3
+    maxItems: 4
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
-    items:
-      - const: crypto-rst
+    minItems: 1
+    maxItems: 3
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-crypto
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          items:
+            - const: aclk
+            - const: hclk
+            - const: sclk
+            - const: apb_pclk
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3328-crypto
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: crypto-rst
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-crypto
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: hclk_master
+            - const: hclk_slave
+            - const: sclk
+        resets:
+          minItems: 3
+        reset-names:
+          items:
+            - const: master
+            - const: slave
+            - const: crypto-rst
 
 required:
   - compatible
-- 
2.35.1

