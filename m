Return-Path: <devicetree+bounces-526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8EB7A1D16
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:05:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 960FE1C20C1B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7745C101D3;
	Fri, 15 Sep 2023 11:05:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF6C101C4
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:05:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47547C433C8;
	Fri, 15 Sep 2023 11:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694775933;
	bh=hOyiTxdftFAjmpAlocJ9lFxzTFRptiSSvs7eM0255YI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WpDsJsuw/XYb/kdsFriqTellUdxp3bv3hoVp+QKf5Zpd8MhP0Gs9q8g0/SNyC4oSI
	 As8VAsqgLMD6cOuFT6sTDAOZ3oXGRMxIEoHxhnSUvvRmqg0/WML6mljnfDFQhkqDL5
	 yZFxquEeaZDlA8oinuSE2akhgUhcCDZDSP5aSXL+c4XwciNfqVqekVgovMX4sfRRhx
	 zgRlwHnnDr8lfFn9IpPKhxPn8RuYby5Kw94sDqy1xI8iSHxducXC1Wn0DS0zJ3bq+d
	 EuOqmeCiZp5VyB0kqNE8kjNZcAgL7lolHLaZlVUC6MoDWNzGCRA3dKY1lVAH8zcwi0
	 zAyT/8woJ3GJw==
Date: Fri, 15 Sep 2023 12:05:28 +0100
From: Mark Brown <broonie@kernel.org>
To: John Watts <contact@jookia.org>
Cc: Rob Herring <robh@kernel.org>, alsa-devel@alsa-project.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	patches@opensource.cirrus.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen
 property
Message-ID: <5af3315a-7d28-456d-ae36-9984bc8a36e0@sirena.org.uk>
References: <20230913171552.92252-1-contact@jookia.org>
 <20230913171552.92252-4-contact@jookia.org>
 <20230914145234.GA1275176-robh@kernel.org>
 <ZQPuJXcmHABQFaQl@titan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fvWBAkIAAADLULEo"
Content-Disposition: inline
In-Reply-To: <ZQPuJXcmHABQFaQl@titan>
X-Cookie: Gravity brings me down.


--fvWBAkIAAADLULEo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:39:49PM +1000, John Watts wrote:
> On Thu, Sep 14, 2023 at 09:52:34AM -0500, Rob Herring wrote:
> > What's the default if the property is not present?
>=20
> 0. Should I specify it here?

Yes.

--fvWBAkIAAADLULEo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUEOncACgkQJNaLcl1U
h9Alnwf9EPsqr1HyoMSzQWvu19hw6Elkc/4CZFN7c83HmYYYCw9czGwXkWmepk/7
pdGCA6F7elZgl4NSe5uVT9oufbHDplEwq5p7PCW4kK+V5q0THsxxNXfG9QvWb+LV
xbHHM2IBeAUR1Vb9Ah7aauT0Ub+ZzQxwSRcbmq5Vue3Q7OiVEc5PNPt+PVonR9uU
/kl6+rj7bQGjTPZBPODjqPNTzuKq0ZiW2fNBIS1BRj/rOGqzdmufuXPNmbRL3RLF
U8BdngqaatpTb/MDsqYBrJlcruyd2ohW/Wzmo7KVkSbHYRZn5xssz2w5hKW4L0Ds
kvORxQle7O2YX/3zfrfRDhp0GQL5rQ==
=rfmv
-----END PGP SIGNATURE-----

--fvWBAkIAAADLULEo--

