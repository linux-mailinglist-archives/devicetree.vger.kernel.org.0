Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDA28365FFE
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 21:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233509AbhDTTEh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 15:04:37 -0400
Received: from linux.microsoft.com ([13.77.154.182]:32944 "EHLO
        linux.microsoft.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233548AbhDTTEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 15:04:35 -0400
Received: from localhost.localdomain (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
        by linux.microsoft.com (Postfix) with ESMTPSA id DD5FD20B8002;
        Tue, 20 Apr 2021 12:04:03 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com DD5FD20B8002
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
        s=default; t=1618945444;
        bh=GohHPxZNM/O59OuHx4wz3PzFEFX8BxLA8/Ko41CG6NY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=q+9hg0E+rSJkkQ86Ia1lPStRGxfsmvHnB0l5Tsv7+Oc6/Sf6LEcsgC+XugB03Xoep
         ShOchkZO5Fj567ONB1z4I1UqomucAQC8MS9jMalxMXCKa9PGAFnuBFJ9clL5rD26c9
         els+9/pYVxrbhSiZB7+08tWzvvspRwz8twk2r9lo=
From:   Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
To:     robh@kernel.org, dan.carpenter@oracle.com, mpe@ellerman.id.au
Cc:     bauerman@linux.ibm.com, dja@axtens.net,
        christophe.leroy@csgroup.eu, nramas@linux.microsoft.com,
        lkp@intel.com, kbuild-all@lists.01.org, devicetree@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 2/2] powerpc: If kexec_build_elf_info() fails return immediately from elf64_load()
Date:   Tue, 20 Apr 2021 12:03:55 -0700
Message-Id: <20210420190355.10059-2-nramas@linux.microsoft.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210420190355.10059-1-nramas@linux.microsoft.com>
References: <20210420190355.10059-1-nramas@linux.microsoft.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Uninitialized local variable "elf_info" would be passed to
kexec_free_elf_info() if kexec_build_elf_info() returns an error
in elf64_load().

If kexec_build_elf_info() returns an error, return the error
immediately.

Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 arch/powerpc/kexec/elf_64.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kexec/elf_64.c b/arch/powerpc/kexec/elf_64.c
index 02662e72c53d..eeb258002d1e 100644
--- a/arch/powerpc/kexec/elf_64.c
+++ b/arch/powerpc/kexec/elf_64.c
@@ -45,7 +45,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 
 	ret = kexec_build_elf_info(kernel_buf, kernel_len, &ehdr, &elf_info);
 	if (ret)
-		goto out;
+		return ERR_PTR(ret);
 
 	if (image->type == KEXEC_TYPE_CRASH) {
 		/* min & max buffer values for kdump case */
-- 
2.31.0

