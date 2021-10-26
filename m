Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B310243B0AC
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 12:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235312AbhJZLBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:01:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:32896 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235322AbhJZLBd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 07:01:33 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 35B4B60C4A;
        Tue, 26 Oct 2021 10:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635245950;
        bh=yZUz/QuYYkWO/01uS2IOg3PHpb2ceRrPEJDx6J1/EhU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YvJlRdjZ1OT6s5VvujzEnjLsub3bpXHGt75wPj+70H49YXS6H6Z1PMt3GMQfqXtA8
         M7KgC5VRuzD5yv3uNHwbOTmDWLyYT5DN3dYjKaByvpDks6KuhoOQZ2i13ANK4Fe5U3
         veuqa2I9gnM6ViitmS9X9ov/RxulfggeOc7ZqFTJ1izWs37bnHYe1woG5fFgTRPOZq
         umVI20PrvmoWXxcUGYsMio3ahZzqx1pXnYddGTjSMx3q4UABs/sWypZncHTJFhvL0y
         NgQhntxDQVqRe+gexyysowXmfA4iH/rWMt88GxaS6Ga6+7BINFsEJ8ncDD+UsEV/VE
         Gr72fCGuzE4kw==
Date:   Tue, 26 Oct 2021 11:59:05 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [RESEND PATCH v10 00/17] ASoC: qcom: Add AudioReach support
Message-ID: <YXffedeNCJCDiI88@sirena.org.uk>
References: <20211026103815.19468-1-srinivas.kandagatla@linaro.org>
 <YXfc18+fqBNajHX8@sirena.org.uk>
 <ef6377b1-5cd4-dde2-b2ec-a7c0ccc17dd0@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ucFHcU21Z62t0xTd"
Content-Disposition: inline
In-Reply-To: <ef6377b1-5cd4-dde2-b2ec-a7c0ccc17dd0@linaro.org>
X-Cookie: Times approximate.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ucFHcU21Z62t0xTd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 26, 2021 at 11:55:37AM +0100, Srinivas Kandagatla wrote:

> No, this is not different to v10 which I send out Yesterday, v10 is meant to
> address the arm64 build error that you reported.

> For some reasons yesterday's patches did not reflect the changes that I
> wanted, so I RESEND v10 again.

OK, but that means that this v10 is different to the v10 that went out
yesterday, right/

--ucFHcU21Z62t0xTd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF333gACgkQJNaLcl1U
h9BFqQf+OzHPX9GaPX0JK2jeA+wWbLwPNaYivIANCZW9zdrl3j1xj+gsl/wnsX6J
hPLF5RT/Yz/SKWCzh0L4J5G+UHVJLVgXm+MMAAaOnomhg7krObJu3LsD1wq4c6ij
g7ps2brkVl68ZelWwPo40d8IZIlNVY3TgqHL/hA3O7qNIeoTm69eDJp9Kt08imvp
OkYJHYbMSzC5/irdEdnc7TQ0GnUP3920hMWpXU1xY8Ntbc7ob0zqz6bCN2RkKWif
7LUy+IYVH5XCTKN/uQ5OEgJR2XPtCicl+lhd+MSmQaJwhTDfBkVT7emET6cRAWZd
jt6b1uEnL414LODmVTj44rpCBGPWtw==
=4lT9
-----END PGP SIGNATURE-----

--ucFHcU21Z62t0xTd--
