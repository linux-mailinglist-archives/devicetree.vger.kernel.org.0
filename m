Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08FD02E650C
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 16:57:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389458AbgL1NgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 08:36:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391360AbgL1NgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 08:36:09 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 812ACC061794
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 05:35:28 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id a12so23916864lfl.6
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 05:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lnlocphoctX4r6uKPUYm4iHsqJYYWrO7RnR7sqTcTMQ=;
        b=DdXN+SIqlIxijQhfqX1KanDmg13RIXZawO+UXnE2GnWP6WUQA7qLK01tybwDacK6iT
         h9liV046J29RuS5Zo7EOoAUQXF2kmtjRWi7TLj0vlg/kmog2D6lwCNkbM3zfTiw0/Gnt
         2A7ihf1wx1d8wlrQdJbC9WjqiuVOgoEiAoSPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lnlocphoctX4r6uKPUYm4iHsqJYYWrO7RnR7sqTcTMQ=;
        b=WTcS6HKcq0jdp952e5wasrsMC5uUK228YxXGrX2mYDSBtMMRdnOCj9+L1r5ajynSf/
         NTLcwHG3buJ1Ocajek8c3YvXGEoBDnxyFnBW4I4q98c0zQ0pEKY79jr8L9Ul09tlyS/U
         710dXV8smkYJv1l2IWfyP3Mo8Q0ClsyrsrpaF/O8qAxGkyI3EciiojmghBiaVz1DIDmw
         0QyUbfBos2OeXSorJhGOIvFevrMMwByinmviuUhEvu8NKRWPRcETlAu827axNJDCUMmB
         VK7ytsxlv/luowbSPfalpKi8MeAyvmXy5+mBoftcKQJk1jWeFJHhXYT3x2t8zbxz3yNU
         Jp6w==
X-Gm-Message-State: AOAM530tMlZDCV0dzqegiiGOVlogoKEL0vsfhwxUkp0PNzm5FhLLgdUu
        K3Axocvi0bMDH9GuZP+wf+8BsVbMF1/1Fic0ToaVWw==
X-Google-Smtp-Source: ABdhPJyiqupZuDE0Vxp4Jp2VXGNRbz8ArOYKPHzS+2ZWvcmC136bVxjhF83SmGCPsFzZ1cANTCZzpN6YjAEuwCAW2d0=
X-Received: by 2002:a05:6512:2009:: with SMTP id a9mr18356183lfb.575.1609162526880;
 Mon, 28 Dec 2020 05:35:26 -0800 (PST)
MIME-Version: 1.0
References: <20201226163037.43691-1-vitaly.wool@konsulko.com> <CAAhSdy1M5pMjYHNWdOicb3N3fjTfQLEgE8tFb74sqGbPE_9eyQ@mail.gmail.com>
In-Reply-To: <CAAhSdy1M5pMjYHNWdOicb3N3fjTfQLEgE8tFb74sqGbPE_9eyQ@mail.gmail.com>
From:   Vitaly Wool <vitaly.wool@konsulko.com>
Date:   Mon, 28 Dec 2020 14:35:16 +0100
Message-ID: <CAM4kBBJ3Vbytx=dFK7+DMByV3zK=FVLATSwjyuuygkDK1MCQjA@mail.gmail.com>
Subject: Re: [PATCH] riscv: add BUILTIN_DTB support for MMU-enabled targets
To:     Anup Patel <anup@brainfault.org>
Cc:     linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Bin Meng <bin.meng@windriver.com>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 28, 2020 at 12:59 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Sat, Dec 26, 2020 at 10:03 PM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
> >
> > Sometimes, especially in a production system we may not want to
> > use a "smart bootloader" like u-boot to load kernel, ramdisk and
> > device tree from a filesystem on eMMC, but rather load the kernel
> > from a NAND partition and just run it as soon as we can, and in
> > this case it is convenient to have device tree compiled into the
> > kernel binary. Since this case is not limited to MMU-less systems,
> > let's support it for these which have MMU enabled too.
> >
> > Signed-off-by: Vitaly Wool <vitaly.wool@konsulko.com>
> > ---
> >  arch/riscv/Kconfig   |  1 -
> >  arch/riscv/mm/init.c | 12 ++++++++++--
> >  2 files changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index 2b41f6d8e458..9464b4e3a71a 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -419,7 +419,6 @@ endmenu
> >
> >  config BUILTIN_DTB
> >         def_bool n
> > -       depends on RISCV_M_MODE
> >         depends on OF
> >
> >  menu "Power management options"
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 87c305c566ac..5d1c7a3ec01c 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -194,12 +194,20 @@ void __init setup_bootmem(void)
> >         setup_initrd();
> >  #endif /* CONFIG_BLK_DEV_INITRD */
> >
> > +       /*
> > +        * If DTB is built in, no need to reserve its memblock.
> > +        * OTOH, initial_boot_params has to be set to properly copy DTB
> > +        * before unflattening later on.
> > +        */
> > +       if (IS_ENABLED(CONFIG_BUILTIN_DTB))
> > +               initial_boot_params = __va(dtb_early_pa);
>
> Don't assign initial_boot_params directly here because the
> early_init_dt_scan() will do it.

early_init_dt_scan will set initial_boot_params to dtb_early_va from
the early mapping which will be gone by the time
unflatten_and_copy_device_tree() is called.

> The setup_vm() is supposed to setup dtb_early_va and dtb_early_pa
> for MMU-enabled case so please add a "#ifdef" over there for the
> built-in DTB case.
>
> > +       else
> > +               memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
> > +
> >         /*
> >          * Avoid using early_init_fdt_reserve_self() since __pa() does
> >          * not work for DTB pointers that are fixmap addresses
> >          */
>
> This comment needs to be updated and moved along the memblock_reserve()
> statement.
>
> > -       memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
> > -
> >         early_init_fdt_scan_reserved_mem();
> >         dma_contiguous_reserve(dma32_phys_limit);
> >         memblock_allow_resize();
> > --
> > 2.29.2
> >
>
> This patch should be based upon Damiens builtin DTB patch.
> Refer, https://www.spinics.net/lists/linux-gpio/msg56616.html

Thanks for the pointer, however I don't think our patches have
intersections. Besides, Damien is dealing with the MMU-less case
there.

Best regards,
   Vitaly
