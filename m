Return-Path: <devicetree+bounces-1108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A903E7A4A7D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:07:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B59D31C20FE1
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 13:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BECCD1D53F;
	Mon, 18 Sep 2023 13:06:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B681A1CAA4
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:06:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA87BC433CD;
	Mon, 18 Sep 2023 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695042419;
	bh=hsho6zwJgdGzMVL4844nsBVJLIQBFgjfSPu5NS4R7o8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mYtySxGMysdHsCIovmnvfHlg2AaCRdxOSMVbY5d92dapcymNtg/kl2qtiuus9BWWP
	 O5xRQVUXhyPqGfR3NU5kIxPupa2m0Hpp1SeCCC1aK3hnqJqUYS/p6IFu2lT2qGFGBz
	 YW0d9AwawXYSSHY61bLTtA4GMOT+UThCQ7b3Vz5AtA15rH7ZpPmGv91UF0UAvH8V19
	 HFKDgIVwF4TB+7Qw79Q22nieQnypZNGrTjB+gEDcVTZiLNNQl5C+jEHIpGcFdJGjwg
	 o4QQU9vPvO2j6M82ZFhGAaJUAmaWXXglLUVf0IzSeHB/1AJZM3ezI5cbQuHY8bPBsh
	 wcTWASdhyv78A==
Date: Mon, 18 Sep 2023 14:06:50 +0100
From: Mark Brown <broonie@kernel.org>
To: wangweidong.a@awinic.com
Cc: lgirdwood@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	perex@perex.cz, tiwai@suse.com, rf@opensource.cirrus.com,
	herve.codina@bootlin.com, shumingf@realtek.com, 13916275206@139.com,
	ryans.lee@analog.com, linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com, povik+lin@cutebit.org, arnd@arndb.de,
	harshit.m.mogalapalli@oracle.com, u.kleine-koenig@pengutronix.de,
	yang.lee@linux.alibaba.com, liweilei@awinic.com,
	yijiangtao@awinic.com, trix@redhat.com, colin.i.king@gmail.com,
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 3/5] ASoC: codecs: Add code for bin parsing compatible
 with aw87390
Message-ID: <b695fab0-1f0e-468c-a6c7-aa1003473c32@sirena.org.uk>
References: <20230918115255.33171-1-wangweidong.a@awinic.com>
 <20230918115255.33171-4-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5z+Fx5DotXtZSz3Z"
Content-Disposition: inline
In-Reply-To: <20230918115255.33171-4-wangweidong.a@awinic.com>
X-Cookie: Never kick a man, unless he's down.


--5z+Fx5DotXtZSz3Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Sep 18, 2023 at 07:52:53PM +0800, wangweidong.a@awinic.com wrote:

> Add aw87390 compatible code to the aw88395_lib.c file
> so that it can parse aw87390's bin file
> Modify function return value
> Remove the fade-enable property because other properties
> already implement thi functionality.
> Modify the transmission method of parameters.

This would be easier to review if it were split up so that the
refactorings are separate commits, removing fade enable is a separate
commit and then finally just the changes to add the new CODEC are done.
That way each individual commit is both smaller and simpler.

--5z+Fx5DotXtZSz3Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUIS2kACgkQJNaLcl1U
h9Aj0wf/VncxZlHRbBN0E5dNaMspwCt53RF7zzRX8acE4xwwNEi9RATZwZnamY1B
QHozPKBCqDrLv0QTnW2g/ZsForhKwa/q826C7X3ROhrp3O2aKrt25Nypbtn0Lup/
4lRZ5r33uo4FOoh6t+Uj7+eCVaRnTENvmoMwn+8pfIWzmNpX8SrjKuB84kY3Ouh7
8M5qt2/G9TwArVShx8v+ovZUf99Vbm/zQP3PueyLJfH/hJxm1j51zNBHhESEoThT
tUdelqK0GXX3F3JKSc/o2B/WDmk5unSx/uE7N65Y/hcgn1qZ7FBjuur/jR8uy424
Et6u5OOpx0tplM8EO5FVl1hZG+pUgA==
=12+n
-----END PGP SIGNATURE-----

--5z+Fx5DotXtZSz3Z--

