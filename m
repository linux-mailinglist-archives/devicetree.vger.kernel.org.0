Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0C4F439BB1
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 18:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232526AbhJYQjs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 12:39:48 -0400
Received: from mail.kernel.org ([198.145.29.99]:46080 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233935AbhJYQjr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 12:39:47 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC25560F22;
        Mon, 25 Oct 2021 16:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635179845;
        bh=ziEBjHr12sDzvOXR776wc/eAW0tq78737ORT5LIMvzE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DB4PlJoIgWHti2Yn4n7JUn8wZSdZgArq6BzzVWLKYvBBXAzfdvBpnidNa2ST/tgCt
         4Ge0r6GErKsiZTrwz6VmTVAi4SCgxrmu4fHySYzNSewPz0ppkMWvlmZP+vVCauZcmK
         p6FX9027m6gL/HfRc0tz+aC1yBHgPCw7D7M2Z5bIDM9EBdGSNJI/Er0w7jSDaoc5z5
         oZtv6M2cBu2YPXZiGFBBxp82QXn9+9hOScgaJte74W4O/4pG3C3ayrpwxLlRrObymD
         M881b17uwn6C+t49+BvTJERMuaCjfkCs84L6g3iMY6KT3Ice48MLf7iAxkrcWto9Ph
         MhQ0nztVmjubg==
Date:   Mon, 25 Oct 2021 17:37:22 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v9 12/17] ASoC: qdsp6: audioreach: add Kconfig and
 Makefile
Message-ID: <YXbdQkAkRq0ntpLk@sirena.org.uk>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
 <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="K05r9NFRM1dKDS2Y"
Content-Disposition: inline
In-Reply-To: <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
X-Cookie: diplomacy, n:
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--K05r9NFRM1dKDS2Y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 06, 2021 at 12:39:45PM +0100, Srinivas Kandagatla wrote:
> Now that all the code for audioreach and q6apm are in at this point to be
> able to compile, start adding Kconfig and Makefile changes.

With the previous issue fixed this continues to break the build for
arm64 defconfig:

ERROR: modpost: "audioreach_tplg_init" [sound/soc/qcom/qdsp6/snd-q6apm.ko] undefined!

--K05r9NFRM1dKDS2Y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF23UEACgkQJNaLcl1U
h9CnQQf+NwQLMPVU6qVyhIO/3BI+s+tvCEI2aMW692vdJ8ftmAf0hJ3OPIy8CY55
VXH/oq2kFVC6FP8HvbmZmaLBBcFRJfVu2m69IbFX7IjYALakXVHzLslBSshjJC+k
0z5b1vAr91XMxPhfy4xJCAsLom09J+COlOPbsAMzEV3Nu4v86Fpm58iL/yPkLato
9O7yas3SOGO7qGh0Nh4WmYN49CslN1/5sdLdL2ke2oVQco/CRQg1NbMiu/Z0xuJv
iTxuGKQjUKE0EvzKSXtCubyg3fJopbQAI32dugWxeqpLMAAqwaO84w8igY+Md/BL
G81MujVNTsCf0Uy4qcxvzuHd8J0Jpw==
=1Tju
-----END PGP SIGNATURE-----

--K05r9NFRM1dKDS2Y--
