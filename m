Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8752B84B1A
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 13:56:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729633AbfHGL4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 07:56:17 -0400
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:38983 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727096AbfHGL4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 07:56:17 -0400
X-Originating-IP: 88.168.111.231
Received: from localhost (lpr83-1-88-168-111-231.fbx.proxad.net [88.168.111.231])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id D8BE3E000D;
        Wed,  7 Aug 2019 11:56:14 +0000 (UTC)
Date:   Wed, 7 Aug 2019 13:56:14 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Harald Geyer <harald@ccbib.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-ID: <20190807115614.phm7sbyae6yajkug@flea>
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
 <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
 <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com>
 <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > >>
> > >> Vasily Khoruzhick writes:
> > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >>>>
> > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > >>>>> as result 'perf top' shows no events.
> > >>>>
> > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > >>>> It could well just be that the interrupt numbers are wrong...
> > >>>
> > >>> Looks like it does, at least result looks plausible:
> > >>
> > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > >>
> > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > >> the interrupts part of the node, when I added it. So I'm not too
> > >> surprised I got it wrong.
> > >>
> > >> However, it would be unfortunate if the node got removed completely,
> > >> because perf stat would not work anymore. Maybe we can only remove
> > >> the interrupts or just fix them even if the HW doesn't work?
> > >
> > > I'm not familiar with PMU driver. Is it possible to get it working
> > > without interrupts?
> >
> > Yup - you get a grumpy message from the driver, it will refuse sampling
> > events (the ones which weren't working anyway), and if you measure
> > anything for long enough that a counter overflows you'll get wonky
> > results. But for counting hardware events over relatively short periods
> > it'll still do the job.
>
> I tried to drop interrupts completely from the node but 'perf top' is
> still broken. Though now in different way: it complains "cycles: PMU
> Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> stat'"

I have no idea if that's the culprit, but what is the state of the
0x09010000 register?

(in particular, are the bits 16-19 and 24 set or not?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
