Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5F8757EB21
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 03:54:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236925AbiGWByA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 21:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237002AbiGWBxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 21:53:55 -0400
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DB1EBA4DC
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 18:53:41 -0700 (PDT)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-31cdce3ed04so51807067b3.13
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 18:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=QzVlb8qpExa5uUedfnq5+iu4UDDUWMU5VkWdWsn02VU=;
        b=EQ6PtzwOdEHEABoyy6OuSzp7qYw4y6N5wBrufelHeYXwo1W09/iCMaOl5JqQ5JinYS
         Hwj/otSOhvtAXXr+HylbgzHrTTXP9M7R3vdzkg9YE6CSGtrHeW0oZSxSxY2vcfS9BUNN
         8JJH5Du7lQz6KTZqRqpNKUUNQKM9SWJxjRkaxexKiOwlNSPI2jbVDPLR6mNfiuRWTSEZ
         1cUJB3xaOHJ283IsF+6PIXpcLIDdJaiwL6zQKopaoT1ry7LPKRewkaXAJ8xgIThfN7SO
         9Gfq0HgWbxMAEFVLGpnpoPnXgrDE24wRfqCpakD1SL+wleRkxyy2AkOdlg2RYnohUSe5
         zQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=QzVlb8qpExa5uUedfnq5+iu4UDDUWMU5VkWdWsn02VU=;
        b=YtaMSvC1zJvMO5raTZIXY0duq+3o2W7arG6aCBYs5/jNuGVw5jIEZ61w7+vCIfNIN2
         blrx3M9WRKdgWh6pexRHjI1ah/8ihrQGwrnOz+NOSrk1P5kyfAGNMokd/cc2mFr4vEBo
         ibO9cneSXDoQTy1XqnDDZu8u5ATh4qkFOsng4OsBlJkkjlWAydKq74kHbK7k5VJPMg42
         CTAoh2FN+cyfoxy9ulD12g4UeaQDQWJazZhSuwMvM5uKHlDKA1py9BydfU1RxSfEHQct
         YqaBbZPWrZERqcjfW5UBdmhwqikgc3Q+JLJ2HaERnuKT5CyGqmGJW6AXo8W9IIwXq/o3
         AA7A==
X-Gm-Message-State: AJIora/fafdC1yXT2mfCjdP6nhDQWuIQdeZydoQCA3WOjT6VsUGF1tQO
        N9EiAkfbWY1QSHZ2PN19sFsX8e4=
X-Google-Smtp-Source: AGRyM1tVcqNkVZYGojbcmD7lQ2+N12RkCDbcUNv/niNww7XOfScR5g01ii92VGPPiFLionB4KtJOLH0=
X-Received: from pcc-desktop.svl.corp.google.com ([2620:15c:2ce:200:2571:bd04:907d:d32f])
 (user=pcc job=sendgmr) by 2002:a81:4746:0:b0:31e:a8fc:5db2 with SMTP id
 u67-20020a814746000000b0031ea8fc5db2mr2210782ywa.395.1658541220146; Fri, 22
 Jul 2022 18:53:40 -0700 (PDT)
Date:   Fri, 22 Jul 2022 18:53:31 -0700
Message-Id: <20220723015331.1607029-1-pcc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
Subject: [PATCH] of/fdt: Clean up early_init_dt_reserve_memory_arch()
From:   Peter Collingbourne <pcc@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Peter Collingbourne <pcc@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As of commit 18250b43f7b6 ("of: fdt: Remove
early_init_dt_reserve_memory_arch() override capability") this is
no longer an arch hook, so rename it to remove the confusing _arch
suffix. Also remove some unnecessary indirection from all but one of
the callers by calling memblock_reserve() directly instead.

Signed-off-by: Peter Collingbourne <pcc@google.com>
Link: https://linux-review.googlesource.com/id/I3362bdd92ae6e47e8f5bac01aa228d32f9d01aad
---
 drivers/of/fdt.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index a8f5b6532165..ac43f1788c1b 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -477,8 +477,8 @@ void *initial_boot_params __ro_after_init;
 
 static u32 of_fdt_crc32;
 
-static int __init early_init_dt_reserve_memory_arch(phys_addr_t base,
-					phys_addr_t size, bool nomap)
+static int __init early_init_dt_reserve_memory(phys_addr_t base,
+					       phys_addr_t size, bool nomap)
 {
 	if (nomap) {
 		/*
@@ -525,7 +525,7 @@ static int __init __reserved_mem_reserve_reg(unsigned long node,
 		size = dt_mem_next_cell(dt_root_size_cells, &prop);
 
 		if (size &&
-		    early_init_dt_reserve_memory_arch(base, size, nomap) == 0) {
+		    early_init_dt_reserve_memory(base, size, nomap) == 0) {
 			pr_debug("Reserved memory: reserved region for node '%s': base %pa, size %lu MiB\n",
 				uname, &base, (unsigned long)(size / SZ_1M));
 			if (!nomap)
@@ -644,7 +644,7 @@ void __init early_init_fdt_scan_reserved_mem(void)
 		fdt_get_mem_rsv(initial_boot_params, n, &base, &size);
 		if (!size)
 			break;
-		early_init_dt_reserve_memory_arch(base, size, false);
+		memblock_reserve(base, size);
 	}
 
 	fdt_scan_reserved_mem();
@@ -661,9 +661,8 @@ void __init early_init_fdt_reserve_self(void)
 		return;
 
 	/* Reserve the dtb region */
-	early_init_dt_reserve_memory_arch(__pa(initial_boot_params),
-					  fdt_totalsize(initial_boot_params),
-					  false);
+	memblock_reserve(__pa(initial_boot_params),
+			 fdt_totalsize(initial_boot_params));
 }
 
 /**
-- 
2.37.1.359.gd136c6c3e2-goog

