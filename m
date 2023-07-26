Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29B54763079
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232279AbjGZIvB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:51:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232634AbjGZIud (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:50:33 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA46561B9
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:13 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-55ae2075990so3475391a12.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690361053; x=1690965853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqR2RDc36TENwkhRWI02ORvUk5zlxgidXHuawQH9lCY=;
        b=nlUK5rRbwoL2VhzRVg0zVv8tMWmh5i6cSI3ycOIOo5D46+1/Oj3Z1PlX+i62+rFJ5w
         lbo89W1s+ZWo1FuJQEcNvr01bFZ5E+iXwjepPMN6v4Df0TAlOoGJNV68dsR33hS3Kish
         qLMghPo23+FOC44Q9Tm5RT13r+bs+VRfnR5Py8kmU5qVaZSCvrwROf3PwgRHDDxtlOBu
         TtipXnH0Q74TOj6r5Tpwci1B3Qw2RU2dSabea+XRJ1sPUNCXn2tUy2i//yYT/tJgRBXO
         VLyoHjAl4VXV8UEUbEgyGK4VihZ/+uTJc6xfRzUsO9cQFEGUM8J1cHuFskek9czV+9no
         OPdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690361053; x=1690965853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JqR2RDc36TENwkhRWI02ORvUk5zlxgidXHuawQH9lCY=;
        b=X7Hdo/Bi2AGL/heuGp7ar6yrBCE/KyRv2n3uvkiFlkbAluOmGeq/tSASjFCZKh3CZW
         byjQ3bPaBjalCaW+uz4XKI/aGUortx7671A2LR34W/OF+Iwuh7Ps+I6sauYwCUMzUKxQ
         PVNmtl0tXf/o4Nug60lVmtO9mWyVHTdeMSZDs+2nrogD/WlUbRVzFLWGSYooxqaeyzAH
         jW4seBAbYXGjOXr0q4ruZiJMeP71MOaQ9jK0VCEwG3bfcNCGOHoZL2tS3XTGProNx7Kt
         EI+rkllFVX5+pAFvrE5QjiCpfmr8BnXFom47BSmSw/CwtaaHATPkg2cM/EIYlddpyjVu
         Sqkg==
X-Gm-Message-State: ABy/qLbXfvjtfmUEJHuUZclorJPlhH7Kzvol/qse1Ucw1g1ij5W13v6K
        t9yAegY9F6KUQY0DiNSWnPmuRw==
X-Google-Smtp-Source: APBJJlH592K84ltOhRh3gR6yAOgGgfgy0lypixvCAnYvAI+Q7Scr3ODImmwLsYXSc+lgNqrvJcEdSg==
X-Received: by 2002:a05:6a21:6da2:b0:130:46ea:29cb with SMTP id wl34-20020a056a216da200b0013046ea29cbmr1341794pzb.25.1690361053298;
        Wed, 26 Jul 2023 01:44:13 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id y19-20020a170902ed5300b001b3bf8001a9sm3978637plb.48.2023.07.26.01.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 01:44:13 -0700 (PDT)
From:   Mayuresh Chitale <mchitale@ventanamicro.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup@brainfault.org>
Cc:     Mayuresh Chitale <mchitale@ventanamicro.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        Conor Dooley <conor@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 2/7] dt-bindings: riscv: Add smstateen entry
Date:   Wed, 26 Jul 2023 14:13:47 +0530
Message-Id: <20230726084352.2136377-3-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726084352.2136377-1-mchitale@ventanamicro.com>
References: <20230726084352.2136377-1-mchitale@ventanamicro.com>
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

Add an entry for the Smstateen extension to the riscv,isa-extensions
property.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cc1f546fdbdc..36ff6749fbba 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,12 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smstateen
+          description: |
+            The standard Smstateen extension for controlling access to CSRs
+            added by other RISC-V extensions in H/S/VS/U/VU modes and as
+            ratified at commit a28bfae (Ratified (#7)) of riscv-state-enable.
+
         - const: ssaia
           description: |
             The standard Ssaia supervisor-level extension for the advanced
-- 
2.34.1

