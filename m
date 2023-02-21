Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAB2769E806
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 20:09:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjBUTJa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 14:09:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbjBUTJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 14:09:28 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E3A2F792
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:25 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id cy6so15896980edb.5
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 11:09:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXedayrqa7eBo4rkkBiYovR8Wr8pe4sKgfVmovmcu18=;
        b=j/982Ctm96sVfHm/ro7bM8b7YKU6uEmLnHH3zdFR0JwFQSSlkXrzD+jMoXyli3VYtR
         TtsAXkyj59KhFyyvK+M+XVj1TgJYLsmw/l8bW3OHD0y3porahT8MSEGSpgVLfo1Ra3b+
         CwhBanLhecrJPXkkW6kidWmp+WKCWn0ilAOhBwyvHjGN3XjpTMeaG/qM0jiTcJmJnWHy
         Py6PrxoHnY4wFrz/zGJHmYnPXiOXSkn3BlutKP7hH7fiDQe70ZMrJUpoRSkxTYhmocBh
         bb+gqtQ/z/JVipRnELQd6fIOSwweIhkMAVe5PupX4tanWoik/1vKhPUC0UXVsUBLXtIP
         DF5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GXedayrqa7eBo4rkkBiYovR8Wr8pe4sKgfVmovmcu18=;
        b=14h558SS2nb90QldkRIBtlBfsQApC7YsHXll5tmuPTYKFTMTDQGvEMajy+2xLEUFWc
         Sf+uQeUY9MChVHjkeDr2twC4IWcsULm/0Hr70YMTNkxA3OHRgIR24ZZ4z9fzD/nCRDbx
         NLIKQQbl/mMn9Vlefji5yEyUODxP5J5ZFzELMhlMX8meJdE4AEiHbfV2pKOVFPr30tBU
         j/h5rSdt2amPLQFLrKW13zHUU9bwdKT872KKqcJCwkoCZoDZaV9CyPhFI+EB1RwNZUXn
         luodRmPMPhf75PBZ6IMFFsyBp0CzkhdN46K+e+22S08z30HmQHOWED2EPYTLK06ZLdOU
         /cdQ==
X-Gm-Message-State: AO0yUKUTAA6sWyY6rYd0lUIs4BChFsqbjhufc6BmdBoXAPskBLBPg0ZT
        LFeBmHCQb7WgFrsZK7EQQshJEA==
X-Google-Smtp-Source: AK7set80pg34Z/dTD1nm35A+9eoM84IWV71wFC0+PR8j5t8jwA+a78wLQabIFXgkq+hRLQaeiCQT/w==
X-Received: by 2002:a17:907:d25:b0:878:5c36:a14a with SMTP id gn37-20020a1709070d2500b008785c36a14amr19466820ejc.23.1677006563769;
        Tue, 21 Feb 2023 11:09:23 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id y14-20020a1709064b0e00b008c979c74732sm3931632eju.156.2023.02.21.11.09.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 11:09:23 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        kvm-riscv@lists.infradead.org
Cc:     'Rob Herring ' <robh@kernel.org>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Ben Dooks ' <ben.dooks@codethink.co.uk>,
        'Atish Patra ' <atishp@rivosinc.com>
Subject: [PATCH v5 4/8] RISC-V: Add Zicboz detection and block size parsing
Date:   Tue, 21 Feb 2023 20:09:12 +0100
Message-Id: <20230221190916.572454-5-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230221190916.572454-1-ajones@ventanamicro.com>
References: <20230221190916.572454-1-ajones@ventanamicro.com>
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

Parse "riscv,cboz-block-size" from the DT by piggybacking on Zicbom's
riscv_init_cbom_blocksize(). Additionally check the DT for the presence
of the "zicboz" extension and, when it's present, validate the parsed
cboz block size as we do Zicbom's cbom block size with
riscv_isa_extension_check().

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/cacheflush.h |  3 ++-
 arch/riscv/include/asm/hwcap.h      |  1 +
 arch/riscv/kernel/cpu.c             |  1 +
 arch/riscv/kernel/cpufeature.c      | 10 ++++++++++
 arch/riscv/kernel/setup.c           |  2 +-
 arch/riscv/mm/cacheflush.c          | 23 +++++++++++++++--------
 6 files changed, 30 insertions(+), 10 deletions(-)

diff --git a/arch/riscv/include/asm/cacheflush.h b/arch/riscv/include/asm/cacheflush.h
index 03e3b95ae6da..8091b8bf4883 100644
--- a/arch/riscv/include/asm/cacheflush.h
+++ b/arch/riscv/include/asm/cacheflush.h
@@ -50,7 +50,8 @@ void flush_icache_mm(struct mm_struct *mm, bool local);
 #endif /* CONFIG_SMP */
 
 extern unsigned int riscv_cbom_block_size;
