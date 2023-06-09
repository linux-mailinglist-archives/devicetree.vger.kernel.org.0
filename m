Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 824DB729C3F
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239993AbjFIOHT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:07:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240576AbjFIOHN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:07:13 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD4733598
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:07:10 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5147dce372eso2774181a12.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319629; x=1688911629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ooPHVjG0smBJcw3UZ0KiwpKSUQFuZSPhg2UdcvnKsUM=;
        b=yaW7mP9M6MFBEQrrcQ8LchzKkkHtq4Gg21y/eYGBsY9PDRtToucGH6n16zU9pTKB2q
         4jRxao4fuN1JAsNRirGAB27RWhZmxrKBpgE8H7dYvnic7dqPHDcGWFEI/P6/V4dhDn3l
         /Grh1+iqooa2wnedgxI3IL+kieRQDHusBkXUQI1jv5Y3/op7+R/VpJfRXIrygv00I7q/
         aklNBncQ1NR1jcxKeLY3gZavuKLKzw6nenoDwusds+ku3VkLZ9PGAAHt7bmo6ssghatn
         J1kFL3GyDWbTEdA58TuYMEaJ4MAdMd1HFV1cP15Q1KLjCwTCBSxyP8kkktpx5adN7qGz
         gLGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319629; x=1688911629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ooPHVjG0smBJcw3UZ0KiwpKSUQFuZSPhg2UdcvnKsUM=;
        b=BblC0BjMf+Zn9O2E8R6n7jzi0gyovMP/vN10aTMdEn+M94J10oldfuosF/sLptqFNr
         ZE4ZaNW1sy9P4NqWjoIr593JXPqHM4BW0D/UexQzswGPTFY71cJilwXyGFmwUCNa8fqL
         ycQxJVU4oYUGr28GXOc0t4iVI+wXbvmzfLjsg0fK/vK0Pag13Is8fl2ecZirEL7D+8uP
         3Um+KPZB/98b9QhJwnE1uC9TTbs20b4dggKYdrKFkqL2iB0UV+WWZq6oJyz+v5K1+Acr
         l4yZjr3sBCeaUGz9/IK7kzvoknSbZV4YvEmdf7AhJ+UV47vSkSlR4sqP3fFqe028WMA9
         6xLA==
X-Gm-Message-State: AC+VfDx46gllh8adxLyKdhX8P9OLt8oqrsgvETUTyb+rOKcwfG8Xr8ot
        Fp80JO/hPaC0n8t6o36qjDd0iw==
X-Google-Smtp-Source: ACHHUZ7cWdRLrozxuKakAhxWOXUJREEAfp+XHJuUgpuWZm53+OttM9O6RQiSXAY9ny2k5+749IfDWQ==
X-Received: by 2002:aa7:ce12:0:b0:514:8e4a:2d71 with SMTP id d18-20020aa7ce12000000b005148e4a2d71mr1134762edv.26.1686319628915;
        Fri, 09 Jun 2023 07:07:08 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id a13-20020a50e70d000000b005149c3fa632sm1806120edn.13.2023.06.09.07.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:07:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: riscv: cpus: drop unneeded quotes
Date:   Fri,  9 Jun 2023 16:07:06 +0200
Message-Id: <20230609140706.64623-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index db5253a2a74a..8a56473cdd5a 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -61,7 +61,7 @@ properties:
       hart.  These values originate from the RISC-V Privileged
       Specification document, available from
       https://riscv.org/specifications/
-    $ref: "/schemas/types.yaml#/definitions/string"
+    $ref: /schemas/types.yaml#/definitions/string
     enum:
       - riscv,sv32
       - riscv,sv39
@@ -95,7 +95,7 @@ properties:
       While the isa strings in ISA specification are case
       insensitive, letters in the riscv,isa string must be all
       lowercase.
-    $ref: "/schemas/types.yaml#/definitions/string"
+    $ref: /schemas/types.yaml#/definitions/string
     pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[a-z])+)?(?:_[hsxz](?:[a-z])+)*$
 
   # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
@@ -120,7 +120,7 @@ properties:
       - interrupt-controller
 
   cpu-idle-states:
-    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    $ref: /schemas/types.yaml#/definitions/phandle-array
     items:
       maxItems: 1
     description: |
-- 
2.34.1

