Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DF073669F5
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 13:34:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234454AbhDULez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 07:34:55 -0400
Received: from foss.arm.com ([217.140.110.172]:60012 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233959AbhDULey (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Apr 2021 07:34:54 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0A8411D4;
        Wed, 21 Apr 2021 04:34:20 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A6F13F694;
        Wed, 21 Apr 2021 04:34:19 -0700 (PDT)
Date:   Wed, 21 Apr 2021 12:33:54 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Cc:     Michael Weiser <michael.weiser@gmx.de>,
        Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: Revert SD card CD GPIO for
 Pine64-LTS
Message-ID: <20210421123354.0a7209a1@slackpad.fritz.box>
In-Reply-To: <YHc11xC1vT1Yr+a1@weiser.dinsnail.net>
References: <20210414104740.31497-1-andre.przywara@arm.com>
        <YHc11xC1vT1Yr+a1@weiser.dinsnail.net>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Apr 2021 20:35:03 +0200
Michael Weiser <michael.weiser@gmx.de> wrote:

Maxime, Chen-Yu:

can you please try to push this patch into 5.12, still?
The Pine64-LTS' SD card is broken otherwise, on both versions of the
board. The incriminating patch was introduced in 5.12-rc1 (my bad!), so
it qualifies as a regression fix.

Many thanks!
Andre

> On Wed, Apr 14, 2021 at 11:47:40AM +0100, Andre Przywara wrote:
> 
> > Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
> > SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
> > along the way with the Pine64-LTS, which share the same base .dtsi.  
> 
> > This was based on the observation that the Pine64-LTS has as "push-push"
> > SD card socket, and that the schematic mentions the card detect GPIO.  
> 
> > After having received two reports about failing SD card access with that
> > patch, some more research and polls on that subject revealed that there
> > are at least two different versions of the Pine64-LTS out there:
> > - On some boards (including mine) the card detect pin is "stuck" at
> >   high, regardless of an microSD card being inserted or not.
> > - On other boards the card-detect is working, but is active-high, by
> >   virtue of an explicit inverter circuit, as shown in the schematic.  
> 
> > To cover all versions of the board out there, and don't take any chances,
> > let's revert the introduction of the active-low CD GPIO, but let's use
> > the broken-cd property for the Pine64-LTS this time. That should avoid
> > regressions and should work for everyone, even allowing SD card changes
> > now.
> > The SOPine card detect has proven to be working, so let's keep that
> > GPIO in place.  
> 
> I can confirm that this change works on my Pine64 LTS boards (with
> working high-active card detect) when applied to today's linux-next (which
> already includes your previous change to change the card detect GPIO
> from low- to high-active in sun50i-a64-sopine.dtsi).
> 
> > Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card")
> > Reported-by: Michael Weiser <michael.weiser@gmx.de>
> > Reported-by: Daniel Kulesz <kuleszdl@posteo.org>
> > Suggested-by: Chen-Yu Tsai <wens@csie.org>
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>  
> 
> Tested-by: Michael Weiser <michael.weiser@gmx.de>
> 
> Thanks!
> Michael
> 
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)  
> 
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > index e79ce49e7e6a..596a25907432 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > @@ -21,5 +21,5 @@
> >  };  
> 
> >  &mmc0 {
> > -	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
> > +	broken-cd;		/* card detect is broken on *some* boards */
> >  };  
> 

