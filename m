Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 180FC8A539
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 20:02:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726479AbfHLSCO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 14:02:14 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:38621 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726263AbfHLSCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 14:02:13 -0400
Received: by mail-ot1-f67.google.com with SMTP id r20so12391194ota.5
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 11:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o5tzW8kWC8Wkh2FfueQgY1s7YWywf8RlckITjlgkEic=;
        b=VdPjHoFrZ4jfoGKCpi6jtnLfU3Cx05Xx2VBgkat13H9jFouqUyflaIGs12Ib/ix8Dr
         bfJN8qJ0yH58dtVc52QTOj81/IgUYsIRoXfmTBIoHbMkdwcA2HWxHZpUa1mh+Fu7rMMd
         EUoV4oPjYCfT8q/iK2lBu2tr2b9oL9k3+yIyq0tHRD3zeezbcBspXJAgFaIwwP88lFAR
         L3WAbbdn/Tiit4uCbtAklHWd3N2r0pxsLWMjeQ8xbIRXtEIREyLlOW5gh4PTlBWo5jRS
         OkzJbtXas4jjmovX20ayEGF+EyfSoIQXgO7kIrI/fL14Ij3qUijKLnwzSglBmtMUvwl3
         hztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o5tzW8kWC8Wkh2FfueQgY1s7YWywf8RlckITjlgkEic=;
        b=WJ81wo1kad+e0ic5sbGIULhpgBfEa5ooWCqKmzfwlMI83W64J48NsirMuv7jD+SXeN
         XFSKvh8M2QxZP1NVpRx0uSV5X2R01Vl12CKkJQin4YnYYcZq6yLgCgwOvu/N7oVCJH/f
         bldN3N/D/z6QXetZNPHtOH9Zbru9yMsXtzvod/wH8oX8MonwP9RoqVecBCFo+Q1RqjiO
         8EEqH/D0+0AKeip0tUl91pNLH3vKCag920VonUwv858dYNTAQvVHLDGYL0Kt1nexzyLA
         aiCtLGDew6OL96Br8JXkYeWLg0Q1MMrAS5g1Rz3iLXXuJ6v/3FdtpM/Xu6c20CmTJNys
         G4ww==
X-Gm-Message-State: APjAAAXvgqNDXuEextZ9PZZh/gWBHVRCOv4HZKyGIZ4vDPX4IrlNrIwB
        hTLiGXRchLtfd9xcW0x2ojJaR+UJb3Py1isp+LE=
X-Google-Smtp-Source: APXvYqylOeO29qsPxIoTbp6EhFehanCfO4C18T009/RlumoIDIP8r3sL9VMcaoQUAiUD13UBVbUvIv/7+IgGpoqV+qI=
X-Received: by 2002:aca:c40b:: with SMTP id u11mr267438oif.145.1565632932521;
 Mon, 12 Aug 2019 11:02:12 -0700 (PDT)
MIME-Version: 1.0
References: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com> <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at> <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com> <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea> <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea> <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
In-Reply-To: <20190812080420.saelmqb36vkelxn4@flea>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Mon, 12 Aug 2019 11:01:51 -0700
Message-ID: <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Maxime Ripard <maxime.ripard@bootlin.com>
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

On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> > On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > >
> > > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > > >>
> > > > > > > >> Vasily Khoruzhick writes:
> > > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > >>>>
> > > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > > >>>>
> > > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > > >>>
> > > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > > >>
> > > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > > >>
> > > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > > >> surprised I got it wrong.
> > > > > > > >>
> > > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > > >
> > > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > > without interrupts?
> > > > > > >
> > > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > > results. But for counting hardware events over relatively short periods
> > > > > > > it'll still do the job.
> > > > > >
> > > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > > stat'"
> > > > >
> > > > > I have no idea if that's the culprit, but what is the state of the
> > > > > 0x09010000 register?
> > > >
> > > > What register is that and how do I check it?
> > >
> > > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > > Debug Reset.
> > >
> > > And if you have busybox, you can use devmem.
> >
> > CPUX configuration block is at 0x01700000 according to A64 user
> > manual, and particular register you're interested in is at 0x01700080,
> > its value is 0x1110110F.
> >
> > Bits 16-19 are not defined in user manual and are not set.
>
> Sorry, I somehow thought this was for the H6...
>
> I don't have any idea then :/

OK, so what should we do? 'perf top'/'perf record' work fine if PMU
node is dropped, but they don't work if PMU node is present (even with
interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
working instead of 'perf stat'

> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
