Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 451D43D7573
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 14:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236320AbhG0M6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 08:58:47 -0400
Received: from mail.kernel.org ([198.145.29.99]:47746 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232125AbhG0M6r (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Jul 2021 08:58:47 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1C343608FB;
        Tue, 27 Jul 2021 12:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627390727;
        bh=WTx6+krlzuWrgl0nV5XDZMCOdOzkMR+VPJ9lgNvxnjk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=e0Spn4dx1JXU5+iJvdGtsfu/LvEQKOq1MiCfCWI1wuwLCYBQqeY/D6sgWf5xawkIb
         Qu2UvokXqBsgt4+bOR4OTfN/noVAHfhikcR3j/Dbc7+5oa6jipx6gPRBfRwYgTdCX2
         +eoT+4r/a+w9dq4ay3kQRWfUTd6s70IPTpfQIZ9Xs29J3+M09OIKqOzUY/vwSaeFvW
         JdcQq/nsMtJ1PCYrIsakubV0Nvg9li+3eRgbqP8cahB0aA9Nu7Gxz8m9WHn6x0Il8Y
         D1CmHP3jRVpYue+0MJSE19XuArqW1lfEOyLCIfwWU+rscjQIEcrLLMDWN3ykV+20rK
         OKWHNuWYYoRyA==
Date:   Tue, 27 Jul 2021 13:58:37 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Richard Fitzgerald <rf@opensource.cirrus.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
        linux-sunxi@googlegroups.com, Liam Girdwood <lgirdwood@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/54] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210727125837.GS4670@sirena.org.uk>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-2-maxime@cerno.tech>
 <20210723213251.GA2622319@robh.at.kernel.org>
 <20210726001713.GA8831@sirena.org.uk>
 <885f19af-32d5-d792-84b2-56afb8fcdf6c@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ZcSDOt7TZFizttpn"
Content-Disposition: inline
In-Reply-To: <885f19af-32d5-d792-84b2-56afb8fcdf6c@opensource.cirrus.com>
X-Cookie: Vini, vidi, Linux!
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ZcSDOt7TZFizttpn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 27, 2021 at 01:21:52PM +0100, Richard Fitzgerald wrote:
> On 26/07/2021 01:17, Mark Brown wrote:
> > On Fri, Jul 23, 2021 at 03:32:51PM -0600, Rob Herring wrote:
> > > On Wed, Jul 21, 2021 at 04:03:31PM +0200, Maxime Ripard wrote:

> > > > Even though we had the wm8978 driver for some time and a number of
> > > > boards using it already, we never had a binding for it. Let's add it
> > > > based on what the driver expects and the boards are providing.

> > > > +maintainers:
> > > > +  - Mark Brown <broonie@kernel.org>

> > > No one from Wolfson cares about this device?

> > > Otherwise,

> > > Reviewed-by: Rob Herring <robh@kernel.org>

> > Well, Wolfson no longer exists since it was bought by Cirrus but copying
> > in the Cirrus people to see if they want to be listed there.

> People, ownership, and email addresses can change. It's always best to
> check MAINTAINERS to see the current support status. In this case it has
> a section to pick up those Wolfson drivers, with the correct email
> address. The list email will be monitored by multiple people.
>=20
> WOLFSON MICROELECTRONICS DRIVERS
> L:	patches@opensource.cirrus.com
> S:	Supported
> <SNIP>
> F:	include/sound/wm????.h
> <SNIP>
> F:	sound/soc/codecs/wm*

Might be worth updating that to cover the DT bindings too (Arizona is
the only sound driver for some reason, wm8974 already exists but is not
covered).

--ZcSDOt7TZFizttpn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEAAvwACgkQJNaLcl1U
h9CAFwf/X/wlMmIJV1UBChO4tum9qfD4LEkYUYRIWfQgU1fhQnifFPwuGMC9ImGL
r7ANJBNId0R/RMl1b6OPGyUFo79f6ksU7jP1zDcJ6ZDUnIPtawgQw8pjt3/ompyr
JX8BgW2BAS9qTtp/KUdzIX78AvS/sFQIoPUV0oveLLVC4o39G2l/OGZaiwrnwhyh
cy9uO8u6jXzX2o1e8Pn0/n0ehmY/fFiDh9z7hix6IxE0JMi8LZjinxudVfrFI6hf
B6IBywxfduN7hB0WmhfrPa7N/04fjEcIaSzN9yJ6pi/QWm5pbCMP05oazrmddYwr
8cJNq9XTGa3DFI0UQpvvhFckaol3uQ==
=nUzl
-----END PGP SIGNATURE-----

--ZcSDOt7TZFizttpn--
