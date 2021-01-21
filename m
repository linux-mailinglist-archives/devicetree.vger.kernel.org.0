Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54D772FE998
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 13:06:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728093AbhAUMEZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 07:04:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731037AbhAUMDr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 07:03:47 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AD4DC0613CF
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 04:03:06 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id x23so2161830lji.7
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 04:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+GxUh6LdEbxJRv07F8Bu1ZiZVv45b/NrzvE6NyqT1jY=;
        b=s6KAF+5hcJQnVyHzHpbcpB7ECymmyrl7oGTDfTYzwH3PY5ecmMgw1jvDZV4g0xUtYr
         jYRNlddph6y6QV9hFmR6uKANTqpnTfgCT2BkCJTCCT9/5ucYQ3rNxz+tPGwumMlA0bWn
         UiKMRRWD3dsKp8HEegO1OYp+ApOw+VkXxbu0/AQWM2Qmhf7OeE8qJz+eb7Os/XLfUjEI
         b3X5/TAdVhEOSALW0v1ASCCRK3izsRNgGrtTAlI42G+IyOUMN+v+GcgMjguB6IB0bYkg
         vnveHBqsN+dFGzxkvlwsYyd5eC9s5Xo4D/uFSgd3SjZ3wsFU9rl4VfYu7lbnav3WjuS5
         fRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+GxUh6LdEbxJRv07F8Bu1ZiZVv45b/NrzvE6NyqT1jY=;
        b=VXeDpnynaZGriRPw00jTS0AhbuNfnMmEY8JLK0FhR+lmqxEbJAPcozeLcDKND5eNWP
         yaE1CHFSRwBJOM6yPfwQplC8RYIoxHF6TdoMyd2QJt0Ab6hgVUzBvjsLVnYcwyECsLL1
         pNauR+q3yaWnSaYLDf8jl6ELiMaItMl4alAiDtC6PU9XBmjokZwHU+8ZIJY4HDa8qAFd
         /r5Y7nwCyOOM9EU8+vaiWWvIrtxv9FIws1dmVXCKLzIiR9hY0DBUEzttBtWaFnOiEuRj
         iI14bUVgJ5HWqzF2f70OzgHuRulb9Ljx28LICd/3vK7sE9UKHGp/IYw3zynfNnTQNfN7
         Vl7A==
X-Gm-Message-State: AOAM531Zs5cXALgcdFr1pWKccu+2UqjLyjMRKxcRJuakceTXKJdGgf1z
        kWdznZIm5mw+VA/Rbm0hVMlGAAru4p9oXXWX7gjavjSBBwk=
X-Google-Smtp-Source: ABdhPJz+q9Yw0jbUW6lR6xs6Pfi5vKPGh8TQE9gQI/nGSHzpiOWheAJLzVPUMQnfMkkXGPlgIgZOAhbG8sWOxwPnwrU=
X-Received: by 2002:a2e:9ed5:: with SMTP id h21mr6815528ljk.125.1611230584561;
 Thu, 21 Jan 2021 04:03:04 -0800 (PST)
MIME-Version: 1.0
References: <20210115234947.44014-1-vitaly.wool@konsulko.com> <CAM4kBBLhKsysQCf1GgpSvnGKVV2HsOoVP+4VvYmQaqfpKJ45+A@mail.gmail.com>
In-Reply-To: <CAM4kBBLhKsysQCf1GgpSvnGKVV2HsOoVP+4VvYmQaqfpKJ45+A@mail.gmail.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Thu, 21 Jan 2021 17:32:52 +0530
Message-ID: <CAAhSdy0DJZKhtSwiVvFMTqka6Piym2DTiqTYJq16CJrOPO4ktQ@mail.gmail.com>
Subject: Re: [PATCH v3] riscv: add BUILTIN_DTB support for MMU-enabled targets
To:     Vitaly Wool <vitaly.wool@konsulko.com>
Cc:     linux-riscv <linux-riscv@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 21, 2021 at 2:51 PM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
>
> On Sat, Jan 16, 2021 at 12:57 AM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
> >
> > Sometimes, especially in a production system we may not want to
> > use a "smart bootloader" like u-boot to load kernel, ramdisk and
> > device tree from a filesystem on eMMC, but rather load the kernel
> > from a NAND partition and just run it as soon as we can, and in
> > this case it is convenient to have device tree compiled into the
> > kernel binary. Since this case is not limited to MMU-less systems,
> > let's support it for these which have MMU enabled too.
> >
> > While at it, provide __dtb_start as a parameter to setup_vm() in
> > BUILTIN_DTB case, so we don't have to duplicate BUILTIN_DTB specific
> > processing in MMU-enabled and MMU-disabled versions of setup_vm().
>
> @Palmer: ping :)
>
> > Signed-off-by: Vitaly Wool <vitaly.wool@konsulko.com>
>
> While at it, since this is just a respin/concatenation:
> @Damien: are you okay with re-adding 'Tested-By:' ?
> @Anup: are you okay with adding 'Reviewed-by:' since you have reviewed
> both v1 patches that were concatenated?

