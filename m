Return-Path: <devicetree+bounces-591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C037A20AF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC34F28301C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA04610A38;
	Fri, 15 Sep 2023 14:18:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6772E101EB
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:18:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33293C433C8;
	Fri, 15 Sep 2023 14:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694787510;
	bh=NGHyNfngYAoRYPFTNCehZc9kQqdxb/OpDzME1uzZLxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LqAfXzb/dZXYaiwskKA5YNGfPCbSuNQl9f66a8h27Cnuou+XHGq+dQvzv8g4NNZT5
	 zEjBpJqXz1wZqeffS2g5wIEztBcFRqcZIfdnO15tx31hFIr4ykCeErVMV+L83UO+f8
	 joyEDx1yenRjihRF0LyDocrmppGqqzPIJDQzevhtAwsZ6lXrcIleAXn3cAwrQCxZFN
	 RBZhlA6cz5bA15WjjBG8NZxY9LFbCfy8CUu/yZNcTI6vgHZ32v2+foXOqTQwXM0QdV
	 18bQzJfdDRvdcQgemwwVf8UH1Aarlczb5rVpVJt9s8x6hccEDObhT+ju9CELH6yIrq
	 TgKhairxl/eHQ==
Date: Fri, 15 Sep 2023 15:18:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Wang Chen <unicornxw@gmail.com>
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	jszhang@kernel.org, guoren@kernel.org, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com, Wang Chen <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH 03/12] dt-bindings: riscv: add sophgo sg2042 bindings
Message-ID: <20230915-reoccupy-clustered-231e58a00f3c@spud>
References: <20230915072242.117935-1-wangchen20@iscas.ac.cn>
 <20230915-boxing-emporium-669d2715a347@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5kwtB/G/oIJ2SyNw"
Content-Disposition: inline
In-Reply-To: <20230915-boxing-emporium-669d2715a347@spud>


--5kwtB/G/oIJ2SyNw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 03:11:04PM +0100, Conor Dooley wrote:
> On Fri, Sep 15, 2023 at 03:22:42PM +0800, Wang Chen wrote:
> > Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
> > Milk-V Pioneer board [2].
> >=20
> > [1]: https://en.sophgo.com/product/introduce/sg2042.html
> > [2]: https://milkv.io/pioneer
> >=20
> > Signed-off-by: Wang Chen <wangchen20@iscas.ac.cn>
> > Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 90f13281d297..0e0d477dab38 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -20063,6 +20063,12 @@ F:	drivers/char/sonypi.c
> >  F:	drivers/platform/x86/sony-laptop.c
> >  F:	include/linux/sony-laptop.h
> > =20
> > +SOPHGO DEVICETREES
> > +M:	Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> > +M:	Chao Wei <chao.wei@sophgo.com>
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/riscv/sophgo.yaml
>=20
> I would like to see an Ack from those you are volunteering here.

I'm going to assume that you also add coverage here for the dts files
later in the series, but since the thing isnt't threaded it is hard to
check easily. If not, then a MAINTAINERS entry covering them should be
added, featuring a person that is going to monitor the lists, apply
patches and send PRs to the soc maintainers.

As a last resort, I can do that, but I don't have this hardware and
would rather someone that specifically cares for this hardware does it.

Thanks,
Conor.


--5kwtB/G/oIJ2SyNw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQRnsQAKCRB4tDGHoIJi
0milAQDChQzQ2fACthHIoqVBo61pfNxHONif3TV7/ItXZYpXmgD+KlVm9OHBkyJ2
QkzEmFmLHELmhoQTeGYPQPnb/MjeuwA=
=CP99
-----END PGP SIGNATURE-----

--5kwtB/G/oIJ2SyNw--