-void riscv_init_cbom_blocksize(void);
+extern unsigned int riscv_cboz_block_size;
+void riscv_init_cbo_blocksizes(void);
 
 #ifdef CONFIG_RISCV_DMA_NONCOHERENT
 void riscv_noncoherent_supported(void);
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index ee9c80fe0062..bd025e918a08 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -47,6 +47,7 @@
 #define RISCV_ISA_EXT_ZBB              30
 #define RISCV_ISA_EXT_ZICBOM           31
 #define RISCV_ISA_EXT_ZIHINTPAUSE      32
+#define RISCV_ISA_EXT_ZICBOZ           33
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/riscv/kernel/cpu.c b/arch/riscv/kernel/cpu.c
index 420228e219f7..7a3065544dcb 100644
--- a/arch/riscv/kernel/cpu.c
+++ b/arch/riscv/kernel/cpu.c
@@ -187,6 +187,7 @@ arch_initcall(riscv_cpuinfo_init);
 static struct riscv_isa_ext_data isa_ext_arr[] = {
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zicbom, RISCV_ISA_EXT_ZICBOM),
+	__RISCV_ISA_EXT_DATA(zicboz, RISCV_ISA_EXT_ZICBOZ),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 151e1a715db9..6102b6bb5db3 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -73,6 +73,15 @@ static bool riscv_isa_extension_check(int id)
 			return false;
 		}
 		return true;
+	case RISCV_ISA_EXT_ZICBOZ:
+		if (!riscv_cboz_block_size) {
+			pr_err("Zicboz detected in ISA string, but no cboz-block-size found\n");
+			return false;
+		} else if (!is_power_of_2(riscv_cboz_block_size)) {
+			pr_err("cboz-block-size present, but is not a power-of-2\n");
+			return false;
+		}
+		return true;
 	}
 
 	return true;
@@ -221,6 +230,7 @@ void __init riscv_fill_hwcap(void)
 				SET_ISA_EXT_MAP("svpbmt", RISCV_ISA_EXT_SVPBMT);
 				SET_ISA_EXT_MAP("zbb", RISCV_ISA_EXT_ZBB);
 				SET_ISA_EXT_MAP("zicbom", RISCV_ISA_EXT_ZICBOM);
+				SET_ISA_EXT_MAP("zicboz", RISCV_ISA_EXT_ZICBOZ);
 				SET_ISA_EXT_MAP("zihintpause", RISCV_ISA_EXT_ZIHINTPAUSE);
 			}
 #undef SET_ISA_EXT_MAP
diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
index 376d2827e736..5d3184cbf518 100644
--- a/arch/riscv/kernel/setup.c
+++ b/arch/riscv/kernel/setup.c
@@ -297,7 +297,7 @@ void __init setup_arch(char **cmdline_p)
 	setup_smp();
 #endif
 
-	riscv_init_cbom_blocksize();
+	riscv_init_cbo_blocksizes();
 	riscv_fill_hwcap();
 	apply_boot_alternatives();
 	if (IS_ENABLED(CONFIG_RISCV_ISA_ZICBOM) &&
diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
index eaf23fc14966..ba4832bb949b 100644
--- a/arch/riscv/mm/cacheflush.c
+++ b/arch/riscv/mm/cacheflush.c
@@ -98,6 +98,9 @@ void flush_icache_pte(pte_t pte)
 unsigned int riscv_cbom_block_size;
 EXPORT_SYMBOL_GPL(riscv_cbom_block_size);
 
+unsigned int riscv_cboz_block_size;
+EXPORT_SYMBOL_GPL(riscv_cboz_block_size);
+
 static void cbo_get_block_size(struct device_node *node,
 			       const char *name, u32 *block_size,
 			       unsigned long *first_hartid)
@@ -120,19 +123,23 @@ static void cbo_get_block_size(struct device_node *node,
 	}
 }
 
-void riscv_init_cbom_blocksize(void)
+void riscv_init_cbo_blocksizes(void)
 {
+	unsigned long cbom_hartid, cboz_hartid;
+	u32 cbom_block_size = 0, cboz_block_size = 0;
 	struct device_node *node;
-	unsigned long cbom_hartid;
-	u32 probed_block_size;
 
-	probed_block_size = 0;
 	for_each_of_cpu_node(node) {
-		/* set block-size for cbom extension if available */
+		/* set block-size for cbom and/or cboz extension if available */
 		cbo_get_block_size(node, "riscv,cbom-block-size",
-				   &probed_block_size, &cbom_hartid);
+				   &cbom_block_size, &cbom_hartid);
+		cbo_get_block_size(node, "riscv,cboz-block-size",
+				   &cboz_block_size, &cboz_hartid);
 	}
 
-	if (probed_block_size)
-		riscv_cbom_block_size = probed_block_size;
+	if (cbom_block_size)
+		riscv_cbom_block_size = cbom_block_size;
+
+	if (cboz_block_size)
+		riscv_cboz_block_size = cboz_block_size;
 }
-- 
2.39.1

