Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 184933E0716
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 20:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239995AbhHDSDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 14:03:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:49124 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239993AbhHDSDR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Aug 2021 14:03:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 76C4260F94;
        Wed,  4 Aug 2021 18:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628100185;
        bh=oaA4FqiXPhWxp+xL4uDYb9Z0nalrZT31dcrE+MtQpp8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rOGnn+grTByD754V2VmaJqELPqiyIzPMfei8Fr+xGz78yEQHuJXjCEbA9B8h9IcZ/
         PmHO/BTgQY/vkdwSqjQOvTcPaWLCNazJ7+PcBhhe7CxLE+i0WHooIxBaM8weUxVazH
         O0asDJWwXVF2w9OLMpzXQTD+Paz9L+/VOiKzxqsvEq//9giHfKpUVlhRVdiJBaRe+q
         /OnKYgnantKvRqDpsHzgtHlpVddh2wAC1y9DoGx8RQnC7YD2dN/nPZss/4IuMVqume
         QC5TLczYo56gdk5V3DpzP1811UGxJQXX55BU5bTs2kvzFcOsC/Y10Hpw1W/TtV/B3R
         biUVUYPXrj4dg==
Date:   Wed, 4 Aug 2021 19:02:49 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v3 12/20] ASoC: dt-bindings: q6dsp-clocks: add q6prm
 clocks compatible
Message-ID: <20210804180249.GH26252@sirena.org.uk>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-13-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="uAgJxtfIS94j9H4T"
Content-Disposition: inline
In-Reply-To: <20210803125411.28066-13-srinivas.kandagatla@linaro.org>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--uAgJxtfIS94j9H4T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 03, 2021 at 01:54:03PM +0100, Srinivas Kandagatla wrote:

> +    enum:
> +      - qcom,q6afe-clocks
> +      - qcom,q6prm-clocks

Again, what do these mean?  One of the goals with DT bindings
documentation is to be able to relate hardware to bindings.

--uAgJxtfIS94j9H4T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEK1kgACgkQJNaLcl1U
h9AY9wf/dCOk7p6eUyR3ejUvHWmvonp1MSGju3SI4goxKkua7f9quxR3KEBXbzAH
gCVD0mnR8fPzhC9OwmJMgn5PcOTJpnlpehiAzs6ZqWvbcePTEAuoB7HY3DiF3avR
+P1MH7RwzbF88VVwYhp2JnjEa3ezpOSd0PZdTdLVqc1sdGthrqezFJaice7I0e5Q
tNpXzCgUJ3w7d0arxg2emHNUDHDf/lzvgKRoqAY4gYc2qLfZwryzJDHKkdmZi+xh
Vkf3dEQJVCIkIbLWt5aJiG2sFl6VJjf/G3eJx2+3vFxmVLHszCBNFed5rsYtrf3S
RKUvD7OdXyhkP/CInnomxmlWGb/yAA==
=mvMf
-----END PGP SIGNATURE-----

--uAgJxtfIS94j9H4T--
