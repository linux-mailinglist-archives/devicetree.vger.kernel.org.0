Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6950BDCBA
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2019 13:08:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404304AbfIYLIt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 07:08:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:34784 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2404293AbfIYLIs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Sep 2019 07:08:48 -0400
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E87692082F;
        Wed, 25 Sep 2019 11:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1569409727;
        bh=FMDS8H1Rv7cPuJUqBeDnNtTPKy6Ryfmb3rVdLRw8l9s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Lj4oicj7cJomaLMxHcbWE1rG5FrENpsW1jl+RsL9x5er1qVQYkoSJY0yn10wz6AB+
         Lj+HNMxEgLqmFVWgK3ottEq09ElWg180t4nwcklu03yNkJYU62yghpTpItEQuxm3Y4
         lVw/xkgnCx6kjo7/gDQbhoGB+G9pTcTFT0VQWprI=
Date:   Wed, 25 Sep 2019 13:08:44 +0200
From:   Maxime Ripard <mripard@kernel.org>
To:     Vasily Khoruzhick <anarsoul@gmail.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Harald Geyer <harald@ccbib.org>, Chen-Yu Tsai <wens@csie.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-ID: <20190925110844.qfm5ris7xeze44th@gilmour>
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="xfvtyfmvyh5dzqpu"
Content-Disposition: inline
In-Reply-To: <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xfvtyfmvyh5dzqpu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 23, 2019 at 04:55:59PM -0700, Vasily Khoruzhick wrote:
> On Mon, Sep 23, 2019 at 4:51 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > On Mon, Aug 12, 2019 at 10:39 PM Maxime Ripard
> > <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, Aug 12, 2019 at 11:01:51AM -0700, Vasily Khoruzhick wrote:
> > > > On Mon, Aug 12, 2019 at 1:04 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Thu, Aug 08, 2019 at 12:59:07PM -0700, Vasily Khoruzhick wrote:
> > > > > > On Thu, Aug 8, 2019 at 9:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > >
> > > > > > > On Wed, Aug 07, 2019 at 10:36:08AM -0700, Vasily Khoruzhick wrote:
> > > > > > > > On Wed, Aug 7, 2019 at 4:56 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > > > > > >
> > > > > > > > > On Tue, Aug 06, 2019 at 07:39:26PM -0700, Vasily Khoruzhick wrote:
> > > > > > > > > > On Tue, Aug 6, 2019 at 2:14 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > On 2019-08-06 9:52 pm, Vasily Khoruzhick wrote:
> > > > > > > > > > > > On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
> > > > > > > > > > > >>
> > > > > > > > > > > >> Vasily Khoruzhick writes:
> > > > > > > > > > > >>> On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > > > > > > > > > >>>>
> > > > > > > > > > > >>>> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > > > > > > > > >>>>> Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > > > > > > > > >>>>> as result 'perf top' shows no events.
> > > > > > > > > > > >>>>
> > > > > > > > > > > >>>> Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > > > > > > > > > >>>> It could well just be that the interrupt numbers are wrong...
> > > > > > > > > > > >>>
> > > > > > > > > > > >>> Looks like it does, at least result looks plausible:
> > > > > > > > > > > >>
> > > > > > > > > > > >> I'm using perf stat regularly (cache benchmarks) and it works fine.
> > > > > > > > > > > >>
> > > > > > > > > > > >> Unfortunately I wasn't aware that perf stat is a poor test for
> > > > > > > > > > > >> the interrupts part of the node, when I added it. So I'm not too
> > > > > > > > > > > >> surprised I got it wrong.
> > > > > > > > > > > >>
> > > > > > > > > > > >> However, it would be unfortunate if the node got removed completely,
> > > > > > > > > > > >> because perf stat would not work anymore. Maybe we can only remove
> > > > > > > > > > > >> the interrupts or just fix them even if the HW doesn't work?
> > > > > > > > > > > >
> > > > > > > > > > > > I'm not familiar with PMU driver. Is it possible to get it working
> > > > > > > > > > > > without interrupts?
> > > > > > > > > > >
> > > > > > > > > > > Yup - you get a grumpy message from the driver, it will refuse sampling
> > > > > > > > > > > events (the ones which weren't working anyway), and if you measure
> > > > > > > > > > > anything for long enough that a counter overflows you'll get wonky
> > > > > > > > > > > results. But for counting hardware events over relatively short periods
> > > > > > > > > > > it'll still do the job.
> > > > > > > > > >
> > > > > > > > > > I tried to drop interrupts completely from the node but 'perf top' is
> > > > > > > > > > still broken. Though now in different way: it complains "cycles: PMU
> > > > > > > > > > Hardware doesn't support sampling/overflow-interrupts. Try 'perf
> > > > > > > > > > stat'"
> > > > > > > > >
> > > > > > > > > I have no idea if that's the culprit, but what is the state of the
> > > > > > > > > 0x09010000 register?
> > > > > > > >
> > > > > > > > What register is that and how do I check it?
> > > > > > >
> > > > > > > It's in the CPUX Configuration block, and the bits are labelled as CPU
> > > > > > > Debug Reset.
> > > > > > >
> > > > > > > And if you have busybox, you can use devmem.
> > > > > >
> > > > > > CPUX configuration block is at 0x01700000 according to A64 user
> > > > > > manual, and particular register you're interested in is at 0x01700080,
> > > > > > its value is 0x1110110F.
> > > > > >
> > > > > > Bits 16-19 are not defined in user manual and are not set.
> > > > >
> > > > > Sorry, I somehow thought this was for the H6...
> > > > >
> > > > > I don't have any idea then :/
> > > >
> > > > OK, so what should we do? 'perf top'/'perf record' work fine if PMU
> > > > node is dropped, but they don't work if PMU node is present (even with
> > > > interrupts dropped). I'd prefer to have 'perf top' and 'perf record'
> > > > working instead of 'perf stat'
> > >
> > > Well, it doesn't work so we should just remove the node, and if
> > > someone wants it back, they should figure it out.
> >
> > Hey Maxime,
> >
> > So can you merge this patch?
>
> Added new Maxime's email to CC

Queued as a fix for 5.4, thanks!
Maxime

--xfvtyfmvyh5dzqpu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYtKvAAKCRDj7w1vZxhR
xR1uAP97hTHRaN8dhsyjKWxKH1xeWMcMtioTmtYPAjmrULwgpQD+PRLN3idwDWf8
1xX4j9HiktGKEPSFa5JcdzrqH2NtLAU=
=roCs
-----END PGP SIGNATURE-----

--xfvtyfmvyh5dzqpu--
