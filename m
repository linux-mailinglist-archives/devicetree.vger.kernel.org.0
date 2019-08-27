Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCEF79F226
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 20:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730432AbfH0SOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 14:14:22 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:42858 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730376AbfH0SOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 14:14:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=V/UcaU4EeSdHqUtL83nLzCKplC5y/OxX6AUl8iisM4g=; b=ieFQVeflIDdnhomkhIHE2o6+9
        hEtQBIghfiEmWGTnw2RAf00ImomLKDxCVWkCTJfwnxcJxlXJf98KD/68Y9/x1Y08kJ220GBw6GzFX
        PquP0c5A207abDqJzLuqpx+c+QGzU3QRf5O46Pn1mcVOgfK4p5FEWTq3MPy5iMCpm7hyg=;
Received: from 92.41.142.151.threembb.co.uk ([92.41.142.151] helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1i2fyv-0000t7-WE; Tue, 27 Aug 2019 18:14:14 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 841B7D02CE6; Tue, 27 Aug 2019 19:14:09 +0100 (BST)
Date:   Tue, 27 Aug 2019 19:14:09 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/5] dt-bindings: sound: sun4i-spdif: Fix dma-names
 warning
Message-ID: <20190827181409.GH23391@sirena.co.uk>
References: <20190827142547.14577-1-mripard@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="fez1/uVX7m6GpeOd"
Content-Disposition: inline
In-Reply-To: <20190827142547.14577-1-mripard@kernel.org>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--fez1/uVX7m6GpeOd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 04:25:43PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>=20
> Even though the H6 compatible has been properly added, the exeption for t=
he
> number of DMA channels hasn't been updated, leading in a validation
> warning.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.  This
doesn't even have ASoC in it...

--fez1/uVX7m6GpeOd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1lcvAACgkQJNaLcl1U
h9AQNwf/Wko2ywl/1pCNlhI8r5T9icdRCSO3aCusrcNdTqFPwCKGaybfQwcs7T1i
0ljLfvQoPvxUH1pj+ed4D4e1D+L2MNaGgm30zRQvPmoldJ23rYC3scQgom5ejb8Z
EfLTB7ogGLiwIysbn4eZojzA9AfJwkXdCsFPSR55iSGop/lztHREVQEGnW6Ktw+7
U52qHI6sJ0mYGJgA39HQarp4lwVuSHRgouhsvA/6CXQ4sLUxTwZYNZwh4hKd/c3u
+T0CZ022i3XwoWwGrD5VreO1Yas3ZU3jf7vT4gnpOrSH+oonnwHBfFl9nDCMMJB6
IDS3MJpUDnm64N8iliKuxAO3z3Jgow==
=7aoP
-----END PGP SIGNATURE-----

--fez1/uVX7m6GpeOd--
