Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8600220370
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 12:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727046AbfEPK2w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 06:28:52 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:39306 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726573AbfEPK2w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 06:28:52 -0400
Received: by mail-pl1-f196.google.com with SMTP id g9so1413063plm.6
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 03:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g6nTVnaTPu6u0ik4+YTeRCBKr6f5B4jeaBgRZ5SbxTw=;
        b=ZQ/kc6aBkZflGhXSDxDpSNRqmjhb6N9q0F7lksh1UBLl2/I6uLpMJ2EFTj5RVV6ZxA
         IcqVwlZFK1fgG3i5YsdnWHnSvAe8T4bmzMowpcI9tL+lc9gEd+w3HwFB2PVGkTmHiNqw
         kznERwYCaREsUwnxdTq4nxj3gvx3GkByAOgng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g6nTVnaTPu6u0ik4+YTeRCBKr6f5B4jeaBgRZ5SbxTw=;
        b=U0aT6P3Eglt8wkVud5AX/WgvZ11NOQ0By/B9f2EeZqT8m/HxiNPL2BLJAo2JQFyo3j
         dXrfjc0Z/EcWisEVsPpbAT9ZD1PyoXPycaZ75PM4+MHJLh3uRJJ5mVDeIf1cjbmQsRQs
         w7RDZ06dBeBfWIsbgxz4tEQ1jY2TwnTMX5FML8hyUhIrgfE1b3FpKzr4Mzb7Yg0gnl8p
         tt6F5r0gqQvELjvq4n9GJnC3n0do5cPye47UTAYW5/s9K+0gFGq+mhtLgKFohnu1W4pH
         czeTglJjcXhGdPQm4SE8Digi/JSu0braEYI4vG1OEqSL0BfLNzRaoGZ4R+xv0DhlzvCM
         UkuQ==
X-Gm-Message-State: APjAAAUunpGy4ts1f5Foxs3l2xFa0ulKu8zcQchW1cwvQPt7s3Txnx3r
        AaLefmOh3mHIdd1hZcdGavmQ6w==
X-Google-Smtp-Source: APXvYqz6D4VCan2gvNE8/0EMna/+ZpJBgnCigTNFcMqpDIsMc91bUoTxMOxk4U2jcWrjaJnlZy8LoA==
X-Received: by 2002:a17:902:9a81:: with SMTP id w1mr47668258plp.71.1558002531758;
        Thu, 16 May 2019 03:28:51 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id h123sm9338048pfe.80.2019.05.16.03.28.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 May 2019 03:28:51 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Chintan Pandya <cpandya@codeaurora.org>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Subject: [PATCH v3 2/3] arm64: implement update_fdt_pgprot()
Date:   Thu, 16 May 2019 18:28:16 +0800
Message-Id: <20190516102817.188519-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516102817.188519-1-hsinyi@chromium.org>
References: <20190516102817.188519-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Basically does similar things like __fixmap_remap_fdt(). It's supposed
to be called after fixmap_remap_fdt() is called at least once, so region
checking can be skipped. Since it needs to know dt physical address, make
a copy of the value of __fdt_pointer.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/kernel/setup.c |  2 ++
 arch/arm64/mm/mmu.c       | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..207cbb5f7965 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -66,6 +66,7 @@ static int num_standard_resources;
 static struct resource *standard_resources;
 
 phys_addr_t __fdt_pointer __initdata;
+phys_addr_t fdt_pointer;
 
 /*
  * Standard memory resources
@@ -292,6 +293,7 @@ void __init setup_arch(char **cmdline_p)
 	early_fixmap_init();
 	early_ioremap_init();
 
+	fdt_pointer = __fdt_pointer;
 	setup_machine_fdt(__fdt_pointer);
 
 	parse_early_param();
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a170c6369a68..196ab4d9e92a 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -32,6 +32,7 @@
 #include <linux/io.h>
 #include <linux/mm.h>
 #include <linux/vmalloc.h>
+#include <linux/of_fdt.h>
 
 #include <asm/barrier.h>
 #include <asm/cputype.h>
@@ -953,6 +954,22 @@ void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
 	return dt_virt;
 }
 
+extern phys_addr_t fdt_pointer;
+
+/* Should be called after fixmap_remap_fdt() is called. */
+void update_fdt_pgprot(pgprot_t prot)
+{
+	u64 dt_virt_base = __fix_to_virt(FIX_FDT);
+	int offset, size;
+
+	offset = fdt_pointer % SWAPPER_BLOCK_SIZE;
+	size = fdt_totalsize((void *)dt_virt_base + offset);
+
+	update_mapping_prot(round_down(fdt_pointer, SWAPPER_BLOCK_SIZE),
+			dt_virt_base,
+			round_up(offset + size, SWAPPER_BLOCK_SIZE), prot);
+}
+
 int __init arch_ioremap_pud_supported(void)
 {
 	/* only 4k granule supports level 1 block mappings */
-- 
2.20.1

