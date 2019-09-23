Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E8836BBF2B
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 01:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2503568AbfIWXzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 19:55:40 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:44528 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729276AbfIWXzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 19:55:39 -0400
Received: by mail-ot1-f67.google.com with SMTP id 21so13732553otj.11
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 16:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ld4yt3zZUkfE0K+qdq8slyfrF9Y3j3NuI5FXKXzK0gY=;
        b=fhObNYfLnaS05Lg4HHbkVSf92EZPQ3Nxp/1nUiyERiJw+VHaC6u5iwT2meh7ODXwwc
         sYztRb9S9c8Qs5klns/9KRsmlVB4CwOIyljV2I9dXL+eQAaoFgyoCoiVkTAupAoYE4mQ
         C28QEDHrlQ3WkaD+ZbyD9hawAUgfEXGeZnasYTBI4l7YpLpS8vb0fUBO7qJ2vgSMG4iQ
         04rbjQ2tg7138b9VyFLaVWSuQqdQe9ohCsySJJweg+XNC3fClnu/kHdXQUabXiT67m1e
         iI3Jd9ypfxupkuqLWvslHgQlKYF9VHzCixDlnPqzE08++x3CwNck2RlOP82+hgI7bn0l
         c8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ld4yt3zZUkfE0K+qdq8slyfrF9Y3j3NuI5FXKXzK0gY=;
        b=EJZaCJyrvQkDKAmvmBdGz2vnD9xC2foaOwNpXyQLX33N04cthMUaVqRwclxgyman3O
         o4nYyVyfUKZsxZEA15lJ4uoFu8yVZSz6azCv3I6V2pRrRM6BoS2CX5hg6cHyvljVs+nr
         CabHDiwc7xNx2N/Wf8jBgcp9Dl7xo0aP3PNx4RdEGlTmTgzb7cGkKRmZMBm6thv2nbp5
         D4XWI3ndPCatgTNSHShCUM9FD6WWMSQKBuzUeVVwNwVho7+hIQfnpHahzLT7aFn+F0uf
         bVKIzqIXk0fFMUm6HHAqtzTtbn5OB9sVocIG9gfadPT2RAWv0VYu4/neZZzSCTEHr/xa
         vIuQ==
X-Gm-Message-State: APjAAAVgFKo/9zDzMA04o5LcCLNWtXoGbh1ff/URA8/Sa2U/zjpGTWgb
        B9wY1OhVbEsMkq9J28oxHETxMl07moYP+msVo0Q=
X-Google-Smtp-Source: APXvYqwcGVekQI3ecRqlaGA7scA/FuGMB2y7n32kn4gEgmK9C1+3dal1OphVcVP5riM+/vuFAEP0G3Koxok+3zbb0ZQ=
X-Received: by 2002:a05:6830:110f:: with SMTP id w15mr198173otq.263.1569282938536;
 Mon, 23 Sep 2019 16:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com> <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea> <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea> <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea> <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea> <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
In-Reply-To: <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Mon, 23 Sep 2019 16:55:59 -0700
Message-ID: <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Harald Geyer <harald@ccbib.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 23, 2019 at 4:51 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
> > > On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> > > > > On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > >
> > > > > > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > > > > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > >
> > > > > > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > >
> > > > > > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > > > > > >>
> > > > > > > > > > >> Vasily Khoruzhick writes:
> > > > > > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > > >>>>
> > > > > > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > > > > > >>>>
> > > > > > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > > > > > >>>
> > > > > > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > > > > > >>
> > > > > > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > > > > > >>
> > > > > > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > > > > > >> surprised I got it wrong.
> > > > > > > > > > >>
> > > > > > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > > > > > >
> > > > > > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > > > > > without interrupts?
> > > > > > > > > >
> > > > > > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > > > > > results. But for counting hardware events over relatively short periods
> > > > > > > > > > it'll still do the job.
> > > > > > > > >
> > > > > > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > > > > > stat'"
> > > > > > > >
> > > > > > > > I have no idea if that's the culprit, but what is the state of the
> > > > > > > > 0x09010000 register?
> > > > > > >
> > > > > > > What register is that and how do I check it?
> > > > > >
> > > > > > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > > > > > Debug Reset.
> > > > > >
> > > > > > And if you have busybox, you can use devmem.
> > > > >
> > > > > CPUX configuration block is at 0x01700000 according to A64 user
> > > > > manual, and particular register you're interested in is at 0x01700080,
> > > > > its value is 0x1110110F.
> > > > >
> > > > > Bits 16-19 are not defined in user manual and are not set.
> > > >
> > > > Sorry, I somehow thought this was for the H6...
> > > >
> > > > I don't have any idea then :/
> > >
> > > OK, so what should we do? 'perf top'/'perf record' work fine if PMU
> > > node is dropped, but they don't work if PMU node is present (even with
> > > interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
> > > working instead of 'perf stat'
> >
> > Well, it doesn't work so we should just remove the node, and if
> > someone wants it back, they should figure it out.
>
> Hey Maxime,
>
> So can you merge this patch?

Added new Maxime's email to CC

> > Maxime
> >
> > --
> > Maxime Ripard, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com
