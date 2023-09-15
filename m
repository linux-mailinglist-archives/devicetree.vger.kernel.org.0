Return-Path: <devicetree+bounces-588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E262D7A2086
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9DEE1C20B11
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5866511181;
	Fri, 15 Sep 2023 14:11:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1C2CA7A
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E978BC433C9;
	Fri, 15 Sep 2023 14:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694787069;
	bh=Io4WAeudrk6GrRUOfTXXAh8NLlPv6VHeQ/TAl6xHSRA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U7rJ+eYzqTMUXBOSTFHpxp1WJQ6MKXSbTfvNzDre5bFqK6ccE7GeDMFSFwYXs8Vbe
	 4r3L9hm5BhzxmXngtgLNSdNaALsZWyFldO+7eENEcETHGxqI/cR46PSmsNaOi2jO/C
	 0Nr7BkWEzmHmcvhOxLTkRGKeXNriT33DZBnT9n2Q0kVydqnJIQtDCSsiqqB6kQJS8i
	 re6zDjDnwjmSnBPp68kY7qMVCR6dQjyRWrM2rEV7AynCzakeQRdNws61Mez0GT5Exg
	 AX/8kF+tyk+YVp8EGaHFaqMFtfPNgIHa859dVFMEOVDmmL+zuD/Q/DH4F4jiZq3fUw
	 f7iirUQz0muPA==
Date: Fri, 15 Sep 2023 15:11:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Wang Chen <unicornxw@gmail.com>
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH 03/12] dt-bindings: riscv: add sophgo sg2042 bindings
Message-ID: <20230915-boxing-emporium-669d2715a347@spud>
References: <20230915072242.117935-1-wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7mnyoaMGIeydQZQF"
Content-Disposition: inline
In-Reply-To: <20230915072242.117935-1-wangchen20@iscas.ac.cn>


--7mnyoaMGIeydQZQF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:22:42PM +0800, Wang Chen wrote:
> Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
> Milk-V Pioneer board [2].
>=20
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
> [2]: https://milkv.io/pioneer
>=20
> Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..0e0d477dab38 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20063,6 +20063,12 @@ F:	drivers/char/sonypi.c
>  F:	drivers/platform/x86/sony-laptop.c
>  F:	include/linux/sony-laptop.h
> =20
> +SOPHGO DEVICETREES
> +M:	Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> +M:	Chao Wei <chao.wei@sophgo.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/riscv/sophgo.yaml

I would like to see an Ack from those you are volunteering here.

Thanks,
Conor.

--7mnyoaMGIeydQZQF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQRl+AAKCRB4tDGHoIJi
0ji5AQCqmobFFy4Yzr1rP3PjWE6fjopsBHPqt6RocnjXhOSzqQD9F1AsZRZN+teA
oT85ufv9f6HJpdZ8+sI+t+j9LbEQmgc=
=jVSa
-----END PGP SIGNATURE-----

--7mnyoaMGIeydQZQF--

