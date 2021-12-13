Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E488473095
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 16:32:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240140AbhLMPcV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 10:32:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240137AbhLMPcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 10:32:20 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8444EC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 07:32:20 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 163ADB80EFB
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 15:32:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE79DC34602
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 15:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639409537;
        bh=nNo2Jrlh2Rw+pIEvaW6ndQV7z9az7fUfMd3e9bWAXWU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=h66gORZ0JWZRYTMrxTWXtDh84hsBgxI1YIwlZSioAAhqtO63I7d6IwwKWBG+yO14S
         nsy7D+CT9cZLw25W6fS0OMnftNCUY+lNJak8IHqepZM3/8f5BUfSKZ4PQkV2Vpiisy
         tXoQoHLKM0br/4P44pM93wgLVMO52HS0iDp2tLTTTSWFaAfuX+BKJO0QlZl4FIzzrp
         QjYCwxVs2kwKZ/O9cYaOWkVVZ39ujW7SXcCq+kg82pfkIbmmj/H2o0FiGe125BAY9O
         L5pRjXkZIf/tgW5ItzEj9LBNqHl37/Z/zVUm479ieG/pd7eo1n5B86PGNd5zOdvkF4
         Xksz4Ko9XDKtA==
Received: by mail-ed1-f51.google.com with SMTP id g14so52516543edb.8
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 07:32:17 -0800 (PST)
X-Gm-Message-State: AOAM531TaEJHhLIgftYsj2hrJ9s/vdmXuDgeXvBgTdxa1FopvOtF019v
        3dXY7jJGrK8H42kMHvylDIzWdKIhzjw0eaelqw==
X-Google-Smtp-Source: ABdhPJxb2PUU0DJJddHXBsD4oAS6GarsiokjSwhFN48u+QWqWqfgE29ut+BDZf5mFNvrX6upfDtdrcn+ctdCyMlFN4I=
X-Received: by 2002:aa7:dc07:: with SMTP id b7mr63676574edu.327.1639409512437;
 Mon, 13 Dec 2021 07:31:52 -0800 (PST)
MIME-Version: 1.0
References: <20211213134745.43505-1-kernelfans@gmail.com>
In-Reply-To: <20211213134745.43505-1-kernelfans@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 13 Dec 2021 09:31:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLtC3-rSTiN6_BuGVr8fqmNy0yxtjj1+NdfuTkVSjMDNA@mail.gmail.com>
Message-ID: <CAL_JsqLtC3-rSTiN6_BuGVr8fqmNy0yxtjj1+NdfuTkVSjMDNA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fdt: fix membock add/cap ordering
To:     Pingfan Liu <kernelfans@gmail.com>,
        Zhen Lei <thunder.leizhen@huawei.com>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Frank Rowand <frowand.list@gmail.com>,
        Nick Terrell <terrelln@fb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Zhen Lei

