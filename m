Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C1A74BF974
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 20:43:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728564AbfIZSnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 14:43:33 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:54838 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728555AbfIZSnd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 14:43:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=9pxSNyNmfZiT3djCXj3rcac0J+iDZI7xFpm9oqEfs/g=; b=oSdSPqNSLJDc4umz8eSiwSl9G
        c1BiukUR/sHNoy3gfFxQtH++AZ8UIwPFBxIOtZnSW4AmnplpJx5Zkm8XZ8zo7CRW16UESEsIMvag9
        KjtO0OFMiUhrCsJ2JmeSEXs8/x0qIOSjF84vkNm4r/N+YvyJm6prpWmS0fyOdJCeSlYpQ=;
Received: from [12.157.10.118] (helo=fitzroy.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <broonie@sirena.org.uk>)
        id 1iDYjX-0004Uc-UW; Thu, 26 Sep 2019 18:43:20 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
        id 65C16D02DD8; Thu, 26 Sep 2019 19:43:18 +0100 (BST)
Date:   Thu, 26 Sep 2019 11:43:18 -0700
From:   Mark Brown <broonie@kernel.org>
To:     Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/2] ASOC: Add ADAU7118 8 Channel PDM-to-I2S/TDM
 Converter driver
Message-ID: <20190926184318.GF2036@sirena.org.uk>
References: <20190926071707.17557-1-nuno.sa@analog.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="TWLMYU3k2ba4mEMM"
Content-Disposition: inline
In-Reply-To: <20190926071707.17557-1-nuno.sa@analog.com>
X-Cookie: Be careful!  UGLY strikes 9 out of 10!
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--TWLMYU3k2ba4mEMM
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2019 at 09:17:06AM +0200, Nuno S=E1 wrote:

> --- /dev/null
> +++ b/sound/soc/codecs/adau7118-hw.c
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Analog Devices ADAU7118 8 channel PDM-to-I2S/TDM Converter Standalone=
 Hw
> + * driver
> + *
> + * Copyright 2019 Analog Devices Inc.
> + */

Please make the entire comment a C++ style one in the .c files so
things look more intentional.

> +	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> +	case SND_SOC_DAIFMT_I2S:
> +		ret =3D snd_soc_component_update_bits(dai->component,
> +						    ADAU7118_REG_SPT_CTRL1,
> +						    ADAU7118_DATA_FMT_MASK,
> +						    ADAU7118_DATA_FMT(0));
> +		break;
> +	case SND_SOC_DAIFMT_LEFT_J:
> +		ret =3D snd_soc_component_update_bits(dai->component,
> +						    ADAU7118_REG_SPT_CTRL1,
> +						    ADAU7118_DATA_FMT_MASK,
> +						    ADAU7118_DATA_FMT(1));
> +		break;
> +	case SND_SOC_DAIFMT_RIGHT_J:
> +		st->right_j =3D true;
> +		break;

Don't we need to set any register values here?

> +
> +	return ret < 0 ? ret : 0;
> +}

Please don't use the ternery operator like this, it just makes
things harder to read - write normal if conditional statements.

> +	case SND_SOC_BIAS_STANDBY:
> +		if (snd_soc_component_get_bias_level(component) =3D=3D
> +							SND_SOC_BIAS_OFF) {
> +			if (!st->iovdd)
> +				return 0;

This is broken, the device will always require power so it should
always control the regulators.

> +static int adau7118_suspend(struct snd_soc_component *component)
> +{
> +	return snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);
> +}
> +
> +static int adau7118_resume(struct snd_soc_component *component)
> +{
> +	return snd_soc_component_force_bias_level(component,
> +						  SND_SOC_BIAS_STANDBY);
> +}

Let DAPM do this for you, there's no substantial delays on power
on so you're probably best just setting idle_bias_off.

> +static int adau7118_regulator_setup(struct adau7118_data *st)
> +{
> +	int ret =3D 0;
> +
> +	st->iovdd =3D devm_regulator_get_optional(st->dev, "IOVDD");
> +	if (!IS_ERR(st->iovdd)) {

Unless the device can operate with supplies physically absent it
should not be requesting regulators as optional, this breaks your
error handling especially with probe deferral which is a fairly
common case.

--TWLMYU3k2ba4mEMM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2NBsUACgkQJNaLcl1U
h9DTSwf6A3j4WBOC0vVeOzs40lDzb88KcOkWvTA0Pt+vEUZ0DUHQ/AOX1GgN6Zh6
At4k18u+ptataFlScXDHRmrtEcz3Eu8n/gRTXvpifr6z/8EwVhvAMEu5PbL2zHqG
vpV3LE8V0HLflyp+e7V44W8MkLTm21G3xVTqnKEpxFkaUTm/V9nXXZFMHc5249tb
oyHXflE5Ykbp52INzLLjkcIAsg8znpl+RFezGG1GmU8arFGMmnxmMc4Dc+owEC9p
eaXVLp0KTPw+J3h6ajs8jSffq9IxT+124gSvooJoJo009cRjSNP83OHKwdoyLFxc
fbPqwfsORdF+ZnG8k0XqhLjiGYZYWQ==
=3zRw
-----END PGP SIGNATURE-----

--TWLMYU3k2ba4mEMM--
