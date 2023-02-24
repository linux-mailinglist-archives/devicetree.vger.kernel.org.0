Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8DCE6A1F96
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 17:26:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbjBXQ0r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 11:26:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjBXQ0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 11:26:40 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 625606A7AF
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:37 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id k37so66170wms.0
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 08:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ulHjChwX0EpCdPBQp6OD2TjDP7InY37wU45TsSAj1w=;
        b=Hqo7fu1B4xqPawDMyW66q3vces/lc1k8SQ+c8oQEtP6S3LvATJfoIKXuRYcluW7sfy
         +ugmVcqInbSAczNkKhfdWaI3i8SO4YOZWvKcrdtgk6OIuxNLt2RkpXwslwuEonv9zXph
         vxeHEaoiDJOu4nqWOCTZ6P2mXWns/DP9NTw5VBWS/trQxmwUIZ1F0pmY4RQA/Xh7rfTl
         rtBrfIN/Px2t1plT6ZbP2YvAzk1H1PV5QkTHqcBEwHvcN5EwRy+lX5NfhLqVAOjH74mh
         ZSM+9eG0NGdZSqiMlM8N2QbPkiKSDr8QRwjKSQKha5gxA+Vd9I+jXViZAqAIzsIpkZ7e
         IK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ulHjChwX0EpCdPBQp6OD2TjDP7InY37wU45TsSAj1w=;
        b=PowqP856JPwGUlSNgsPjiciM743uRUwOCM01EA7yRioETgE0o0GQaPqc3yO0b69IgM
         RLm6qv066zzdl0QPB6VEjcF/lx7iTYXAlx27rm26gAoFvbrQlqzOBxQJZiqQ4bUws5pB
         Cn6SVZiIuT7FzwsJ9VqQC51eBd3sgGYMn1Qzs2sr3AfUqcSCxH+NCDKwYuzBrvPUxGa0
         FkeEEbsZ527Bb1jtfBQZtecT2LsixDOsQP+GtHKDGrA2yCdNgQg+eTtWHd5I34gYyUcG
         qIX3DpeAgC1QYzakoHnTTJYhS3YHwM6HxfFNBCpluXLSiA1iC1ULopHEVkqgN7XeArdd
         P+JQ==
X-Gm-Message-State: AO0yUKXIPm7PFevonNzw1ZjtjqXaJGTbY2vT9jCTYlaZLC1DeQRJd1YH
        Z8JS2V8JZlFi/iYYU8WBRuZfOw==
X-Google-Smtp-Source: AK7set8zVxc5qiCueExOLHTCFNNzolxFPSj234tIjv7/zx7MafBbdDpFH8c7Yoswk3smf5KklatbGA==
X-Received: by 2002:a05:600c:331b:b0:3eb:2da4:f32d with SMTP id q27-20020a05600c331b00b003eb2da4f32dmr1107776wmp.26.1677255995904;
        Fri, 24 Feb 2023 08:26:35 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id t25-20020a7bc3d9000000b003e896d953a8sm3377129wmj.17.2023.02.24.08.26.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 08:26:35 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Conor Dooley ' <conor.dooley@microchip.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Sudip Mukherjee ' <sudip.mukherjee@codethink.co.uk>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Heiko Stuebner ' <heiko@sntech.de>
Subject: [PATCH v6 3/8] dt-bindings: riscv: Document cboz-block-size
Date:   Fri, 24 Feb 2023 17:26:26 +0100
Message-Id: <20230224162631.405473-4-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224162631.405473-1-ajones@ventanamicro.com>
References: <20230224162631.405473-1-ajones@ventanamicro.com>
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

