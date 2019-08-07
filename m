Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 356C285228
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 19:36:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389147AbfHGRgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 13:36:35 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:38441 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388760AbfHGRgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 13:36:35 -0400
Received: by mail-ot1-f66.google.com with SMTP id d17so107638475oth.5
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 10:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ahAdMt9y/VNsV/qQd6y/xJHn8I5CpQDY3tZMcrNs4A=;
        b=ObxZYrA6VNyw2WNd9bgMvlmNcd6/7eKohgKlkt3sxiubQYzfbsyzxbYugiXVl+rX6s
         KFEry7YGiKl/RAY2GZm9y6E/eUl/XXHmlLb5jkJEPYReR4vAkzelXXuW7WC8PEdwTMSJ
         KyDx+yOUTM3DrtzDmCVw2B1qL1vPd5kdKRbttLIi3c3Boc/FTIuytauTWGJbpuEAX+S/
         jmmqu6q0WyUOtRdrCzZGiajrJU1Msg+wObjOEvuoPKnVVlJbKIpg/8PJeGx0RbImPetv
         NRJEN5oeKRArWHmglyLAamgBHZVl8BAs9J3+WnHNDhilpGpK+MOA5JypatKOPtqwHQ7u
         ll8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ahAdMt9y/VNsV/qQd6y/xJHn8I5CpQDY3tZMcrNs4A=;
        b=dkJIpqYBToqPBdcgZALSKYbJbFplgkv+ApgomjfaRRO8ZfWTR9MTwBq7Eq4i1aS8D4
         AjbksgpjA2UPjUMrMkF/tWzniz2htrkeJEE++Dm7z7+PAVvR7XP6QFADjpnD0qIm5IF8
         pe50B2Bl2Xxm9cv+l9gW25pxqDrcPD5NU1rWMSe+d6pPr7GMfzuFUnGL1XdMRTifug8J
         2k4SeI1huAbFfTg9ggeRbYO5a7SJWNYtLXUP18+IqRNjCnKBb3wtcFZFQSM7qhJk2OL6
         q1JK+KycsJWzR1NWOFtKwJUe6IpA1C9ad+6TZacv4bZ051YJ+z73KNLf5D38DGW3DJIM
         iA1Q==
X-Gm-Message-State: APjAAAXlZQPMeouTWK9SPOTFe+RDL7ayYZ0C63uGT6AsoRLc/XFX08++
        +5FYo/VAx62VgxicVaeQgvEb9OCC5s8jIix08fE=
X-Google-Smtp-Source: APXvYqzm6lbogH9emHG1HDu2xLWRfSw8r9srFqMIQuNwbv5KIxsLZzTEMC+DTxul5+vbGLi2ABtMU/29NyjFq/6ZiJs=
X-Received: by 2002:a9d:6742:: with SMTP id w2mr9272816otm.371.1565199394377;
 Wed, 07 Aug 2019 10:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com> <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at> <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com> <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
In-Reply-To: <20190807115614.phm7sbyae6yajkug@flea>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Wed, 7 Aug 2019 10:36:08 -0700
Message-ID: <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
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

On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > >>
> > > >> Vasily Khoruzhick writes:
> > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > >>>>
> > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > >>>>> as result 'perf top' shows no events.
> > > >>>>
> > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > >>>> It could well just be that the interrupt numbers are wrong...
> > > >>>
> > > >>> Looks like it does, at least result looks plausible:
> > > >>
> > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > >>
> > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > >> the interrupts part of the node, when I added it. So I'm not too
> > > >> surprised I got it wrong.
> > > >>
> > > >> However, it would be unfortunate if the node got removed completely,
> > > >> because perf stat would not work anymore. Maybe we can only remove
> > > >> the interrupts or just fix them even if the HW doesn't work?
> > > >
> > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > without interrupts?
> > >
> > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > events (the ones which weren't working anyway), and if you measure
> > > anything for long enough that a counter overflows you'll get wonky
> > > results. But for counting hardware events over relatively short periods
> > > it'll still do the job.
> >
> > I tried to drop interrupts completely from the node but 'perf top' is
> > still broken. Though now in different way: it complains "cycles: PMU
> > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > stat'"
>
> I have no idea if that's the culprit, but what is the state of the
> 0x09010000 register?

What register is that and how do I check it?

> (in particular, are the bits 16-19 and 24 set or not?
>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
