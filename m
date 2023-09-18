Return-Path: <devicetree+bounces-1147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B4B7A50B4
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9CF831C213AA
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE69D262A7;
	Mon, 18 Sep 2023 17:11:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A762628E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 17:11:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB6C2C433C9;
	Mon, 18 Sep 2023 17:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695057099;
	bh=v5sI31zzPgufOthvXRtj8GfaK7y/0aVuMqOHUUR8dX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AHGr+Gdci97U9SKDpKXceaMwQJGv09F++q4dYR4QApD6cAW9V6L6KD5R3/a0+ECwz
	 X19MGEFfOIygqJaljDFBVsCfyLrIUIXGXFmiKKfMHuyKookYtOLv3qAKipShnTFPN7
	 EYmkRse/dWHZF5uIgrxw7/DCkkXoR1FM2wPulsJhtSkFqXT1YAT3/MM52amVrZDRZD
	 zu91H5GGJfS6aVczRtPnI2NyqDwZiVrQ5m4Xr3QtNlmquL3K2tw2LhyTXeKBLSuHSV
	 4z6IwqlGP2Tal44T+6EpGgw+8v22fxFYQo+kY/aMk4lVoXksItmii1O9Wc3vh3LIty
	 jq3wLKmG59QOw==
Date: Mon, 18 Sep 2023 18:11:34 +0100
From: Conor Dooley <conor@kernel.org>
To: Nik Bune <n3q5u8@yahoo.com>
Cc: wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@microchip.com, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert txt
 to yaml
Message-ID: <20230918-5cdb7a21163283ce85a4deb5@fedora>
References: <20230916154826.84925-1-n3q5u8@yahoo.com>
 <20230917195520.11987-1-n3q5u8@yahoo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wvEX6caj9KSw1sXP"
Content-Disposition: inline
In-Reply-To: <20230917195520.11987-1-n3q5u8@yahoo.com>


--wvEX6caj9KSw1sXP
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 17, 2023 at 09:55:20PM +0200, Nik Bune wrote:
>=20
> >On Saturday, 16 September 2023 at 22:38:17 CEST, Krzysztof Kozlowski <kr=
zysztof.kozlowski@linaro.org> wrote:
> >
> >
> >On 16/09/2023 17:48, Nik Bune wrote:
> >
> >> Convert txt file to yaml.
> >> Add reg to the list of required properties.
> >> Add mainteiners from ./scripts/get_maintainer.pl output.
> >
> >
> >...
> >
> >> +---
> >> +$id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Atmel AT91RM9200 System Timer Watchdog
> >> +
> >> +maintainers:
> >> +=A0 - Wim Van Sebroeck <wim@linux-watchdog.org>
> >> +=A0 - Guenter Roeck <linux@roeck-us.net
> >>
> >
> >No, these should be maintainer of device or subarch, not subsystem.
> >
>=20
> Is it a particular way how to determine the mainterners of the device?=20
>=20
> I have checked nearby atmel devices. They have Eugen Hristev <eugen.hrist=
ev@microchip.com> in the list of maintainers.=20
> Also I have found the similar patch, which looks like have never finalise=
d, https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202305251=
25602.640855-5-claudiu.beznea@microchip.com/=20
> it has=20
> maintainers:
>   - Nicolas Ferre <nicolas.ferre@microchip.com>
>   - Alexandre Belloni <alexandre.belloni@bootlin.com>
>   - Claudiu Beznea <claudiu.beznea@microchip.coam>

Neither Claudiu or Eugen work at microchip any more. Nicolas should be
able to volunteer someone to look after it if you don't want to.

--wvEX6caj9KSw1sXP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQiEwQAKCRB4tDGHoIJi
0pl/AQD0B6M6a4QQQ0juoaYFPZGVWjyF7mIP5T3eMHfmKeL2RQD8D2oGoWnw0KzJ
q7OLanatDFxBUJ5yeKcHYhmXdKsbxAI=
=63Rj
-----END PGP SIGNATURE-----

--wvEX6caj9KSw1sXP--

