Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C24C451F044
	for <lists+devicetree@lfdr.de>; Sun,  8 May 2022 21:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230147AbiEHTWH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 May 2022 15:22:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237636AbiEHTEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 May 2022 15:04:35 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA12A28A
        for <devicetree@vger.kernel.org>; Sun,  8 May 2022 12:00:31 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso9630066wme.5
        for <devicetree@vger.kernel.org>; Sun, 08 May 2022 12:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u/+xishCBT6AagFz7NgUsCMZ2tPwPPUqgONle4a0c+4=;
        b=2TxyHfr4J0TxWDYqbWo4apSj3KpcgjQMM9No5O5twSuNxaKGMfWdbCW6Gl6brPnqHq
         fH6r2dco/5oHJK0CshdqvOTVg1nbYBMCsHaEd/9V8tjHt7NMIw/GMb2uscx9vjQLFsRf
         IhVvQziHQJptV15k4BwgCXpY/NZxV2EAVR6rfq5whLc9OeQJgtE67sw4ktYTaVOGGa7B
         3AL0/CFP8MayBVuZtZ4yFuiY5lNAGpVzkSoSN0BaBk/TV/+x9rg2W96JdrfaGNDNs9kf
         t02btrUa04kp7nPM9VLXUqHypLyTdcYNQP9TxWW5jO6DMPO1ZgHB1XL74ftfvJbGHq5C
         xjrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u/+xishCBT6AagFz7NgUsCMZ2tPwPPUqgONle4a0c+4=;
        b=T8rhmo463Ob2aPBGqqdZckurtojgUb/Pta8PD9S5OS/o5+WorBkAtzQmP509e746xF
         rjWq3Q51ei6lPRAp4bP2ao/5bz0B+UmdV4ivtwS19j88VXIf0iP5bhhakFoY6s46eNaW
         qd+F5SgEyPIAFf4OLu0S7tV68O4cLnK8m5KBERZ/Bp6Yls0FvJVW86n7Otbki/E2jiBq
         uPaZPBgEo+Bu6d8HOlJdVL8I7stpUt/qSwHK4HqXOPI5U0qjS88swUtYdj645Qj7/Ir5
         kXuUO0q4XP3cz9Y+y7c7M1m6TV4MONi1l7Ve0SBiyU/+wHxJLgT7a6vk0lUAKgn0yIIh
         U8aw==
X-Gm-Message-State: AOAM530YGH1FT9acMyHqWX3G2Q3ZFuUr6YEmw0F9Q5+xViuvEX+OJcYK
        443lqsx3DO9/fG0h+q8BYW9hUQ==
X-Google-Smtp-Source: ABdhPJwirpE/UgqQSOVhDMCBNWPpmp77t01g5Xy6Hybsveqb0AiM+zGIVM+4AjL2G0row+plnbVfPQ==
X-Received: by 2002:a7b:c095:0:b0:393:fd2e:9191 with SMTP id r21-20020a7bc095000000b00393fd2e9191mr19251106wmh.137.1652036430355;
        Sun, 08 May 2022 12:00:30 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 May 2022 12:00:29 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 24/33] dt-bindings: crypto: convert rockchip-crypto to YAML
Date:   Sun,  8 May 2022 18:59:48 +0000
Message-Id: <20220508185957.3629088-25-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert rockchip-crypto to YAML.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
 .../bindings/crypto/rockchip-crypto.txt       | 28 --------
 2 files changed, 64 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
 delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt

diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
new file mode 100644
index 000000000000..8a219d439d02
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Electronics Security Accelerator
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: aclk
+      - const: hclk
+      - const: sclk
+      - const: apb_pclk
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: crypto-rst
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/rk3288-cru.h>
+    crypto@ff8a0000 {
+      compatible = "rockchip,rk3288-crypto";
+      reg = <0xff8a0000 0x4000>;
+      interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
+               <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
+      clock-names = "aclk", "hclk", "sclk", "apb_pclk";
+      resets = <&cru SRST_CRYPTO>;
+      reset-names = "crypto-rst";
+    };
diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
deleted file mode 100644
index 5e2ba385b8c9..000000000000
--- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Rockchip Electronics And Security Accelerator
-
-Required properties:
-- compatible: Should be "rockchip,rk3288-crypto"
-- reg: Base physical address of the engine and length of memory mapped
-       region
-- interrupts: Interrupt number
-- clocks: Reference to the clocks about crypto
-- clock-names: "aclk" used to clock data
-	       "hclk" used to clock data
-	       "sclk" used to clock crypto accelerator
-	       "apb_pclk" used to clock dma
-- resets: Must contain an entry for each entry in reset-names.
-	  See ../reset/reset.txt for details.
-- reset-names: Must include the name "crypto-rst".
-
-Examples:
-
-	crypto: cypto-controller@ff8a0000 {
-		compatible = "rockchip,rk3288-crypto";
-		reg = <0xff8a0000 0x4000>;
-		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru ACLK_CRYPTO>, <&cru HCLK_CRYPTO>,
-			 <&cru SCLK_CRYPTO>, <&cru ACLK_DMAC1>;
-		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
-		resets = <&cru SRST_CRYPTO>;
-		reset-names = "crypto-rst";
-	};
-- 
2.35.1

