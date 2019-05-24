Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0802828E21
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 02:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388497AbfEXAEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 20:04:22 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:39274 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388433AbfEXAEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 20:04:21 -0400
Received: by mail-pl1-f196.google.com with SMTP id g9so3378289plm.6
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 17:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:from:cc:to:user-agent:date;
        bh=rEVWZ6CY2T1sOfRBqu5yo6RqvdsQIs5DONP6SvlW0AM=;
        b=A5bq+DlVBxOWKQFEMlCo85nduYntCXDn0IbtZJHJoDJIP/A9P/lc9kAhjahRhOg6aB
         fH7uFR5pcQhJ3sY6aV2vpt2VukMXrjAJwGlDtqbrsVuRTUpcapahrz0Ty6z7pFy48Fld
         RS2H0xeriUHh7VouuZMHvoEl+1YhktdsoZ1nI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
         :user-agent:date;
        bh=rEVWZ6CY2T1sOfRBqu5yo6RqvdsQIs5DONP6SvlW0AM=;
        b=Zh93nZS0uplz3GC8i4xT1gSJVMRja7xwiMADiy/nWh3PfyIdeuVMO3NSQjlZXAyyLm
         piEmaWYXwtu4z4/ArTJmMWfJ/Fg9BXrXSEBE10ONbXEwOdOSpWrJr8ZYMuzZ7Qx202qn
         QUgqGo7eDvWopds3UVqdo1gzX4RyrIxQtz2nCVqw/KHffgq30X3eFujO3FqRqwo9XEpD
         yWe8JxnOEtlHPcMLO0c5fyqC9roTwpMKq8WRw4zzPSrM354+vyiw/OmWcmv6HLTMN/JZ
         WR9T12kIXkERS5fcIs5wT9oI8ySwinlKl9OkgtM1aftU0T8cMC6YqFZNUdkBTsKls89B
         7CkA==
X-Gm-Message-State: APjAAAXzQG6NrVbqdLqmoreMCWXjKw09AxivZHWxz6e2rk+uwwIc50gE
        CFuuz9T9bcbWQ0+yW7Xc929LrQ==
X-Google-Smtp-Source: APXvYqxdDIMPWrhGLzYtdYHe5gO3o8u8gVa8ZuAXPnAmDPKvtND3h3TrLvLoNFLHzkxdCaNnylHEyQ==
X-Received: by 2002:a17:902:8c8f:: with SMTP id t15mr46446795plo.87.1558656260216;
        Thu, 23 May 2019 17:04:20 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id s12sm425435pji.30.2019.05.23.17.04.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 17:04:19 -0700 (PDT)
Message-ID: <5ce73503.1c69fb81.5f889.1d84@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
References: <20190519160446.320-1-hsinyi@chromium.org>
Subject: Re: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
From:   Stephen Boyd <swboyd@chromium.org>
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
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Kees Cook <keescook@chromium.org>
To:     Hsin-Yi Wang <hsinyi@chromium.org>,
        linux-arm-kernel@lists.infradead.org
User-Agent: alot/0.8.1
Date:   Thu, 23 May 2019 17:04:18 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Hsin-Yi Wang (2019-05-19 09:04:44)
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a170c6369a68..29648e86f7e5 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -940,12 +940,12 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys=
, int *size, pgprot_t prot)
>         return dt_virt;
>  }
> =20
> -void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
> +void *__init fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot)
>  {
>         void *dt_virt;
>         int size;
> =20
> -       dt_virt =3D __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
> +       dt_virt =3D __fixmap_remap_fdt(dt_phys, &size, prot);
>         if (!dt_virt)
>                 return NULL;
> =20

Sorry, I'm still confused why we want to call memblock_reserve() again.
Why not avoid it?

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 67ef25d037ea..d0d9de9da5c1 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -137,7 +137,7 @@ extern void init_mem_pgprot(void);
 extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       unsigned long virt, phys_addr_t size,
 			       pgprot_t prot, bool page_mappings_only);
-extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
+extern void *__fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t p=
rot);
 extern void mark_linear_text_alias_ro(void);
=20
 #define INIT_MM_CONTEXT(name)	\
diff --git a/arch/arm64/kernel/kaslr.c b/arch/arm64/kernel/kaslr.c
index b09b6f75f759..0701c2cf1534 100644
--- a/arch/arm64/kernel/kaslr.c
+++ b/arch/arm64/kernel/kaslr.c
@@ -65,9 +65,6 @@ static __init const u8 *kaslr_get_cmdline(void *fdt)
 	return default_cmdline;
 }
=20
-extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
-				       pgprot_t prot);
-
 /*
  * This routine will be executed with the kernel mapped at its default vir=
tual
  * address, and if it returns successfully, the kernel will be remapped, a=
nd
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 413d566405d1..3e97354566ff 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -181,9 +181,13 @@ static void __init smp_build_mpidr_hash(void)
=20
 static void __init setup_machine_fdt(phys_addr_t dt_phys)
 {
-	void *dt_virt =3D fixmap_remap_fdt(dt_phys);
+	int size;
+	void *dt_virt =3D __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
 	const char *name;
=20
+	if (dt_virt)
+		memblock_reserve(dt_phys, size);
+
 	if (!dt_virt || !early_init_dt_scan(dt_virt)) {
 		pr_crit("\n"
 			"Error: invalid device tree blob at physical address %pa (virtual addre=
ss 0x%p)\n"
@@ -195,6 +199,9 @@ static void __init setup_machine_fdt(phys_addr_t dt_phy=
s)
 			cpu_relax();
 	}
=20
+	/* Early fixups are done, map the FDT as read-only now */
+	__fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
+
 	name =3D of_flat_dt_get_machine_name();
 	if (!name)
 		return;
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a170c6369a68..ddf6086cd9dd 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -940,19 +940,6 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, i=
nt *size, pgprot_t prot)
 	return dt_virt;
 }
=20
-void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
-{
-	void *dt_virt;
-	int size;
-
-	dt_virt =3D __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
-	if (!dt_virt)
-		return NULL;
-
-	memblock_reserve(dt_phys, size);
-	return dt_virt;
-}
-
 int __init arch_ioremap_pud_supported(void)
 {
 	/* only 4k granule supports level 1 block mappings */
