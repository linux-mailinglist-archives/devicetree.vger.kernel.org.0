Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 183EC29F3F6
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 19:17:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725910AbgJ2SRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 14:17:00 -0400
Received: from mx2.suse.de ([195.135.220.15]:43400 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725820AbgJ2SRA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Oct 2020 14:17:00 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 75F78AD1E;
        Thu, 29 Oct 2020 18:16:58 +0000 (UTC)
Message-ID: <30d4a73b02957c18460d7f4535b1baa98ccda013.camel@suse.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: Add a property to deal
 with WiFi coexistence
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>
Date:   Thu, 29 Oct 2020 19:16:56 +0100
In-Reply-To: <20201029180721.lsucxnl7kavlvibd@gilmour.lan>
References: <20201029134018.1948636-1-maxime@cerno.tech>
         <4d0028fdf797abd99f95d627e60e9322caa52596.camel@suse.de>
         <20201029180721.lsucxnl7kavlvibd@gilmour.lan>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-Si3FC5Rwn4sE3tHN32Hz"
User-Agent: Evolution 3.36.5 
MIME-Version: 1.0
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-Si3FC5Rwn4sE3tHN32Hz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-10-29 at 19:07 +0100, Maxime Ripard wrote:
> Hi Nicolas,
>=20
> On Thu, Oct 29, 2020 at 06:43:27PM +0100, Nicolas Saenz Julienne wrote:
> > Hi maxime,
> >=20
> > On Thu, 2020-10-29 at 14:40 +0100, Maxime Ripard wrote:
> > > The RaspberryPi4 has both a WiFi chip and HDMI outputs capable of doi=
ng
> > > 4k. Unfortunately, the 1440p resolution at 60Hz has a TMDS rate on th=
e
> > > HDMI cable right in the middle of the first Wifi channel.
> > >=20
> > > Add a property to our HDMI controller, that could be reused by other
> > > similar HDMI controllers, to allow the OS to take whatever measure is
> > > necessary to avoid that crosstalk.
> > >=20
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > >=20
> > > ---
> > >=20
> > > Changes from v1:
> > >   - Renamed the property
> > >   - Split it into a separate patch
> > > ---
> > >  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml      | 6 ++++=
++
> > >  1 file changed, 6 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-h=
dmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > > index 03a76729d26c..7ce06f9f9f8e 100644
> > > --- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yam=
l
> > > +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yam=
l
> > > @@ -76,6 +76,12 @@ properties:
> > >    resets:
> > >      maxItems: 1
> > > =20
> > > +  wifi-2.4ghz-coexistence:
> >=20
> > I see you already renamed the property, but I can't seem to find v1 of =
the
> > series online.
>=20
> I realized I didn't put you in Cc for the first version, sorry, you'll fi=
nd it here:
> https://lore.kernel.org/dri-devel/20200925130744.575725-1-maxime@cerno.te=
ch/
>=20
> > Sorry if this is redundant:
> >=20
> > I wonder if it'd make sense to prefix the property like this:
> > "raspberrypi,wifi-2.4ghz-coexistence." I tend to associate the lack of =
prefix
> > with generic properties, and also thought it was a rule. Although I may=
 have as
> > well imagined it.
>=20
> Rob in the first iteration asked for the opposite :)

Fair enough, then:

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Regards,
Nicolas


--=-Si3FC5Rwn4sE3tHN32Hz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl+bBxgACgkQlfZmHno8
x/7MIQf8CumOgp9BNlym7/DOS46fLZCDh9XuUv2MduUAdyrSsnvucoiKqoXYvw1g
8xULNi/G7D/faPC6ckWb0AvxNoSy1ipJ0ckp46bvzOaFivHFBCfAWK428T/2Y6EF
qH/r0g8VaygPzvo6J2GOKXR/VitlmDVhnlIWcz/x8RqX0KQR4doPcjasU4eDomg7
F87j4m31WIkp4husWqbnX6PSNq7z+RGwhrr3/rznlqpCDGrpap+8BfXU7FWwU1aL
DOjmqHU1w65Vy4nGXUNbKDaBvA/RaKwkdi/1Sa7UlZfHWYq4kTrLbsXBFcvdI2XA
wquVgDq1ISPdQJd5+ijRB3q3UhD61g==
=yX7+
-----END PGP SIGNATURE-----

--=-Si3FC5Rwn4sE3tHN32Hz--

