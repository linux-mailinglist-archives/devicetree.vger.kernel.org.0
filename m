Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95391365D25
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233025AbhDTQUN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:20:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:57526 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232910AbhDTQUM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 20 Apr 2021 12:20:12 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E9CCF613CD;
        Tue, 20 Apr 2021 16:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1618935580;
        bh=wo0Ma+Ga1AFTjgDUVkyTQw4kODt/cwUCMSS14hRgUNg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=us9AuT+exCEr0zbASBxHw2qmmSsVS6/zUm+sHeS71IHEbaYbXR4fDkSmiu/75SZTF
         6+G6RPoo++S67ORiwwURUJp1//a4XjxY05+h27MdruM4uqj3z724dJM0Q/Buf/zTTq
         unTpAaffQ0S67azl9QCQMqn6OKiYI2x2Dis1VptuWdu7lUDh6uKPcc2IHHXTXecB7q
         u2LNLBzEyg62emP49CkuXf1eaIv6GnhYob09eUIvoiLNtVMfA2c6ddACYxKm9PbB7j
         7sd1hMU1M2HZTpxYqpUlVGxcv1cH9wdZCG91ghvjlWfmn9tSHNBWsrJXOzoPMeRKpP
         MjOwZ1LAUfg6Q==
Date:   Tue, 20 Apr 2021 17:19:13 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [v7 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210420161913.GF6073@sirena.org.uk>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="udcq9yAoWb9A4FsZ"
Content-Disposition: inline
In-Reply-To: <20210420160747.22942-2-macroalpha82@gmail.com>
X-Cookie: Falling rock.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--udcq9yAoWb9A4FsZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 20, 2021 at 11:07:45AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the Rockchip rk817 audio codec integrated into the
> rk817 PMIC. This is based on the sources provided by Rockchip from
> their BSP kernel.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

If you've not made substantial changes to a patch you should carry
forwards any tags you've got when resending so reviewers know they don't
need to do things again.

--udcq9yAoWb9A4FsZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB+/wEACgkQJNaLcl1U
h9D6Iwf+L1DybQOPGsl6KtAAhQp17fNdKFCqL5+Uil1WOS6NbkToX2lb+DZOK09u
r77tLW80Zlelg1tgjPZNPXWztxH+NMtVq2fyuxvKsHOHkACMLMRYpLgCSgjctYA1
n1pxh74sIshX+rRt5UO40Erek04i3sTq3Z8fS/r/SN3xaDqowhtXgur3dGsfWwlb
TJCqKeAYDlkR7KDxJ+vdanOWIQ8kmHSPwrKNLePrjD8YAx0iTRut7oSbG6EoeFWr
kQ8ZY4dLohmQ8sKjoAlGMqw21MuME4hFmgZuelwpCU0IV2QGqgq2s8wEQQ0SuBZE
W+01hbiShhGlSmt4IGCfYt+xp+yuAw==
=a2sH
-----END PGP SIGNATURE-----

--udcq9yAoWb9A4FsZ--
