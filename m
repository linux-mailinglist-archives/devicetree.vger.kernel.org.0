Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B411958AE24
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 18:29:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241223AbiHEQ3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 12:29:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238451AbiHEQ3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 12:29:07 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DD6EEE3A
        for <devicetree@vger.kernel.org>; Fri,  5 Aug 2022 09:29:06 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id v3so3884804wrp.0
        for <devicetree@vger.kernel.org>; Fri, 05 Aug 2022 09:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=E8iWEu7u72D4Cl4M4gSvZHsI5dQSubGoMYwsdu1FZWU=;
        b=SagV/jMHKGASMD/cT6X473mBlOlzicU0AUDh9UambssZ2tjT0QWPfzhpv5CU1qTNOe
         Ddfy8c1bQ1yG9CeR7FDMP9QknXMcfMUE+Byise52p/JiaVA4+W+VBztftsDouBAa3t2g
         2nRb2g/0ogD/BhxbNhJllKgVo1/L4hSx0dBiNp+l+3Yc7/Hwl01vZwawaVOxi2sRM6Iv
         +YjgoV+Oxr9NNxstRTgtAOzHe7S1zyhir5a1faOe3uBGBp8cVeuY5bGDp1CHzkixcPtb
         +TknqsGOz8YK3iQID272GlVw1lT7n35nGKQ+PgnmF7eMUsAREvkNRwlFU0RYzPqyT7cU
         OhpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=E8iWEu7u72D4Cl4M4gSvZHsI5dQSubGoMYwsdu1FZWU=;
        b=VQ7bjFKGGAecGc4I8w7gnKHq1L2UoKgUmJz6nBomQTD9eeo7ttbVuKfxcHlGcao0k8
         q30nZ8udFXIZOZnJQdPBWltAiXFpGdMrZAtA8atLiEiUaYljFVt2CkcgjFOp1YkG5dNN
         MMImzsxumzTdSsBCI/rx0P16UWOl+4oeMbsql7MHMjjCTFmbxVBC5SOaC7Y3b4l41M8Q
         OB/uVdxmxTlsCnaZ7DrV0UwwoXR7X00a1UJURG0xuukenJssVJdUmJU1afsOtvkZCFaT
         42q94jb5QTVqeXYFvw+vf3DoAsfCuSCU0wLZYgPF8HwmL/BYDyADSqwkG18r4QpV3GoF
         bNVA==
X-Gm-Message-State: ACgBeo0MHbtaJ5TxD/FRTqlFO+6gLWpSLA4SwW85CH1d+daTzUq61ZNQ
        Rqld+B50+jKy/szlaKSrzyTX6g==
X-Google-Smtp-Source: AA6agR76DtGocbpsn0OQ/xj8+vFW4/LZsUFl+//i/QybfiOJkv1KkQ6JSE5TvZgiPLEA4ARS2OZxvA==
X-Received: by 2002:a05:6000:2c1:b0:220:5f91:62de with SMTP id o1-20020a05600002c100b002205f9162demr4920411wry.715.1659716944614;
        Fri, 05 Aug 2022 09:29:04 -0700 (PDT)
Received: from henark71.. ([93.107.66.220])
        by smtp.gmail.com with ESMTPSA id b10-20020a056000054a00b00220633d96f2sm5210086wrf.72.2022.08.05.09.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 09:29:04 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Anup Patel <anup@brainfault.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Guo Ren <guoren@kernel.org>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 1/3] dt-bindings: timer: sifive,clint: add legacy riscv compatible
Date:   Fri,  5 Aug 2022 17:28:43 +0100
Message-Id: <20220805162844.1554247-2-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220805162844.1554247-1-mail@conchuod.ie>
References: <20220805162844.1554247-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

While "real" hardware might not use the compatible string "riscv,clint0"
it is present in the driver & QEMU uses it for automatically generated
virt machine dtbs. To avoid dt-validate problems with QEMU produced
dtbs, such as the following, add it to the binding.

riscv-virt.dtb: clint@2000000: compatible:0: 'sifive,clint0' is not one of ['sifive,fu540-c000-clint', 'starfive,jh7100-clint', 'canaan,k210-clint']

Reported-by: Rob Herring <robh@kernel.org>
Link: https://lore.kernel.org/linux-riscv/20220803170552.GA2250266-robh@kernel.org/
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/timer/sifive,clint.yaml           | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index e64f46339079..9fcf20942582 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -22,12 +22,18 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - sifive,fu540-c000-clint
-          - starfive,jh7100-clint
-          - canaan,k210-clint
-      - const: sifive,clint0
+    oneOf:
+      - items:
+          - enum:
+              - sifive,fu540-c000-clint
+              - starfive,jh7100-clint
+              - canaan,k210-clint
+          - const: sifive,clint0
+      - items:
+          - const: sifive,clint0
+          - const: riscv,clint0
+        deprecated: true
+        description: For legacy systems & the qemu virt machine only
 
     description:
       Should be "<vendor>,<chip>-clint" and "sifive,clint<version>".
-- 
2.37.1

