Return-Path: <devicetree+bounces-658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B2E7A2905
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE6041C209CE
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28C11B278;
	Fri, 15 Sep 2023 21:11:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D964830CFF
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:11:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B632FC433C8;
	Fri, 15 Sep 2023 21:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694812262;
	bh=X+2/0v9oqmsp8dmvgOqx0HzLC/TGDMHJZN4BepOEpgM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YPFNbQ4XwtjWP21gVSjr2ZSIxbCnw4wA2Vw7GPKfl7i3+nWfkRdoVy7PK9A5d6khA
	 MlcDnVwKXwaXC7lJ9moyfFDQiccYWihse5kCgtM2Cjm4CnbSMrahkYnBAF75AV14Db
	 vOD/BvL1oK5C9IkBSMucc7OjWFLARc3hoefWpxyLN/KowJ7i6Hka0ahn1/Vxxm+Wey
	 GJ6EWggXzIhdi2o9jPqB0UTtsPNfx6YnbKfXDnQcKWsfHgtbZbyVsdLr5t0EZNFUDX
	 KE9jO0ekjdlZYZ8+oY1B6w9tw2yu0FWx+8pj8POswWKlGmL2sKVb6invHmfATA6ysn
	 K7MZM028QV1Nw==
Date: Fri, 15 Sep 2023 22:10:58 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>, linux-ide@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ata: pata-common: Add missing
 additionalProperties on child nodes
Message-ID: <20230915-boxing-scoreless-c0122ce3591b@spud>
References: <20230915201626.4180606-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="URaUg4q1ZuoWvvkY"
Content-Disposition: inline
In-Reply-To: <20230915201626.4180606-1-robh@kernel.org>


--URaUg4q1ZuoWvvkY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:16:20PM -0500, Rob Herring wrote:
> The PATA child node schema is missing constraints to prevent unknown
> properties. As none of the users of this common binding extend the child
> nodes with additional properties, adding "additionalProperties: false"
> here is sufficient.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/ata/pata-common.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/ata/pata-common.yaml b/Doc=
umentation/devicetree/bindings/ata/pata-common.yaml
> index 337ddf1113c4..4e867dd4d402 100644
> --- a/Documentation/devicetree/bindings/ata/pata-common.yaml
> +++ b/Documentation/devicetree/bindings/ata/pata-common.yaml
> @@ -38,6 +38,7 @@ patternProperties:
>        ID number 0 and the slave drive will have ID number 1. The PATA po=
rt
>        nodes will be named "ide-port".
>      type: object
> +    additionalProperties: false
> =20
>      properties:
>        reg:
> --=20
> 2.40.1
>=20

--URaUg4q1ZuoWvvkY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQTIYgAKCRB4tDGHoIJi
0pNIAQDzUW3P1K7UsEwSRjyW67b7+Fp55WzSLVGP60AxsPJqqgEAxkojoyZ4bUAI
8zMbWvQrr/JjeYcdN3yeufK16wOpLwY=
=y2h4
-----END PGP SIGNATURE-----

--URaUg4q1ZuoWvvkY--

