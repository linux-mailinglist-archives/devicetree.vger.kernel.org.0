Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84F155107A9
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 20:53:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241792AbiDZS4X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 14:56:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353076AbiDZS4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 14:56:21 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B36E1569E0
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 11:53:09 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id fv2so3959304pjb.4
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 11:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Abl0bfYYrLlQ27vYh6a3IKNxFiISaIZQZeWkMU0B+HY=;
        b=vBrOC+clk/14uoGOtUn6c44gW3HFg6+QeB4YEt2tbdI3Rg4yeq77I+oddnQCUvlydX
         iqg0VvE+xjRD4sWxZ1mmoMfRyrVxDPrUtXKkDrNRWGiibUU5SffVNYDCOpqXJjxDdfm+
         /rqFvZzeeyDfpQ76ca7H7LzTLOeXPvHCD/pCuz5pOO8kXPjiAwdv46d+k1hN/PFWNd+S
         LE/PYTA7+dKF64/xYYMYdLWJgicaGpcdpGKTGGfp30OgMWLTSJq6OCxzp2iLWkNNeiSk
         DE2Xcjq/QTbTVXOE/59QHyVR17aRUr04hI760rCpzv0eJ487aQJHQthEkwcuJ3xj55vm
         C22Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Abl0bfYYrLlQ27vYh6a3IKNxFiISaIZQZeWkMU0B+HY=;
        b=V0fhBdhdTpHKWMCXDBLy/YCiIMv3lVfMgPqIIgle82fTmYulCHdxXf+QMIaCFjSgKo
         lkEt6bGx8jbd5X9kKZhE9vucPaPrqNcYzdICvjGLTmiK+GNJH/KClok2gauv7R9VhdG5
         BjOj15F6W5wt+F8XGolEmWYiUjUM+5hMmpdvmth1v3aArzj/m+i4KZv1pa3lLnwGw/Or
         luUIVY0BfGsYUou4vSeSIQTaAv13uZfwbGfJd+2t8r45X7YHQh6Kv8VohNei+7rzBzT+
         HB96YyxC/v/PWGMMOvbVeuDNINmObVHYbIEZYAbPYpiuQpy9mdnTXvEQKSPofSQ6WaCn
         M+PQ==
X-Gm-Message-State: AOAM532b0BW8KQpa8Hulm7HFIA6j8WHfHS8DwYIfzn5OXnNLZaCp11s+
        Scghugy5LDnKRHbU1r1+fV+MqQ==
X-Google-Smtp-Source: ABdhPJx/bBDnaGbhRf26Abl87DpdzPlrl9/ustlrU9hsLHOANPcCs60CUmoMIuPL0ZgfMH86wSd+tw==
X-Received: by 2002:a17:90a:884:b0:1d9:531c:9cd6 with SMTP id v4-20020a17090a088400b001d9531c9cd6mr16498367pjc.211.1650999188661;
        Tue, 26 Apr 2022 11:53:08 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id cl18-20020a17090af69200b001cd4989ff5asm3839664pjb.33.2022.04.26.11.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 11:53:08 -0700 (PDT)
From:   Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        kvm@vger.kernel.org, kvm-riscv@lists.infradead.org,
        linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/4] RISC-V: Add SSTC extension CSR details
Date:   Tue, 26 Apr 2022 11:52:42 -0700
Message-Id: <20220426185245.281182-2-atishp@rivosinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220426185245.281182-1-atishp@rivosinc.com>
References: <20220426185245.281182-1-atishp@rivosinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch just introduces the required CSR fields related to the
SSTC extension.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index e935f27b10fd..10f4e1c36908 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -227,6 +227,9 @@
 #define CSR_SIP			0x144
 #define CSR_SATP		0x180
 
+#define CSR_STIMECMP		0x14D
+#define CSR_STIMECMPH		0x15D
+
 #define CSR_VSSTATUS		0x200
 #define CSR_VSIE		0x204
 #define CSR_VSTVEC		0x205
@@ -236,6 +239,8 @@
 #define CSR_VSTVAL		0x243
 #define CSR_VSIP		0x244
 #define CSR_VSATP		0x280
+#define CSR_VSTIMECMP		0x24D
+#define CSR_VSTIMECMPH		0x25D
 
 #define CSR_HSTATUS		0x600
 #define CSR_HEDELEG		0x602
@@ -251,6 +256,8 @@
 #define CSR_HTINST		0x64a
 #define CSR_HGATP		0x680
 #define CSR_HGEIP		0xe12
+#define CSR_HENVCFG		0x60A
+#define CSR_HENVCFGH		0x61A
 
 #define CSR_MSTATUS		0x300
 #define CSR_MISA		0x301
@@ -312,6 +319,10 @@
 #define IE_TIE		(_AC(0x1, UL) << RV_IRQ_TIMER)
 #define IE_EIE		(_AC(0x1, UL) << RV_IRQ_EXT)
 
+/* ENVCFG related bits */
+#define HENVCFG_STCE	63
+#define HENVCFGH_STCE	31
+
 #ifndef __ASSEMBLY__
 
 #define csr_swap(csr, val)					\
-- 
2.25.1

