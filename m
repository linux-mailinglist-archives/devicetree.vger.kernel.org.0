Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30F903E0714
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239988AbhHDSCM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:02:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:49010 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238336AbhHDSCL (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Aug 2021 14:02:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6975760FC4;
        Wed,  4 Aug 2021 18:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628100118;
        bh=p88iTvuxkM9l7hM2G77m+PTe5g6FuVL6G5B/UoxLQzk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DMrk0DD6FNclnMVAmZJYRQQc1EhFqitanW2r/SBPW43BkpVBc0eTJKRoZN+BEocxI
         vp23wktuvxfmwvzuhzdf/xk+Je40Y2bII/Ch1Bhv0JoNSQl9YDVS6bpMTOPABtSkWY
         JZYUxKM4R6UamGBqKYZkU1BZXBGsTzkDxldq59SYBVpmWb0NAqEY0urXD2HTgZtzk/
         73MhcGizo2CYJ8VY28V5nDnnltf/nofllig7n4GU09RubVKHgItucBib0AXIwlQG+1
         qm1ZNZG8rOUhaA6CU6AGFZEy0g7Shb0IiOnM09Y4IXFSWOPHhIX4ShiN4Xgpe8J+H3
         fuV0Fa+94V32A==
Date:   Wed, 4 Aug 2021 19:01:43 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v3 11/20] ASoC: dt-bindings: q6dsp: add q6apm-bedai
 compatible
Message-ID: <20210804180143.GG26252@sirena.org.uk>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-12-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sClP8c1IaQxyux9v"
Content-Disposition: inline
In-Reply-To: <20210803125411.28066-12-srinivas.kandagatla@linaro.org>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--sClP8c1IaQxyux9v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 03, 2021 at 01:54:02PM +0100, Srinivas Kandagatla wrote:

> +    enum:
> +      - qcom,q6afe-dais
> +      - qcom,q6apm-bedais

What do these compatibles mean?  The bedais is sounding suspicously like
putting DPCM into DT bindings...

--sClP8c1IaQxyux9v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEK1gYACgkQJNaLcl1U
h9CVFgf9HBHH7OPjCrD5uA17rPED5WD5V9vFTI2hDMEjKCkh1uN1HHrNwGiXEaB0
374wYHH4R2AMs5jag6HeeyhMtz7y3fECZ1rZcfh96/xMS0KZzUzavSpQiQ5C71ld
NtGgb9762pRC4rre0/lGVDDyhEdzWPUvDFwZoga1fXXIOOC6A8B4+6Tr0fXLDkbo
JCqfQfRisaClCLkmuIOzPtnJ45LmPWdplOYR+27EHojSH2aJX4e3UIkQ6mzsO52k
YqlnW/C3o2iV16p4NmMSwy++cDLkpqEyQio+uG4HqtUU4rkVGt78ObBmN2tdh7kd
3lDU2zhG93z8ZgQdCDEPMTOlyKCvuw==
=i2xl
-----END PGP SIGNATURE-----

--sClP8c1IaQxyux9v--
