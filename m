Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B29502B34A0
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 12:28:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726980AbgKOL21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Nov 2020 06:28:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726840AbgKOL20 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Nov 2020 06:28:26 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30220C0613D1
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 03:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
        Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=4IcvHJPlTVAiFhi1uC5XcwUgfh8rZTTgWHi69Y0h4x4=; b=cHE4jUieJr68iER0ihqr4qa+n
        dyCECj3axxVJdzt1SlQjE19v+2aORqjDyKM8HTWec3Koq+yXKGs4rhxKkotFRHYw5+2WtobmpUqQ9
        ezFthYkMTNVrcbZvM/CY/1Vgj6O+KmKej73DtYekCJ7c9uYdEvbH71zrtniFKTseykswRgXh0xge6
        1B6fvc9tz81lMjwUoKPbObs5D13ZIXjJlZ/dGbO5bowBqfKe52473uZfuUy5P/E9we1ztI44BkDDL
        ziZVVVLnnqJu0sVKab+2HabjkSCjHAv4GVbsLL1XpWEc7zZtZo21NEkIqw1lPrQUrQx7mTvI74k7A
        eNLgbYqww==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59964)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1keGCh-0006S3-Pn; Sun, 15 Nov 2020 11:28:19 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1keGCh-0006P8-8O; Sun, 15 Nov 2020 11:28:19 +0000
Date:   Sun, 15 Nov 2020 11:28:19 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201115112819.GH1551@shell.armlinux.org.uk>
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-5-kabel@kernel.org>
 <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
 <20201114214204.GE1551@shell.armlinux.org.uk>
 <20201114235550.0ecd4a0c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114235550.0ecd4a0c@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 11:55:50PM +0100, Marek Behún wrote:
> On Sat, 14 Nov 2020 21:42:04 +0000
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> > On Sat, Nov 14, 2020 at 10:36:09PM +0100, Andreas Färber wrote:
> > > Hi Marek,
> > > 
> > > On 14.11.20 19:32, Marek Behún wrote:  
> > > > Turris Omnia has a SFP cage that, together with WAN PHY is connected to  
> > > 
> > > "an SFP"
> > > Comma missing after PHY (or drop before together).
> > >   
> > > > eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
> > > > it disabled. Until phylink has support for such multiplexor we will
> > > > leave it to U-Boot to enable SFP and disable WAN PHY at boot time
> > > > depending on whether a SFP module is present.  
> > > 
> > > multiplexor vs. multiplexer may be a British thing? Thunderbird
> > > underlines it fwiw.  
> > 
> > Why doesn't someone who has a Turris Omnia come up with the support
> > needed for this board, such as sending a patch to add support for
> > this multiplexer?
> > 
> 
> Russell, I have this planned, but it is a bit complicated.
> We discussed this maybe 1 or 2 years ago.
> 
> The thing is that phylink does not support such a thing nor is there a
> simple way to add such support to it.

What I'm saying is that hacking around this problem doesn't actually 
solve it, and phylink is not going to suddenly grow support for this.
It's not something I'm planning to work on adding support for.

> One problem we discussed last time is the correct DT binding. Should it
> be something like this?
>   eth2 {
>     phy-mode = "sgmii";
> 
>     multiplexer {
>       gpio = <&mod_def0_gpio>;
> 
>       option@0 {
>         reg = <0>;
>         phy-handle = <&phy1>;
>       };
> 
>       option@1 {
>         reg = <1>;
>         sfp = <&sfp>;
>         managed = "in-band-status";
>       };
>     };
>   };

See comments below.

> But who should handle this? Phylink, SFP, or maybe this should be
> handled generically in OF / fwnode subsystem? I.e. a change in GPIO
> value could change device's properties/children?

The DT folk will object to it being handled in the OF specific code, it
seems very obvious to me that would be the case. The OF specific code
is really just a library to parse the DT descriptions, it has very
little complexity to it, and it makes no decisions about what to parse
depending on external inputs. Also, it's technically infeasible when
you consider what it would take to implement it at that level.

Let's say for argument that it was implemented in the OF specific code.
What would it take? Well, when the GPIO changes state, we would have to
cause the code parsing this eth2 node to be re-run. The only way to do
that today would be to unbind the driver for eth2 and rebind it. That
will mean that anything setup with eth2 (e.g. interface renaming) would
be lost. It would also be very noisy in the kernel log, and would likely
take quite some time to process. The OF specific code would need to know
to redirect a lookup of "managed", "sfp", "phy" etc in the eth2 node
into the relative sub-node.

This is clearly not a feasible idea for something that dynamically
changes.

It doesn't make sense to try to do any of this at the SFP layer. The SFP
layer just concerns itself with the SFP cage, the inserted module, and
nothing more. It doesn't have any knowledge of what it is connected to
on the host side, nor should it.

That leaves phylink, which is told via the SFP layer when a module is
inserted or removed. It isn't told in real-time as the MOD_DEF0 signal
changes state however, only after the module has been successfully
detected. This leads to a race condition where phylink can think that
a module is not inserted, but it really is, and the link comes up on
your PHY, but that PHY is no longer connected to the ethernet
controller because MOD_DEF0 has changed state.

The only way around that is to have phylink check the state of MOD_DEF0
itself each time _before_ it uses the results of the on-board PHY.
However, phylink can't know the state of MOD_DEF0 (see below.)

> Also the &mod_def0_gpio is already used by the sfp node. Can this
> multiplexor node also refer to it?

The GPIO library does not allow multiple users of a single GPIO, so
this would not work.

I know this is not an easy problem to solve, but I don't think hacking
around the problem in the way that is being done in this patch set is
really helping.

Having an ethernet node with both a SFP cage and a phy will cause
problems when a SFP is detected containing a PHY. The two struct
phy_device pointers, one that is maintained by phylink and another in
struct net_device, will both be overwritten with the SFP PHY, losing
the on-board PHY. This will result in a memory and resource leak at
minimum.

At minimum, the first thing that needs to happen in phylink for this
is we split the pointer for the on-board PHY from the SFP module PHY,
so we can keep track of both. We then need to deal with the
struct net_device phy pointer, setting it as appropriate depending
on whether a module is inserted. That should get us to a point where
your proposed DT patch containing both the SFP and PHY can be used,
and the kernel will make the right decision, except for the MOD_DEF0
issue I mention above. Solving that is going to be hard, because it
seems specific to your platform, and I don't have an idea that would
be feasible at the moment.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
