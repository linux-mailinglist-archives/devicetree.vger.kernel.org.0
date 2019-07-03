Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 35B475E62C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 16:13:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725933AbfGCONG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 10:13:06 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:35649 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726490AbfGCONF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 10:13:05 -0400
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr [86.250.200.211])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B62E02001A;
        Wed,  3 Jul 2019 14:13:00 +0000 (UTC)
Date:   Wed, 3 Jul 2019 16:13:00 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/7] dt-bindings: net: mdio: Add child nodes
Message-ID: <20190703141300.duhk2qj3m5qpkp3h@flea>
References: <20190703095513.12340-1-maxime.ripard@bootlin.com>
 <20190703095513.12340-3-maxime.ripard@bootlin.com>
 <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="t3vspt6dpabgj43y"
Content-Disposition: inline
In-Reply-To: <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--t3vspt6dpabgj43y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 03, 2019 at 07:53:43AM -0600, Rob Herring wrote:
> On Wed, Jul 3, 2019 at 3:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The child nodes of a mdio bus are supposed to be ethernet PHYs, with a reg
> > property. Make sure that's validated as well.
>
> I don't think this is always true. I seem to recall there's some
> timestamping devices connected via mdio.
>
> In any case, it's not a long list of names, so we can probably just
> enumerate them as needed. Does this generate any warnings?

I did a run on both arm and arm64 Allwinner DTS, and it doesn't.

I can do one on multi_v7 / arm64's defconfig, but that's probably
going to be a bit hard to tell from the noise of warnings.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--t3vspt6dpabgj43y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRy37AAKCRDj7w1vZxhR
xVpzAP0QfgtmDLDgzAxLUAk40JbOCuA7vYsWKx9boQv2Joq9YAD+NSZ/8cEK5r0C
UTO6FEbNY9ZrSWPe9DuBwUTtbC8g3w8=
=TelY
-----END PGP SIGNATURE-----

--t3vspt6dpabgj43y--
