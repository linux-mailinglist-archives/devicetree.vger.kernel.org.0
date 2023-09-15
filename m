Return-Path: <devicetree+bounces-589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D693B7A2088
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:11:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 911262822D0
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B214310A3A;
	Fri, 15 Sep 2023 14:11:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA3710A01
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:11:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34C4AC433C7;
	Fri, 15 Sep 2023 14:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694787109;
	bh=7eWWvHfw6GRqHLXpTAHNgpwMQoiTfPM79bZDUURySQ0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Aot5xG/6zIolsjLGE5BJmtgsqhht4rr+me+2ndd8awnkztVbNhAiLAvvsME7T59k+
	 ouRa5EjpKsSiMqOfu4anPN+YLXYZS8GiuNVwRqGMMD1OFinsUUn/vO99YLghxFT/GX
	 J5LRTFmw+yyemnwpFV9q4rzR4yA8b1KoDXUiLhO///f7jPZaiCjfx9vPJf+sdmwBCN
	 ZunHALiK4sZKZmvJfO2pCw9BqLXTKETuaXYX3s+giP4i8tgy11zPmrNH/1JkvgiES4
	 d+TNqqCfrrtawHn759zJpSAfW5zmH98hjcV96BpnV3A9TOxik/0n7uJGaAd3Dbskve
	 H+BQwEJghQsBw==
Date: Fri, 15 Sep 2023 15:11:43 +0100
From: Conor Dooley <conor@kernel.org>
To: Wang Chen <unicornxw@gmail.com>
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH 04/12] dt-bindings: riscv: Add T-HEAD C920 compatibles
Message-ID: <20230915-muster-viability-93d7d4ec2b49@spud>
References: <20230915072333.117991-1-wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="53Jv7XerkC9sk4oP"
Content-Disposition: inline
In-Reply-To: <20230915072333.117991-1-wangchen20@iscas.ac.cn>


--53Jv7XerkC9sk4oP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:23:33PM +0800, Wang Chen wrote:
> The C920 is RISC-V CPU cores from T-HEAD Semiconductor.
> Notably, the C920 core is used in the SOPHGO SG2042 SoC.
>=20
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>

I figure this is missing a From: or Co-developed-by line.

> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 38c0b5213736..185a0191bad6 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -47,6 +47,7 @@ properties:
>                - sifive,u74-mc
>                - thead,c906
>                - thead,c910
> +              - thead,c920
>            - const: riscv
>        - items:
>            - enum:
> --=20
> 2.25.1
>=20

--53Jv7XerkC9sk4oP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQRmHwAKCRB4tDGHoIJi
0u3xAP9AR6sV69ClVxJ4lGrLIj47Y3q7kzaeM9RHU7cVbQz/ywD/Z/QLPAHkU4kN
CB9Z/+WTN9m9fMZFb3S9e2+975eH2gY=
=4q42
-----END PGP SIGNATURE-----

--53Jv7XerkC9sk4oP--

