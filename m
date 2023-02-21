Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1070269E80D
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjBUTJb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229848AbjBUTJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:28 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B862F2DE70
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:23 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id s26so21337535edw.11
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ulHjChwX0EpCdPBQp6OD2TjDP7InY37wU45TsSAj1w=;
        b=fsEIbxV5ukSI1Ii/NjFhkJ/3LweIKBi4U2JajtnyXC3kTEKlPyo20bMQxbypslthdU
         GcLh6lUQWvHvifl3PJx6/UW7Oo8rIseP5N9wDkkv2jDtoL6I+2d/ut4bDMHy1IDASlCE
         C5hSzmRmt8h9PUd5jPugCd7PxYELEIzwXZ7uQ02x9EvDNLBGGxbje4Z4BzgNnaTN4G5S
         W5aXoxvUXqTJJXWE+XLVyfdnguccMTOKcLhODuVY0KqNooEaw8Akg3y0M4zrXzoxDsm3
         sua2Y3MHXCjxnDNFdGqFcFOK0fq5KpZOWmtWDncxuS/U43+54R+iUz36Z/lLsGDHKrQH
         EowA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ulHjChwX0EpCdPBQp6OD2TjDP7InY37wU45TsSAj1w=;
        b=AOcGvyxL5fiSMoXwEL8mU5alUsExHi/KEN5VHigBy92k6O8P/QTTlwnYkX3H+JKM7x
         1Dx7FaPDH8Qbze9yS/ZX6WHn8G+8m8guEQAldWyyde7mU5vZJ2Cwe0ryCdHaXgolo/m6
         ytPt8dTJLjzEUnCG9cA7BvWcqawsqcDHV+R0ZAjWHmQfS3LNsGq3y3rkQ7ymhaFC0LOc
         BbzR09Ko8J9zDSfQ64PC8CDlBY/QTIAeY9xoAE1iF9gjont002++XV1RjDpKAjIoDDFr
         MtAaLLDv1Umqhb7KaJF7G1tKCZC5Mmjrqbm5O0Hep9+j80xCFhf7NglDucxj2B5WiDN4
         ELww==
X-Gm-Message-State: AO0yUKV7rV5YYYClPaknYrfUnvpZjfDT+sDkt4IKOFvnhT5BZsYHc1fZ
        gmPIUcNaUTN+RL5rF1vulzRXBg==
X-Google-Smtp-Source: AK7set8vw2LdrJAAIOmnIsmu4hFnIFtPiV1NOx3WyBVbzECys4Flvbc5ISUhv9FDwPB3Qya8y0OJRA==
X-Received: by 2002:a17:906:115a:b0:8b1:7fe8:1c38 with SMTP id i26-20020a170906115a00b008b17fe81c38mr16437226eja.43.1677006562276;
        Tue, 21 Feb 2023 11:09:22 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id lf19-20020a170906ae5300b008da6a37de1bsm2130313ejb.10.2023.02.21.11.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:21 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: [PATCH v5 3/8] dt-bindings: riscv: Document cboz-block-size
Date:   Tue, 21 Feb 2023 20:09:11 +0100
Message-Id: <20230221190916.572454-4-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Zicboz operation (cbo.zero) operates on a block-size defined
for the cpu-core. While we already have the riscv,cbom-block-size
property, it only provides the block size for Zicbom operations.
Even though it's likely Zicboz and Zicbom will use the same size,
that's not required by the specification. Create another property
specifically for Zicboz.

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 001931d526ec..f24cf9601c6e 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -72,6 +72,11 @@ properties:
     description:
       The blocksize in bytes for the Zicbom cache operations.
 
+  riscv,cboz-block-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The blocksize in bytes for the Zicboz cache operations.
+
   riscv,isa:
     description:
       Identifies the specific RISC-V instruction set architecture
-- 
2.39.1

