Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC15135CEC6
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 18:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244853AbhDLQtH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 12:49:07 -0400
Received: from foss.arm.com ([217.140.110.172]:55666 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1345256AbhDLQqu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Apr 2021 12:46:50 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 366AD113E;
        Mon, 12 Apr 2021 09:46:31 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC7623F73B;
        Mon, 12 Apr 2021 09:46:29 -0700 (PDT)
Date:   Mon, 12 Apr 2021 17:45:58 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Michael Weiser <michael.weiser@gmx.de>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD
 GPIO for Pine64-LTS
Message-ID: <20210412174558.4ba90cf8@slackpad.fritz.box>
In-Reply-To: <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
References: <20210412000813.13071-1-andre.przywara@arm.com>
        <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Apr 2021 14:20:41 +0800
Chen-Yu Tsai <wens@csie.org> wrote:

> Hi,
> 
> On Mon, Apr 12, 2021 at 8:08 AM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
> > SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
> > along the way with the Pine64-LTS, which share the same base .dtsi.
> >
> > This was based on the observation that the Pine64-LTS has as "push-push"
> > SD card socket, and that the schematic mentions the card detect GPIO.
> >
> > After having received two reports about failing SD card access with that
> > patch, some more research and polls on that subject revealed that there
> > are at least two different versions of the Pine64-LTS out there:
> > - On some boards (including mine) the card detect pin is "stuck" at
> >   high, regardless of an microSD card being inserted or not.
> > - On other boards the card-detect is working, but is active-high, by
> >   virtue of an explicit inverter circuit, as shown in the schematic.
> >
> > To cover all versions of the board out there, and don't take any chances,
> > let's revert the introduction of the CD GPIO, and go back to the
> > non-removable property for the Pine64-LTS. That should avoid regressions
> > and should work for everyone.
> > The SOPine card detect has proven to be working, so let's keep that
> > GPIO in place.
> >
> > Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPine/LTS SD card")
> > Reported-by: Michael Weiser <michael.weiser@gmx.de>
> > Reported-by: Daniel Kulesz <kuleszdl@posteo.org>
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > index e79ce49e7e6a..843338e19694 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > @@ -21,5 +21,5 @@
> >  };
> >
> >  &mmc0 {
> > -       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
> > +       non-removable;          /* card detect is broken on some boards */  
> 
> So a revert is good, but has anyone tried using the "broken-cd" instead?

Ha, that's a good idea, I totally forgot about this property!

> That way, at least on Linux, the mmc core resorts to polling for a card.
> At least this way the card is still removable.

Yes indeed, I tested it on my "stuck at 1" Pine64-LTS, and it works like
a charm!

Daniel, Michael, can you test this on your boards? So removing the
cd-gpios property, and adding "broken-cd;" instead?

Cheers,
Andre
