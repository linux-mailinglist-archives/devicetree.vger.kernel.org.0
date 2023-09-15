Return-Path: <devicetree+bounces-602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D95B7A2170
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EC641C212D1
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D21B30D14;
	Fri, 15 Sep 2023 14:50:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EEF30CE1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F84DC433C8;
	Fri, 15 Sep 2023 14:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694789431;
	bh=+7a/yilTLV3BMiTCUiFOpBcqKwXaHi/uJzXAg9+YPtQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NwpEnu7H/3Yo77ctlj+KSVShzHRotD5z4emCwm2QBSN0l8eFaqEk5iFeAE/Q7kNwG
	 7QY7O7QpiyMGsgi/21vOWy8FLlOrvw1XbCO5kWdp8sk48gXvhME8PIOhiwahTs4LDg
	 o3PBuISTzKbilibvTjOtXzUfiSkGSkZqHs+dSlQMqbzbpUEOcvzmmMNj1O6DuvLzB/
	 KA3p0HRCYWvMoJHBNYWWh2oGyct8Ygv/p+vhER6EZlg7b1mqUasuBxlW7hixy9Lypv
	 cbjVEqtXAQ/nX+il78lIg2QeF4Hz2M/2XRU+fCmFVlW9FMFkABmw46/VCxZHD+gGC+
	 ZoqKPqnOP27xg==
Date: Fri, 15 Sep 2023 15:50:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
Cc: patrick@stwcx.xyz, Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: hwmon: add MAX31790
Message-ID: <20230915-quench-left-8fbc1ca3b1da@spud>
References: <20230915062926.2460502-1-Delphine_CC_Chiu@wiwynn.com>
 <20230915062926.2460502-3-Delphine_CC_Chiu@wiwynn.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j20GgGeCJk1fE9k9"
Content-Disposition: inline
In-Reply-To: <20230915062926.2460502-3-Delphine_CC_Chiu@wiwynn.com>


--j20GgGeCJk1fE9k9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Fri, Sep 15, 2023 at 02:29:24PM +0800, Delphine CC Chiu wrote:
> Add dt-bindings for the MAXIM MAX31790.
>=20
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---
> Changelog:
> v2 - Add dt-bindings for the MAXIM MAX31790.
> ---
>  .../bindings/hwmon/maxim,max31790.yaml        | 59 +++++++++++++++++++
>  MAINTAINERS                                   |  6 ++
>  2 files changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max3179=
0.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml =
b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> new file mode 100644
> index 000000000000..2bd455b36b3f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/maxim,max31790.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/hwmon/maxim,max31790.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim max31790
> +
> +maintainers:
> +  - Delphine CC Chiu  <Delphine_CC_Chiu@wiwynn.com>
> +
> +description: |
> +  The MAX31790 controls the speeds of up to six fans using
> +  six independent PWM outputs. The desired fan speeds (or PWM duty cycle=
s)
> +  are written through the I2C	interface.
> +  The outputs drive =E2=80=9C4-wire=E2=80=9D fans directly, or can be us=
ed to modulate
> +  the fan=E2=80=99s power terminals using an external pass transistor.
> +
> +  Datasheets:
> +    https://datasheets.maximintegrated.com/en/ds/MAX31790.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - maxim,max31790
> +
> +  reg:
> +    maxItems: 1
> +
> +  pwm-as-tach:

I don't see any other users of this in-tree, so you'd need a vendor
prefix. That said, I'm once bitten, twice shy about fan related
properties in hwmon, so I would definitely like Rob to comment on this
whole binding.

> +    description: |
> +      There are 6 PWM output channel in MAX31790 that allows to be confi=
gured
> +      as a TACH input by setting the Fan Configuration register.
> +      Config PWM output channels in the array as tachometer inputs.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 6
> +    items:
> +      enum: [1, 2, 3, 4, 5, 6]
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      pwm@20 {
> +        compatible =3D "maxim,max31790";
> +        reg =3D <0x20>;
> +        pwm-as-tach =3D <2 5>;

This would be <2>, <5>; no?

> +      };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c8fdd0d03907..97e13b6bf51d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1371,6 +1371,12 @@ F:	Documentation/devicetree/bindings/hwmon/adi,max=
31760.yaml
>  F:	Documentation/hwmon/max31760.rst
>  F:	drivers/hwmon/max31760.c
> =20
> +ANALOG DEVICES INC MAX31790 DRIVER
> +M:	Delphine CC Chiu  <Delphine_CC_Chiu@wiwynn.com>
> +S:	Odd Fixes

This is a pretty odd status for something you're newly adding.
How come it's not going to be maintained?

Thanks,
Conor.


--j20GgGeCJk1fE9k9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQRvMwAKCRB4tDGHoIJi
0i3ZAP98nZfLp3xX8XszvOrnl9Qt3XVP8P1i2pSLZPHZs0B3TAD/XGC0hnOt22Oj
sm+07JZPIK/YS2QOTChE8LW5bR5NlAM=
=iyxw
-----END PGP SIGNATURE-----

--j20GgGeCJk1fE9k9--

