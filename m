Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6959D611E07
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 01:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbiJ1XTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 19:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229647AbiJ1XTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 19:19:42 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DC76E09B
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:19:41 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id e129so6058843pgc.9
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 16:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vdbgZ8+Fu6n0HK4tgOaOYq43eN2AjNjj/Lhga+VAiyM=;
        b=aMw3oUjEz8KxyX5NRy8i43+HJNi8jXjsGtcRnti8nSdP4d/D/7x/NYETkIaL+23EEd
         37AA/MvumskK4g5anPHvbmKTEazSBxU8xWFpbfzNfVoHL8XP0rk5+6xe+EiYp19r4lgg
         3E2+1UsnCFUXhBv/6PElhfyEisP2ddRRJSTJQBGQiJch9HkvDg9XowGTYV86BxzccqYz
         woDM+lrq8UDV+DZZ021IjdtLqgVhH6v9U57om+imUTcuJkGHkuke/Q/IBc/q3cH2Vblp
         rbMzYHQKFrzrAiJ7g5Rku+VyVCcvidbHmCvRJM8e14ayWyUZFgykrPs9tabdGTJCZyeb
         IAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vdbgZ8+Fu6n0HK4tgOaOYq43eN2AjNjj/Lhga+VAiyM=;
        b=G+PUlwvcw7HufOK8vzKqv0eyBImparQugYlvLNHxPrFkE3Ep+X3a9iE/DHDRyUqDF7
         ovzVgL7kvjheeXY0rmsZoDG77OeYpbvCfSo00GUplTHTOH5BG+ip3qokUqq7+HDkJ1Ug
         HBV/8M2FXv3ZCuFEoO6yHsCrunCyrkq7RmBNvdenIK7J3N+0dcZ6cL4W+MNktSVyqteh
         WsoVrQmC1J4Amw6mqs4qFP2nKrxVS+zs+QCcXjGmDCYiQbjBPY4YyXRzCWJ1sg1DwL4L
         ufnYJO0MAOci1ANoXazIpEENjH+Du0uuDIMPW2I1YWlL7ieqj5OiwBO5tuxB39hsvJj5
         MbTQ==
X-Gm-Message-State: ACrzQf2wYcm58aDndFTuI6rlka+yky1VjwJCAEmx0bzgfZRq0jAb96w7
        Gl6ANeWJ8Hr5KeQUyCljcss04g==
X-Google-Smtp-Source: AMsMyM7kBxRafshIfMOooOPKNBPhtCi9z2rUeho/arEVqJ9+3KvlGJVZHHufukrQPzCdagMN4rm8IQ==
X-Received: by 2002:a63:69c2:0:b0:46a:eeb1:e784 with SMTP id e185-20020a6369c2000000b0046aeeb1e784mr1617170pgc.589.1666999180528;
        Fri, 28 Oct 2022 16:19:40 -0700 (PDT)
Received: from rivos-atish.hq.rivosinc.com ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id jb5-20020a170903258500b00176ea6ce0efsm1335plb.109.2022.10.28.16.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 16:19:40 -0700 (PDT)
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
Subject: [PATCH] RISC-V: Do not issue remote fences until smp is available
Date:   Fri, 28 Oct 2022 16:19:29 -0700
Message-Id: <20221028231929.347918-1-atishp@rivosinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is useless to issue remote fences if there is a single core
available. It becomes a bottleneck for sbi based rfences where
we will be making those ECALLs for no reason. Early code patching
because of static calls end up in this path.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/mm/cacheflush.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index f10cb47eac3a..7fafc8c26505 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -19,6 +19,10 @@ void flush_icache_all(void)
 {
 	local_flush_icache_all();
 
+	/* No need to issue remote fence if only 1 cpu is online */
+	if (num_online_cpus() == 1)
+		return;
+
 	if (IS_ENABLED(CONFIG_RISCV_SBI) && !riscv_use_ipi_for_rfence())
 		sbi_remote_fence_i(NULL);
 	else
-- 
2.34.1

