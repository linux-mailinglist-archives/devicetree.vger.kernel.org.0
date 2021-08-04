Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1AFA3E0740
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:10:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240053AbhHDSKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:10:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:50378 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240054AbhHDSKP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Aug 2021 14:10:15 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0439C60C41;
        Wed,  4 Aug 2021 18:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628100602;
        bh=6ytqM1pqOmChi2kXhLk2K+nQSEdHW+8BvIOQWWWX020=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=P38SyYn532zv26lpVO7xXFeJQVE0gDXG8tt41cet8eI+MBRZAohGA8IVwuR16UDsI
         PRyHWK6xV5HMoHJI3Ks6UjJfINZYuVaIMPJ4HmfrxW2qKagsR4rHtQWszPlC+XpNJ2
         xZgEKe8jmrXAPdz1tGHV7SUNncMfMWMqfx6KAyg7IZvxpRKwl1Hb0VdNNclterhK9G
         gd1miSp9KcLmUurqbces5ERVuri3+oZlR6o7UStYB9Ubs5NFJ4uxTp1225YBnet9in
         H3NKY9mgBLkvjXDTxqIiUxtSP5QkFdvCN+ZVHPBw5FDQVo+TlQY5c/QJDIOss9ZrbE
         MYA4k0snVJXYg==
Date:   Wed, 4 Aug 2021 19:09:47 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v3 13/20] ASoC: qdsp6: audioreach: add basic pkt alloc
 support
Message-ID: <20210804180947.GI26252@sirena.org.uk>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-14-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ZY5CS28jBCfb727c"
Content-Disposition: inline
In-Reply-To: <20210803125411.28066-14-srinivas.kandagatla@linaro.org>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ZY5CS28jBCfb727c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 03, 2021 at 01:54:04PM +0100, Srinivas Kandagatla wrote:

> +config SND_SOC_QDSP6_AUDIOREACH
> +	tristate "SoC ALSA audio drives for Qualcomm QDSP AUDIOREACH Framework"
> +	depends on QCOM_GPR
> +	help
> +	 To add support for Qualcomm QDSP6 AudioReach Audio Framework.
> +	 This will enable sound soc platform specific audio drivers.
> +	 This includes q6apm, q6prm and associated dai and clock drivers
> +	 for DSP.
> +

We're adding the Kconfig before we've added all the code so the thing
works?

>  obj-$(CONFIG_SND_SOC_QDSP6) += qdsp6/
> +obj-${CONFIG_SND_SOC_QDSP6_AUDIOREACH} += qdsp6/

This adds two different references to the qdsp6 subdirectory which feels
like there's something wrong...

--ZY5CS28jBCfb727c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEK1+oACgkQJNaLcl1U
h9B+zgf+M5vf0KFIqUbLqxP6KTr6dkSNSLCJY3Zmy284yALq6wESbc4ALQD9gHTH
KAVTXxX9PFoIxojDqmhDEuHpCFIpd0vSpNQ6cczvnnmPeAIT/D1vHulir7b7NT1d
DhEGc5dAbuysQFuJJmWvlQfVzIqk7bHrUf7ku1Shja2k8HC3qA1QbWoBa2gktWte
+yYaU8ksNTL1KdGAwQlHBKye9FLB+3boBxdMR7FbIFDEZfgE5L8DhaTE6TYlW+jP
sjhPWp/HnnPIYKR6FkMz2e25ub+PBu6yBaVWmuMY4d4cj0zTjkPkW8qOX3nDCxVm
kijhrySflUcL1tb7j3vAjMF5d52okw==
=NQ+I
-----END PGP SIGNATURE-----

--ZY5CS28jBCfb727c--
