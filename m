Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CD5936488B
	for <lists+devicetree@lfdr.de>; Mon, 19 Apr 2021 18:51:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239230AbhDSQwN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Apr 2021 12:52:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:57956 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237652AbhDSQwL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Apr 2021 12:52:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB17761157;
        Mon, 19 Apr 2021 16:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1618851101;
        bh=t9sKdxxzF27jAaOVI4eHqjzPUfXADPMgQYX+irmFUk0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CwFymYgI15t5RJdIt0yPfIuTQtPQwHkpO6pDwb1d03MI1+VR896Udz77inzmv2zMF
         /bEaNAulEu3ZnL6QUlbSgsDZzVvOU6zOx6vhgMvzDi4Cpa74ty3D7bZSjRuZ7e/890
         PP2hnN7E6696JYCxvrl/n3thppWVNEQVWGEU9gAvyRNHtPDyl6TIPbowwwzwSk82EX
         7VGl4ZuN3VnpNEE4Y6USl56WYdeQ4JD0vTD1x4gtlrolDEbTpbIdSfP0QGc02kJdbk
         2FB1c+T9zrzhHmIY3Qi6v1vnkyjtgWftIFEHy6Cu4h4MPxPIypfcQOkhQ8SowtK4FA
         uFZLY2Tpvgihw==
Date:   Mon, 19 Apr 2021 17:51:16 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [v6 1/3] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210419165116.GE5645@sirena.org.uk>
References: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="KlAEzMkarCnErv5Q"
Content-Disposition: inline
In-Reply-To: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Cookie: I will never lie to you.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--KlAEzMkarCnErv5Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 19, 2021 at 10:57:16AM -0500, Chris Morgan wrote:

> +#ifdef CONFIG_SND_SOC_RK817
> +	case RK817_CODEC_DTOP_LPT_SRST:
> +#endif

The register map of the device isn't going to change based on the kernel
configuration, I wouldn't expect any ifdefs for it.

--KlAEzMkarCnErv5Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB9tQMACgkQJNaLcl1U
h9CIoAf8D+K0DW5kV8X4IhrEH80ku3GWfao1S2OxCs8G5XD7/051b/5x8HhBIHBQ
pvgT9Tm1ggkXtVNknjxzDKtmZbKngRQ31gqUJtYw9emHlD2CAk6pj9BpH+gq7RBZ
OWq8WRHO83aTGFJ66Q7kc8z6j+0t6nMKe9/IB+fDq0AbH/eKlYK1UZDOLWvG2XI/
R5PZ21SuIrA5iVCBJnKs9y9Re5Cj+bTVL0Kkp4LQAeB+v+1OglgYC8dMag2al52c
vvCibAvGmJ2CzJxgZX6reyY5n1r0Op/3a4NHRIi2bSeI/tOPXRoSn+R5Ad4VUEJD
ZO08QlNJkRlB6Q/4iQIwP30aexXaBg==
=9x18
-----END PGP SIGNATURE-----

--KlAEzMkarCnErv5Q--
