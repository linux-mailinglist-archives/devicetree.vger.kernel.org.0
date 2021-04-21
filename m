Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22CC0367049
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 18:36:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236380AbhDUQh3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 12:37:29 -0400
Received: from linux.microsoft.com ([13.77.154.182]:56246 "EHLO
        linux.microsoft.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234887AbhDUQh2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 12:37:28 -0400
Received: from localhost.localdomain (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
        by linux.microsoft.com (Postfix) with ESMTPSA id 4D40720B8001;
        Wed, 21 Apr 2021 09:36:55 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 4D40720B8001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
        s=default; t=1619023015;
        bh=W/WrYxxnKEKrs3E4gMvZTNUBttn6ZQvvtZcnC/gDa8g=;
        h=From:To:Cc:Subject:Date:From;
        b=Yb8oEHySdpd8BsyUBXdOGGUt1kIqBGYostq3b4avONLdDKWvBvB+vNSCuMA2VtPJN
         k11FCr3+szgrv2dQCPzTflc+yHBLgGqJG+kBUsKfq2c5Nk/g9nKrqpet3kQpDxTaO9
         gqd5OdqndNbNHh7x/+bt7SaxqQQpPwEr79lwlU90=
From:   Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
To:     robh@kernel.org, dan.carpenter@oracle.com, mpe@ellerman.id.au
Cc:     bauerman@linux.ibm.com, dja@axtens.net,
        christophe.leroy@csgroup.eu, nramas@linux.microsoft.com,
        lkp@intel.com, kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v2 1/2] powerpc: Free fdt on error in elf64_load()
Date:   Wed, 21 Apr 2021 09:36:09 -0700
Message-Id: <20210421163610.23775-1-nramas@linux.microsoft.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are a few "goto out;" statements before the local variable "fdt"
is initialized through the call to of_kexec_alloc_and_setup_fdt() in
elf64_load().  This will result in an uninitialized "fdt" being passed
to kvfree() in this function if there is an error before the call to
of_kexec_alloc_and_setup_fdt().

If there is any error after fdt is allocated, but before it is
saved in the arch specific kimage struct, free the fdt.

Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
---
 arch/powerpc/kexec/elf_64.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
index 5a569bb51349..02662e72c53d 100644
--- a/arch/powerpc/kexec/elf_64.c
+++ b/arch/powerpc/kexec/elf_64.c
@@ -114,7 +114,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 	ret = setup_new_fdt_ppc64(image, fdt, initrd_load_addr,
 				  initrd_len, cmdline);
 	if (ret)
-		goto out;
+		goto out_free_fdt;
 
 	fdt_pack(fdt);
 
@@ -125,7 +125,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 	ret = kexec_add_buffer(&kbuf);
 	if (ret)
-		goto out;
+		goto out_free_fdt;
 
 	/* FDT will be freed in arch_kimage_file_post_load_cleanup */
 	image->arch.fdt = fdt;
@@ -140,18 +140,14 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 	if (ret)
 		pr_err("Error setting up the purgatory.\n");
 
+	goto out;
+
+out_free_fdt:
+	kvfree(fdt);
 out:
 	kfree(modified_cmdline);
 	kexec_free_elf_info(&elf_info);
 
-	/*
-	 * Once FDT buffer has been successfully passed to kexec_add_buffer(),
-	 * the FDT buffer address is saved in image->arch.fdt. In that case,
-	 * the memory cannot be freed here in case of any other error.
-	 */
-	if (ret && !image->arch.fdt)
-		kvfree(fdt);
-
 	return ret ? ERR_PTR(ret) : NULL;
 }
 
-- 
2.31.0

