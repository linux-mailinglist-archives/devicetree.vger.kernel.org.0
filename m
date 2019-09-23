Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 852FEBBF17
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2019 01:50:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729316AbfIWXuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 19:50:44 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45257 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729276AbfIWXun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 19:50:43 -0400
Received: by mail-ot1-f66.google.com with SMTP id 41so13728127oti.12
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 16:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6M82BLCcE+lzgAzJr+gcYZskquFS/0tUba7YEQFFpD8=;
        b=RLSl3v4uVz2nh2chdLQMPZc4yPsWrga3M3sSUvkQjPS8INpeBpOXG19ea1L8TrJfb7
         xCDcIDFT2kv3MRMb2omXbaaT3u21A/w990Gak8suvu/HmV+qRRFntqTE/iOVVN49Fo7J
         vCPHlQqnhjGEC+5J4xw4EIOCuWMBX2PuUgLYoK3xrIzw+Tl1gUf54bXKVKOf4XM66hJe
         xj1k7wIjUxfC9AzYLQ9KhiDXlRIq69f67DzVHq7bMWzcIC/ALCQWWxSynAdjBrVHoLce
         S7c6ARxmxjr4qaj6Kjg8eOryfuGwaYrp1nKc+1wBsdPa85JFYOajqdP4Da4ci8AUywDp
         v1gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6M82BLCcE+lzgAzJr+gcYZskquFS/0tUba7YEQFFpD8=;
        b=KQ8Oaw9w/gM86lPbUuyW58ao007yPK0aeHjYQGKLfRnHdaWuh/Aif1OoTDNd9rDx+i
         Jby4JiwLpZGGpfi1RFP54pLajogTj9rdYMchYSUOiE/bH7MPrXAXCsy7vIpvqdrm0btU
         CXOk5YFSkrjEWXNwYT0D/47xyN41FIb0g+esqkyhhYQBB2v3R04rdkDc8LGPpW/0psTG
         xX+bX0+Z0KkElA3AHtwwIasQiGNWXFE9Q9USVjTnYvexMIaLAySVFDdc3LvHtZQ/U1cz
         qmIDD01t1eKM2uT7Fy04nF5gLtDvWil8VXnWepQC6FEudEbbEQoDan+Z5FKwgrm2sIJW
         2svg==
X-Gm-Message-State: APjAAAWoeBPjjIJoSJNgJFZuDpLVo+kkxGtSZnKGy5WJUY+y3nhOGvvd
        4TEUC4ih0ekrSVqJRae1koXpNxO9VzFHGkzO9GZ6PQ==
X-Google-Smtp-Source: APXvYqy8rVmzK8V5x/5OG5ZUuvoTSroLiPRbreBASHZA2q+yyWSmak83DDpKcyg8w7QM1+AHOj6MAt9/+/zffGcjQSE=
X-Received: by 2002:a05:6830:86:: with SMTP id a6mr173496oto.353.1569282642422;
 Mon, 23 Sep 2019 16:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com> <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea> <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea> <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea> <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
In-Reply-To: <20190813053905.hu2hyi7fah2vujzz@flea>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Mon, 23 Sep 2019 16:51:03 -0700
Message-ID: <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
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

On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
> > On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> > > > On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > > > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > >
> > > > > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > > > > >>
> > > > > > > > > >> Vasily Khoruzhick writes:
> > > > > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > >>>>
> > > > > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > > > > >>>>
> > > > > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > > > > >>>
> > > > > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > > > > >>
> > > > > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > > > > >>
> > > > > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > > > > >> surprised I got it wrong.
> > > > > > > > > >>
> > > > > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > > > > >
> > > > > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > > > > without interrupts?
> > > > > > > > >
> > > > > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > > > > results. But for counting hardware events over relatively short periods
> > > > > > > > > it'll still do the job.
> > > > > > > >
> > > > > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > > > > stat'"
> > > > > > >
> > > > > > > I have no idea if that's the culprit, but what is the state of the
> > > > > > > 0x09010000 register?
> > > > > >
> > > > > > What register is that and how do I check it?
> > > > >
> > > > > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > > > > Debug Reset.
> > > > >
> > > > > And if you have busybox, you can use devmem.
> > > >
> > > > CPUX configuration block is at 0x01700000 according to A64 user
> > > > manual, and particular register you're interested in is at 0x01700080,
> > > > its value is 0x1110110F.
> > > >
> > > > Bits 16-19 are not defined in user manual and are not set.
> > >
> > > Sorry, I somehow thought this was for the H6...
> > >
> > > I don't have any idea then :/
> >
> > OK, so what should we do? 'perf top'/'perf record' work fine if PMU
> > node is dropped, but they don't work if PMU node is present (even with
> > interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
> > working instead of 'perf stat'
>
> Well, it doesn't work so we should just remove the node, and if
> someone wants it back, they should figure it out.

Hey Maxime,

So can you merge this patch?

> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
