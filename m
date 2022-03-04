Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD954CDEC6
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 21:26:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbiCDUPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 15:15:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231293AbiCDUPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 15:15:33 -0500
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com [IPv6:2607:f8b0:4864:20::82c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D831AC7C36
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 12:11:19 -0800 (PST)
Received: by mail-qt1-x82c.google.com with SMTP id w1so8379489qtj.2
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 12:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c6aEUd2HwY01Z/Ayysg23IOPYksH4V6g17VAVrgQgx8=;
        b=OTNsK7j5dme3IWmBvygn+JNkeA/iSLbLNVG7NPSIxtQxVzkFwdmDsLe6Ps4Z0d+Asn
         /h6LTCk3MYXpN2rkmpaDUl53wNaFt6bkBi++QQ9H+m4XbD7iw3Gaql8PTvhIMS7po78I
         9d/4qbHopPz7zYIvgS7kBzJkL2CyzM3p9URRe1XuSK4c7xxVol1G30HmKW0/FtkrQ9An
         fSPM38RBjJbm9z0yB5oVYrbY5sRppU7/e0h+Pm/zXNlwEnEJWSV5QJjjH4tKXxdFi3S4
         xIOm7briW1DQJusAwcbL6NGDugS/efnIAfYxN4j73g5zZGVS5M0z2tRHOklbQDyFykPN
         vqIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c6aEUd2HwY01Z/Ayysg23IOPYksH4V6g17VAVrgQgx8=;
        b=urSG3TExBKTgtmvjYhodm8Io+OwZFC9bap2W8na4feeU+m9ABhLrQxUbjr6cVNR0+2
         ptssIWvgFVY46bp2oCmHPPL4pFZa4xddhczDISfAtrTdCGaoP32ErosTMUbKcKz/ygdv
         3lP7c9IxoHxLKpKAS21mSuNbrNwC4s40OVjzffBMwWndKBNuOxYny2QKMmOa7ElECkL9
         282aZz0a6MdEJ9zLYFds9iz3mgaxheJMXZ2Cq+1yLj61QRRGo0/nIQ+u49wFw5ZprnyS
         3qtLC4KroWKUhNsNxD9LEf8jFBF2pSX4rSYHIsrYgEZ4LsAlile7DO2g/9L81oDeKVFD
         4xrQ==
X-Gm-Message-State: AOAM531dugv294TnSE4c0azBH2UioYPOHy0Mz15+D3ZqtU2baae9VtLz
        IHwnbpenvfHJCkz4NNzsDokapw==
X-Google-Smtp-Source: ABdhPJwc8lEqPa56iPaIxhTGB31XNo6PyIYeb5DupNo7mYfqTQjOKAVOAv57R7W4kjXKcWpmxkcP3A==
X-Received: by 2002:ac8:5fd3:0:b0:2de:9f95:8eae with SMTP id k19-20020ac85fd3000000b002de9f958eaemr370759qta.217.1646424639864;
        Fri, 04 Mar 2022 12:10:39 -0800 (PST)
Received: from rivos-atish.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id 20-20020ac84e94000000b002de8f564305sm4605481qtp.1.2022.03.04.12.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 12:10:39 -0800 (PST)
From:   Atish Patra <atishp@rivosinc.com>
To:     linux-kernel@vger.kernel.org
Cc:     Atish Patra <atishp@rivosinc.com>,
        Atish Patra <atishp@atishpatra.org>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: [RFC PATCH v2 1/7] RISC-V: Add SSTC extension CSR details
Date:   Fri,  4 Mar 2022 12:10:14 -0800
Message-Id: <20220304201020.810380-2-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220304201020.810380-1-atishp@rivosinc.com>
References: <20220304201020.810380-1-atishp@rivosinc.com>
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

This patch just introduces the required CSR fields related to the
SSTC extension.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index ae711692eec9..8f37c063a205 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -165,6 +165,9 @@
 #define CSR_SIP			0x144
 #define CSR_SATP		0x180
 
+#define CSR_STIMECMP		0x14D
+#define CSR_STIMECMPH		0x15D
+
 #define CSR_VSSTATUS		0x200
 #define CSR_VSIE		0x204
 #define CSR_VSTVEC		0x205
@@ -174,6 +177,8 @@
 #define CSR_VSTVAL		0x243
 #define CSR_VSIP		0x244
 #define CSR_VSATP		0x280
+#define CSR_VSTIMECMP		0x24D
+#define CSR_VSTIMECMPH		0x25D
 
 #define CSR_HSTATUS		0x600
 #define CSR_HEDELEG		0x602
@@ -189,6 +194,8 @@
 #define CSR_HTINST		0x64a
 #define CSR_HGATP		0x680
 #define CSR_HGEIP		0xe12
+#define CSR_HENVCFG		0x60A
+#define CSR_HENVCFGH		0x61A
 
 #define CSR_MSTATUS		0x300
 #define CSR_MISA		0x301
@@ -247,6 +254,10 @@
 #define IE_TIE		(_AC(0x1, UL) << RV_IRQ_TIMER)
 #define IE_EIE		(_AC(0x1, UL) << RV_IRQ_EXT)
 
+/* ENVCFG related bits */
+#define HENVCFG_STCE	63
+#define HENVCFGH_STCE	31
+
 #ifndef __ASSEMBLY__
 
 #define csr_swap(csr, val)					\
-- 
2.30.2

