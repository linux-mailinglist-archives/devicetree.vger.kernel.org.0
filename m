Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7DDC4B5BC1
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:01:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbiBNUxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 15:53:47 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbiBNUxe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 15:53:34 -0500
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 098D8DAADF
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 12:53:13 -0800 (PST)
Received: by mail-yb1-xb32.google.com with SMTP id j12so27689507ybh.8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 12:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fc6F8UmVPobantRNaLLTN28a7rasUnDLwQKG9SVLzq0=;
        b=aH+paiSV3sgIYtrkaCwxKQbsjv6znZtteAiqoHHOb6AC3qgvXrFUWQj0XcZoTZMINW
         XGUKwFueUMXH5XAOnIH7ou9f4U9hG/LV426XR5UXme06/t0rUorIkOZtPQyonJWN4BwT
         5Ifzqabl/THZ4Om0V+h+tNsYSgSPCC7lN2+5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fc6F8UmVPobantRNaLLTN28a7rasUnDLwQKG9SVLzq0=;
        b=fhgh3GgwhDCVQ9IGLYFwdwMK+XbUfbPiBt5LseiPkgnMZ4FTdoSk0mUeSzWTiIYI/N
         fK00eYCqMO6mO7a9c/XBNqRYH3/JkOflcMO+AzJhSFJy82N2uE7i4NAhDam3c/ZUirKI
         P6wZ2YxR5zioXUGQoDhhdKJKEVJ/owMuJeZPMAPqZvtubhwmmIpAMMKj2LYePWGZqF5m
         QSH4X8KTutWNpkrqaQtMBxDgDvjev4F5a2vu0GjDKCcZD9KGBlwO0tp9Oy0IcnSvSzuH
         Rh7PuPoHanZGbG391kzIDRTCoVKrH43EDNGWqo63xwYXHEtz2wo4MtM2qeu+pdAYBjTh
         qeoQ==
X-Gm-Message-State: AOAM533dVkF1YvvwGM1zceUe7gRJ0HrR57Kd5yT70K1UCjTQQ1T9M9Hi
        b7+FKcpXjDuu1FzNkKfmmu6ae5GG7r8SQ0B0M+z2bABKow==
X-Google-Smtp-Source: ABdhPJyfD2IesL3G/kU5m4HDGWuI/SKkArsW+wmg8ZWWtd9oGt7ZFjsXIxQ2DmTeIpsuWYk9K0Ng0fGqp9UWtHIi2NA=
X-Received: by 2002:a25:73d5:: with SMTP id o204mr818084ybc.472.1644869729891;
 Mon, 14 Feb 2022 12:15:29 -0800 (PST)
MIME-Version: 1.0
References: <20220210214018.55739-1-atishp@rivosinc.com> <20220210214018.55739-6-atishp@rivosinc.com>
 <877da2xu32.fsf@igel.home> <CAMuHMdX4P82B96ZbANyF6cWo9CnrW9hg5up6pCb0PZ99=sPZ_A@mail.gmail.com>
In-Reply-To: <CAMuHMdX4P82B96ZbANyF6cWo9CnrW9hg5up6pCb0PZ99=sPZ_A@mail.gmail.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Mon, 14 Feb 2022 12:15:19 -0800
Message-ID: <CAOnJCUKvE7Q2C+DOLdeQH_Qh44aUvdMydW9DUTrFQRxYWHGYgA@mail.gmail.com>
Subject: Re: [PATCH v2 5/6] RISC-V: Do no continue isa string parsing without
 correct XLEN
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Andreas Schwab <schwab@linux-m68k.org>,
        Atish Patra <atishp@rivosinc.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 11, 2022 at 4:52 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Andreas,
>
> On Thu, Feb 10, 2022 at 11:00 PM Andreas Schwab <schwab@linux-m68k.org> wrote:
> > On Feb 10 2022, Atish Patra wrote:
> > > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > > index 469b9739faf7..cca579bae8a0 100644
> > > --- a/arch/riscv/kernel/cpufeature.c
> > > +++ b/arch/riscv/kernel/cpufeature.c
> > > @@ -84,6 +84,7 @@ void __init riscv_fill_hwcap(void)
> > >       for_each_of_cpu_node(node) {
> > >               unsigned long this_hwcap = 0;
> > >               uint64_t this_isa = 0;
> > > +             char *temp;
> > >
> > >               if (riscv_of_processor_hartid(node) < 0)
> > >                       continue;
> > > @@ -93,6 +94,7 @@ void __init riscv_fill_hwcap(void)
> > >                       continue;
> > >               }
> > >
> > > +             temp = (char *)isa;
> >
> > There should be no need for this cast.
>
> Indeed, but only if "temp" is changed to "const char *".
>

Yes. Fixed it in v3. Thanks.

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds



-- 
Regards,
Atish
