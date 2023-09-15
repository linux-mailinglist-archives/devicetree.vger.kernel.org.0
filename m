Return-Path: <devicetree+bounces-667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 294F67A2929
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3906C1C20A35
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 554C71B289;
	Fri, 15 Sep 2023 21:13:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506781B286
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:13:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26CA0C433B8;
	Fri, 15 Sep 2023 21:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694812424;
	bh=kwVCyuwmCscgtotgsB8jD0n68jkFaEcgtBnaGBUyKyg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LZhw53fzrT82yheV0xnWJ4/g9w/sF2neiZIgmuEA2lPaoIL+qnAI4893sV+R+QBYa
	 xGBrDRfBrV+A/FDCHy+Stqg5vRzT4P5R+9jUiLMGEoPx+sNGa96SWHal/EYFDOmruw
	 gc7jfrlUoPUFPMy3Nxa+btuYCpGFV2yBhnwAlftc4lRV8A54w0ngTKPZInD2uagTs6
	 saFeY1zZVYq6eXFd6UL1BI+50zIbYb0j2D3T6Nm8/sLg+TeVMJEZRJ8vbHS2qk0GFI
	 KH34abVCB+l9LJscenUJWiPiqza9jrRrtI3PHtJIuNYuCW8Uo4fnD0DC9h3KdhZ6Of
	 mT1dAZPIIokvQ==
Date: Fri, 15 Sep 2023 22:13:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] Documentation: dt-bindings: media: i2c: Add ROHM
 BU64754 bindings
Message-ID: <20230915-starch-bankable-c4102e405a73@spud>
References: <20230915165946.4183839-1-kieran.bingham@ideasonboard.com>
 <20230915165946.4183839-2-kieran.bingham@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kq4SaRLaezFRFdFr"
Content-Disposition: inline
In-Reply-To: <20230915165946.4183839-2-kieran.bingham@ideasonboard.com>


--kq4SaRLaezFRFdFr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Fri, Sep 15, 2023 at 05:59:45PM +0100, Kieran Bingham wrote:
> Add YAML device tree bindings for the ROHM BU64754 VCM Motor Driver for
> Camera Autofocus.
>=20
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> ---
>  .../bindings/media/i2c/rohm,bu64754.yaml      | 48 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++
>  2 files changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/rohm,bu64=
754.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yam=
l b/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
> new file mode 100644
> index 000000000000..22da4a46bb0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/rohm,bu64754.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2023 Ideas on Board Oy.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/rohm,bu64754.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROHM BU64754 Actuator Driver for Camera Autofocus
> +
> +maintainers:
> +  - Kieran Bingham <kieran.bingham@ideasonboard.com>
> +
> +description: |

That | is surplus to requirements since you have no formatting to
preserve.

> +  The BU64754 is an actuator driver IC which can control the actuator
> +  position precisely using an internal Hall Sensor.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rohm,bu64754

Why such a complicated pattern when you only have one item here?
Why not just const: rohm,bu64754?

Otherwise, looks fine to me.

--kq4SaRLaezFRFdFr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQTJBAAKCRB4tDGHoIJi
0pX7APoD4Kw9SlBLfhiuKvhkDRf+fTvAqfbXIgomg0v8+f45SAD/c6EsQdkx35AK
UEbTPbXlg9E1wyDB8q8C/ELFMgIXJQk=
=bR/q
-----END PGP SIGNATURE-----

--kq4SaRLaezFRFdFr--