Yes, my Reviewed-by holds on this patch as well.

Reviewed-by: Anup Patel <anup@brainfault.org>

Best Regards,
Anup

>
> Best regards,
>    Vitaly
>
> > ---
> > Changes from v2:
> > * folded "RISC-V: simplify BUILTIN_DTB processing" patch
> > [http://lists.infradead.org/pipermail/linux-riscv/2021-January/004153.html]
> > Changes from v1:
> > * no direct initial_boot_params assignment
> > * skips the temporary mapping for DT if BUILTIN_DTB=y
> >
> >  arch/riscv/Kconfig       |  1 -
> >  arch/riscv/kernel/head.S |  4 ++++
> >  arch/riscv/mm/init.c     | 19 +++++++++++++------
> >  3 files changed, 17 insertions(+), 7 deletions(-)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 2ef05ef921b5..444a1ed1e847 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -445,7 +445,6 @@ endmenu
> >
> >  config BUILTIN_DTB
> >         def_bool n
> > -       depends on RISCV_M_MODE
> >         depends on OF
> >
> >  menu "Power management options"
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index 16e9941900c4..f5a9bad86e58 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -260,7 +260,11 @@ clear_bss_done:
> >
> >         /* Initialize page tables and relocate to virtual addresses */
> >         la sp, init_thread_union + THREAD_SIZE
> > +#ifdef CONFIG_BUILTIN_DTB
> > +       la a0, __dtb_start
> > +#else
> >         mv a0, s1
> > +#endif /* CONFIG_BUILTIN_DTB */
> >         call setup_vm
> >  #ifdef CONFIG_MMU
> >         la a0, early_pg_dir
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 30b61f2c6b87..45faad7c4291 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -192,10 +192,13 @@ void __init setup_bootmem(void)
> >  #endif /* CONFIG_BLK_DEV_INITRD */
> >
> >         /*
> > -        * Avoid using early_init_fdt_reserve_self() since __pa() does
> > +        * If DTB is built in, no need to reserve its memblock.
> > +        * Otherwise, do reserve it but avoid using
> > +        * early_init_fdt_reserve_self() since __pa() does
> >          * not work for DTB pointers that are fixmap addresses
> >          */
> > -       memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
> > +       if (!IS_ENABLED(CONFIG_BUILTIN_DTB))
> > +               memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
> >
> >         early_init_fdt_scan_reserved_mem();
> >         dma_contiguous_reserve(dma32_phys_limit);
> > @@ -499,6 +502,7 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >         /* Setup early PMD for DTB */
> >         create_pgd_mapping(early_pg_dir, DTB_EARLY_BASE_VA,
> >                            (uintptr_t)early_dtb_pmd, PGDIR_SIZE, PAGE_TABLE);
> > +#ifndef CONFIG_BUILTIN_DTB
> >         /* Create two consecutive PMD mappings for FDT early scan */
> >         pa = dtb_pa & ~(PMD_SIZE - 1);
> >         create_pmd_mapping(early_dtb_pmd, DTB_EARLY_BASE_VA,
> > @@ -506,7 +510,11 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >         create_pmd_mapping(early_dtb_pmd, DTB_EARLY_BASE_VA + PMD_SIZE,
> >                            pa + PMD_SIZE, PMD_SIZE, PAGE_KERNEL);
> >         dtb_early_va = (void *)DTB_EARLY_BASE_VA + (dtb_pa & (PMD_SIZE - 1));
> > +#else /* CONFIG_BUILTIN_DTB */
> > +       dtb_early_va = __va(dtb_pa);
> > +#endif /* CONFIG_BUILTIN_DTB */
> >  #else
> > +#ifndef CONFIG_BUILTIN_DTB
> >         /* Create two consecutive PGD mappings for FDT early scan */
> >         pa = dtb_pa & ~(PGDIR_SIZE - 1);
> >         create_pgd_mapping(early_pg_dir, DTB_EARLY_BASE_VA,
> > @@ -514,6 +522,9 @@ asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >         create_pgd_mapping(early_pg_dir, DTB_EARLY_BASE_VA + PGDIR_SIZE,
> >                            pa + PGDIR_SIZE, PGDIR_SIZE, PAGE_KERNEL);
> >         dtb_early_va = (void *)DTB_EARLY_BASE_VA + (dtb_pa & (PGDIR_SIZE - 1));
> > +#else /* CONFIG_BUILTIN_DTB */
> > +       dtb_early_va = __va(dtb_pa);
> > +#endif /* CONFIG_BUILTIN_DTB */
> >  #endif
> >         dtb_early_pa = dtb_pa;
> >
> > @@ -604,11 +615,7 @@ static void __init setup_vm_final(void)
> >  #else
> >  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >  {
> > -#ifdef CONFIG_BUILTIN_DTB
> > -       dtb_early_va = (void *) __dtb_start;
> > -#else
> >         dtb_early_va = (void *)dtb_pa;
> > -#endif
> >         dtb_early_pa = dtb_pa;
> >  }
> >
> > --
> > 2.20.1
> >
