Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B123F50E2CA
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 16:14:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237886AbiDYORQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 10:17:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239014AbiDYORL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 10:17:11 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 398BFEE4D1
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:14:07 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id q185so8810326ljb.5
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8D+pks1GFQ5YyPwAFgL3FkCx021NEMaCoEqCvexljR4=;
        b=o5yHSni7byMq9Mrb1tFx49HsuhpnGjLxECFuj4lPhHigsZkEfQ5XC+y9Q4kq+7AKxR
         LN981iJ5nTQXs1KWNB/9AnpmW/uzDr5TiomFJBA9v+FuJ81uwssrElWcB/flb4VWj5vr
         xoOhWzUbFs78dkNRXf5N7dbexgO64Ewws5ZntoktFq1VblsNLHgbahwlOKulQS0qOYc7
         VLLI3xbyny4aMSAcRozZ9hMIIjBkBsGG7pLzI5qTOwXq41J7knrxkNUiNK+FyVSJ6oXK
         jGCGCslHJauXbW+nkV6Qw5/zEGpqtmc6RoAE7z0/oGVW71IJ4zhaYJW5n8n81yBZXQ2H
         N5IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8D+pks1GFQ5YyPwAFgL3FkCx021NEMaCoEqCvexljR4=;
        b=FQTIIlclWi+FlSjO2CWkWhUqi8LUxUZi7m4fS40n+TBtr6Lf4vYxZoqSme9dI/lAsQ
         1x1xbfnL0dI+FhQ8FVfQbVxUavZI1NnZ6el4TyUh3XWorsvg+qOXzOxFx/+W9STuA80d
         BQdamtuDiHNBu85eUPdoN7b4Sf79w0qLIo0p6AzVjIKLn/KYmpxrAKfr/MAjPso8pQXz
         BtyXDuAf7H2qy8HjobzzPKtxbdzFtHwKu4APGLtosiNCRI3ndPlr1FqL6ZxJICmPr4jZ
         v3iXbfDJB28E0XunvWeRpNbq8IwWz00JmarchDIJw8uG4n1iXsw/d+Esk44aN0bafmlY
         /9Qg==
X-Gm-Message-State: AOAM532rG+DOAZ1NQBrQwQ1CFuUz1rW8D+5NnziR+keIsPj31XavpHgZ
        rhx5MwnHdKHg9TFoupzUszxhDHA2jc06d332Pq/N8w==
X-Google-Smtp-Source: ABdhPJwCAqzqIHox5d9Fipy+SZTjtLhmdrSkjUgWcJvdgeg9P4Xd8L/xFYISPzRrvadDQs5OUppkb3ifg3SYQwhg6qI=
X-Received: by 2002:a2e:8799:0:b0:24f:ada:4b2d with SMTP id
 n25-20020a2e8799000000b0024f0ada4b2dmr5914438lji.260.1650896045459; Mon, 25
 Apr 2022 07:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <20220422211055.9278-1-palmer@rivosinc.com> <CAMuHMdV7d4XfStMiSmU3eZBb3mdHdsvqJZff358Rf3Cb-Kzx+Q@mail.gmail.com>
 <CAK9=C2WTY8+-98XuxRYTaRe4aVJufaB5wr35KRoTKEttUM7JzQ@mail.gmail.com> <CAMuHMdV4aZ1U2CGjSOSvFsq-rHKq34wyS-TMvR=7kX68YQHFjQ@mail.gmail.com>
In-Reply-To: <CAMuHMdV4aZ1U2CGjSOSvFsq-rHKq34wyS-TMvR=7kX68YQHFjQ@mail.gmail.com>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Mon, 25 Apr 2022 19:43:54 +0530
Message-ID: <CAK9=C2X5qvWEwwMJK52+UFC8DJBDbZBPY0_iXVHdBA0Y5Ps19w@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Allow the used to downgrade to sv48 when HW
 supports sv57
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Palmer Dabbelt <palmer@rivosinc.com>,
        Alexandre Ghiti <alexandre.ghiti@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 25, 2022 at 7:06 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Anup,
>
> On Mon, Apr 25, 2022 at 3:14 PM Anup Patel <apatel@ventanamicro.com> wrote:
> > On Mon, Apr 25, 2022 at 6:12 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Fri, Apr 22, 2022 at 11:42 PM Palmer Dabbelt <palmer@rivosinc.com> wrote:
> > > > Similar to the previous patch, this allows a dt-selected downgrade to
> > > > sv48 on systems that support sv57 in case users don't need the extra VA
> > > > bits and want to save memory or improve performance.
> > > >
> > > > Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> > > > ---
> > > > This is on top of the patches from Alex's set that I dropped.
> > >
> > > You mean "[PATCH v3 13/13] riscv: Allow user to downgrade to sv39
> > > when hw supports sv48 if !KASAN"?
> > > 20211206104657.433304-14-alexandre.ghiti@canonical.com
> > >
> > > For both: "DT describes hardware, not software policy"?
> >
> > It is possible that HW is designed to support both Sv48 and Sv39 but
> > there is some errata due to which Sv48 does not work correctly ?
>
> In that case, I assume the software has to disable Sv48 on its own?
> Fixed hardware should use a different compatible value, so software
> will know when the issue is fixed, and the feature can be used.
> How else is DTB backwards-compatibility supposed to work?

Usually, HW vendors will use different names for incrementally
improving implementations so they will tend to create separate
dts/dtsi files for newer implementations with some sharing via
common dtsi files.

>
> > We should allow users to downgrade the MMU mode, due to
> > their own reasons. In fact, users can also disable an extension
> > by not showing it in the DT ISA string.
>
> That sounds like a software policy, too.
> What is wrong with a kernel command line option?

The MMU modes are detected very early and even before the kernel
command-line is parsed.

> If you want it in your DTB, you can add it to chosen/bootargs.

If HW vendor describe complete details in DT and disables few
things in chosen/bootargs then it means there is some issue with
those things disabled via chosen/bootargs.

A HW vendor might never want to advertise broken extensions in
their implementation so the ISA string and various HART features
in DT will be set based on working functionality on real hardware.

Regards,
Anup

>
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
