Return-Path: <devicetree+bounces-253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAAA7A086A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:04:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 448D2B20C49
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D1118E37;
	Thu, 14 Sep 2023 14:48:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5E318E09
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:48:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4E03C433C7;
	Thu, 14 Sep 2023 14:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694702892;
	bh=XlH2++cozlMCXeR9EvUckhmVWrwhR2yKc6Vvzh31WCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mvSBW9JAqDrz6UWIPcFcklUoKB8kHwI/5dWtybKDRXOdLDJTCLwouG0s902rAirPm
	 Wql9iXKt+kKfwbKSvsWsT2yx0tKQNVDOKVtR1MFjky+IXIxinawVoF3GIi+Ol6rWPF
	 Yp2TGaF2YE9xDE0fUr8Hnt64md6qHOgygQYzXMiqWapAy2ihvhl9mDDx6NZkz3ZDIL
	 HzvYiU+HoZpxlVH+y8lUy7Lh6wTOXCAUVTGSsvSY5GQTU+MqB8p8zb2acxI7QJLhdp
	 w7dBT5RHBaM3h2FBncEux2uO7SofWur4Gcwtqbpnj4NECdQhA1qTrWXKpy20Wavooz
	 sMBoitRfxuizQ==
Date: Thu, 14 Sep 2023 15:48:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: serial: document esp32-uart bindings
Message-ID: <20230914-stumbling-smother-2b048381952c@spud>
References: <20230913211449.668796-1-jcmvbkbc@gmail.com>
 <20230913211449.668796-2-jcmvbkbc@gmail.com>
 <d7bf0ae3-d263-4231-9656-2b7af4b372a3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w5dGWB6bqtjegC91"
Content-Disposition: inline
In-Reply-To: <d7bf0ae3-d263-4231-9656-2b7af4b372a3@linaro.org>


--w5dGWB6bqtjegC91
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 14, 2023 at 07:55:35AM +0200, Krzysztof Kozlowski wrote:
> On 13/09/2023 23:14, Max Filippov wrote:
> > Add documentation for the ESP32xx UART controllers.
> >=20
> > Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> > ---
> >  .../bindings/serial/esp,esp32-uart.yaml       | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-=
uart.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/serial/esp,esp32-uart.ya=
ml b/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
> > new file mode 100644
> > index 000000000000..8b45ef808107
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
> > @@ -0,0 +1,48 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/serial/esp,esp32-uart.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ESP32 UART controller
> > +
> > +maintainers:
> > +  - Max Filippov <jcmvbkbc@gmail.com>
> > +
> > +description: |
> > +  ESP32 UART controller is a part of ESP32 SoC series.
>=20
> 1. Company name?
> 2. ESP32 SoC series suggests esp32 is a series.
>=20
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - description: UART controller for the ESP32 SoC
> > +        const: esp,esp32-uart
>=20
> Also, the vendor prefix looks incorrect, so again - what is the company
> name?

esp32 is made by expressif, which would match with "esp" as a vendor
prefix.



--w5dGWB6bqtjegC91
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQMdKAAKCRB4tDGHoIJi
0jdGAP4sUKNXkMwoIScWfBLsAsvhasgz8yvWr3ZT714K8R9RTgD+K5NqOOlcTqGa
7guFL9U09dCkKLI+vEoOgY4PtJ3gCwQ=
=ENOh
-----END PGP SIGNATURE-----

--w5dGWB6bqtjegC91--

