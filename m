Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FFA240516B
	for <lists+devicetree@lfdr.de>; Thu,  9 Sep 2021 14:43:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351145AbhIIMgU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Sep 2021 08:36:20 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:34342 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1352756AbhIIMdI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 9 Sep 2021 08:33:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
        Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
        Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
        In-Reply-To:References; bh=48ceJVAoRguaw2L3yNwORR8qHrMqT0LzCZJp/ceEfGc=; b=Lo
        Etph24tiJGxwO6/rHMNteoN14An5qk/BOoUwSDIPazZHRXBMIviBdUq9pc8XJvAPRXGRE7iB5D7AY
        THmdH2PHUzKCTcslm1b+rpmRJN7Dw1H73GQnB297nJ5ff4TuV+krRsS370YmBYIVMV1lZ9xjBRhxH
        43CTbE4MbncpSFQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1mOJDa-005u8e-3V; Thu, 09 Sep 2021 14:31:50 +0200
Date:   Thu, 9 Sep 2021 14:31:50 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH] ARM: dts: armada-{370,xp}: drop "marvell,orion-spi" from
 SPI controllers
Message-ID: <YTn+tiKfzl4odxE6@lunn.ch>
References: <20161207152109.17545-1-uwe@kleine-koenig.org>
 <87eg1jhi4l.fsf@free-electrons.com>
 <20161207154145.yr2iua73xnoyjsse@pengutronix.de>
 <20210909075005.fxy4vfarrvnmr6ez@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210909075005.fxy4vfarrvnmr6ez@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 09, 2021 at 09:50:05AM +0200, Uwe Kleine-König wrote:
> Hello,
> 
> On Wed, Dec 07, 2016 at 04:41:45PM +0100, Uwe Kleine-König wrote:
> > Hello Gregory,
> > 
> > On Wed, Dec 07, 2016 at 04:30:02PM +0100, Gregory CLEMENT wrote:
> > >  On mer., déc. 07 2016, Uwe Kleine-König <uwe@kleine-koenig.org> wrote:
> > > 
> > > > From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> > > >
> > > > The SPI controllers on Armada 370 and XP differ from the original Orion
> > > > SPI controllers (at least) in the configuration of the baud rate. So
> > > > it's wrong to claim compatibility which results in bogus baud rates.
> > > 
> > > Until two years ago with the commits
> > > df59fa7f4bca9658b75f0f5fee225b3a057475c5 and
> > > 4dacccfac69494ba70248b134352f299171c41b7
> > > we used "marvell,orion-spi" compatible on Armada XP and Armada 370
> > > without any problem.
> > > 
> > > The new compatible "marvell,armada-xp-spi" and "marvell,armada-xp-spi"
> > > allows to have more choice for the baudrate for a given clock but it is
> > > not true that Armada 370 and Armada XP are not compatible with
> > > "marvell,orion-spi".
> > 
> > The issue I was faced with that made me create this patch is that in
> > barebox no special case for 370/XP was active. The result was that a
> > device that could be operated at 60 MHz only got a clock of 11 MHz and
> > the driver assumed it configured 41.666 MHz. I didn't check if the same
> > can happen in the opposite direction (or if there are other important
> > incompatibilities) but still I'd say this is a bug with my patch being
> > the obvious fix.
> 
> I just found this patch in an old branch and wonder what do to with it.
> It still applies fine at least.
> 
> (If the original patch already disappeared from your inbox, it can be
> found at https://lore.kernel.org/r/20161207152109.17545-1-uwe@kleine-koenig.org/ )

If you remove "marvell,orion-spi" you are going to break running a new
DT blob on an old kernel.

The compatible list is supposed to be most specific to most generic in
order. So "marvell,orion-spi" is the fall back option for Armada, you
don't get all the features, but it should work at a basic level. And
in this case, barebox did its best, it gave you a working but
unexpectedly slow bus. If you take away "marvell,orion-spi", and there
is no support for "marvell,armada-xp-spi" and "marvell,armada-xp-spi"
in barebox, does that not then mean there is no SPI support at all?

   Andrew
