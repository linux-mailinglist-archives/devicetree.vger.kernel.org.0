Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB4C32E40DD
	for <lists+devicetree@lfdr.de>; Mon, 28 Dec 2020 15:59:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391486AbgL1O6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Dec 2020 09:58:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2440482AbgL1OOp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Dec 2020 09:14:45 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5600CC061795
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 06:14:05 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id a12so24160641lfl.6
        for <devicetree@vger.kernel.org>; Mon, 28 Dec 2020 06:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NPeSW+R1SSfRx+04CRlDhpX7N3sgocK07oaNDyUcAtQ=;
        b=ca8s8BXf1hhY+CYTlYaY7cbOnbBLNRpJziaNgNL0O1DmVav7uY5DZU2FrvBAul3FPK
         qASLpWCCyZr9LhbzyJyL0w2jNgqhiCu7DzFiLXvv+70lS6bxurLywKj+A2S933Y09OIR
         kntxzCfNY2NlsQpftT/btNwnwCnQWF9KIY9dbib2K5X3Ll0lHqxXETqnUCW/U+Fh93zo
         il/p3u/GOX8kaoIqzEqV+5OycVEntz0Vc7SOeV0vXzya03eFYka/8dnE1D7k/Zgk8ZR9
         g55hWD6PTSH11D9lCwPnoTp1QtW0Ks7lGV2ZF8eDa+m4YAOc/9tO9ABvEPrvio0PgqM5
         G+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NPeSW+R1SSfRx+04CRlDhpX7N3sgocK07oaNDyUcAtQ=;
        b=o2ItaRFiMCPDb5FyktKYoVVfBwRHEj2kdPVVjKUiXEsgZu5IEcuUiXz4VfRSKyt2fF
         N1v3vQimg8xfik34NIV6e91ZsqtPi2vq/8uo9QEDJUu6HiW1ozn843OhLEffii3pgV4b
         CRyKjKAMh9t3J6AkMYfT1+S/M8HY+KGrpZTc5qiO8pbvtSH1RuV+gOHEHscwXvI3u3pu
         DJzAW+OdYEhMDtlgHjVomyOQ09TCYG8cdP2NhbpRK4ywjaD501Uo4Xpru2nOqXKMnlph
         QwS5ALRtswLQBa0/c15WFx6J2ghFGD4IU7BO7d5pFz+OOKY8iH0U1Rpo9IyahppETlTd
         plpQ==
X-Gm-Message-State: AOAM533m2+m5gfnFsNpQGdMIjeuFm3vA1BDLeCtVOnxiq6QR+8Y4cYuK
        O1D/IPwRiGLACX8VX4dSHslrAgSilI5r+w3nJ7daDg/pYD8ddQ==
X-Google-Smtp-Source: ABdhPJxkOkUZ2+WFCA9kUXkWVgnWKZbc6ENUsxa3iUZhVqA8izUArbjN5NvmwueKDr2OZFrqx7CqbYQQPKiwAhSOzRs=
X-Received: by 2002:a05:651c:202:: with SMTP id y2mr21433617ljn.162.1609164843848;
 Mon, 28 Dec 2020 06:14:03 -0800 (PST)
MIME-Version: 1.0
References: <20201226163037.43691-1-vitaly.wool@konsulko.com>
 <CAAhSdy1M5pMjYHNWdOicb3N3fjTfQLEgE8tFb74sqGbPE_9eyQ@mail.gmail.com> <CAM4kBBJ3Vbytx=dFK7+DMByV3zK=FVLATSwjyuuygkDK1MCQjA@mail.gmail.com>
In-Reply-To: <CAM4kBBJ3Vbytx=dFK7+DMByV3zK=FVLATSwjyuuygkDK1MCQjA@mail.gmail.com>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 28 Dec 2020 19:43:52 +0530
Message-ID: <CAAhSdy2CssmEJVP=+eXsNqRXbQgTSn=+1d6w1UcFOJTA3Zbcug@mail.gmail.com>
Subject: Re: [PATCH] riscv: add BUILTIN_DTB support for MMU-enabled targets
To:     Vitaly Wool <vitaly.wool@konsulko.com>
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

