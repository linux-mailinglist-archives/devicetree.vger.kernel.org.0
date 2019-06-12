Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE21B439A3
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732542AbfFMPPI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:15:08 -0400
Received: from relay12.mail.gandi.net ([217.70.178.232]:50109 "EHLO
        relay12.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732234AbfFMN0L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 09:26:11 -0400
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr [90.88.159.246])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay12.mail.gandi.net (Postfix) with ESMTPSA id C73C020000C;
        Thu, 13 Jun 2019 13:26:08 +0000 (UTC)
Date:   Wed, 12 Jun 2019 17:48:27 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: vendor: Escape single quote
Message-ID: <20190612154827.ykrxtuv2q7uxmwoj@flea>
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
 <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ojdig4ufr3fvpwhg"
Content-Disposition: inline
In-Reply-To: <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ojdig4ufr3fvpwhg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jun 11, 2019 at 03:18:51PM -0600, Rob Herring wrote:
> On Sat, May 25, 2019 at 7:41 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Single quotes need to be escaped in YAML, make sure it's the case.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 19cc3240a445..ec53162e900d 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -672,7 +672,7 @@ patternProperties:
> >    "^plantower,.*":
> >      description: Plantower Co., Ltd
> >    "^plathome,.*":
> > -    description: Plat'Home Co., Ltd.
> > +    description: Plat\'Home Co., Ltd.
>
> Actually, I think this isn't necessary. Where was this causing a
> problem? Only in single quoted strings do you have to escape a single
> quote and it is done with 2 single quotes rather than a backslash.

I guess I misread the YAML spec though... Sorry.

> However, to maintain a json compatible subset of yaml, maybe we do
> need it.

If you don't want it anymore, I guess we can drop or revert it.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ojdig4ufr3fvpwhg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEeywAKCRDj7w1vZxhR
xbQTAP9aeBEzFtsrAUI/WlTsmFq1tfkJJNyS0XOvprvVnIF4vwEA/8L4kV9E7v0K
/oXbZNPQojz/la/iqD91nAmsPXcDtQg=
=Y1ER
-----END PGP SIGNATURE-----

--ojdig4ufr3fvpwhg--
