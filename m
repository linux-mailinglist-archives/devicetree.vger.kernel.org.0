Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E383D3F720F
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 11:40:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236546AbhHYJld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 05:41:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236573AbhHYJlc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 05:41:32 -0400
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DE56C0613CF
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 02:40:47 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:fd1d:ce2:c16e:185a])
        by laurent.telenet-ops.be with bizsmtp
        id llgk2500A4wgRL101lgkhE; Wed, 25 Aug 2021 11:40:44 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mIpOm-005hZf-7S; Wed, 25 Aug 2021 11:40:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mIpOl-00DA7E-Pr; Wed, 25 Aug 2021 11:40:43 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        kernel test robot <lkp@intel.com>
Subject: [PATCH] of: fdt: Rename reserve_elfcorehdr() to fdt_reserve_elfcorehdr()
Date:   Wed, 25 Aug 2021 11:40:40 +0200
Message-Id: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On ia64/allmodconfig:

    drivers/of/fdt.c:609:20: error: conflicting types for 'reserve_elfcorehdr'; have 'void(void)'
      609 | static void __init reserve_elfcorehdr(void)
	  |                    ^~~~~~~~~~~~~~~~~~
    arch/ia64/include/asm/meminit.h:43:12: note: previous declaration of 'reserve_elfcorehdr' with type 'int(u64 *, u64 *)' {aka 'int(long long unsigned int *, long long unsigned int *)'}
       43 | extern int reserve_elfcorehdr(u64 *start, u64 *end);
	  |            ^~~~~~~~~~~~~~~~~~

Fix this by prefixing the FDT function name with "fdt_".

Fixes: f7e7ce93aac13118 ("of: fdt: Add generic support for handling elf core headers property")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
This change was planned for v6.
Feel free to fold into the original.
---
 drivers/of/fdt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index a26199022d2fc54d..4546572af24bbf14 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -599,14 +599,14 @@ static int __init __fdt_scan_reserved_mem(unsigned long node, const char *uname,
 }
 
 /*
- * reserve_elfcorehdr() - reserves memory for elf core header
+ * fdt_reserve_elfcorehdr() - reserves memory for elf core header
  *
  * This function reserves the memory occupied by an elf core header
  * described in the device tree. This region contains all the
  * information about primary kernel's core image and is used by a dump
  * capture kernel to access the system memory on primary kernel.
  */
-static void __init reserve_elfcorehdr(void)
+static void __init fdt_reserve_elfcorehdr(void)
 {
 	if (!IS_ENABLED(CONFIG_CRASH_DUMP) || !elfcorehdr_size)
 		return;
@@ -647,7 +647,7 @@ void __init early_init_fdt_scan_reserved_mem(void)
 
 	of_scan_flat_dt(__fdt_scan_reserved_mem, NULL);
 	fdt_init_reserved_mem();
-	reserve_elfcorehdr();
+	fdt_reserve_elfcorehdr();
 }
 
 /**
-- 
2.25.1

