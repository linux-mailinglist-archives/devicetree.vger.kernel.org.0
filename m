Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3AD388008
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 20:56:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243686AbhERS5N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 14:57:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:48100 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236295AbhERS5N (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 May 2021 14:57:13 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB49861244;
        Tue, 18 May 2021 18:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621364155;
        bh=ngHUXT+f+DSDBSObqrCSX01A2qzhXw+3no7b1VXfMg0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YwAbxH7046HmOhfxPAUS3Rr5DA/W4aaYUNEssSGZdgmHnU1bKMZw2GZ/B+Zifp4LN
         v2Z7bK+3OMUDkajDfIarhZg8poplHwMek5tn+zDueYcAbdyId8Kmj27/HhE2B8kjQr
         PZACSYwnZBnoMqw6cezD7LwhRKWS6PT052bbZN1ZPZjSxC7UCiWUQobIqwc4GjtxZj
         YBfElL11OfkGLvmSYdr8mHH+YWe3/5TOEuzRc+Ua12C8vI2cQ7811cx5kvCwhuTL0Y
         wE03nZ2OZ9yZo6ZusMm+mctH/suomFn51bxvVrGm/rIAW0icWUJ79mgjFlwQM3FXpB
         IkHf3SmPL7Png==
Date:   Tue, 18 May 2021 19:55:11 +0100
From:   Mark Brown <broonie@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: sound: wm8750: convert to the json-schema
Message-ID: <20210518185511.GF4358@sirena.org.uk>
References: <20210512205926.780-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="K/NRh952CO+2tg14"
Content-Disposition: inline
In-Reply-To: <20210512205926.780-1-zajec5@gmail.com>
X-Cookie: Radioactive cats have 18 half-lives.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--K/NRh952CO+2tg14
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 12, 2021 at 10:59:26PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> This helps validating DTS files.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--K/NRh952CO+2tg14
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCkDY4ACgkQJNaLcl1U
h9CLjQf+N+1vWZP2xEyjUXIoDVcpwY20cpELji9dGtr+XKrxJKvfhCkha3PEeh+p
80OB5SHZ53eNQPRw/pedfbXnuC+RUdUQwQGu5L4ZX3KKtQZqST8u/dtQjbMKT6/T
uOQ4O05Is5ZhniCdraNPDb81XmHU9Ead44VJ7qNhWyN7UvBjLNF8vobuk7RLNBrN
nCE7yDDKnFpVS7QNWbODxF8MBbYC922iHNWgYFPGRWRDRwCfKc0USOgpuw3bsHc0
gRCQxkqp25s5tQUOh3A68kBJw3upSTWYBCIDJSrvAw3H/6IuaqolXDCoHoe+eBcm
omrKS7m2/D1C0i+Px16Knxit+wCfYA==
=xD3o
-----END PGP SIGNATURE-----

--K/NRh952CO+2tg14--
