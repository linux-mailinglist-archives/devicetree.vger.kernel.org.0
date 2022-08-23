Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 375BB59EC85
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:38:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232677AbiHWThf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:37:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232695AbiHWThS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:37:18 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C7494EC5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:33:56 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b5so13741985wrr.5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=gfYO45Fhrr292YriQBgq+GL0i0hKssdiRtp+ptuTmB8=;
        b=cxhWc3M4obppLHYQ1+1dtIkL3cRvwms6r8PwhRPdHDTBOodgqvj+O9GT+FIXT+jVHM
         cLh/Qw3HVakfK6G2nWP1Yew4MJQDEtQI7QpU+r6N0eHqbjF0wJ41mxQK6Mlb8s/QZ3fy
         SdDOP+rFnRzP1U+moj1P99yf0KdJkXioTWpwRdqUa42HEjRci3ryA21S6QskbzqnjstD
         jYKuJAKEa0RgEOdq0ZSHUh/D9OU86R7A5NtNLdP2Whs8V1ITPGcIIait/JWspTt/7gUn
         VMWDd+BN7Y836i5XYRf1P+fGFGKd5HdoE2zvCUi/n6n2FMcrbn/7MFxO7ncgmhXv1wKg
         jicA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=gfYO45Fhrr292YriQBgq+GL0i0hKssdiRtp+ptuTmB8=;
        b=j7b+avo1hEZpQktjBP01pCpmI/hdTTN0pRT9mLWCTnhYfmnKxVg4qUKR10uDYIaIeX
         UEjjCox5BWmjQiiDBn/sBYKV+l+V9Lz9TssMWTQl1N/qgAv1r8gwWv64lPmNZ1HrTQo8
         kxVaOEup5QBkb2MPIrk/z36v3FHgQHZe1TSVIpyw4UnCB6ehY+58qMDovfBfcpQ/kPrm
         fLXK0qHD3ixSHtiGrt/ZPhbP0ZjYQS+JTRwG4p1cjlCCEwkT1BOkVzEyosNaGm3hZgJK
         /stRAL6dJoYqLQZn3tKk60N7JyJfvkhv+0HCFaES8F0jFPi1K5NuFDQH6l5XHwM5Slok
         ujBw==
X-Gm-Message-State: ACgBeo1A+ehvrcA21AE6v3nePa3viK//Zr5j9wrEMLDQt/q4X3Q3FGlS
        WLhTuxPo0nkTr9/putbogUrKXg==
X-Google-Smtp-Source: AA6agR7bBIo4WvfaTQmBmKbZYuyKOKLHUXCNnIkzR2yMddKcJrOEa3tcvpyzuyC0FL4VN5JT0BNR4A==
X-Received: by 2002:adf:fa0d:0:b0:225:1bd4:5d8a with SMTP id m13-20020adffa0d000000b002251bd45d8amr14077231wrr.106.1661279634905;
        Tue, 23 Aug 2022 11:33:54 -0700 (PDT)
Received: from henark71.. ([51.37.149.245])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c1d9000b003a5fcae64d4sm19396556wms.29.2022.08.23.11.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:33:54 -0700 (PDT)
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
Subject: [PATCH v4 1/4] dt-bindings: timer: sifive,clint: add legacy riscv compatible
Date:   Tue, 23 Aug 2022 19:33:17 +0100
Message-Id: <20220823183319.3314940-2-mail@conchuod.ie>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220823183319.3314940-1-mail@conchuod.ie>
References: <20220823183319.3314940-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

