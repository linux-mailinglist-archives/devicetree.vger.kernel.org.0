Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0177829F3C8
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 19:08:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725915AbgJ2SIN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 14:08:13 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:59587 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725788AbgJ2SH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 29 Oct 2020 14:07:26 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 76C015807E0;
        Thu, 29 Oct 2020 14:07:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 29 Oct 2020 14:07:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=d58RL8KlQmeas/n4EgP9a9fQj1c
        F9N+v7q7UZkMl7n0=; b=EC0Nw0HxxGBj7HMce8irRtBXOGmq6X7MQMVkUj953KU
        tLaCRcVjv/R9QX5IPK9AjsA8Ao7k1lfk8p6WXCqzdA3P73/09XvM3UZB6dqaoQGs
        YxHSVHX/ttI6nHDZDbKzYTt8StGyX+y1HiXLshlt8siY2OMzHBOi6UVCnDvNSInU
        wUE9ckMtMjh3WHDqOh6pKQIyFlQoFZ61tGy30QMkktGKNIzI+ygp2l56rVIj26st
        bVopGY3eJwrRLcOW2yKCbr9owKtlM2jfjUm6e8fSgFZGMG8iod/8VDbzYsQxBmQn
        s8KsZvydUSOzd4P94OaYovkaTUBxQFwHlH/+pPbSf0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=d58RL8
        KlQmeas/n4EgP9a9fQj1cF9N+v7q7UZkMl7n0=; b=aHUqTWcOiihVGCHKUL6xx5
        vlIccUMCzpKzpUvLOk1VnocMBSbVvpj3QEGi1o1+RJ6g3geri9KZoKaOwLfmc1Uo
        p+52eJ6bNrs8Qlp2tiMYzM8n0yTNzmQMY4qa2NJelwmhDTRBhMtZ3YFDfXAQGRnT
        tqe13sIW5NsXRy5MtlNg+ey1XFzIugoA2I+QGFhcawCtlkIsw3vpkygqhHC48zFz
        any6dwTr8Iu1mKtMZYakukv1B+iMGx7XlueKIZE5JJgveGnNWpzPN0+aybW7/ngJ
        EyBnc8OVhEDI5Np6v01kOoHYvVz69VwqPny/T5uU35ZFS1Szvs23SsL5EXgj2IjQ
        ==
X-ME-Sender: <xms:2wSbX7xraj8r4MaG_O5KAWNOEeK4siqWimOv6hlx94tI680B5dUP6A>
    <xme:2wSbXzTjYD5ppEgzL5nDUjQv-Yhvdnavwki1Jf391j-pxBIJyMTFyhgGMiEQZrP1V
    LK0Tfv1pFHe0jL_8FM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrleefgddutdekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepveevfeffudeviedtgeethffhteeuffetfeffvdehvedvheetteehvdelfffg
    jedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepledtrdekledrieekrd
    ejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehm
    rgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:2wSbX1XNsR7WKJGBcLbHX8Ra5VbmoLCwny4XgmNqNeLd-DxA0l6NKg>
    <xmx:2wSbX1g3bhV0qKHRrnWVXw10Nb9XkXwwQaqwT_sePh-kYTkaU6FX7w>
    <xmx:2wSbX9BkCrfv4_lCEz56e16agLeLrzQ1X7qgTx70OiYpLTb3PLga6Q>
    <xmx:3QSbX1ZCC6wGs8eDPPaF0Dc1VBLGbTdWNzBeIvOCIeAaKulq_yRbYg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 5C694328005A;
        Thu, 29 Oct 2020 14:07:23 -0400 (EDT)
Date:   Thu, 29 Oct 2020 19:07:21 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
Subject: Re: [PATCH v2 1/3] dt-bindings: display: Add a property to deal with
 WiFi coexistence
Message-ID: <20201029180721.lsucxnl7kavlvibd@gilmour.lan>
References: <20201029134018.1948636-1-maxime@cerno.tech>
 <4d0028fdf797abd99f95d627e60e9322caa52596.camel@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rxzctnsrsfxssdlg"
Content-Disposition: inline
In-Reply-To: <4d0028fdf797abd99f95d627e60e9322caa52596.camel@suse.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--rxzctnsrsfxssdlg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Thu, Oct 29, 2020 at 06:43:27PM +0100, Nicolas Saenz Julienne wrote:
> Hi maxime,
>=20
> On Thu, 2020-10-29 at 14:40 +0100, Maxime Ripard wrote:
> > The RaspberryPi4 has both a WiFi chip and HDMI outputs capable of doing
> > 4k. Unfortunately, the 1440p resolution at 60Hz has a TMDS rate on the
> > HDMI cable right in the middle of the first Wifi channel.
> >=20
> > Add a property to our HDMI controller, that could be reused by other
> > similar HDMI controllers, to allow the OS to take whatever measure is
> > necessary to avoid that crosstalk.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >=20
> > ---
> >=20
> > Changes from v1:
> >   - Renamed the property
> >   - Split it into a separate patch
> > ---
> >  .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml      | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdm=
i.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > index 03a76729d26c..7ce06f9f9f8e 100644
> > --- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> > @@ -76,6 +76,12 @@ properties:
> >    resets:
> >      maxItems: 1
> > =20
> > +  wifi-2.4ghz-coexistence:
>=20
> I see you already renamed the property, but I can't seem to find v1 of the
> series online.

I realized I didn't put you in Cc for the first version, sorry, you'll find=
 it here:
https://lore.kernel.org/dri-devel/20200925130744.575725-1-maxime@cerno.tech/

> Sorry if this is redundant:
>=20
> I wonder if it'd make sense to prefix the property like this:
> "raspberrypi,wifi-2.4ghz-coexistence." I tend to associate the lack of pr=
efix
> with generic properties, and also thought it was a rule. Although I may h=
ave as
> well imagined it.

Rob in the first iteration asked for the opposite :)

It used to be a vendor-specific property, and since this issue is
basically cross-platform (as long as you can support 1440p and have
WiFi), it makes sense to make this a generic property

Maxime

--rxzctnsrsfxssdlg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX5sE2QAKCRDj7w1vZxhR
xUZ/AP41k2g+mPeHKxN6cAgBqQqtzRaHalf5j8S4Em9cjrNxdQD/d1sSMD6ot+q9
F0Argl9P5qL5kJgU3DS3EpFMF8PmIQk=
=RQgw
-----END PGP SIGNATURE-----

--rxzctnsrsfxssdlg--
