Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34E0A523E74
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 22:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231820AbiEKULl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 16:11:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347637AbiEKULO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 16:11:14 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49BA244A28
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 13:11:14 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id l20-20020a17090a409400b001dd2a9d555bso3062392pjg.0
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 13:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=79gRXq38qdrOQl0EcXPRdMJlxIPQmIOrQMYd8f2rlaM=;
        b=4ILcnhhEsX0Vo0b8L3zzsVOnNHjiQnAr6Dt4gu39G/CtR9hd0G+eF/ZRGrHpHhkU3H
         +TjhXaGxGN5fYgjeVEeCVpP4ZtEXp5+9JZyZMUDf/wXuckRffvgtiBNukYCdPTtbWx7k
         lh6hMQuRGpYZQ9l9h2+PGT/ePKJDAJBNnWR11LKSIiPgqbw8KilrCQaH+3zxy5tuVvXW
         mh/TJpJBDiIdWr1IvaXIKN5YPZWNhXpWoGFFbe3Qn5yNppaoYtamNCTeenJfKKuPSggt
         XE8X1ozK/QX+IPLKpSvRk4YXgBQ7qiYcVcYkus+rdGUy8A6WNYyWZg6jvm/fkvGpNbVQ
         ZFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=79gRXq38qdrOQl0EcXPRdMJlxIPQmIOrQMYd8f2rlaM=;
        b=mnURmroaaPWDE5KmrDAJmOsB2pg2QKLhRovlBdgdachtQjRSffNIZpBb2jno8UAp7R
         ZIdwYcXv5g0LvVmpt38eqYdHtkjOFY7BsM4MJ/FuwSkFlCfOW35D+2PFFwjenKeFasOg
         6Y17ao321O8MJ+1r7S9+YOuSoMf37Hlya2/EB2YMWO1nKi9V/GNyZ7eNCyeQmqd43IS9
         bWhtOx0MFPbnYjD2MrDNT2Y127KD0bhLx9rUb0iUF2jzk+EhoJuzrN2eKvsfUsYuCk/8
         JHVuMyDgjNzU97JBxhC4bi52d3KC65u4fvyv9Lt4uCGSeYeuet/ZoueD4j18AMwlKVwp
         H0oQ==
X-Gm-Message-State: AOAM5310g82QK7nDzu1ArGTKwv/zxL5jfizBnOKuefwz4oE+yZ3MyB3b
        nXOVFqLdCgVVAlHCPuuXVQurVg==
X-Google-Smtp-Source: ABdhPJy7e/7Koc2I2MLGEhSh3Ggrbgf6vevcpUohB0dbVeRllc5YgAvBI/4++3Ik/MYFGC07zoQasQ==
X-Received: by 2002:a17:90a:4983:b0:1d9:ef5:29f with SMTP id d3-20020a17090a498300b001d90ef5029fmr7153299pjh.67.1652299873822;
        Wed, 11 May 2022 13:11:13 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902c2cd00b0015e8d4eb2e5sm2259005pla.303.2022.05.11.13.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 13:11:13 -0700 (PDT)
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
Subject: [PATCH 2/2] RISC-V: Update user page mapping only once during start
Date:   Wed, 11 May 2022 13:11:07 -0700
Message-Id: <20220511201107.2311757-2-atishp@rivosinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511201107.2311757-1-atishp@rivosinc.com>
References: <20220511201107.2311757-1-atishp@rivosinc.com>
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

Currently, riscv_pmu_event_set_period updates the userpage mapping.
However, the caller of riscv_pmu_event_set_period should update
the userpage mapping because the counter can not be updated/started
from set_period function in counter overflow path.

Invoke the perf_event_update_userpage at the caller so that it
doesn't get invoked twice during counter start path.

Fixes: f5bfa23f576f ("RISC-V: Add a perf core library for pmu drivers")

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 drivers/perf/riscv_pmu.c     | 1 -
 drivers/perf/riscv_pmu_sbi.c | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/perf/riscv_pmu.c b/drivers/perf/riscv_pmu.c
index b2b8d2074ed0..130b9f1a40e0 100644
--- a/drivers/perf/riscv_pmu.c
+++ b/drivers/perf/riscv_pmu.c
@@ -170,7 +170,6 @@ int riscv_pmu_event_set_period(struct perf_event *event)
 		left = (max_period >> 1);
 
 	local64_set(&hwc->prev_count, (u64)-left);
-	perf_event_update_userpage(event);
 
 	return overflow;
 }
diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
index 24cea59612be..2eac5db2cc18 100644
--- a/drivers/perf/riscv_pmu_sbi.c
+++ b/drivers/perf/riscv_pmu_sbi.c
@@ -527,6 +527,7 @@ static inline void pmu_sbi_start_overflow_mask(struct riscv_pmu *pmu,
 			init_val = local64_read(&hwc->prev_count) & max_period;
 			sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_START, idx, 1,
 				  flag, init_val, init_val >> 32, 0);
+			perf_event_update_userpage(event);
 		}
 		ctr_ovf_mask = ctr_ovf_mask >> 1;
 		idx++;
-- 
2.25.1

