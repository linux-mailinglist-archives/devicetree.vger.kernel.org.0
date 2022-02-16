Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 345DC4B7BEB
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 01:30:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245053AbiBPA3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 19:29:42 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245059AbiBPA3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 19:29:40 -0500
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5003DF70E1
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 16:29:30 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id m25so360356qka.9
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 16:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XiHWj5DVw0A6uknKnudKc4wLSuqR5J1NlVwPb2L6GW0=;
        b=n41wMt8sojwGlqC6Z7nUtCycjyWC9vz1LIB3RrVB9l+PleChAXiYN3rYZtcgXv68r5
         lwMgO6gQ9r4c9m9dBG2ChZ6+7Uc/pJthcMbEg/wqTpBYisTP3m0Aw7avgPCSMuO67EEt
         vtvHg5u2ZDi5R2rgf1u7Mym2krHmO8WLxKvRU8hs//5a5q2CKJwPy+LwwJh/dfFONNUX
         ojJPH2rsitVm4zCAtXU8dtpDC2IPupmM7FTu+DV3w0JCiXshD78B05T9K1CtUmwP6MRL
         1P9qhO1k+GBAjy3Vl01uo7JhQu/fYas/p5uKvlA5XcWPzzUMIFWxzR3AuisW3sApDN8x
         8L9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XiHWj5DVw0A6uknKnudKc4wLSuqR5J1NlVwPb2L6GW0=;
        b=71nAn55nkAl6rxsNlLiZC4g9YUfPUEQvDNoZmACsNqEATuG/mWEHndE8cFhQVJX3YK
         FyfT7QZV308OjDLdVtMEPTxdSEnUMevUtRQFG8+AlMU6gv4KtOdjYl6wuRuyczvD5gyf
         KuC6SMlR7cEeJJwhfxDMki8fVAIJ50s8fpJw3Lqq4xOHy9vLyf/pg1C5YD4PivKiUPTh
         aepqOO7deRPAPkhKkJzM87G+tegA3eucjST0hViq/5LXG3PpMeBdG2TYQbdRqexpf4pD
         4WnMVBLYcL4nYfJhmluD3bP0kenoLMF5tdwIuQGbwJPpqXhR+hRtuiydhSUIS8PMDwWj
         wkpA==
X-Gm-Message-State: AOAM532QzuLEn5aLalMOyZbm+0JV9pZymO5kSjELbXWJtrgtJU9ZYc5L
        20jOFCNg0nyisXTlzz1W0aA3Eg==
X-Google-Smtp-Source: ABdhPJy11Z9r73cJwDFvGnyYg0cympD4CllJQkjIKWB04SZc9QKH7SjSeG/2wPtAFwGR5kdzxKZNdA==
X-Received: by 2002:a05:620a:1708:b0:47b:ad8e:a33f with SMTP id az8-20020a05620a170800b0047bad8ea33fmr190865qkb.553.1644971369510;
        Tue, 15 Feb 2022 16:29:29 -0800 (PST)
Received: from rivos-atish.. (adsl-70-228-75-190.dsl.akrnoh.ameritech.net. [70.228.75.190])
        by smtp.gmail.com with ESMTPSA id g21sm20882584qtb.70.2022.02.15.16.29.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 16:29:29 -0800 (PST)
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
        Paul Walmsley <paul.walmsley@sifive.com>, heiko@sntech.de,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/6] RISC-V: Do no continue isa string parsing without correct XLEN
Date:   Tue, 15 Feb 2022 16:29:10 -0800
Message-Id: <20220216002911.1219593-6-atishp@rivosinc.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220216002911.1219593-1-atishp@rivosinc.com>
References: <20220216002911.1219593-1-atishp@rivosinc.com>
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

The isa string should begin with either rv64 or rv32. Otherwise, it is
an incorrect isa string. Currently, the string parsing continues even if
it doesnot begin with current XLEN.

Fix this by checking if it found "rv64" or "rv32" in the beginning.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/kernel/cpufeature.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 59c70c104256..cb9c9e0aab31 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -84,6 +84,7 @@ void __init riscv_fill_hwcap(void)
 	for_each_of_cpu_node(node) {
 		unsigned long this_hwcap = 0;
 		DECLARE_BITMAP(this_isa, RISCV_ISA_EXT_MAX);
+		const char *temp;
 
 		if (riscv_of_processor_hartid(node) < 0)
 			continue;
@@ -93,6 +94,7 @@ void __init riscv_fill_hwcap(void)
 			continue;
 		}
 
+		temp = isa;
 #if IS_ENABLED(CONFIG_32BIT)
 		if (!strncmp(isa, "rv32", 4))
 			isa += 4;
@@ -100,6 +102,9 @@ void __init riscv_fill_hwcap(void)
 		if (!strncmp(isa, "rv64", 4))
 			isa += 4;
 #endif
+		/* The riscv,isa DT property must start with rv64 or rv32 */
+		if (temp == isa)
+			continue;
 		bitmap_zero(this_isa, RISCV_ISA_EXT_MAX);
 		for (; *isa; ++isa) {
 			const char *ext = isa++;
-- 
2.30.2

