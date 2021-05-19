Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBE14388D41
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 13:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242263AbhESLwl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 07:52:41 -0400
Received: from mail.kernel.org ([198.145.29.99]:38192 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229508AbhESLwl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 May 2021 07:52:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2870F61004;
        Wed, 19 May 2021 11:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621425081;
        bh=LCwFHlTJz0AnhSIerE3Ypbcem+GyVUtPZIRox34DFCc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jvJA9bhD60fanAxFRRSCd5doEJf5pimls4dgs5HDoeW+zNLu05yisjNGd/1sM0Xoq
         FoCdexWd5aAmw3LqmQ55Cu977areu0jQNwm6ahpJb0OSTAZ3sQLRNWUGNiLc2jX/N0
         v6yIVx71ePnzFxSJFNEb0Szua5EWRwqhmFZUJNcKnyZFEcrfcFs6xx0YnGutWGNJAK
         eVB7NaDjZu9wHNrCk5t/0B8uERi8PZoBuEa3roq3qVMCgd0QlFCjP7COOL8ipvZMK2
         f7hgOGuJNiqPK/DOcxbBlrM+lqOlZz0ytNi+a/qp0dilVzkTwqheCiXoPxNiTmeXUW
         Hrq0PgBZRKUpw==
Date:   Wed, 19 May 2021 12:50:36 +0100
From:   Mark Brown <broonie@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: sound: wm8750: convert to the json-schema
Message-ID: <20210519115036.GB4224@sirena.org.uk>
References: <20210512205926.780-1-zajec5@gmail.com>
 <20210518185511.GF4358@sirena.org.uk>
 <edc9e00f-1074-8a9b-1666-ba4a0b9a08f6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="VrqPEDrXMn8OVzN4"
Content-Disposition: inline
In-Reply-To: <edc9e00f-1074-8a9b-1666-ba4a0b9a08f6@gmail.com>
X-Cookie: There's no time like the pleasant.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--VrqPEDrXMn8OVzN4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 18, 2021 at 11:45:17PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:

> Oops, "ASoC: " prefix is quite unique, no many subsystems use any prefix
> before the "dt-bindings:". I didn't think of checking that, sorry.

It's also the sound: bit - it's not just that you got things a
surprising way round.

--VrqPEDrXMn8OVzN4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCk+4sACgkQJNaLcl1U
h9AJjAf/arnLlf/QBgia7MxKUszY2GV6AlQuBaX3RFaxvBPFUhX3FsqF8m+9D4PM
VPsHUuIt9luyJsWpcJlvO3Mcf6jgpN5oGXrsaarWBOisHRqTOlKI5MNfYTKkIRDC
uyGtWyZgthH7hL/B7N7bb143vCslHTgdeKpaj28noyHpRKbbIBIjMfkEV1ncsyPK
yTeum7FEPhnUbKp5TCYDMP1yRdx3BiPeqmwHYXpw1k8WA3yvTpp6Yniu5gbCE4yK
RZhGjDQhR7p38ydRVdAyYeASHzPxUCu91Porj2xls2rd28Ajd16vXycQ14m1C0aJ
tmU0CNiNJuu+ymevujLUl7inomCTow==
=Inyw
-----END PGP SIGNATURE-----

--VrqPEDrXMn8OVzN4--
