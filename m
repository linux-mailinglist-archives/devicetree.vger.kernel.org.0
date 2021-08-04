Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 954933E06FC
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 19:53:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237187AbhHDRyD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 13:54:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:47688 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230328AbhHDRyC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Aug 2021 13:54:02 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6F1C760E78;
        Wed,  4 Aug 2021 17:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1628099630;
        bh=kz9gPDrkKbomiVRbRaKlh88RNYjtDnBdBJMpjzIUzH8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rg2+CfybkMDHJPagCgETvWYXPo25uad6oWaQJCMVwOgls+fIQYT4jGZPPgwAnVC/I
         fUhbdVuigIP/1BmFwIJ4XLsvKg0HDzaW7VaqfjvvmFe1XHMqnGPveflDBECbe1itX0
         +v1qkSvIJWEFd10rc/qwp9N4c7DT4DgEBNg/ANGDTtYtql4bEmrR9hDaPmTQ42DIR6
         h6p7Ty/dC6JP9HP+ppS5Cwm4uVZGuee3V/NPLZvYo/qubVGKak7moWz3VNdwVKZlp/
         /t7dIIuKQHBUoCQa3KxqUiOLxpvNCtdttMQU9kGVf5yvMLGFDxw3Wa1u0u6BcxA46r
         pdw3Nv379hO+w==
Date:   Wed, 4 Aug 2021 18:53:34 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v3 05/20] ASoC: dt-bindings: replace q6afe bindings with
 q6dsp-audio-ports
Message-ID: <20210804175334.GE26252@sirena.org.uk>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
 <20210803125411.28066-6-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="phCU5ROyZO6kBE05"
Content-Disposition: inline
In-Reply-To: <20210803125411.28066-6-srinivas.kandagatla@linaro.org>
X-Cookie: MOUNT TAPE U1439 ON B3, NO RING
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--phCU5ROyZO6kBE05
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 03, 2021 at 01:53:56PM +0100, Srinivas Kandagatla wrote:
> DSP Audio Ports bindings have been documented with DSP services bindings
> which makes it difficult to reuse them, so pull them out in to a dedicated
> bindings.
> Also as part of this change convert them into yaml format.

> This patch also removes q6afe bindings as dsp services are now documented in
> apr bindings.

This feels like it's multiple changes stuffed into one commit which
makes it difficult to review, especially since I'm having a hard time
connecting the code changes with the description.  For example this says
it removes the "q6afe bindings" but we seem to be adding some in the
newly added YAML file.  At the very least the commit message needs to be
improved but I think this probably needs to be split out into separate
changes each doing one thing.

--phCU5ROyZO6kBE05
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEK1B4ACgkQJNaLcl1U
h9CCsAf7Bk2kUEyaY9bF2HEqMkC/8SPlqFE2bY0iOUTGlQT+Xa+iASTWMluPIq2W
+bWOL4ghG0zzfwlK/QBj3Mf3O8txUe+hTy1nPLvqPKDvci96ZDE31N4GM5e8Nd/B
1WmkfwnYK6BltcRgHX5jue/gQbFu4YaNKPpTYzWr14dz2IrnDye353rgQxeQYdM3
AIMRf/WI7hyBY7bOm5VEZOIsOshnik8PqljSHvVhFdVqgU3LNkE8fzNoIbrZJLwd
m2B4kaKHfDw0OoalbtV93Klhx5ZQL8tX82bUcbGzBd3mJWrc7rmAv/hMIHGen292
m6apnw83Vys3Z4V5I0G8/g12eg6GFQ==
=Y3vb
-----END PGP SIGNATURE-----

--phCU5ROyZO6kBE05--
