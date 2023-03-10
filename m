Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BCB76B3B4B
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 10:49:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231151AbjCJJta (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 04:49:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231370AbjCJJtO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 04:49:14 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC30B3B3CF
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:48:51 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id l7-20020a05600c4f0700b003e79fa98ce1so3020891wmq.2
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 01:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112; t=1678441727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tGavHCNEAmB3AhZu0LKzFHubCv5xCdNflVD0ekR4UY0=;
        b=nEDaPnA8Ty4PvBzODbwL6B2sTto11mRsb4Jzs2H7G9p6A7ZKSNrhnk3x4BOWFO5NAM
         I/78Se50og1itnoiMPakGj3AveG31x2j6/j/50CVZh8lwbX6MQDYxcf8yYxVJoMofzOn
         So11W4KjPW25NSlFIH8QkPFlfV0uo7dzOyl980DN9KkNz+cd36ioi6QDF2EBD7bd5PyU
         POxxiU/fHG2HLQE58X+B7ZTBTf7m1Ez0P/WNGhmIjfMIHPth9RdlR4D0u/Oxg4pQMLp3
         2eK+lEAa5joep7xYw4om/Il1YLWfTzdepO6+BmZdGMIWNwLKWLRg8ZeFmMq9uBF+PfuR
         4knQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678441727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tGavHCNEAmB3AhZu0LKzFHubCv5xCdNflVD0ekR4UY0=;
        b=YY+xqTD58H1SHTsevKzf9iksXULmGX/OtgQiWFR8BPN/LjxRvIy5FE6S+Np3TrHYNX
         Gg04NqTvw4+zPZQuP+cPypEcZG5FBV234voWXsCAseO6vSLSC7K720zJeJP09RgdiUAM
         c4u5YLdY4BRHrgpiRYL6bpfDl+mqZJMco9f1o+DrVhfyxX24BxvrfYkXjU5WwTbk3Umr
         4IC46NAhYPJ9Ro9SXPHHequwDS1v9vEXG4RpozYDGs5NrsHPAOSHhirKpfp+o/pnX/aU
         iYaEuoUChCA9kADbNmHpiIvHBRvVdTHafXnTiwmuYf/vu8mc+duz0lf8HVsAGHyzZA7C
         yU7g==
X-Gm-Message-State: AO0yUKWEiTHy3jtwGVgWaS2pxCANeLtN39PV0jsNybPLT+AByeNcOk8A
        8+4q0w9SD26K4EBewGjvs7fCfw==
X-Google-Smtp-Source: AK7set+y/rX3YhT007UnAYJB6sfLfhyhEqqnKFykNxvLHTsOstaKSQULB4uzAM12oQybO0ImSo5iuQ==
X-Received: by 2002:a05:600c:b8a:b0:3eb:578d:ded3 with SMTP id fl10-20020a05600c0b8a00b003eb578dded3mr1976475wmb.35.1678441727129;
        Fri, 10 Mar 2023 01:48:47 -0800 (PST)
Received: from alex-rivos.ba.rivosinc.com (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id m21-20020a7bcb95000000b003dc5b59ed7asm1572826wmi.11.2023.03.10.01.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 01:48:46 -0800 (PST)
From:   Alexandre Ghiti <alexghiti@rivosinc.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Mike Rapoport <rppt@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Anup Patel <anup@brainfault.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-mm@kvack.org
Cc:     Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: [PATCH v7 3/4] arm64: Make use of memblock_isolate_memory for the linear mapping
Date:   Fri, 10 Mar 2023 10:45:38 +0100
Message-Id: <20230310094539.764357-4-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230310094539.764357-1-alexghiti@rivosinc.com>
References: <20230310094539.764357-1-alexghiti@rivosinc.com>
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

In order to isolate the kernel text mapping, we used some sort of hack
to isolate the kernel text range which consisted in marking this region
as not mappable with memblock_mark_nomap. Simply use the newly introduced
memblock_isolate_memory function which does exactly the same but does not
uselessly mark the region as not mappable.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
---
 arch/arm64/mm/mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 6f9d8898a025..408dc852805c 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -552,7 +552,7 @@ static void __init map_mem(pgd_t *pgdp)
 	 * So temporarily mark them as NOMAP to skip mappings in
 	 * the following for-loop
 	 */
-	memblock_mark_nomap(kernel_start, kernel_end - kernel_start);
+	memblock_isolate_memory(kernel_start, kernel_end - kernel_start);
 
 #ifdef CONFIG_KEXEC_CORE
 	if (crash_mem_map) {
@@ -568,6 +568,7 @@ static void __init map_mem(pgd_t *pgdp)
 	for_each_mem_range(i, &start, &end) {
 		if (start >= end)
 			break;
+
 		/*
 		 * The linear map must allow allocation tags reading/writing
 		 * if MTE is present. Otherwise, it has the same attributes as
@@ -589,7 +590,6 @@ static void __init map_mem(pgd_t *pgdp)
 	 */
 	__map_memblock(pgdp, kernel_start, kernel_end,
 		       PAGE_KERNEL, NO_CONT_MAPPINGS);
-	memblock_clear_nomap(kernel_start, kernel_end - kernel_start);
 
 	/*
 	 * Use page-level mappings here so that we can shrink the region
-- 
2.37.2

