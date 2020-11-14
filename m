Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C699D2B314A
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 23:57:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726438AbgKNWz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 17:55:56 -0500
Received: from mail.kernel.org ([198.145.29.99]:54660 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726290AbgKNWz4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 17:55:56 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9F89E24073;
        Sat, 14 Nov 2020 22:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605394556;
        bh=F03z7ASZDhMp75BaEegVxEJhoHfF4XYk1uvSxbT+eMg=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=r/IF581xHU+eSnXzhIQOf1XmcOMSxc6WMGMcBkgUN3Yx7iz7PBvV3tI0UAJOUhVfo
         VVGCDqpU60jOnPGWJZ/7trTKjALcR59wM2pV0EaX0Xws0qESnjUeMEZ3NThX/PUpVx
         ua0liS3GwxS6us8+UyJdW7/d8SpXWNxdCi4stkUA=
Date:   Sat, 14 Nov 2020 23:55:50 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201114235550.0ecd4a0c@kernel.org>
In-Reply-To: <20201114214204.GE1551@shell.armlinux.org.uk>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-5-kabel@kernel.org>
        <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
        <20201114214204.GE1551@shell.armlinux.org.uk>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 21:42:04 +0000
Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:

> On Sat, Nov 14, 2020 at 10:36:09PM +0100, Andreas F=C3=A4rber wrote:
> > Hi Marek,
> >=20
> > On 14.11.20 19:32, Marek Beh=C3=BAn wrote: =20
> > > Turris Omnia has a SFP cage that, together with WAN PHY is connected =
to =20
> >=20
> > "an SFP"
> > Comma missing after PHY (or drop before together).
> >  =20
> > > eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
> > > it disabled. Until phylink has support for such multiplexor we will
> > > leave it to U-Boot to enable SFP and disable WAN PHY at boot time
> > > depending on whether a SFP module is present. =20
> >=20
> > multiplexor vs. multiplexer may be a British thing? Thunderbird
> > underlines it fwiw. =20
>=20
> Why doesn't someone who has a Turris Omnia come up with the support
> needed for this board, such as sending a patch to add support for
> this multiplexer?
>=20

Russell, I have this planned, but it is a bit complicated.
We discussed this maybe 1 or 2 years ago.

The thing is that phylink does not support such a thing nor is there a
simple way to add such support to it.

One problem we discussed last time is the correct DT binding. Should it
be something like this?
  eth2 {
    phy-mode =3D "sgmii";

    multiplexer {
      gpio =3D <&mod_def0_gpio>;

      option@0 {
        reg =3D <0>;
        phy-handle =3D <&phy1>;
      };

      option@1 {
        reg =3D <1>;
        sfp =3D <&sfp>;
        managed =3D "in-band-status";
      };
    };
  };

But who should handle this? Phylink, SFP, or maybe this should be
handled generically in OF / fwnode subsystem? I.e. a change in GPIO
value could change device's properties/children?

Also the &mod_def0_gpio is already used by the sfp node. Can this
multiplexor node also refer to it?

Marek
