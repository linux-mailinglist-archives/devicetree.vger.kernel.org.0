Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45607597784
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 22:11:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241619AbiHQUFy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 16:05:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241699AbiHQUFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 16:05:53 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE7D5754D
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:05:52 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id k17so7151845wmr.2
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=1R6UrF0Wsbj6EmcSlPWRzTAwonFDames2nGAVyANWlQ=;
        b=emUeD3umpIWMTUwimxexv6coDslOSFZdTJZAG0mzIfyT8GhTm2y8Rz5AMG9Ml/own/
         1bvWibxPC5o+FKVmvr8wtGCmKyHocGnEAsXVO0ntDOfnJcELc45X3X92yWuj0qra73+b
         bi6yS6R7rH/1tgXaH7ew6gaJvDmgi3DFVyViPwHKiEf61xl3VsSjFE8tTGYOx3T3H8sw
         YpsLPRTKDXDpfnxxhi2vf/Hvx1riYhARNlfjzVIx2UCiXKxPouZe5cn25wjO1kcjdY7J
         dx/0jJrVOlVsCGDsup/V1cmbWyP5Gx3IFcBem4yoP9MuXeSBrOcHywknEN8fvwer7khG
         mxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=1R6UrF0Wsbj6EmcSlPWRzTAwonFDames2nGAVyANWlQ=;
        b=MVE/skhHJwmJnaUqS7JLqh1XCFhbwA1+Vjwi/4VTWqJWnxrrgE1F9/YtlfHBIueZBw
         omVfWw6q0e2E7zlroH+1Mo0oDOSq/FMoqND6PS5kG6qpSCIwq/7/i/Iv54mwJk1QcH8k
         i9Bdb+gXZNdpCRk3WQKQ3ZzX8HKUS+7j750HLZUi3WWkH0V3nxwo8zebDwrkcvWoJQz3
         tzU2BE1S4yOoCql673eqxXjbj/JnQ5XjsOWPUBdeP4Nktzxo854b5kWTwoKRudtu43Z4
         QpmyhP0ybfQvhO6PBURrliZp9B2/IP9gyvlb9PpX17KjSIepq0AzST7icYwAN5QsRP0M
         kkHQ==
X-Gm-Message-State: ACgBeo3UVKTqbMlXWl/i3LD8CKUvm1bj6xxMCXWrK2n8FvkIVL6e4PLB
        V+ZFTrBSkzP/Yt9JQbzXjED+wg==
X-Google-Smtp-Source: AA6agR7XO9/ucBfdhxeAYi9ueBa5bQI5OkfrnAcol6y9widXC8PN67prjDo2a9PO6440GhdqtBKYaQ==
X-Received: by 2002:a05:600c:1d12:b0:3a5:eb79:edc3 with SMTP id l18-20020a05600c1d1200b003a5eb79edc3mr3104767wms.136.1660766750603;
        Wed, 17 Aug 2022 13:05:50 -0700 (PDT)
Received: from henark71.. ([109.76.58.63])
        by smtp.gmail.com with ESMTPSA id i133-20020a1c3b8b000000b003a531c7aa66sm3400883wma.1.2022.08.17.13.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:05:49 -0700 (PDT)
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
        Jessica Clarke <jrtc27@jrtc27.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, qemu-riscv@nongnu.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 1/4] dt-bindings: timer: sifive,clint: add legacy riscv compatible
Date:   Wed, 17 Aug 2022 21:05:20 +0100
Message-Id: <20220817200531.988850-2-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220817200531.988850-1-mail@conchuod.ie>
References: <20220817200531.988850-1-mail@conchuod.ie>
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
index e64f46339079..bbad24165837 100644
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
+        description: For the QEMU virt machine only
 
     description:
       Should be "<vendor>,<chip>-clint" and "sifive,clint<version>".
-- 
2.37.1

