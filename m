Return-Path: <devicetree+bounces-1206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6877A5503
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B783C281D22
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 418C028DCE;
	Mon, 18 Sep 2023 21:26:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5D4450C7
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDA42C433C8;
	Mon, 18 Sep 2023 21:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695072377;
	bh=lEN1ls2dQkgYbioyJtFPuLMXALUsRxPq6Ic/riPZ0ho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NqgBdUlH+wSg9plu2Er1SzBhJU2wj9WSfxwhShNfKjOe9Cul0jpDI0hk/Cl1V6UQt
	 2PV2q+GfZjLlBLJguSRIuqd+qC0nmbnJIgSO2DC4u2zmLq7R9u6sN8y1mullDfZTm1
	 47tYhx3uPj0wmmaZV7ArWxgMhrgKh3jz/i3AucsqOGlQdsKIkt+LGVbDhA5eRzlrVX
	 D2kQCfd54mO6pXJhqFiH3KqscVbnUj/oDJCrSBwTh4Oz+z6Ul6B6y81r88Vhu1A69P
	 jeG0jQtFYwafrk/+TMtIyAEOttfVYJqQUEePKOdIlriH8KHrZ/0HxooyiY0OomwOAs
	 tkd32TsQDs6GA==
Date: Mon, 18 Sep 2023 22:26:11 +0100
From: Conor Dooley <conor@kernel.org>
To: Kwanghoon Son <k.son@samsung.com>
Cc: p.zabel@pengutronix.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jszhang@kernel.org, guoren@kernel.org, wefu@redhat.com,
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
	inki.dae@samsung.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: reset: Document th1520 reset control
Message-ID: <20230918-4ef7f52da269f3a7e4023bb3@fedora>
References: <20230918045125.4000083-1-k.son@samsung.com>
 <CGME20230918045134epcas1p1b80b338b66512a976c3783cd0e51da50@epcas1p1.samsung.com>
 <20230918045125.4000083-2-k.son@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WE881O0NIJLSEjS/"
Content-Disposition: inline
In-Reply-To: <20230918045125.4000083-2-k.son@samsung.com>


--WE881O0NIJLSEjS/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 04:51:23AM +0000, Kwanghoon Son wrote:
> Add documentation to describe th1520 reset device

I would appreciate if you could add some information here as to what is
missing from this - the reset controller isn't just for two WDTs is it?

>=20
> Signed-off-by: Kwanghoon Son <k.son@samsung.com>
> ---
>  .../bindings/reset/thead,th1520-reset.yaml    | 44 +++++++++++++++++++
>  .../dt-bindings/reset/thead,th1520-reset.h    |  9 ++++
>  2 files changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/thead,th1520-=
reset.yaml
>  create mode 100644 include/dt-bindings/reset/thead,th1520-reset.h
>=20
> diff --git a/Documentation/devicetree/bindings/reset/thead,th1520-reset.y=
aml b/Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
> new file mode 100644
> index 000000000000..49ea8c6a331f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/thead,th1520-reset.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: T-HEAD th1520 SoC Reset Controller
> +
> +maintainers:
> +  - Kwanghoon Son <k.son@samsung.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: thead,th1520-reset
> +      - const: syscon

iDumb question perhaps, but why is this a syscon?

Cheers,
Conor.

> +
> +  reg:
> +    maxItems: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/thead,th1520-reset.h>
> +
> +    soc {
> +        #address-cells =3D <2>;
> +        #size-cells =3D <2>;
> +
> +        reset-controller@ffef014000 {
> +            compatible =3D "thead,th1520-reset", "syscon";
> +            reg =3D <0xff 0xef014000 0x0 0x1000>;
> +            #reset-cells =3D <1>;
> +        };
> +    };
> diff --git a/include/dt-bindings/reset/thead,th1520-reset.h b/include/dt-=
bindings/reset/thead,th1520-reset.h
> new file mode 100644
> index 000000000000..ec10751814e5
> --- /dev/null
> +++ b/include/dt-bindings/reset/thead,th1520-reset.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +
> +#ifndef DT_BINDING_RESET_TH1520_H
> +#define DT_BINDING_RESET_TH1520_H
> +
> +#define TH1520_RESET_WDT0 0
> +#define TH1520_RESET_WDT1 1


--WE881O0NIJLSEjS/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQjAcAAKCRB4tDGHoIJi
0n1CAP4m0yajHLa/MSox0QSJHmD92CP5eFO1xINILg9LNE7KowD/edgItl4xdrao
dBqNau3d679aFegrxyqICNRrYm8figQ=
=9Hl8
-----END PGP SIGNATURE-----

--WE881O0NIJLSEjS/--

