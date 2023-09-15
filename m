Return-Path: <devicetree+bounces-657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4370D7A28FC
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CB921C20A96
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2515F1B283;
	Fri, 15 Sep 2023 21:07:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD161B280
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:07:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9AE6C433C8;
	Fri, 15 Sep 2023 21:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694812062;
	bh=yWUk6FUlYOLjDYbRClgivGA5rBQf/ssbmNXyCcG5dBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X8q+80RgmydYetEN7N0GuV/XpsFwFSajEX0D3KmsUTxIw9rvCQcWvk0fpEBDmsEYT
	 vYIYaJV0uZ6gzsiMgLZUf9OpNnY3nMKS6M5RH2Qew5MZwU3Ksy/tuCdiyFjFhkc3mE
	 aD4pM9bDK4eEddohaQrgLBJfveET1P97K+buMbvWtcuTUYQECsjTOjK0DYOmIIiamk
	 yR9SBKszFgdOeAjPIjovoalbwt4nDjhrPu/ZUKe9rr+j6k0iiUMx1X4KGlUOrF2378
	 44fTiEFhgPC7INW74fZwPuS76j7V/G/RkyQZcGCZwl/vRofGKuZAPJlAKA+GGi1DDL
	 DU9nr+905/RsA==
Date: Fri, 15 Sep 2023 22:07:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: riscv: cpus: Add missing
 additionalProperties on interrupt-controller node
Message-ID: <20230915-ethanol-doorframe-f500a5d9521e@spud>
References: <20230915201946.4184468-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="064DYEBcFbFiNMAU"
Content-Disposition: inline
In-Reply-To: <20230915201946.4184468-1-robh@kernel.org>


--064DYEBcFbFiNMAU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:19:36PM -0500, Rob Herring wrote:
> The "interrupt-controller" CPU child node is missing constraints on
> extra properties. Add "additionalProperties: false" to fix this.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Was wondering why I couldn't see this in my dt queue, guess
get_maintainer.pl struggled with the multiple claims on the file :)
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 38c0b5213736..97e8441eda1c 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -91,6 +91,7 @@ properties:
> =20
>    interrupt-controller:
>      type: object
> +    additionalProperties: false
>      description: Describes the CPU's local interrupt controller
> =20
>      properties:
> --=20
> 2.40.1
>=20

--064DYEBcFbFiNMAU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQTHmgAKCRB4tDGHoIJi
0g91AP0YiS0atHOPqWoysBPu+aFzJt8G+4W+Ng/yWcAqOg2rmAEAyWksUAWE2Blw
L+/D+8Tq4OdxCfKJjDcWuW8QGTBZZQ8=
=BkiN
-----END PGP SIGNATURE-----

--064DYEBcFbFiNMAU--

