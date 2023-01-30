Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCCFF68079A
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 09:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235394AbjA3IkW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 03:40:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235734AbjA3IkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 03:40:21 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD4C5241FF
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 00:40:17 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id qw12so13602340ejc.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 00:40:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AxIX14/NNJpn+kwI1pQuHb1Ic9IzDxfIhmP5aAWuxiU=;
        b=SXiIQxbxObyrGGY+xCqVTWXYxnzwfeBg+Ds1QXsGsAGOJRHBCazhcNoYIzzXYAvmoG
         mAz96A64jCnBQZTVZsK5j1qPy9Vs5JB6+OGlKDxICDX90gZEgCufGjZAP9sKAlZtviCq
         Nf/NMRq2Hc6XunTcCs6l4nDXmTu5CH9ZfrTy7xVNMr5Zhzg+07w+25dDx2PYWg9Ueaee
         Piiu3hrVdssYG+TuQuxW/lC2l4nRk+URDclccHUfRdPie+HmksH9YkiLKNX4PyK7uTEq
         AGyyS2LGSh2neu9Qn4oxjAb++jxfz0WXZxgSn0l3avB4uXNluKPB2bwbT+t7m6NO0un7
         WthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AxIX14/NNJpn+kwI1pQuHb1Ic9IzDxfIhmP5aAWuxiU=;
        b=EftXsYJdch9OMaTekYMYZBB3G3bobCHKJHPzNIlJERufLSThljeTVsPI+cPvAM9yJR
         YsdItUKU/KL44PMLK6QDQDevN7Aj+7ridmnabo4ZwZa/90XQOJAdMwy+N+K6HJBi1IfF
         Dq/xUTt/c4pe6Zvw2MWxxAvVec8Hcz0RZv+t5e2w0NDU4T4TA5WyLBMfFkTHC+rFA/Zc
         +SO5Htk4h9/2jeA80AEkeR1lUgJ44xdiV+zf0n6ytV4qyS/RJZDAXzljVli/c2wRQ1g2
         7XOGoR0iNYE+aFojaDDbtPBn1MUfxrGsNFro+8hGW7jXD/zpbSbBhmiQl5TdogGVAzfc
         YnYQ==
X-Gm-Message-State: AO0yUKXAQsBne9wg5nFnTXACfOTzebMGkz5wr2wN7aqQNXR+hqT7RLTN
        yml+qaguCnqUZ7zRZuxCGbGJyAFgFtBc2KCW
X-Google-Smtp-Source: AK7set9y3i6mDjatO9rOdTYsHn4YvbSUVTRb2UeDRi3koMLOuP7UhuAz2Nf/W/+Hd2a8TNHJXgpBhw==
X-Received: by 2002:a17:906:44f:b0:878:8074:713b with SMTP id e15-20020a170906044f00b008788074713bmr13348813eja.53.1675068016290;
        Mon, 30 Jan 2023 00:40:16 -0800 (PST)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id p17-20020a170906b21100b00886c1a02d20sm2210638ejz.47.2023.01.30.00.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 00:40:15 -0800 (PST)
From:   Andrew Jones <ajones@ventanamicro.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     'Will Deacon ' <will@kernel.org>,
        'Frank Rowand ' <frowand.list@gmail.com>,
        'Catalin Marinas ' <catalin.marinas@arm.com>,
        'Alexandre Ghiti ' <alexghiti@rivosinc.com>,
        'Rob Herring ' <robh+dt@kernel.org>
Subject: [PATCH] of: Expose __early_init_dt_declare_initrd as a weak function
Date:   Mon, 30 Jan 2023 09:40:14 +0100
Message-Id: <20230130084014.1024623-1-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.39.1
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

__early_init_dt_declare_initrd is provided by OF as a convenience
for early setup of initrd_start and initrd_end. This is nice for the
large majority of architectures, but arm64 cannot use it, as its early
linear map is too limited to be used to translate the addresses.
Rather than guarding the translations with !CONFIG_ARM64 in OF code,
expose __early_init_dt_declare_initrd as a weak function which
architectures may override. Architectures may prepare a mapping in
their version of the function or, if they know it's safe to defer the
setup until later, they can just provide a stub.

