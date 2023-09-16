Return-Path: <devicetree+bounces-677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 352EA7A2B2C
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 02:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 487921C20BDF
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 00:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4834936F;
	Sat, 16 Sep 2023 00:07:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4293E367
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 00:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBBAEC433C8;
	Sat, 16 Sep 2023 00:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694822826;
	bh=8Yu+GwYPHDePl3LqNlzEzfrFvMmCmV66DDHEshoQFPs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CNH6CLgxFzU1zRS0ABaVNSmRwjWQmVfC7I+QNZrLanrYn2S10zMTqneXnbPwIx8U+
	 9+DYbJCYWmEjSRJLFUD0KnU4SrTfH4U70goBTEtWJYYgE+3CDQj+S3xahTybXlvnI8
	 4+hXbVGzT3NrhxXoS7XMOoswH8SBrs7wuJAcOF/OO9C3feM3vkPLoLdSn2ljVt86RK
	 5e7cGHkB2Lxc38+DNvVOM9w4WpQtgBzaL7RK4nBiIaLc/XKkVS+PdQE+h/FYgT5qjw
	 v+xWeWSrzk26/qThAn9dkn6BUyKeIP3f7IuSP+BCNnVyKI4KQN3Z7AGLxQNSa/LO+P
	 g8EQp9/9wUiPw==
Date: Sat, 16 Sep 2023 01:07:00 +0100
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
Subject: Re: [PATCH v6 19/19] riscv: dts: starfive: add PCIe dts
 configuration for JH7110
Message-ID: <20230916-monitor-idiom-86d6894b1e88@spud>
References: <20230915102243.59775-1-minda.chen@starfivetech.com>
 <20230915102243.59775-20-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+RcYDkBcBEoWjbZf"
Content-Disposition: inline
In-Reply-To: <20230915102243.59775-20-minda.chen@starfivetech.com>


--+RcYDkBcBEoWjbZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 15, 2023 at 06:22:43PM +0800, Minda Chen wrote:
> Add PCIe dts configuraion for JH7110 SoC platform.
>=20
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>

Not really important, but checkpatch whinges about the double signoff
here, since both are you"

--+RcYDkBcBEoWjbZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQTxpAAKCRB4tDGHoIJi
0lj9AQDNWfMti/9mi01vMJjKM7GVM2xrI3XaabEtUXwy9R9NmAD7BHYTvEI4JQ/I
+ECDoV1Pnxx67atTC+kUEC0W38scYQw=
=uVmt
-----END PGP SIGNATURE-----

--+RcYDkBcBEoWjbZf--

