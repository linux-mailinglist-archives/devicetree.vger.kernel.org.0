Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D90FD86AFA
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 21:59:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389883AbfHHT7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 15:59:35 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:38181 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389974AbfHHT7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 15:59:34 -0400
Received: by mail-ot1-f66.google.com with SMTP id d17so123697285oth.5
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 12:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ugDhB19yfFS0aM3Uabiflvuhd1IgEiF2mzCsiuDbJNc=;
        b=qDzXi76ZNAKXK4lQFoavAMCBscVIGMorp2jaWoL3kVtSz3TqTa4G+ihliJout9i3Df
         LpAx+ydbi+J9NYiWZji56W0wmEF+7viYu5qWsa6E7fVxB0S0YheBaZnFn8bv06f1iuDz
         H5pxb45/5zJWMJP/M7v1/YfYS2IX26bx0YAEoadRGc8T1nV5/sysAMbRX14w+pEzdPPD
         Orf4Q/QBQTMVWqb/n8s5fInfWvEUrfqJxVTlZJ10r0wrXd04JpZpDL7f8hLTa4grYgUF
         z6r0JhMLySJApedvUxZ4/ymu3vvmu3GBLa8v50BO2e/mLxM+IciUURn9zy5mBMxUmnfG
         u+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ugDhB19yfFS0aM3Uabiflvuhd1IgEiF2mzCsiuDbJNc=;
        b=Rf02QFVphNi/a5IhJ93Sfj8i8AmTeHceCQ7/lBHRQWy/bL/iPL+4E2p0Ao1UrXiRMh
         JnVM1Z86BGpqjv67EYAXy+kHk6kj2KbHFd8NnnFgYjnYxw4o3AebQfdP/ty++4WC8au6
         Dv1PAQfbkPis1BdpK+w9O4J0w2I+sQEayvOvYke3RsW8QEmfo8NZb/AURmqDtf/9ym15
         T7G4OI/x+5bt6RSZlHHYvelzflPHxOgxH96xkkRY7uBYOYec3xhpnZkWUe5m3fGef2BX
         jzSp4iARNPCrLPIQHAzrNtvEXUeXgH4ooMgHBOxqiXo7FocKv6iYlFz0DRNpTBguFpbX
         dkDg==
X-Gm-Message-State: APjAAAUJJGifq8JxO0qefxdpi3HY3AsYLi5ObaCwemWoeCc425QcKS9q
        7vAYHdyXzK3MHtbklPv1JUsUowLnqEaEJ2gAub4=
X-Google-Smtp-Source: APXvYqwJHl6GIua1FD+Buo37J7Ag2PpIObNU/B45znxXGNkeq+Zp3GVWvs/NOOJmohm48EnaVw8NqaiLJvd0oEuVFWk=
X-Received: by 2002:a9d:4109:: with SMTP id o9mr13486131ote.353.1565294374038;
 Thu, 08 Aug 2019 12:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com> <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at> <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com> <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea> <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
In-Reply-To: <20190808162628.pthvy3tgf3naj76s@flea>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Thu, 8 Aug 2019 12:59:07 -0700
Message-ID: <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
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

On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > >
> > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > >>
> > > > > >> Vasily Khoruzhick writes:
> > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > >>>>
> > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > >>>>> as result 'perf top' shows no events.
> > > > > >>>>
> > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > >>>
> > > > > >>> Looks like it does, at least result looks plausible:
> > > > > >>
> > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > >>
> > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > >> surprised I got it wrong.
> > > > > >>
> > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > >
> > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > without interrupts?
> > > > >
> > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > events (the ones which weren't working anyway), and if you measure
> > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > results. But for counting hardware events over relatively short periods
> > > > > it'll still do the job.
> > > >
> > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > stat'"
> > >
> > > I have no idea if that's the culprit, but what is the state of the
> > > 0x09010000 register?
> >
> > What register is that and how do I check it?
>
> It's in the CPUX Configuration block, and the bits are labelled as CPU
> Debug Reset.
>
> And if you have busybox, you can use devmem.

CPUX configuration block is at 0x01700000 according to A64 user
manual, and particular register you're interested in is at 0x01700080,
its value is 0x1110110F.

Bits 16-19 are not defined in user manual and are not set.

> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
