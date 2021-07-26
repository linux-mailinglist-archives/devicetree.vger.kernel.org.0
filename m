Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFBFA3D50B8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 02:17:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbhGYXhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jul 2021 19:37:06 -0400
Received: from mail.kernel.org ([198.145.29.99]:51132 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231250AbhGYXgw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Jul 2021 19:36:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A52AB60F11;
        Mon, 26 Jul 2021 00:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627258642;
        bh=nuURIrrezXFPM6ZSc0I3TibIrupYjPPlqH5eGbL7XQU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=caJKxGWP2kSWnqX21ntc8iJuble5qLLTGd0lYT6xDhSyRMFN1OGHdBJ7WsHUTaDPr
         LTYBB7O6iswNV2873+ay6bcP+iHXbAGWVo9j1UuT4PtdshX7GRr3ZJ44Cv017RumN9
         fmAPAXcjoqsCQUgsm8tCfooduPpjJdTNVp055Gb+SKeaw+bN+KDWSCMBFgYn6P7NZP
         oYHaIoiVgI+zvqMMeYAH4QBzoWTFRkyyWODQN0/VmCkEzBKWUQxLdRWrzXGgJslYpi
         vjYIAeZXTkMXOqNa8NEENB5RR6o2mVWfLTAa/PEvi1hwFFtHvEoW6j6HO+shHswweH
         07ottcW2XJtfQ==
Date:   Mon, 26 Jul 2021 01:17:13 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        patches@opensource.cirrus.com
Subject: Re: [PATCH 01/54] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210726001713.GA8831@sirena.org.uk>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-2-maxime@cerno.tech>
 <20210723213251.GA2622319@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <20210723213251.GA2622319@robh.at.kernel.org>
X-Cookie: Enjoy yourself while you're still old.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jul 23, 2021 at 03:32:51PM -0600, Rob Herring wrote:
> On Wed, Jul 21, 2021 at 04:03:31PM +0200, Maxime Ripard wrote:

> > Even though we had the wm8978 driver for some time and a number of
> > boards using it already, we never had a binding for it. Let's add it
> > based on what the driver expects and the boards are providing.

> > +maintainers:
> > +  - Mark Brown <broonie@kernel.org>

> No one from Wolfson cares about this device?

> Otherwise,

> Reviewed-by: Rob Herring <robh@kernel.org>

Well, Wolfson no longer exists since it was bought by Cirrus but copying
in the Cirrus people to see if they want to be listed there.

--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmD9/wkACgkQJNaLcl1U
h9Caiwf/aInaYRb7gyQiNQnhHD5hUTgMD05NxJI5RgvAQZIhlavXuM9IubnFfiiS
pvPE7cNm9l8ghN6OD7gdNUj2E0jR1eOYosuXylG/FWAFVXZoxGaDuWLpVARb1lv6
d1nfKUEbCR83f5Hz9hAzUY463RUlLKQZnWHyjbpuT2bwPOXfILtjQCv47xnfWLAc
80v0thB9MbqCxHlu7Mju6+bPYzJURC1bmkEwUgFeDn7pHPvC1kv8LdOp9/WmHi/Q
lNk4u/BKXbc/UWPj4dK7uM5rElavIZ1267UVK711yPAfrKCLJf3CdQcbINqDWnEz
th/mQt0rCGsU9bhjYDfB+blmedPBqA==
=pdOV
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--
