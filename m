Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE0293E0712
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:01:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238528AbhHDSBj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:01:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:48934 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238336AbhHDSBj (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Aug 2021 14:01:39 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D121260C41;
        Wed,  4 Aug 2021 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628100086;
        bh=XtYeLMT1UphzeTQrv/0yWpjX/9zyUNUmseX4712AJTM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RBDoPrUHYoYRPPZQouRH1CAN5AYTzl+GH48CZ24yp/mZ+cvZP4Vy5amzK7YfIH4oZ
         7Sa2f+yilull80dIK5sFvl/LfmBYe77kR4GFi0IRv7SV1d2r1wQJ7X7OU0+URNjs0h
         pEXNm0XsFrtwVuaHfCF5B2u3ttPFk1YNFIcvTX8VOIU08AcchwqvRe3WhKoPToZo6h
         9zUT5xKJIMdXzlXSYehU29Is1/al7qcJPTceXJgZbrZELB+i87BllE6ZO0BHTwBrlx
         N/39e8KgTw/7fZGJK1rxhFuDxTCzBgmg29sakmfG8f/oZHLSMnOEqNuhOXLWnKID94
         FTXdgsw0VIzYg==
Date:   Wed, 4 Aug 2021 19:01:11 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v3 10/20] ASoC: dt-bindings: q6dsp: add q6apm-dai
 compatible
Message-ID: <20210804180111.GF26252@sirena.org.uk>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-11-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="s5/bjXLgkIwAv6Hi"
Content-Disposition: inline
In-Reply-To: <20210803125411.28066-11-srinivas.kandagatla@linaro.org>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--s5/bjXLgkIwAv6Hi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 03, 2021 at 01:54:01PM +0100, Srinivas Kandagatla wrote:

>    compatible:
> -    const: qcom,q6asm-dais
> +    enum:
> +      - qcom,q6asm-dais
> +      - qcom,q6apm-dais

What do these two compatibles mean?

--s5/bjXLgkIwAv6Hi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEK1eYACgkQJNaLcl1U
h9BmLgf/WyWLyNw9CyY52qyGTgLXfSRuuRlLrbbYVsLn4Vl+v5Xv1ozpRKqbJn9m
kt9cJ5ZQ1O+AmhwjOoqMTGcysEW+g2/tbFZE/wyBBi3aI1ivrMNxizxu5QurZQMI
IGli4YflL5zoIjJbNqvyse8KbQh8l7yBuLQmO9uIM4tkiBpOPIQP+LEe+3WQkYvZ
TvlnxF1d6HOXjCegsM2ettpDZKmHgoWphX8rTrZxzLlWJjv1XPiy2vTaSPaLh3p6
qQTu8exKkqF32G8268w09xI3EGm4IyQ87jALk14e4rUc9AqxO9uXjBdVb7vcVH9V
VeGLPMII5yeIyoyudMGaKcVMiw70Kw==
=p1sr
-----END PGP SIGNATURE-----

--s5/bjXLgkIwAv6Hi--
