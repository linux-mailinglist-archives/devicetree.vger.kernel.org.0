Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8247A523E75
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 22:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235778AbiEKULm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 16:11:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347636AbiEKULO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 16:11:14 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1123F44766
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 13:11:13 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d25so2893500pfo.10
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 13:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uHI42L1gavukyJJ1KaKxOCH5Tc7LTCJwrgzmo7gt+ic=;
        b=CEnMlJz8RXwI1S1rRNYUHG8Wa9Fd9wdk3GcqUX3T6ZUKNP1zj6Bmc1A+yJqZswX752
         RqFVwmq5HfEaZdJ4WhyLAsjibiPeAkeBU1i0NWItqFrCO4QR2sfXQ1YpkyqCz+HXemLv
         GH1RZhqVGNf11iQygLdb3UoSuoJSgpztZscPBUZhUsDPh6KAjL+8YaL6fo2CzZEXClrE
         P+F8ulhEdJrmMXuGqfHTt5MU27wE3NF+LSzQS2hvtyESprlM1nUt2KJt43fNzqKuF/YM
         fUhILt1tkCXbj6Nj1W4JBnSz2rULdW0pbRqTKw9ZOYXtOCM1Ef3/e1Ukq3rgVBHEBw1y
         ShMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uHI42L1gavukyJJ1KaKxOCH5Tc7LTCJwrgzmo7gt+ic=;
        b=5ps6XjjdOehp3kS85byp6GvS3CLmWCNk1COHU18L+1SM2YJswhrIml0jPyORsGnvhK
         iK3WLnnBhNWsqHRvYPqw+AwC1VQj68yZ3xKZHiGL488ibD95KMTKLH/lMrSMb2SfJBJ7
         3L6DJUQE6ONWgKpAU21uvwQ5ElRh78Qoh1FcyDvHrJWqGlz4iMsv9pyLlLA0WzNq9z2L
         DBVKDuqvg9ARTvUJSvG54GG/L1HXkG0kIaas2Yxpir85V8t8lSXNCAxkv/VYXQG/LHn3
         DtDR+kldLnNG3YT7y6mnmxEo3Pb7LGSjaFneSTDjo00i9CcfrG6w04Obkz9zC3GKbKKx
         OpeA==
X-Gm-Message-State: AOAM5316VlaKhsoJYpgE2HmGpZRv41oRJQKYvQPboRTkftl2qdNy4ZXu
        YmScTyADIQdTwiprNa7Z1ipR+A==
X-Google-Smtp-Source: ABdhPJxZo3l4QSHHKIjLb5Kep83BUBaCLt4ROcFAozCa4OPaPAafueGKZdyhwYYs+u+RkiK76fP3Ug==
X-Received: by 2002:a63:6886:0:b0:3c5:11f4:f055 with SMTP id d128-20020a636886000000b003c511f4f055mr22407664pgc.44.1652299872589;
        Wed, 11 May 2022 13:11:12 -0700 (PDT)
Received: from atishp.ba.rivosinc.com ([66.220.2.162])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902c2cd00b0015e8d4eb2e5sm2259005pla.303.2022.05.11.13.11.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 13:11:12 -0700 (PDT)
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
Subject: [PATCH 1/2] RISC-V: Fix counter restart during overflow for RV32
Date:   Wed, 11 May 2022 13:11:06 -0700
Message-Id: <20220511201107.2311757-1-atishp@rivosinc.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Pass the upper half of the initial value of the counter correctly
for RV32.

Fixes: 4905ec2fb7e6 ("RISC-V: Add sscofpmf extension support")

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 drivers/perf/riscv_pmu_sbi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
index a1317a483512..24cea59612be 100644
--- a/drivers/perf/riscv_pmu_sbi.c
+++ b/drivers/perf/riscv_pmu_sbi.c
@@ -526,7 +526,7 @@ static inline void pmu_sbi_start_overflow_mask(struct riscv_pmu *pmu,
 			max_period = riscv_pmu_ctr_get_width_mask(event);
 			init_val = local64_read(&hwc->prev_count) & max_period;
 			sbi_ecall(SBI_EXT_PMU, SBI_EXT_PMU_COUNTER_START, idx, 1,
-				  flag, init_val, 0, 0);
+				  flag, init_val, init_val >> 32, 0);
 		}
 		ctr_ovf_mask = ctr_ovf_mask >> 1;
 		idx++;
-- 
2.25.1