Apply this to arm64 immediately in order to remove the !CONFIG_ARM64
check. riscv64 will also use this after modifying its linear map to
use larger pages.

Note, while this somewhat reverts what commit cdbc848b0341 ("of/fdt:
Remove custom __early_init_dt_declare_initrd() implementation") is
doing, the weak function approach shouldn't have the rebuild noise
that changing CONFIG_BLK_DEV_INITRD was causing before. It is,
however, necessary to duplicate the !CONFIG_BLK_DEV_INITRD check
which early_init_dt_check_for_initrd() has into the newly exposed
function, as the compiler will now treat it independently.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 arch/arm64/kernel/setup.c | 11 +++++++++++
 drivers/of/fdt.c          | 26 +++++++++++++-------------
 include/linux/of_fdt.h    |  2 ++
 3 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 12cfe9d0d3fa..ffdbe6900d8d 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -180,6 +180,17 @@ asmlinkage void __init early_fdt_map(u64 dt_phys)
 	early_fdt_ptr = fixmap_remap_fdt(dt_phys, &fdt_size, PAGE_KERNEL);
 }
 
+void __init early_init_dt_declare_initrd_arch(unsigned long start,
+					      unsigned long end)
+{
+	/*
+	 * Using OF's version of this function would cause ARM64 to BUG when
+	 * CONFIG_DEBUG_VM is enabled, since __va() would be called too early.
+	 * initrd_start and initrd_end will be initialized later in
+	 * arm64_memblock_init()
+	 */
+}
+
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
 	int size;
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index f08b25195ae7..6c555739cf20 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -888,19 +888,19 @@ const void * __init of_flat_dt_match_machine(const void *default_match,
 	return best_data;
 }
 
-static void __early_init_dt_declare_initrd(unsigned long start,
-					   unsigned long end)
+/*
+ * This may be overridden by architectures which do not have a linear map
+ * sufficiently setup this early to simply use __va().
+ */
+void __init __weak early_init_dt_declare_initrd_arch(unsigned long start,
+						     unsigned long end)
 {
-	/* ARM64 would cause a BUG to occur here when CONFIG_DEBUG_VM is
-	 * enabled since __va() is called too early. ARM64 does make use
-	 * of phys_initrd_start/phys_initrd_size so we can skip this
-	 * conversion.
-	 */
-	if (!IS_ENABLED(CONFIG_ARM64)) {
-		initrd_start = (unsigned long)__va(start);
-		initrd_end = (unsigned long)__va(end);
-		initrd_below_start_ok = 1;
-	}
+	if (!IS_ENABLED(CONFIG_BLK_DEV_INITRD))
+		return;
+
+	initrd_start = (unsigned long)__va(start);
+	initrd_end = (unsigned long)__va(end);
+	initrd_below_start_ok = 1;
 }
 
 /**
@@ -930,7 +930,7 @@ static void __init early_init_dt_check_for_initrd(unsigned long node)
 	if (start > end)
 		return;
 
-	__early_init_dt_declare_initrd(start, end);
+	early_init_dt_declare_initrd_arch(start, end);
 	phys_initrd_start = start;
 	phys_initrd_size = end - start;
 
diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
index d69ad5bb1eb1..040ab7e402e0 100644
--- a/include/linux/of_fdt.h
+++ b/include/linux/of_fdt.h
@@ -65,6 +65,8 @@ extern int early_init_dt_scan_chosen_stdout(void);
 extern void early_init_fdt_scan_reserved_mem(void);
 extern void early_init_fdt_reserve_self(void);
 extern void early_init_dt_add_memory_arch(u64 base, u64 size);
+extern void early_init_dt_declare_initrd_arch(unsigned long start,
+					      unsigned long end);
 extern u64 dt_mem_next_cell(int s, const __be32 **cellp);
 
 /* Early flat tree scan hooks */
-- 
2.39.1

