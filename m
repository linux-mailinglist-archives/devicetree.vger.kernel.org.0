Return-Path: <devicetree+bounces-839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7068D7A350F
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 12:02:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 191FC28151E
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1376D2113;
	Sun, 17 Sep 2023 10:02:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098FE20FA
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 10:02:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBC82C433C8;
	Sun, 17 Sep 2023 10:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694944965;
	bh=Yx0C/LPc7fwyXJG8rpC6fgaxCVhPZjt7jlvRHPWAjVc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KI9WEKSTxtksk44Tf+UGk2y57gn79PHe+IDxI1Bm9ScQD6I3h+pZVkRLd3VsMJoMa
	 G2P4KfJVo0e0DBByZ3Bhb99HOnBezAQFlHG1GRiBpm8r2UpYCkVlc2g4EmKDMLteXV
	 B0Vs0iBiM8HvTbsUHBFEWSDoC/+PE6YEYOgwMIk9Jo/xo/9y7P94iXlpOnX4kR9I4t
	 m3eUNXY49i4JufDPHQDaiUPXUn+uiStgpHNjZfvK68beOTW95ErgRJmikVqommS/xD
	 J0vwdG1s2T4hbfFysWOQ1zZ/GRM7bci9S0YM0TQUlpeKyRhHf5m+22BNuqaHIitYOY
	 lNkq1ripirkug==
Date: Sun, 17 Sep 2023 11:02:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nik Bune <n3q5u8@yahoo.com>, wim@linux-watchdog.org, linux@roeck-us.net,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert txt
 to yaml
Message-ID: <20230917-shampoo-prance-972b224e2c92@spud>
References: <20230916154826.84925-1-n3q5u8.ref@yahoo.com>
 <20230916154826.84925-1-n3q5u8@yahoo.com>
 <c42f1653-caa8-731c-e4ef-2d5fe47adc8c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TB05wVaZPoWhCPv0"
Content-Disposition: inline
In-Reply-To: <c42f1653-caa8-731c-e4ef-2d5fe47adc8c@linaro.org>


--TB05wVaZPoWhCPv0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 16, 2023 at 10:37:23PM +0200, Krzysztof Kozlowski wrote:
> On 16/09/2023 17:48, Nik Bune wrote:
> > Convert txt file to yaml.=20
> > Add reg to the list of required properties.
> > Add mainteiners from ./scripts/get_maintainer.pl output.
> >=20
> > Signed-off-by: Nik Bune <n3q5u8@yahoo.com>
> > ---
> >  .../watchdog/atmel,at91rm9200-wdt.yaml        | 31 +++++++++++++++++++
> >  .../watchdog/atmel-at91rm9200-wdt.txt         |  9 ------
> >  2 files changed, 31 insertions(+), 9 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,at=
91rm9200-wdt.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-at=
91rm9200-wdt.txt
> >=20
> > diff --git a/Documentation/devicetree/bindings/watchdog/atmel,at91rm920=
0-wdt.yaml b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wd=
t.yaml
> > new file mode 100644
> > index 000000000000..e9706b9c1e6b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/watchdog/atmel,at91rm9200-wdt.y=
aml
> > @@ -0,0 +1,31 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (C) 2022 Microchip Technology, Inc. and its subsidiaries
>=20
> How this copyright appeared here? Why are you adding some 2022
> copyrights of someone else?

It's worth noting that that patch also re-licences the original binding,
and was not written by anyone from microchip in the first place.

--TB05wVaZPoWhCPv0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQbOwAAKCRB4tDGHoIJi
0ptWAQDcGuIl+LD+PGu+xPcAWqHEhX/rrdCXmItgDD7kVJ06OAD9EzYnuv+tL5th
Af1Scq9wQ8HqcYJdhIHvZEqguaW+5A4=
=wDPU
-----END PGP SIGNATURE-----

--TB05wVaZPoWhCPv0--

