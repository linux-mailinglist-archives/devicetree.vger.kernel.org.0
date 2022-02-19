Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C16534BC3A8
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 01:49:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240469AbiBSArz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 19:47:55 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:40540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240500AbiBSArw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 19:47:52 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4478278282
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 16:47:29 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id j24so2703956oii.11
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 16:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c/0FNgv5lUN8jWi4HV9B3F/rz6WuSHsRs+ZuBRv8FFI=;
        b=ZiY0wwJ0SqisQuu6ArfKe03xg+2W+PovMKQyGMyksKruK698BV0tgUOmJQQczbB4Xy
         es5RPo++t4bQEgF6wzMapiJTWPReNgRTwNNnnpyDJCfbCrFvTWOcPHowU1Vwl23ky6QG
         DLN4/uaRUwaGd6Uiy3y+l0wMQJpMBa9ezEV3oMztup72dpEC+uY7NTrt5/fnJI8q9SwT
         XepPFmnUClJGgK/xmhL+gQhVMQdh5nP1IFVL0PN3g01vJ0kc/FXov1ooooas1J6O8XfN
         UX3AvR6/Kpz7g0WdEIyp4lPJ9SKAa2nSDYRPLrxuhBE571zxzuyKjTZXPQkW8/0ZFDVF
         Btqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c/0FNgv5lUN8jWi4HV9B3F/rz6WuSHsRs+ZuBRv8FFI=;
        b=MehnE32mTe2f8yycR9v0YWDFy6rYzrBuBJFhdfZJ/4uBjF6zo/wRyu938agcjAAfID
         1NS5HpV9WKbjd/VCXUyjWp+aCjzoBY/eNOwTKn3yzVTxpJfN2/aMEiULRc/BrGBULrne
         ZoRNbzbZokdjF9M0nRblBlT+LPB7SUAsr1etDpz5OCPkTdFNrhbDxM032fjOkm1gwD9M
         /ryPESaJ0URFeWwigNhOYt/tpZvbreIog22sNtN2x3kzxDgdpgFzeLYnOeoTebQ92UWq
         oFWqR3CGc/g10DzhmtpNaVEEe3Dkh/c0KXJM4rQ7/sZFPHRYgi1jFC0c+iktReLf2LX2
         OzKw==
X-Gm-Message-State: AOAM5330v4BnXY4xdkHLCOH66n0knhaGrP66RuKWUA+RQFfcl0yjxit1
        I5jLA7Nq+alVUIYwi1ImuChPlA==
X-Google-Smtp-Source: ABdhPJzRQen7NvHhjcQNsc8zdzkieqqweNi8Zrd2NfXxhR0scCdRCj2ZIJPPYhXkW27QcvKyFYXfyg==
X-Received: by 2002:a05:6808:190f:b0:2d4:b3c0:193a with SMTP id bf15-20020a056808190f00b002d4b3c0193amr1760730oib.229.1645231649091;
        Fri, 18 Feb 2022 16:47:29 -0800 (PST)
Received: from rivos-atish.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id n11sm11360794oal.1.2022.02.18.16.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Feb 2022 16:47:28 -0800 (PST)
From:   Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [v6 9/9] MAINTAINERS: Add entry for RISC-V PMU drivers
Date:   Fri, 18 Feb 2022 16:47:00 -0800
Message-Id: <20220219004700.1973682-10-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220219004700.1973682-1-atishp@rivosinc.com>
References: <20220219004700.1973682-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Atish Patra <atish.patra@wdc.com>

Add myself and Anup as maintainer for RISC-V PMU drivers.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fca970a46e77..101a07728d5f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16596,6 +16596,15 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
+RISC-V PMU DRIVERS
+M:	Atish Patra <atishp@atishpatra.org>
+R:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Supported
+F:	drivers/perf/riscv_pmu.c
+F:	drivers/perf/riscv_pmu_legacy.c
+F:	drivers/perf/riscv_pmu_sbi.c
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.30.2

