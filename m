Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 136E7473B42
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 04:07:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232118AbhLNDHC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 22:07:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232135AbhLNDHB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 22:07:01 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACDA1C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 19:07:01 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id nh10-20020a17090b364a00b001a69adad5ebso14972156pjb.2
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 19:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qTMZ88Mi+3TQxAyEZAd25/4CNqKoFuHq9krQxHWrrM4=;
        b=TkrgA6IqnxH3P6XzqY7srkLiBqZFF8oSm8wrHmVdF7oupC8Ph/36bwGhFVHXrh4ZkY
         WcH5OHNAdCBxI3mB+hxhJxWcMJs4rNSXHyW+TN6/1MvpsrAY4GPCOPk9V4wI1ZywgWLi
         3PgYVcoe6Z4YIvXorPYXaO42gemiefu6dBpVytBssuZU82gzb5IZDqeiZCdSLh1uWFl9
         GSSBCjtXpqphXZRXzvuODTSXQDwY1unNoRJWsriKqRGZxi6N+K66eS7n0yc2eVf8eXSx
         X6HO2XSNLDHKuyZc0Vgj/3Yg6RxetpZUlYknvt+t9aC44iZSDklJxEUHdf8dYg8o1Mun
         4UeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qTMZ88Mi+3TQxAyEZAd25/4CNqKoFuHq9krQxHWrrM4=;
        b=iyZZ6TLRkY9OdGjc0U6EO+o8+OH4pifvt2QlS181LV2jMrwI/Xm+ltUxfJVqb3jtHZ
         unBVeQplotFikqPMpLqlJ3BOojCwmgf76n+Fl73YvjhwTDb5wfxh2HDgQdk7FIXHLnXH
         sp1yr3nlUimFhixlcv8ZNWiAKqj42Jvo1mrLGR2nhGZk6vckSo3BYbWFGaTF7f7xd+pv
         59z+sd6p2r9glFMR6EXQbxAERwYhHiALHWvRb4CpOX19zmnkagt6f1UmNVYKtlLKrmC4
         SnGu5Rm64kD2Q6hEtUWhecfhT/9e3dLv0qGPI2K6Snk2KD8EppDgL1v+NbJf9qA8qPRH
         H4ZQ==
X-Gm-Message-State: AOAM533inqRdyKyVduCqnf3Nf7m8ovH5/gzUAemKUkaHB4ZjgQTgI1Tj
        oeNotcm1VEsdoyfZ/yDCxA==
X-Google-Smtp-Source: ABdhPJy8dcD8fmxCiBfETqHQnTDECaL+8BrM3WIJlHtOCmkiEzpMe2rEqqBB3N8n5vcWaGnSPTiAMw==
X-Received: by 2002:a17:90a:d357:: with SMTP id i23mr2654762pjx.3.1639451221222;
        Mon, 13 Dec 2021 19:07:01 -0800 (PST)
Received: from piliu.users.ipa.redhat.com ([209.132.188.80])
        by smtp.gmail.com with ESMTPSA id ng9sm498465pjb.4.2021.12.13.19.06.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 19:07:00 -0800 (PST)
Date:   Tue, 14 Dec 2021 11:06:55 +0800
From:   Pingfan Liu <kernelfans@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Zhen Lei <thunder.leizhen@huawei.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Frank Rowand <frowand.list@gmail.com>,
        Nick Terrell <terrelln@fb.com>
Subject: Re: [PATCH] arm64: fdt: fix membock add/cap ordering
Message-ID: <YbgKT28XetWO4RkE@piliu.users.ipa.redhat.com>
References: <20211213134745.43505-1-kernelfans@gmail.com>
 <CAL_JsqLtC3-rSTiN6_BuGVr8fqmNy0yxtjj1+NdfuTkVSjMDNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqLtC3-rSTiN6_BuGVr8fqmNy0yxtjj1+NdfuTkVSjMDNA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 13, 2021 at 09:31:41AM -0600, Rob Herring wrote:
