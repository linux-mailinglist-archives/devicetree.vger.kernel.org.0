Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A056680CBC
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:01:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235730AbjA3MBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:01:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230422AbjA3MBf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:01:35 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E90110C
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:01:34 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id y1so10835783wru.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e++vOgbuAWNFQYdWiVuM3Vk2Ua01ISwg9MNr3hKY+MY=;
        b=jk/JOVCL7Ewijf0NpBIQ7xVXeUUP+aG2Ph/WCK3pda8l/66weX/yqVl6ZDCHvbnYAR
         K4z6M41fX6FdZEP8EIXIoj49iiC5O8szXvU818P0MY/0RluxMRnSxQMuV4whN4MmKGUn
         tyJJPXjUK7KBO8ICRVpsnuXxENVpAZS7Ivld2VBA8iNIfEIXCRLBDoH0YHuSerQk60Ep
         P2uaa3UIyR1AR1/ZWFi4uA5EbE++HAQLN9gjL9Wcpus+B15INAhJ4+zQS0Pyxz3B2lDX
         cgKbT3nJnvn+AWnbiM437l4EhftF3q+V/p+6sv9mCud4eUxmzQZVzM8wEu2Lr8UWa/KU
         Zwbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e++vOgbuAWNFQYdWiVuM3Vk2Ua01ISwg9MNr3hKY+MY=;
        b=sIsFqCABb14bJUN2VmTvWnUwbZKZfLIh0viilgZM7sMcGv4dqGKQsWXhtX90xBCmri
         Hw38HlWwxRMA5zs10VoXBVmT11PBo/OH3FCQSEEDucCw+PTemhE5V3nF7a+oVFm5ATXl
         /zT/fEp0kr8o0Tj1RB/EiyrdZFihrvFkq0y5grqNYJ85S/Sc921ZFefQ5rGSNqpt6D0y
         fGDYK7MWwV8nw2MVBv1y9wA0kmnd7R9+T9hbAUHun/VU8b0pgTW3UFk0oM06/Ls+lC48
         ciWuvtwky9XV0W9jxLRaKcSZZ9XAiEZ47OJgoD08TPe+hrf6rLI2FJA7l983xywtZYLE
         pYSw==
X-Gm-Message-State: AO0yUKUCo0127xN0Fp66hxJQhtQEfJCbHPzNfvxBQGaMRtDdN45oF1cj
        dx/uqIYioRG4A9mjdVFB7MQKfA==
X-Google-Smtp-Source: AK7set8cyZszMHlnpDKH0ww2tBbRZVa8HiguPc+mMxHD1C1lFCyTZEsy3O0hYxR2hHvFRgsp2g5Agg==
X-Received: by 2002:adf:ed50:0:b0:2bf:b571:1f18 with SMTP id u16-20020adfed50000000b002bfb5711f18mr21064361wro.61.1675080093076;
        Mon, 30 Jan 2023 04:01:33 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a5-20020adfeec5000000b002bfae6b17d2sm11708916wrp.55.2023.01.30.04.01.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 04:01:32 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Heiko Stuebner ' <heiko@sntech.de>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>
Subject: [PATCH v3 2/6] dt-bindings: riscv: Document cboz-block-size
Date:   Mon, 30 Jan 2023 13:01:24 +0100
Message-Id: <20230130120128.1349464-3-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130120128.1349464-1-ajones@ventanamicro.com>
References: <20230130120128.1349464-1-ajones@ventanamicro.com>
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
that's not specified. Create another property specifically for
Zicboz.

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c6720764e765..f4ee70f8e1cf 100644
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

