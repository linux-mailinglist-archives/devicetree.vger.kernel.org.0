Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1AA035CFD5
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 19:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244659AbhDLRv5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 13:51:57 -0400
Received: from mailoutvs20.siol.net ([185.57.226.211]:36661 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S244489AbhDLRv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 13:51:57 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id C4F8F5256A1;
        Mon, 12 Apr 2021 19:51:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id p7fWFXGhuUnB; Mon, 12 Apr 2021 19:51:36 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 7226B525715;
        Mon, 12 Apr 2021 19:51:36 +0200 (CEST)
Received: from kista.localnet (cpe-86-58-17-133.cable.triera.net [86.58.17.133])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id D730F5256A1;
        Mon, 12 Apr 2021 19:51:35 +0200 (CEST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Andre Przywara <andre.przywara@arm.com>,
        Michael Weiser <michael.weiser@gmx.de>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: Re: [linux-sunxi] [PATCH] arm64: dts: allwinner: Revert SD card CD GPIO for Pine64-LTS
Date:   Mon, 12 Apr 2021 19:51:35 +0200
Message-ID: <2453001.GT6EyWp2Io@kista>
In-Reply-To: <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
References: <20210412000813.13071-1-andre.przywara@arm.com> <20210412174558.4ba90cf8@slackpad.fritz.box> <YHSGRSQr5w0h8vtt@weiser.dinsnail.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne ponedeljek, 12. april 2021 ob 19:41:25 CEST je Michael Weiser napisal(a):
> Hi Andre, ChenYu,
> 
> On Mon, Apr 12, 2021 at 05:45:58PM +0100, Andre Przywara wrote:
> > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b/
arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > > index e79ce49e7e6a..843338e19694 100644
> > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> > > > @@ -21,5 +21,5 @@
> > > >  };
> > > >
> > > >  &mmc0 {
> > > > -       cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 push-push switch 
*/
> > > > +       non-removable;          /* card detect is broken on some 
boards */  
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
> 
> BTW: My boards have a marking "PINE64-R18-V1_1" and below it
> "2017-08-03" on their upper side. On the back it says on one sticker
> "Model:PineA64 2GB LTS" and on another "2O1-PINE64R18-00" and
> "PINE64-R18-V1.1 2G". Is CD being stuck at 1 a bug of revision 1.0
> perhaps?  Is there a way to detect this difference in software and add
> some sort of quirk handler for it?

This is job for bootloader (U-Boot) which can patch DT. Most Allwinner boards 
have no reliable way to be distinguished, except from Olimex. So I would say 
it's not possible.

Best regards,
Jernej



