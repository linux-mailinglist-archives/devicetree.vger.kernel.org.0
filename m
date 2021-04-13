Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C07E735DCF8
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 12:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344296AbhDMK7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 06:59:35 -0400
Received: from foss.arm.com ([217.140.110.172]:40360 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1344483AbhDMK7R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Apr 2021 06:59:17 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C50E7113E;
        Tue, 13 Apr 2021 03:58:57 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D3033F882;
        Tue, 13 Apr 2021 03:58:56 -0700 (PDT)
Date:   Tue, 13 Apr 2021 11:58:37 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Michael Weiser <michael.weiser@gmx.de>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD
 GPIO for Pine64-LTS
Message-ID: <20210413115837.232c465a@slackpad.fritz.box>
In-Reply-To: <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
References: <20210412000813.13071-1-andre.przywara@arm.com>
        <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
        <20210412174558.4ba90cf8@slackpad.fritz.box>
        <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Apr 2021 19:41:25 +0200
Michael Weiser <michael.weiser@gmx.de> wrote:

Hi Michael,

> Hi Andre, ChenYu,
> 
> On Mon, Apr 12, 2021 at 05:45:58PM +0100, Andre Przywara wrote:
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > > index e79ce49e7e6a..843338e19694 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > > @@ -21,5 +21,5 @@
> > > >  };
> > > >
> > > >  &mmc0 {
> > > > -       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
> > > > +       non-removable;          /* card detect is broken on some boards */    
> > > 
> > > So a revert is good, but has anyone tried using the "broken-cd" instead?  
> > Ha, that's a good idea, I totally forgot about this property!  
> 
> > > That way, at least on Linux, the mmc core resorts to polling for a card.
> > > At least this way the card is still removable.  
> > Yes indeed, I tested it on my "stuck at 1" Pine64-LTS, and it works like
> > a charm!  
> 
> > Daniel, Michael, can you test this on your boards? So removing the
> > cd-gpios property, and adding "broken-cd;" instead?  
> 
> Yes, it works fine. What flummoxed me at first was that obviously I also
> have to disable the ACTIVE_LOW definition in sun50i-a64-sopine.dtsi
> after having added and disabled an ACTIVE_HIGH definition in
> sun50i-a64-pine64-lts.dts.

Why? From my experiments it should not matter, the actual card presence
is typically detected via the SD bus anyway (if I understand the code
correctly). broken-cd just prevents installation of an interrupt
handler, so it's less efficient and prevents wakeup on card detect,
AFAICS.
But also: ACTIVE_HIGH *is* the right polarity, even for the
Pine64-LTS. At least that's what an earlier report from Daniel
suggested:
=> gpio input pf6
card inserted: value is 1
card removed: value is 0
So for your particular board (version) you could actually remove the
whole &mmc0 node override, use the same node as the SOPine (working
active-high CD) and it should work.

> BTW: My boards have a marking "PINE64-R18-V1_1" and below it
> "2017-08-03" on their upper side. On the back it says on one sticker
> "Model:PineA64 2GB LTS" and on another "2O1-PINE64R18-00" and
> "PINE64-R18-V1.1 2G". Is CD being stuck at 1 a bug of revision 1.0
> perhaps?  Is there a way to detect this difference in software and add
> some sort of quirk handler for it?

As Jernej mentioned, this would be U-Boot's task, but I don't see a
good reason for it. Firstly, you would need to find a good automatic
way of determining the board revision, which I doubt there is. And
secondly, I don't see the benefit: It works quite nicely with
broken-cd: card removals and insertions are detected automatically,
it's just not as efficient (interrupt-driven) as it could be.
Or do you see any problems with broken-cd?

Cheers,
Andre
