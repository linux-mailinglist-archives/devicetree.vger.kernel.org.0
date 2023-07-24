Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CABB475F9A7
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 16:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231217AbjGXOU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 10:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbjGXOU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 10:20:57 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 192A2E64
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:20:55 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6687466137bso2415915b3a.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 07:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1690208454; x=1690813254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xufKQxJZ1yMufxzMxtt76Rklm7qyQEzWEW8M8cPFlHM=;
        b=bC6GYsoh/H3PR+/JPzzVT2fMBcYc6uYovUuNhtlxPoNWVAqKq5UNsJdieKixeX/tod
         1ZV0pTnpatWWYx/p4XgSry+qNGMAhi/bVja3zNa7LNY3iSUD4lnztOR3OLeSfZDAwa1I
         kAH2qozVJb9imAZApR20rY2plXzKZiouGGgVFMSoc1nDfSEw3L5YSdSNKaGlFQ81p2mh
         eQfjF/8iLqwDZ6b5cPQi6fkvoWA7NODznBZOrjcoqIPxQlU3XkE8Gr+dFMQVzEqnvtT1
         2TItRA+Hz4FVq1Pnur4ItSXg9nPw+ABSUYuEmrVAw2vJ8oDPfoWGlE/W3iN/JRCCaVCb
         Cuew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690208454; x=1690813254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xufKQxJZ1yMufxzMxtt76Rklm7qyQEzWEW8M8cPFlHM=;
        b=bF88SpkPg26js39xF7BcC+6kmxrdAzK/P8MtEzLNe/Ri9da/OsNoftA/H83s4Y/7bV
         tcGbuNK7diUdQyhdbQ/3u1eFSDsw4v9/TjQQD2bVvOx3E5OlJQKHFKUW7MTzWsYMn8Yw
         YnnbamggeKnx2pSzxz7/8Hby/oxDNPxbnA2vtVPXe+NTyrxZDEPUBXNIsdpV8V1PHskm
         rcYpt+q/dqQR8eHjHKd11HjmF6+xEg7V4W9ZwWzZ0nC3AfmuITtWswW3tgUp/05MmgSf
         /be0Z7nvp/A8C52g7x/IRLWqdoCKsUASNpJ8bTduY5v0Th2wymbVzetkO2qJo3ipQYXM
         kqrw==
X-Gm-Message-State: ABy/qLayMrfrDCWlRyHe2Z/+jhw11hfpVt9N5c954lgZX0mCLolKVe+V
        5iAzJ9l7DaoEMasnUlfPNVJF0g==
X-Google-Smtp-Source: APBJJlEo3gtTsxiR0fYDOZcP5/iHY2QuQDqA3+tze14PsUJjDAVDEFqk1Zsr4maai1yipTLksmB6mw==
X-Received: by 2002:a05:6a21:32a9:b0:137:514a:984f with SMTP id yt41-20020a056a2132a900b00137514a984fmr9109819pzb.35.1690208454453;
        Mon, 24 Jul 2023 07:20:54 -0700 (PDT)
Received: from mchitale-vm.. ([103.97.165.210])
        by smtp.googlemail.com with ESMTPSA id s10-20020a170902a50a00b001b8307c81c8sm9009821plq.121.2023.07.24.07.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 07:20:54 -0700 (PDT)
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
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3 2/7] dt-bindings: riscv: Add smstateen entry
Date:   Mon, 24 Jul 2023 19:50:28 +0530
Message-Id: <20230724142033.306538-3-mchitale@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230724142033.306538-1-mchitale@ventanamicro.com>
References: <20230724142033.306538-1-mchitale@ventanamicro.com>
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

Add an entry for the Smstateen extension to the riscv,isa-extensions
property.

Signed-off-by: Mayuresh Chitale <mchitale@ventanamicro.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
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

