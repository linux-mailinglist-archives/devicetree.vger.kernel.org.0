Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 889D0439AD0
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 17:49:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233131AbhJYPwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 11:52:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:60884 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230070AbhJYPwP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 11:52:15 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A0C660720;
        Mon, 25 Oct 2021 15:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635176992;
        bh=T2GFghtcHNLOa+MHlF+E5+QAYjJCxcjLCfKLLCipAH4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mFuQs7jLqq/WU6egj7Y2jXE6PJKp2mLT6hEHQiLsOUunNc6GH0IpXADIMVhMIhXEA
         PORFkUAzEWvvQ+6AHX1ZJoHcXD7CBuwtmTgBxtv7/BMJsfmCTODQepJ1fIoQPTLxWD
         f62rtPJbG636u2DCT0pYorjBjoLw3ZATtShC6fxXp8Nm45hD+QiGAX5vhcbGD23XaA
         6tVnRdao1SJJdnLmg4fGXZtaCuOA1sUUEunD8K/2peIa7MJ3OqSNnfvQRwk5c8pkZR
         xvoIrGT3pRJe+tOEuYpi1g+FWx/KsUNjq9LyhdbT1FEOLepe+2GizdMYCUDz6p7krB
         8fvw39vCtjE2w==
Date:   Mon, 25 Oct 2021 16:49:50 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v9 12/17] ASoC: qdsp6: audioreach: add Kconfig and
 Makefile
Message-ID: <YXbSHubt3Rivh9xp@sirena.org.uk>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
 <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="murvvOThzU63xl3q"
Content-Disposition: inline
In-Reply-To: <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
X-Cookie: Eschew obfuscation.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--murvvOThzU63xl3q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 06, 2021 at 12:39:45PM +0100, Srinivas Kandagatla wrote:
> Now that all the code for audioreach and q6apm are in at this point to be
> able to compile, start adding Kconfig and Makefile changes.

This doesn't compile with current code for arm64 defconfig:

/mnt/kernel/sound/soc/qcom/qdsp6/q6apm.c: In function 'q6apm_audio_remove':
/mnt/kernel/sound/soc/qcom/qdsp6/q6apm.c:703:2: error: too few arguments to function 'snd_soc_tplg_component_remove'
  703 |  snd_soc_tplg_component_remove(component);
      |  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /mnt/kernel/include/sound/soc-dapm.h:15,
                 from /mnt/kernel/include/sound/soc.h:386,
                 from /mnt/kernel/sound/soc/qcom/qdsp6/q6apm.c:15:
/mnt/kernel/include/sound/soc-topology.h:191:19: note: declared here
  191 | static inline int snd_soc_tplg_component_remove(struct snd_soc_component *comp,
      |                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This will be with the stub for !SND_SOC_TOPOLOGY, the index argument has
been removed for the actual implementation but not for the stub, the fix
is in the header.

--murvvOThzU63xl3q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF20h0ACgkQJNaLcl1U
h9D++wf+JwyFgodfzmfQ+BPTjdLIw7DMvXZX2Je/xIfWADZ8tSg9r1D+LIflPdDP
zYuCt2kQ28Zq2H7SIfG+W2crSSpAlG3cOjfkkevaclL8u0hDDFc2c2nJRYDBjtrz
aph7S2rLmIt9H0LOPM3VghyS+eOxZRNecdVImbyjM0yOELoFVsGyfrXvLCaziSyz
+7L2ouU7TNStXvT9AFmsG8Q3YJJTiEAqf/ZRtQUz2ksRwZKzGgIr8bBaolFdH0d7
figc2AXRChTMyj760seY86rHfUQjZ7SpmXwk3w6QvFpOMMh8FUHUYCLDbHTmegAM
WANHyQqNwcoTsExew6Yl4NA8A7KQcw==
=amHX
-----END PGP SIGNATURE-----

--murvvOThzU63xl3q--
