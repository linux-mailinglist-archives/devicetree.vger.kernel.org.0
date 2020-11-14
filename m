Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53A872B314B
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 23:58:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726189AbgKNW6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 17:58:00 -0500
Received: from mail.kernel.org ([198.145.29.99]:54808 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726136AbgKNW6A (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 17:58:00 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 8B4A724073;
        Sat, 14 Nov 2020 22:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605394680;
        bh=s1+jgYcGpXgQHNclRjhT9nHnYx+mAXzhmsUvckGchVg=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=R7Av2/EN+aph2a5KuND1jVhDOql89A+SIrZ6fFy3swqSGQzrd70yKd41Kn6RddSjR
         DSEQkXY1vDcB/1wRUchd0AzIR9PzA2vTE8n+oAZ8k4/i+i2cyW9g9l8bcyrkI2Ytq6
         JKtsKG56/ctQGnGFQgRMNEvl7W50IhTEBdvlYZgU=
Date:   Sat, 14 Nov 2020 23:57:54 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201114235754.16c5e4c0@kernel.org>
In-Reply-To: <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-5-kabel@kernel.org>
        <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 22:36:09 +0100
Andreas F=C3=A4rber <afaerber@suse.de> wrote:

> Hi Marek,
>=20
> On 14.11.20 19:32, Marek Beh=C3=BAn wrote:
> > Turris Omnia has a SFP cage that, together with WAN PHY is connected to=
 =20
>=20
> "an SFP"
> Comma missing after PHY (or drop before together).
>=20
> > eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
> > it disabled. Until phylink has support for such multiplexor we will
> > leave it to U-Boot to enable SFP and disable WAN PHY at boot time
> > depending on whether a SFP module is present. =20
>=20
> multiplexor vs. multiplexer may be a British thing? Thunderbird
> underlines it fwiw.
>=20
> >=20
> > Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>
> > Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")
> > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > Cc: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
> > Cc: Jason Cooper <jason@lakedaemon.net>
> > Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> > Cc: Andreas F=C3=A4rber <afaerber@suse.de>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> > ---
> >  arch/arm/boot/dts/armada-385-turris-omnia.dts | 19 ++++++++++++++++++-
> >  1 file changed, 18 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/b=
oot/dts/armada-385-turris-omnia.dts
> > index 7ccebf7d1757..14c21cddef72 100644
> > --- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
> > +++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> > @@ -82,6 +82,22 @@ pcie@3,0 {
> >  			};
> >  		};
> >  	};
> > +
> > +	sfp: sfp {
> > +		compatible =3D "sff,sfp";
> > +		i2c-bus =3D <&sfp_i2c>;
> > +		tx-fault-gpios =3D <&pcawan 0 GPIO_ACTIVE_HIGH>;
> > +		tx-disable-gpios =3D <&pcawan 1 GPIO_ACTIVE_HIGH>;
> > +		rate-select0-gpios =3D <&pcawan 2 GPIO_ACTIVE_HIGH>;
> > +		los-gpios =3D <&pcawan 3 GPIO_ACTIVE_HIGH>;
> > +		mod-def0-gpios =3D <&pcawan 4 GPIO_ACTIVE_LOW>;
> > +
> > +		/*
> > +		 * For now this has to be enabled at boot time by U-Boot when
> > +		 * a SFP module is present.
> > +		 */
> > +		status =3D "disabled";
> > +	};
> >  };
> > =20
> >  &bm {
> > @@ -130,6 +146,7 @@ &eth2 {
> >  	phy-mode =3D "sgmii";
> >  	phy =3D <&phy1>;
> >  	phys =3D <&comphy5 2>;
> > +	sfp =3D <&sfp>;
> >  	buffer-manager =3D <&bm>;
> >  	bm,pool-long =3D <2>;
> >  	bm,pool-short =3D <3>;
> > @@ -195,7 +212,7 @@ i2c@3 {
> >  			/* routed to PCIe2 connector (CN62A) */
> >  		};
> > =20
> > -		i2c@4 {
> > +		sfp_i2c: i2c@4 {
> >  			#address-cells =3D <1>;
> >  			#size-cells =3D <0>;
> >  			reg =3D <4>; =20
>=20
> Matches what I've come up with,
>=20
> Reviewed-by: Andreas F=C3=A4rber <afaerber@suse.de>
>=20
> However, I also needed to set managed =3D "in-band-status" when enabling
> SFP node and removing phy property. Shall we prepare it with its default
> value of "auto" and add a comment? (unlike disabled -> okay,
> in-band-status is longer than auto, so not sure whether it helps U-Boot,
> but it may help humans.

The idea is that for now when U-Boot detects that SFP is present, it
shall change the device tree accordingly:
  remove phy-handle
  add managed =3D in-band-status
  enable sfp node

This is the only way to support this reasobaly until the multiplexer is
somehow supported by kernel.

Marek
