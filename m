Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 216886192F9
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 09:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbiKDIxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 04:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbiKDIxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 04:53:41 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48B423BCF
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 01:53:39 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id l11so6626963edb.4
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 01:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t6K3WLbhxOgDEZ9hXqPpZBln8equCl9q3CJzloOm20w=;
        b=VaWqn0XtodbhiJItcKfauFR5OaWGXYuLV0myA9mRKIkpXkwA+5VJhPaDHdGWF2URw6
         o4mFkAHj9Ws9pbqw8AUdvgzVpzJV44aRanXGq3tV9504fpqwQFhxsfwgi1/gk0hdhiuy
         lRlDOYbUcZZUwMAgimggG9kIiYiRcoyN/KUHLiX1Ics1sqhR1nEV9q1UP4kEImh/Kdfe
         oRi3Qtj6PTSWJ41WTW2JFcr90PjQ6p6jGCU/jZ4gvSvHaWqE72MvauvHS1gD8k4QO6Vm
         Y97mCrIVLTB212y3cUO5z+GzlGTglMCz4OKCSwX9h+R0VRI286LUJkkYE81P1fHLM7mt
         hhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t6K3WLbhxOgDEZ9hXqPpZBln8equCl9q3CJzloOm20w=;
        b=kXY7XWnPL2j6/gL6fSOulA7cRgFcZ6HDnJF9gUIP9ogmkPih8mvt9K8jYQ9ckpsxnk
         xo17hb4/fqf9QP0sqGhUD/hZJut4GG0hZbPo1kam+9mOJgnTHOZu9SU7BNOvKivJt8gr
         U3/DQTKHKzDkDc/fgoJdxlyLKcDy/wFxAQupVNicL/cRpa+JG7sjEuACLXH837nlSrIu
         IlqUP+G3x06OXueKLROID47iZx5FRfD0ecKGJxRUcS0uf9UHZqCxqQSvimFqAdOob+98
         Hkd3da7MIm7KZryekMI5fHmhissgbFqdf5JmqvOJovMUTqvp/8Zkl4jyjgwsvwnM4Poq
         GPJg==
X-Gm-Message-State: ACrzQf3dhF92gygti7NuYCUAZoiapr3k0e8MCHTmiU72vlfvOPPeAysN
        Wm93OsRRL41EWxZLPOKjFf9bulYF8g8=
X-Google-Smtp-Source: AMsMyM6N+RMg7YeRTFpM41/wWK3DkLMaDp6j2Jy+9Sx1Ou7kZ0Ctho+WCaMtkX0foLXQEl8iBVBodg==
X-Received: by 2002:a05:6402:4505:b0:451:1551:7b14 with SMTP id ez5-20020a056402450500b0045115517b14mr13428747edb.300.1667552016512;
        Fri, 04 Nov 2022 01:53:36 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id f12-20020a170906c08c00b0078d21574986sm1477599ejz.203.2022.11.04.01.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 01:53:36 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH] dt-bindings: mtd: brcm,brcmnand: update interrupts description
Date:   Fri,  4 Nov 2022 09:53:16 +0100
Message-Id: <20221104085316.24499-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

1. DMA and EDU are mutually exclusive: don't allow both at the same time
2. Require interrupt-names for 2+ interrupts to avoid /guessing/

Reported-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
I also thought of something like:
  interrupts:
    minItems: 1
    items:
      - description: NAND CTLRDY interrupt
      - anyOf:
          - description: FLASH_DMA_DONE if flash DMA is available
          - description: FLASH_EDU_DONE if EDU is available
(to avoid text-form "or" in "description") but that didn't work:
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
./Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml: error checking schema file
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml: ignoring, error in schema: properties: interrupts
---
 .../devicetree/bindings/mtd/brcm,brcmnand.yaml   | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
index dd5a64969e37..cd606a21b53b 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
@@ -86,15 +86,15 @@ properties:
     minItems: 1
     items:
       - description: NAND CTLRDY interrupt
-      - description: FLASH_DMA_DONE if flash DMA is available
-      - description: FLASH_EDU_DONE if EDU is available
+      - description: FLASH_DMA_DONE (if flash DMA is available) or FLASH_EDU_DONE (if EDU is available)
 
   interrupt-names:
     minItems: 1
     items:
       - const: nand_ctlrdy
-      - const: flash_dma_done
-      - const: flash_edu_done
+      - enum:
+          - flash_dma_done
+          - flash_edu_done
 
   clocks:
     maxItems: 1
@@ -173,6 +173,13 @@ allOf:
             - const: nand
             - const: iproc-idm
             - const: iproc-ext
+  - if:
+      properties:
+        interrupts:
+          minItems: 2
+    then:
+      required:
+        - interrupt-names
 
 unevaluatedProperties: false
 
@@ -190,6 +197,7 @@ examples:
             reg-names = "nand", "flash-dma";
             interrupt-parent = <&hif_intr2_intc>;
             interrupts = <24>, <4>;
+            interrupt-names = "nand_ctlrdy", "flash_dma_done";
 
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.34.1

