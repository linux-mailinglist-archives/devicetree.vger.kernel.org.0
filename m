Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7827335CFEF
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 20:01:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241352AbhDLSBk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 14:01:40 -0400
Received: from heinz.dinsnail.net ([81.169.187.250]:37170 "EHLO
        heinz.dinsnail.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240038AbhDLSBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 14:01:39 -0400
X-Greylist: delayed 916 seconds by postgrey-1.27 at vger.kernel.org; Mon, 12 Apr 2021 14:01:39 EDT
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
        by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id 13CHj9LX011018;
        Mon, 12 Apr 2021 19:45:09 +0200
Received: from eldalonde.UUCP (uucp@localhost)
        by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id 13CHj8VK011017;
        Mon, 12 Apr 2021 19:45:08 +0200
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1] (may be forged))
        by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id 13CHfPTn017403;
        Mon, 12 Apr 2021 19:41:25 +0200
Received: (from michael@localhost)
        by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id 13CHfPj2017402;
        Mon, 12 Apr 2021 19:41:25 +0200
Date:   Mon, 12 Apr 2021 19:41:25 +0200
From:   Michael Weiser <michael.weiser@gmx.de>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD
 GPIO for Pine64-LTS
Message-ID: <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
References: <20210412000813.13071-1-andre.przywara@arm.com>
 <CAGb2v65uwo5Ns_ODNyX9S4H=cS6TGWCgaEyzhMaRaayxUtif2g@mail.gmail.com>
 <20210412174558.4ba90cf8@slackpad.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412174558.4ba90cf8@slackpad.fritz.box>
X-dinsnail.net-MailScanner-Information: Please contact the ISP for more information
X-dinsnail.net-MailScanner-ID: 13CHj9LX011018
X-dinsnail.net-MailScanner: Found to be clean
X-dinsnail.net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andre, ChenYu,

On Mon, Apr 12, 2021 at 05:45:58PM +0100, Andre Przywara wrote:
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > index e79ce49e7e6a..843338e19694 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > @@ -21,5 +21,5 @@
> > >  };
> > >
> > >  &mmc0 {
> > > -       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch */
> > > +       non-removable;          /* card detect is broken on some boards */  
> > 
> > So a revert is good, but has anyone tried using the "broken-cd" instead?
> Ha, that's a good idea, I totally forgot about this property!

> > That way, at least on Linux, the mmc core resorts to polling for a card.
> > At least this way the card is still removable.
> Yes indeed, I tested it on my "stuck at 1" Pine64-LTS, and it works like
> a charm!

> Daniel, Michael, can you test this on your boards? So removing the
> cd-gpios property, and adding "broken-cd;" instead?

Yes, it works fine. What flummoxed me at first was that obviously I also
have to disable the ACTIVE_LOW definition in sun50i-a64-sopine.dtsi
after having added and disabled an ACTIVE_HIGH definition in
sun50i-a64-pine64-lts.dts.

BTW: My boards have a marking "PINE64-R18-V1_1" and below it
"2017-08-03" on their upper side. On the back it says on one sticker
"Model:PineA64 2GB LTS" and on another "2O1-PINE64R18-00" and
"PINE64-R18-V1.1 2G". Is CD being stuck at 1 a bug of revision 1.0
perhaps?  Is there a way to detect this difference in software and add
some sort of quirk handler for it?
-- 
Thanks,
Michael