On Mon, Dec 13, 2021 at 7:48 AM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> During kdump kernel saves vmcore, it runs into the following bug:
> ...
> [   15.148919] usercopy: Kernel memory exposure attempt detected from SLU=
B object 'kmem_cache_node' (offset 0, size 4096)!
> [   15.159707] ------------[ cut here ]------------
> [   15.164311] kernel BUG at mm/usercopy.c:99!
> [   15.168482] Internal error: Oops - BUG: 0 [#1] SMP
> [   15.173261] Modules linked in: xfs libcrc32c crct10dif_ce ghash_ce sha=
2_ce sha256_arm64 sha1_ce sbsa_gwdt ast i2c_algo_bit drm_vram_helper drm_km=
s_helper syscopyarea sysfillrect sysimgblt fb_sys_fops cec drm_ttm_helper t=
tm drm nvme nvme_core xgene_hwmon i2c_designware_platform i2c_designware_co=
re dm_mirror dm_region_hash dm_log dm_mod overlay squashfs zstd_decompress =
loop
> [   15.206186] CPU: 0 PID: 542 Comm: cp Not tainted 5.16.0-rc4 #1
> [   15.212006] Hardware name: GIGABYTE R272-P30-JG/MP32-AR0-JG, BIOS F12 =
(SCP: 1.5.20210426) 05/13/2021
> [   15.221125] pstate: 60400009 (nZCv daif +PAN -UAO -TCO -DIT -SSBS BTYP=
E=3D--)
> [   15.228073] pc : usercopy_abort+0x9c/0xa0
> [   15.232074] lr : usercopy_abort+0x9c/0xa0
> [   15.236070] sp : ffff8000121abba0
> [   15.239371] x29: ffff8000121abbb0 x28: 0000000000003000 x27: 000000000=
0000000
> [   15.246494] x26: 0000000080000400 x25: 0000ffff885c7000 x24: 000000000=
0000000
> [   15.253617] x23: 000007ff80400000 x22: ffff07ff80401000 x21: 000000000=
0000001
> [   15.260739] x20: 0000000000001000 x19: ffff07ff80400000 x18: fffffffff=
fffffff
> [   15.267861] x17: 656a626f2042554c x16: 53206d6f72662064 x15: 657463657=
4656420
> [   15.274983] x14: 74706d6574746120 x13: 2129363930342065 x12: 7a6973202=
c302074
> [   15.282105] x11: ffffc8b041d1b148 x10: 00000000ffff8000 x9 : ffffc8b04=
012812c
> [   15.289228] x8 : 00000000ffff7fff x7 : ffffc8b041d1b148 x6 : 000000000=
0000000
> [   15.296349] x5 : 0000000000000000 x4 : 0000000000007fff x3 : 000000000=
0000000
> [   15.303471] x2 : 0000000000000000 x1 : ffff07ff8c064800 x0 : 000000000=
000006b
> [   15.310593] Call trace:
> [   15.313027]  usercopy_abort+0x9c/0xa0
> [   15.316677]  __check_heap_object+0xd4/0xf0
> [   15.320762]  __check_object_size.part.0+0x160/0x1e0
> [   15.325628]  __check_object_size+0x2c/0x40
> [   15.329711]  copy_oldmem_page+0x7c/0x140
> [   15.333623]  read_from_oldmem.part.0+0xfc/0x1c0
> [   15.338142]  __read_vmcore.constprop.0+0x23c/0x350
> [   15.342920]  read_vmcore+0x28/0x34
> [   15.346309]  proc_reg_read+0xb4/0xf0
> [   15.349871]  vfs_read+0xb8/0x1f0
> [   15.353088]  ksys_read+0x74/0x100
> [   15.356390]  __arm64_sys_read+0x28/0x34
> ...
>
> This bug introduced by commit b261dba2fdb2 ("arm64: kdump: Remove custom
> linux,usable-memory-range handling"), which moves
> memblock_cap_memory_range() to fdt, but it breaches the rules that
> memblock_cap_memory_range() should come after memblock_add() etc as said
> in commit e888fa7bb882 ("memblock: Check memory add/cap ordering").

Presumably only when using EFI boot which throws out any DT memblock setup.

>
> As a consequence, the virtual address set up by copy_oldmem_page() does
> not bail out from the test of virt_addr_valid() in check_heap_object(),
> and finally hits the BUG_ON().
>
> Since memblock allocator has no idea about the time point of the full
> memblock's population, resolving this issue at arch level code by
> calling a new interface early_init_dt_cap_memory_range() exposed by fdt.
>
> Fixes: b261dba2fdb2 ("arm64: kdump: Remove custom linux,usable-memory-ran=
ge handling")
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Mike Rapoport <rppt@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: Nick Terrell <terrelln@fb.com>
> To: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
>  arch/arm64/kernel/setup.c | 1 +
>  drivers/of/fdt.c          | 5 +++++
>  include/linux/of_fdt.h    | 1 +
>  3 files changed, 7 insertions(+)
>
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index be5f85b0a24d..353e5171a66c 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -331,6 +331,7 @@ void __init __no_sanitize_address setup_arch(char **c=
mdline_p)
>
>         xen_early_init();
>         efi_init();
> +       early_init_dt_cap_memory_range();

As it is efi_init() that does all the memblock setup, I think this
belongs in efi_init() because it would be needed for any arch that
uses EFI for memory setup.

>
>         if (!efi_enabled(EFI_BOOT) && ((u64)_text % MIN_KIMG_ALIGN) !=3D =
0)
>              pr_warn(FW_BUG "Kernel image misaligned at boot, please fix =
your bootloader!");
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index bdca35284ceb..bb7e8fc3a334 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -1278,6 +1278,11 @@ void __init early_init_dt_scan_nodes(void)
>         memblock_cap_memory_range(cap_mem_addr, cap_mem_size);
>  }
>
> +void __init early_init_dt_cap_memory_range(void)
> +{
> +       memblock_cap_memory_range(cap_mem_addr, cap_mem_size);

This code is changing in [1] which I think should make fixing this
issue easier. I'd suggest making
early_init_dt_check_for_usable_mem_range() non-static and the EFI code
can call it.

I'm also curious how folks testing that series don't hit this issue.

Rob

[1] https://lore.kernel.org/all/20211210065533.2023-9-thunder.leizhen@huawe=
i.com/