> +Zhen Lei
> 
> On Mon, Dec 13, 2021 at 7:48 AM Pingfan Liu <kernelfans@gmail.com> wrote:
> >
> > During kdump kernel saves vmcore, it runs into the following bug:
> > ...
> > [   15.148919] usercopy: Kernel memory exposure attempt detected from SLUB object 'kmem_cache_node' (offset 0, size 4096)!
> > [   15.159707] ------------[ cut here ]------------
> > [   15.164311] kernel BUG at mm/usercopy.c:99!
> > [   15.168482] Internal error: Oops - BUG: 0 [#1] SMP
> > [   15.173261] Modules linked in: xfs libcrc32c crct10dif_ce ghash_ce sha2_ce sha256_arm64 sha1_ce sbsa_gwdt ast i2c_algo_bit drm_vram_helper drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops cec drm_ttm_helper ttm drm nvme nvme_core xgene_hwmon i2c_designware_platform i2c_designware_core dm_mirror dm_region_hash dm_log dm_mod overlay squashfs zstd_decompress loop
> > [   15.206186] CPU: 0 PID: 542 Comm: cp Not tainted 5.16.0-rc4 #1
> > [   15.212006] Hardware name: GIGABYTE R272-P30-JG/MP32-AR0-JG, BIOS F12 (SCP: 1.5.20210426) 05/13/2021
> > [   15.221125] pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> > [   15.228073] pc : usercopy_abort+0x9c/0xa0
> > [   15.232074] lr : usercopy_abort+0x9c/0xa0
> > [   15.236070] sp : ffff8000121abba0
> > [   15.239371] x29: ffff8000121abbb0 x28: 0000000000003000 x27: 0000000000000000
> > [   15.246494] x26: 0000000080000400 x25: 0000ffff885c7000 x24: 0000000000000000
> > [   15.253617] x23: 000007ff80400000 x22: ffff07ff80401000 x21: 0000000000000001
> > [   15.260739] x20: 0000000000001000 x19: ffff07ff80400000 x18: ffffffffffffffff
> > [   15.267861] x17: 656a626f2042554c x16: 53206d6f72662064 x15: 6574636574656420
> > [   15.274983] x14: 74706d6574746120 x13: 2129363930342065 x12: 7a6973202c302074
> > [   15.282105] x11: ffffc8b041d1b148 x10: 00000000ffff8000 x9 : ffffc8b04012812c
> > [   15.289228] x8 : 00000000ffff7fff x7 : ffffc8b041d1b148 x6 : 0000000000000000
> > [   15.296349] x5 : 0000000000000000 x4 : 0000000000007fff x3 : 0000000000000000
> > [   15.303471] x2 : 0000000000000000 x1 : ffff07ff8c064800 x0 : 000000000000006b
> > [   15.310593] Call trace:
> > [   15.313027]  usercopy_abort+0x9c/0xa0
> > [   15.316677]  __check_heap_object+0xd4/0xf0
> > [   15.320762]  __check_object_size.part.0+0x160/0x1e0
> > [   15.325628]  __check_object_size+0x2c/0x40
> > [   15.329711]  copy_oldmem_page+0x7c/0x140
> > [   15.333623]  read_from_oldmem.part.0+0xfc/0x1c0
> > [   15.338142]  __read_vmcore.constprop.0+0x23c/0x350
> > [   15.342920]  read_vmcore+0x28/0x34
> > [   15.346309]  proc_reg_read+0xb4/0xf0
> > [   15.349871]  vfs_read+0xb8/0x1f0
> > [   15.353088]  ksys_read+0x74/0x100
> > [   15.356390]  __arm64_sys_read+0x28/0x34
> > ...
> >
> > This bug introduced by commit b261dba2fdb2 ("arm64: kdump: Remove custom
> > linux,usable-memory-range handling"), which moves
> > memblock_cap_memory_range() to fdt, but it breaches the rules that
> > memblock_cap_memory_range() should come after memblock_add() etc as said
> > in commit e888fa7bb882 ("memblock: Check memory add/cap ordering").
> 
> Presumably only when using EFI boot which throws out any DT memblock setup.
> 
Yes, I do think so.

> >
> > As a consequence, the virtual address set up by copy_oldmem_page() does
> > not bail out from the test of virt_addr_valid() in check_heap_object(),
> > and finally hits the BUG_ON().
> >
> > Since memblock allocator has no idea about the time point of the full
> > memblock's population, resolving this issue at arch level code by
> > calling a new interface early_init_dt_cap_memory_range() exposed by fdt.
> >
> > Fixes: b261dba2fdb2 ("arm64: kdump: Remove custom linux,usable-memory-range handling")
> > Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Mike Rapoport <rppt@kernel.org>
> > Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Cc: Nick Terrell <terrelln@fb.com>
> > To: linux-arm-kernel@lists.infradead.org
> > To: devicetree@vger.kernel.org
> > ---
> >  arch/arm64/kernel/setup.c | 1 +
> >  drivers/of/fdt.c          | 5 +++++
> >  include/linux/of_fdt.h    | 1 +
> >  3 files changed, 7 insertions(+)
> >
> > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > index be5f85b0a24d..353e5171a66c 100644
> > --- a/arch/arm64/kernel/setup.c
> > +++ b/arch/arm64/kernel/setup.c
> > @@ -331,6 +331,7 @@ void __init __no_sanitize_address setup_arch(char **cmdline_p)
> >
> >         xen_early_init();
> >         efi_init();
> > +       early_init_dt_cap_memory_range();
> 
> As it is efi_init() that does all the memblock setup, I think this
> belongs in efi_init() because it would be needed for any arch that
> uses EFI for memory setup.
> 

Reasonable, and efi_init() are shared by arm64 and risc-v now.

> >
> >         if (!efi_enabled(EFI_BOOT) && ((u64)_text % MIN_KIMG_ALIGN) != 0)
> >              pr_warn(FW_BUG "Kernel image misaligned at boot, please fix your bootloader!");
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index bdca35284ceb..bb7e8fc3a334 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -1278,6 +1278,11 @@ void __init early_init_dt_scan_nodes(void)
> >         memblock_cap_memory_range(cap_mem_addr, cap_mem_size);
> >  }
> >
> > +void __init early_init_dt_cap_memory_range(void)
> > +{
> > +       memblock_cap_memory_range(cap_mem_addr, cap_mem_size);
> 
> This code is changing in [1] which I think should make fixing this
> issue easier. I'd suggest making
> early_init_dt_check_for_usable_mem_range() non-static and the EFI code
> can call it.
> 
Thank you for the good advice. I will go in that way.

> I'm also curious how folks testing that series don't hit this issue.
> 

Maybe CONFIG_EFI=n.


Thanks,

	Pingfan

> Rob
> 
> [1] https://lore.kernel.org/all/20211210065533.2023-9-thunder.leizhen@huawei.com/
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
