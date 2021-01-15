Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45B5E2F867E
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 21:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728895AbhAOUTs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 15:19:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727649AbhAOUTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 15:19:47 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44631C0613C1
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 12:19:07 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id h205so14978459lfd.5
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 12:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/lXuX9PxuZr7jes4v8nsbSed/V3MsPCYQunP39iMdnM=;
        b=FmYu7KPbAA69KmSy9fXY/thRSVm89ZtlB6vNVfgTyH66ccxPJlx4C0kTFfHpJ6X8fZ
         V79j50FUDHC+a272jMFCbxYGqJPf3LwWChtwxczeyg6q4tRrzEnPdObWUWCEmt5WrU9f
         YJLTFShJbYZ1MU6KgKGzdLzpdUDRYT05Amnf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/lXuX9PxuZr7jes4v8nsbSed/V3MsPCYQunP39iMdnM=;
        b=ATryuD1+knEm+z2LxVYN6YUA83YNkxhUBN6olt2NtfWtmr8hAdofTmREowL4cq+KSV
         V94q9qKaJ8bHtQCB4gWwfAKYLMuTynghmF+HEc3Qb+u0YTBPiVBSj2cPVI6JPwbNlP2i
         GRInA1plV6TjlavWAta9zMURyUBk/QEFOdMh2VjrJtlS3s584psJ+xb3cXqO7sOYO/Rn
         jcjKeTefxv2YzmwlyhhBOebK7pib4owJHqmrhfBvzLmLIjvZn9McYL1s9Yc59RYOKNpj
         VdjomokAqMZZZJ15unGDjFpfFbiTl7iTx1bVtw8AdQMTMt7jQgASjG3GQEi6ElydQ1FF
         aUaw==
X-Gm-Message-State: AOAM532v2rPqKMw8Obv4eSWoI8eiEJUKL/Qb98W+3Af/a0RJET+e4BRn
        Sk4mGq+ohUkybu1bM8oS4LHKBZxNPkxjA7TVRnb3Rw==
X-Google-Smtp-Source: ABdhPJyzyPY4+IG3BWVpXoEmr6Q4joU2QO5H8aaDRxbnWHHSJyMx5gTRpgFMUhXv6Diy06qPimOGHaoJBiVK8yAnKu4=
X-Received: by 2002:a19:4196:: with SMTP id o144mr6741722lfa.342.1610741945649;
 Fri, 15 Jan 2021 12:19:05 -0800 (PST)
MIME-Version: 1.0
References: <20210111212031.2422-1-vitaly.wool@konsulko.com>
 <CAAhSdy04Nm+ET3Oepe5zRyVWiWpZzmfe=0BrdOEPUHGEOF86Vw@mail.gmail.com>
 <CAM4kBBKsYxaMe_R=JU=FxWdxS3vsgvpcMY3PCKBW080-9uSOrA@mail.gmail.com> <CAAhSdy190iZJsuiMRfPeeFCciG=ag7kn7CbL-Rmzc++QF4QGCw@mail.gmail.com>
In-Reply-To: <CAAhSdy190iZJsuiMRfPeeFCciG=ag7kn7CbL-Rmzc++QF4QGCw@mail.gmail.com>
From:   Vitaly Wool <vitaly.wool@konsulko.com>
Date:   Fri, 15 Jan 2021 21:18:54 +0100
Message-ID: <CAM4kBBKZrCY=Xpsv6rWiaoi529g6x21Uoyc=USB29s3n02qJ1g@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: simplify BUILTIN_DTB processing
To:     Anup Patel <anup@brainfault.org>
Cc:     linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 11:43 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Fri, Jan 15, 2021 at 3:18 PM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
> >
> >
> >
> > On Fri, 15 Jan 2021, 10:39 Anup Patel, <anup@brainfault.org> wrote:
> >>
> >> On Tue, Jan 12, 2021 at 2:51 AM Vitaly Wool <vitaly.wool@konsulko.com> wrote:
> >> >
> >> > Provide __dtb_start as a parameter to setup_vm() in case
> >> > CONFIG_BUILTIN_DTB is true, so we don't have to duplicate
> >> > BUILTIN_DTB specific processing in MMU-enabled and MMU-disabled
> >> > versions of setup_vm().
> >> >
> >> > Signed-off-by: Vitaly Wool <vitaly.wool@konsulko.com>
> >> > ---
> >> >  arch/riscv/kernel/head.S | 4 ++++
> >> >  arch/riscv/mm/init.c     | 4 ----
> >> >  2 files changed, 4 insertions(+), 4 deletions(-)
> >> >
> >> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> >> > index 16e9941900c4..f5a9bad86e58 100644
> >> > --- a/arch/riscv/kernel/head.S
> >> > +++ b/arch/riscv/kernel/head.S
> >> > @@ -260,7 +260,11 @@ clear_bss_done:
> >> >
> >> >         /* Initialize page tables and relocate to virtual addresses */
> >> >         la sp, init_thread_union + THREAD_SIZE
> >> > +#ifdef CONFIG_BUILTIN_DTB
> >> > +       la a0, __dtb_start
> >> > +#else
> >> >         mv a0, s1
> >> > +#endif /* CONFIG_BUILTIN_DTB */
> >> >         call setup_vm
> >> >  #ifdef CONFIG_MMU
> >> >         la a0, early_pg_dir
> >> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> >> > index 5b17f8d22f91..45faad7c4291 100644
> >> > --- a/arch/riscv/mm/init.c
> >> > +++ b/arch/riscv/mm/init.c
> >> > @@ -615,11 +615,7 @@ static void __init setup_vm_final(void)
> >> >  #else
> >> >  asmlinkage void __init setup_vm(uintptr_t dtb_pa)
> >> >  {
> >> > -#ifdef CONFIG_BUILTIN_DTB
> >> > -       dtb_early_va = (void *) __dtb_start;
> >> > -#else
> >> >         dtb_early_va = (void *)dtb_pa;
> >> > -#endif
> >> >         dtb_early_pa = dtb_pa;
> >> >  }
> >> >
> >> > --
> >> > 2.20.1
> >> >
> >>
> >> We can avoid the early DTB mapping for MMU-enabled case when
> >> BUILTIN_DTB is enabled (same as previous discussion). Otherwise
> >> looks good to me.
> >
> >
> > Right, but I had already submitted the patch which takes care of that, and you have reviewed it too IIRC :)
>
> Ahh, I assumed this patch is based on latest stable Linux-5.11-rcX.
>
> Either you can create a series with two patches OR you can squash this patch
> into your previous patch.

Fair enough, I'll come up with a new (aggregate) one.

Best regards,
   Vitaly
