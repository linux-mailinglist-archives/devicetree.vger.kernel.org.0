Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9826D35A2E
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 12:08:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727014AbfFEKIw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 06:08:52 -0400
Received: from relay1-d.mail.gandi.net ([217.70.183.193]:40849 "EHLO
        relay1-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727183AbfFEKIw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 06:08:52 -0400
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 74011240005;
        Wed,  5 Jun 2019 10:08:45 +0000 (UTC)
Date:   Wed, 5 Jun 2019 12:08:44 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Marcus Cooper <codekipper@gmail.com>
Subject: Re: [PATCH] ASoC: sun4i-i2s: Change SR and WSS computation
Message-ID: <20190605100844.kzaw7r3zasfqhnuu@flea>
References: <20190604085449.13195-1-maxime.ripard@bootlin.com>
 <20190604144517.GF2456@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="qhomvzhpyiavwpcf"
Content-Disposition: inline
In-Reply-To: <20190604144517.GF2456@sirena.org.uk>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--qhomvzhpyiavwpcf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jun 04, 2019 at 03:45:17PM +0100, Mark Brown wrote:
> On Tue, Jun 04, 2019 at 10:54:49AM +0200, Maxime Ripard wrote:
> > The current computation for the SR (sample resolution) and the WSS (word
> > slot size) register parameters is based on a switch returning the match=
ing
> > parameters for a given params width.
>
> This doesn't build for me with current code:
>
>   CC      sound/soc/sunxi/sun4i-i2s.o
> sound/soc/sunxi/sun4i-i2s.c:169:28: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
>   s8 (*get_sr)(const struct sun4i_i2s *, int);
>                             ^~~~~~~~~
> sound/soc/sunxi/sun4i-i2s.c:170:29: warning: =E2=80=98struct sun4i_i2s=E2=
=80=99 declared inside parameter list will not be visible outside of this d=
efinition or declaration
>   s8 (*get_wss)(const struct sun4i_i2s *, int);
>                              ^~~~~~~~~
>
> and lots of similar stuff.

Sigh, so much for sending a patch part of a branch...

Sorry for wasting your time on this, I've sent a v2 with this fixed.

Maxime


--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qhomvzhpyiavwpcf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPeUrAAKCRDj7w1vZxhR
xScXAPwN8ypur7UlU8bNKMKWbFc0f1dSEHVT5ZDOnsRZQKzswwEAi27OmMmw2FeN
7aj+QHjqrk9psWgk+O/LHTS3NFkUcAM=
=vzYH
-----END PGP SIGNATURE-----

--qhomvzhpyiavwpcf--
