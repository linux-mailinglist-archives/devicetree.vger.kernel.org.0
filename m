Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D730690CE4
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 16:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbjBIP0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 10:26:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbjBIP0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 10:26:38 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECEAFB4
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 07:26:36 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id ud5so7448193ejc.4
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 07:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzN8AbOo3JyjfFUVtCb8EymIodGNvAg9owDKXhmBnGo=;
        b=SIV6vLnd1BhcI67eMLyix3FccUCtJUBIQE2cBvdZASfbrr4LJIChW8AfwaZoMAISjB
         tVuT7EQRJf6xP43qarway9C1uShJmrhz58jJqUhvaL9ohITM8MsIUWY+Kd7fR1tNHCxh
         QwdEBFsve3jswe+gEPq6SwrpEZUKYV81Xgb2f3WN8t5cRiMDbzvzmko3O2MwqBQ8EJlB
         bUe53SBat34KgYp8Vnx0kWYXxjv24xrGC++b3+QaSFGXpddVlCDaopWp/d4nUYF96aVM
         2CeImBsU7JKcLGfbxVw0tCTZciLSmS4TjCp+kSvYaKh3cD7wmH+l0S7pcfM/jJB7w2B/
         Eg5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzN8AbOo3JyjfFUVtCb8EymIodGNvAg9owDKXhmBnGo=;
        b=7C6MHVfD2zpgwGUxWZvoVRa68qibYjnHc7BKCoGeLXzHqI1aMvA1CW43B3tRCgm3z0
         K0SXVSspv+qDxTFzJv1WvcxanxA/madFhyt/Dz7kXBqeopzpaT+shHpfb5cVJipoB+gW
         Ar+KuhmTW/qULjVVQJdM4fHWncp4Yh95M8/ckEcg3zwKTdH7DKZvBuYwMOlzucCxyJ9k
         TMgG7mgFkTpePjfZ98itTyqvVK+x1cAoQ4FwW8r2t0hgAI2VbPCSPca/M6xFnLUArwU1
         rbDD36pCF5DWqljR27IYbZcE4M21vEi6Sym3CAOU2qtBx5on/V2P+gwI8Fiq8o0TLTgE
         ReHg==
X-Gm-Message-State: AO0yUKXd/epVOF74DPq3ut9Kdy9E4vxWnx1tAN6bpyUCjCgFaJarneeR
        NRU963BRvYZZIJgYadtiOpbDAw==
X-Google-Smtp-Source: AK7set/g50kwhLiRNXI62js66kVWINozQpaTh8rMCC40tzBevXRxgk/yrsjMPSLLArlomemwhIbdPQ==
X-Received: by 2002:a17:907:9a8c:b0:8ae:968a:cde9 with SMTP id km12-20020a1709079a8c00b008ae968acde9mr6708419ejc.68.1675956395543;
        Thu, 09 Feb 2023 07:26:35 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id k6-20020a1709065fc600b0081bfc79beaesm987397ejv.75.2023.02.09.07.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 07:26:35 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     'Anup Patel ' <apatel@ventanamicro.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Rob Herring ' <robh@kernel.org>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>
Subject: [PATCH v4 3/8] dt-bindings: riscv: Document cboz-block-size
Date:   Thu,  9 Feb 2023 16:26:23 +0100
Message-Id: <20230209152628.129914-4-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230209152628.129914-1-ajones@ventanamicro.com>
References: <20230209152628.129914-1-ajones@ventanamicro.com>
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

