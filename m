Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD34184290
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 04:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726331AbfHGCjy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 22:39:54 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:37759 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726238AbfHGCjx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 22:39:53 -0400
Received: by mail-ot1-f68.google.com with SMTP id s20so32856907otp.4
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 19:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nsN+W+tHkf9S/q/MOG1TZe/lo7oWSg0iBMLUYKiUCrk=;
        b=CP+Qxzp5jZd1Mkx6ZejekkAiXPXA2GH47NNjCugTTGc3976zYfP0UDboW3YnqurczH
         bOu+MpFAqKP+hopsDl1tShVKYtcWCDcpUinkuZzw/56NiI54NgPfb8hGeVmvE5GR0TOD
         JLx/KkyyVUWqdKyM2WuO9m7As13NFRwxBnisUyq5Q6paUZQHcvS9tZHz72ra9BtAGJAR
         xd+1Rvz7UipkHtAUSWrwBPWxwrO6jRk1/4lU7br7CXuQFDnUVVnYqXAXJMIX7ne9WPum
         aJ5oEKQkaEeJPDgRoyn5sCO0bfWLBHbfyhZ8dIztzkC3tNQLC/bJ3wZCPrFp374ssQOG
         pfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nsN+W+tHkf9S/q/MOG1TZe/lo7oWSg0iBMLUYKiUCrk=;
        b=h1q7vbXTkBhrwAs8yZ+fzyYQVVsO3R+/ZlmUgPLmYtTsIWGiURIw33du5SmxORueoj
         bj0SccYj80kmEfM3ezze3nj7QLDB0TNXJHAVjitBkAXK+dzVCCyQ9fQ1J+36fQJ6YLbJ
         3uLPvgE63yB4Y08xh2m9fU3phpDe+hV7/e8p7FGVmPEwoA/XQ1m2/an72yKSKusS6QIo
         bDeYF41uV9QiUGMstWxlzsK01IbNGwDwI/ZbvRg+OxI/8+wql0kPMNW4a7ydSdRxcGhC
         d2wYeDX9txzfeRtmQVi1Tjrt014NZnAd6I/pCn64PKYutcw1rdeme4ZXxJyGmzJHBHK6
         bNYA==
X-Gm-Message-State: APjAAAWWHXIcdaVwyRlIhjoZpZdvP1FdHjKVssphoYXGn08Y1dxH0OzH
        mVIuzFoCdnjWSifxV5JiRos+anBUdMVQrapTXCc=
X-Google-Smtp-Source: APXvYqyV/SFOHeCTW6aQCOU24dlwExCHCOpP7wgvYfO87BY8gMtkUzDMJYo/9Vy//o0vWGf7RuC8yI+pXVo2djGLw14=
X-Received: by 2002:a05:6808:8c2:: with SMTP id k2mr4642771oij.98.1565145592765;
 Tue, 06 Aug 2019 19:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com> <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at> <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
In-Reply-To: <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Tue, 6 Aug 2019 19:39:26 -0700
Message-ID: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Harald Geyer <harald@ccbib.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> >>
> >> Vasily Khoruzhick writes:
> >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>>>
> >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> >>>>> as result 'perf top' shows no events.
> >>>>
> >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> >>>> It could well just be that the interrupt numbers are wrong...
> >>>
> >>> Looks like it does, at least result looks plausible:
> >>
> >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> >>
> >> Unfortunately I wasn't aware that perf stat is a poor test for
> >> the interrupts part of the node, when I added it. So I'm not too
> >> surprised I got it wrong.
> >>
> >> However, it would be unfortunate if the node got removed completely,
> >> because perf stat would not work anymore. Maybe we can only remove
> >> the interrupts or just fix them even if the HW doesn't work?
> >
> > I'm not familiar with PMU driver. Is it possible to get it working
> > without interrupts?
>
> Yup - you get a grumpy message from the driver, it will refuse sampling
> events (the ones which weren't working anyway), and if you measure
> anything for long enough that a counter overflows you'll get wonky
> results. But for counting hardware events over relatively short periods
> it'll still do the job.

I tried to drop interrupts completely from the node but 'perf top' is
still broken. Though now in different way: it complains "cycles: PMU
Hardware doesn't support sampling/overflow-interrupts. Try 'perf
stat'"

Is there any way to make it working?

>
> Robin.