On Mon, Dec 28, 2020 at 7:05 PM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
>
> On Mon, Dec 28, 2020 at 12:59 PM Anup Patel <anup@brainfault.org> wrote:
> >
> > On Sat, Dec 26, 2020 at 10:03 PM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
> > >
> > > Sometimes, especially in a production system we may not want to
> > > use a "smart bootloader" like u-boot to load kernel, ramdisk and
> > > device tree from a filesystem on eMMC, but rather load the kernel
> > > from a NAND partition and just run it as soon as we can, and in
> > > this case it is convenient to have device tree compiled into the
> > > kernel binary. Since this case is not limited to MMU-less systems,
> > > let's support it for these which have MMU enabled too.
> > >
> > > Signed-off-by: Vitaly Wool <vitaly.wool@konsulko.com>
> > > ---
> > >  arch/riscv/Kconfig   |  1 -
> > >  arch/riscv/mm/init.c | 12 ++++++++++--
> > >  2 files changed, 10 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > index 2b41f6d8e458..9464b4e3a71a 100644
> > > --- a/arch/riscv/Kconfig
> > > +++ b/arch/riscv/Kconfig
> > > @@ -419,7 +419,6 @@ endmenu
> > >
> > >  config BUILTIN_DTB
> > >         def_bool n
> > > -       depends on RISCV_M_MODE
> > >         depends on OF
> > >
> > >  menu "Power management options"
> > > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > > index 87c305c566ac..5d1c7a3ec01c 100644
> > > --- a/arch/riscv/mm/init.c
> > > +++ b/arch/riscv/mm/init.c
> > > @@ -194,12 +194,20 @@ void __init setup_bootmem(void)
> > >         setup_initrd();
> > >  #endif /* CONFIG_BLK_DEV_INITRD */
> > >
> > > +       /*
> > > +        * If DTB is built in, no need to reserve its memblock.
> > > +        * OTOH, initial_boot_params has to be set to properly copy DTB
> > > +        * before unflattening later on.
> > > +        */
> > > +       if (IS_ENABLED(CONFIG_BUILTIN_DTB))
> > > +               initial_boot_params = __va(dtb_early_pa);
> >
> > Don't assign initial_boot_params directly here because the
> > early_init_dt_scan() will do it.
>
> early_init_dt_scan will set initial_boot_params to dtb_early_va from
> the early mapping which will be gone by the time
> unflatten_and_copy_device_tree() is called.

The throw-away early DTB mapping in early_pg_dir is anyway
redundant when we have built-in DTB so this patch needs to
add an "#ifdef" around it for the MMU-enabled case. Also, please
update dtb_early_va and dtb_early_pa separately for MMU-enabled
case in the setup_vm()

>
> > The setup_vm() is supposed to setup dtb_early_va and dtb_early_pa
> > for MMU-enabled case so please add a "#ifdef" over there for the
> > built-in DTB case.
> >
> > > +       else
> > > +               memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
> > > +
> > >         /*
> > >          * Avoid using early_init_fdt_reserve_self() since __pa() does
> > >          * not work for DTB pointers that are fixmap addresses
> > >          */
> >
> > This comment needs to be updated and moved along the memblock_reserve()
> > statement.
> >
> > > -       memblock_reserve(dtb_early_pa, fdt_totalsize(dtb_early_va));
> > > -
> > >         early_init_fdt_scan_reserved_mem();
> > >         dma_contiguous_reserve(dma32_phys_limit);
> > >         memblock_allow_resize();
> > > --
> > > 2.29.2
> > >
> >
> > This patch should be based upon Damiens builtin DTB patch.
> > Refer, https://www.spinics.net/lists/linux-gpio/msg56616.html
>
> Thanks for the pointer, however I don't think our patches have
> intersections. Besides, Damien is dealing with the MMU-less case
> there.
>
> Best regards,
>    Vitaly

Regards,
Anup
