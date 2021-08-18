Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B60A3F03E5
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 14:43:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231500AbhHRMnr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 08:43:47 -0400
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17]:51397 "EHLO
        wnew3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234948AbhHRMnr (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 08:43:47 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.west.internal (Postfix) with ESMTP id BEF072B00522;
        Wed, 18 Aug 2021 08:43:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 18 Aug 2021 08:43:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=xn8lxZ1v2YaL18d+jLVYt1ER07M
        GK8YIdjOFzClmGOk=; b=pI4RWnclY66wMgooB2JgjrXzto+t5w9Ydkw2ELe3p/v
        MkgDWfM2J2YEmuzhQsMaF9y7n2fVcq3i7sPwkK9CU49B70vkCfOfubd8koz9bYC9
        dVgjPVi+Ppny1CMzLTfceP0CFrHFhruHBbr8y9iT+Yl09FtjlWHpwPUNeTqx0zLg
        5W+LLPqXT5lMcKqP5dj0kFycu0lpS4AMJj9ZasTJklcWZhHj5+6++Gv/miMEi6/W
        QhrguJoV7DeH+llXfrjn930lyHqXeSFYNPMUjlE5Hd8hD5f07ICmRZUp/xDEeRrN
        bUKVtLFPEWdE0O3KTAu5zMXAF+zLZ4nBwTE4nSlErRg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=xn8lxZ
        1v2YaL18d+jLVYt1ER07MGK8YIdjOFzClmGOk=; b=h0n4gO+g+zvmfSGgZesWZL
        d4o+b9pk5Fmkk4lLE0e96zzVx24gPoOW6Kp6MPZhLT8XBdDMFnB2aeb0afdYBdhO
        FWmm1ROO2kP/Utem3759PcVeLR+le7QuQa5x2juIOUAjFs9qNbSalerAC/xak6YP
        ynn73sT1E4IHdDYsnwkj398elaHvvr70dQhZ6Z5WVunuyvn2WpBS+PGEqRyyrtwZ
        SoB+EgRRQLEpLSIeFDzumPdRXuZcoN8xx0fchM0AdNRYz4ny7ixQRFfi7rCrqS8P
        OHZNYxwCe6jL7/XKZS3acSSY8FsgTTZR/eKqd3nEfUhKbPU/HGuXzwTKYW7YvnTA
        ==
X-ME-Sender: <xms:WgAdYc9k8tNBqOFJXD55NQ1ztBbERNTMTP8UZt4NFj9uuYkA7vGEbw>
    <xme:WgAdYUsCkb22CeboqyxDOKmoGGe_SXD91mirhGfCY7f3ilvPW0SQ4ivz-3lCI_wSu
    o2yiuKZkj5OOJf4DpM>
X-ME-Received: <xmr:WgAdYSC0UR1qQ1NTMWGAi-VrCDqPrB2wb0E4m91tJhqgy0J0upxIqOYTduBb8qTeAj1r7t2a9hiv3KIsEr-6uzfQAqgBcfm9ThRb>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleehgdehhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:WgAdYcfdAfZ4zK78m7MdzuFeDluN92nUn1VWjw7l-ugXRlqUqptn6g>
    <xmx:WgAdYRP8w61V3BRcQ85zROVSP4uWH280UJbOmvClxKVA1VUOmSbLLA>
    <xmx:WgAdYWkCVm2XxCSnHv8IXUUMl2J-RCNI-2M7S_CcZnZaJG12OHjNnQ>
    <xmx:XgAdYUr-dbUHOU-8eN-QIjMhZglZuHg2-zmH8XE7s0ngi0U20bp5ptCYcmE>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 18 Aug 2021 08:43:06 -0400 (EDT)
Date:   Wed, 18 Aug 2021 14:43:04 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh@kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 10/54] dt-bindings: display: panel-lvds: Document panel
 compatibles
Message-ID: <20210818124304.2jxsf44bcbprcvbk@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-11-maxime@cerno.tech>
 <20210722022947.GA3168293@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3qoevq2e2eipnuyt"
Content-Disposition: inline
In-Reply-To: <20210722022947.GA3168293@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3qoevq2e2eipnuyt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rob, Sam,

On Wed, Jul 21, 2021 at 08:29:47PM -0600, Rob Herring wrote:
> On Wed, Jul 21, 2021 at 04:03:40PM +0200, Maxime Ripard wrote:
> > The binding mentions that all the drivers using that driver must use a
> > vendor-specific compatible but never enforces it, nor documents the
> > vendor-specific compatibles.
> >=20
> > Let's make we document all of them, and that the binding will create an
> > error if we add one that isn't.
> >=20
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  .../bindings/display/panel/lvds.yaml           | 18 ++++++++++++------
> >  1 file changed, 12 insertions(+), 6 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml =
b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > index 49460c9dceea..d1513111eb48 100644
> > --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> > @@ -31,12 +31,18 @@ allOf:
> > =20
> >  properties:
> >    compatible:
> > -    contains:
> > -      const: panel-lvds
> > -    description:
> > -      Shall contain "panel-lvds" in addition to a mandatory panel-spec=
ific
> > -      compatible string defined in individual panel bindings. The "pan=
el-lvds"
> > -      value shall never be used on its own.
> > +    items:
> > +      - enum:
> > +          - advantech,idk-1110wr
>=20
> At least this one is documented elsewhere.

Indeed, I missed it.

> You can add 'minItems: 2' if you want to just enforce having 2 compatible=
s. Or do:
>=20
> items:
>   - {}
>   - const: panel-lvds
>=20
> Which also enforces the order.

It's not just about the order since a missing compatible will also raise
a warning.

Some of those panels have a binding of their own, but some probably
won't (and I can't find anything specific about the one I'm most
interested in: tbs,a711-panel)

Can we have something like:

compatible:
  oneOf:
    - items:
      - enum:
	- tbs,a711-panel
      - const: panel-lvds

    - items:
      - {}
      - const: panel-lvds

That would work for both cases I guess?

Maxime

--3qoevq2e2eipnuyt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYR0AVwAKCRDj7w1vZxhR
xSXTAP90zo+yKkWE46BIwnlwtxZOw5PaagPp4NF9o82iElH/VgD/fUz0Eksd047n
ujG/vDaPDiReQY0FtuMI/iG0ijZWnQ8=
=HwHr
-----END PGP SIGNATURE-----

--3qoevq2e2eipnuyt--
