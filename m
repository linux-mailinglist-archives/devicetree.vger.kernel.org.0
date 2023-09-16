Return-Path: <devicetree+bounces-678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD65B7A2B2F
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 02:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75BEE281B90
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 00:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1388E371;
	Sat, 16 Sep 2023 00:09:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4FD367
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 00:09:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A33CAC433C7;
	Sat, 16 Sep 2023 00:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694822982;
	bh=ZoBnjs9K4t4sU4nW2jM9PguihlFyIuTEMrrHlL6xBtY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hd4xkszN0ncBWhPDIpdiCbg7cwGlpAbnnO38MkwjYvJNh8njdZFfhVqIZ3MHWV9ps
	 aeLJIenGm5ALpHps7UHEE/IRLd0AUN8vH9FA6YPtW9RcA2t/6IstNGonupkyOJiDFh
	 Dud7rTH82mbaepl4hqsIivECBYQyxwDxgZoqgEe1I8vJw+SdYoH2SDOjfRIZWPPMB9
	 9RnNFGRB/sCkiWCfcP7C7W7X5IZIApqV10DnMCIy4pMNpDfwayiafeyQItGtu3/WmF
	 3G24RPecrOhcoevOAGYaFw+6NkVCLrvjKkjcixTlbK/0kwlpQR9pD67uMAOaF3/GkQ
	 iNHKIBHXwidag==
Date: Sat, 16 Sep 2023 01:09:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mason Huo <mason.huo@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
Subject: Re: [PATCH v6 02/19] PCI: microchip: Move pcie-microchip-host.c to
 plda directory
Message-ID: <20230916-outcome-obedient-fda7043bcca7@spud>
References: <20230915102243.59775-1-minda.chen@starfivetech.com>
 <20230915102243.59775-3-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+qLWHmCvTp7PqhnE"
Content-Disposition: inline
In-Reply-To: <20230915102243.59775-3-minda.chen@starfivetech.com>


--+qLWHmCvTp7PqhnE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 06:22:26PM +0800, Minda Chen wrote:
> For Microchip Polarfire PCIe host is PLDA XpressRich IP,
> move to plda directory. Prepare for refactor the codes.
>=20
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  MAINTAINERS                                        |  2 +-
>  drivers/pci/controller/Kconfig                     |  9 +--------
>  drivers/pci/controller/Makefile                    |  2 +-
>  drivers/pci/controller/plda/Kconfig                | 14 ++++++++++++++
>  drivers/pci/controller/plda/Makefile               |  2 ++
>  .../controller/{ =3D> plda}/pcie-microchip-host.c    |  2 +-
>  6 files changed, 20 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/pci/controller/plda/Kconfig
>  create mode 100644 drivers/pci/controller/plda/Makefile
>  rename drivers/pci/controller/{ =3D> plda}/pcie-microchip-host.c (99%)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..b1050804e6d2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16647,7 +16647,7 @@ M:	Daire McNamara <daire.mcnamara@microchip.com>
>  L:	linux-pci@vger.kernel.org
>  S:	Supported
>  F:	Documentation/devicetree/bindings/pci/microchip*
> -F:	drivers/pci/controller/*microchip*
> +F:	drivers/pci/controller/plda/*microchip*

The riscv patchwork automation is complaining that you have added
maintainers pattern errors with this patch. If you run
=2E/scripts/get_maintainer.pl --self-test=3Dpatterns
it'll tell you what the bad pattern is. Not sure why I never actually
dumped the output of that test into the failure report, so I can't
immediately tell you what is wrong.

--+qLWHmCvTp7PqhnE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQTyQAAKCRB4tDGHoIJi
0lw1AQDzd1Qn+mtJ1Bjy/O6gztN51A8g7jbDXInA6DY6wknZcgEAq7WU6P4FmYOm
0Q5J/MB4RAOAgpV7Ji9Qd9wkqGV22g0=
=cAFa
-----END PGP SIGNATURE-----

--+qLWHmCvTp7PqhnE--

