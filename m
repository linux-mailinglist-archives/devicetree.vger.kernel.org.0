Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8575C439AF1
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 17:57:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232743AbhJYQAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 12:00:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:34110 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232400AbhJYQAD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 12:00:03 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B6C1460E75;
        Mon, 25 Oct 2021 15:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635177461;
        bh=Fc03jTaq41qquboEh5WTbDcjROBfciaslPkCNAnheOk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=P3+Vra5YRfJnoIZTCOQlU9T3XkknMuibeNRQXw2nbpSIgkpPBfnhUEt+jbDN08MG1
         J77ULNjBH0yDrA7d0RhQ6aPxWk4V4cHBFWeDakyRC+fMaASaRHSmOcz3joW3GQp9Uq
         h/VXmeBjJ/SBxfDqJWYwOgtwLDmIKoM7csY5ofVrOrf97Uw1QRf722SzuTTRP9iXb7
         h4VO7hgSNPY3QLAThvyPPtwyfueUNUEbwKH5je8dz6BUp6b+yThpCMXI1AYaSMWLsZ
         8euyD9eRzKuzW/omL648+Rqq9pkZgPv4VPbc3veLzPWptcqMXu88DoPnRflbGBvmgk
         6ykawpf7ApRhw==
Date:   Mon, 25 Oct 2021 16:57:38 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bjorn.andersson@linaro.org, robh@kernel.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.de,
        devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
Subject: Re: [PATCH v9 12/17] ASoC: qdsp6: audioreach: add Kconfig and
 Makefile
Message-ID: <YXbT8pDFXXxbCdEn@sirena.org.uk>
References: <20211006113950.10782-1-srinivas.kandagatla@linaro.org>
 <20211006113950.10782-13-srinivas.kandagatla@linaro.org>
 <YXbSHubt3Rivh9xp@sirena.org.uk>
 <0313d98f-d626-7086-8808-663dee2a3560@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="YK1qolpoN9m7YYoo"
Content-Disposition: inline
In-Reply-To: <0313d98f-d626-7086-8808-663dee2a3560@linaro.org>
X-Cookie: From concentrate.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--YK1qolpoN9m7YYoo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 25, 2021 at 04:56:22PM +0100, Srinivas Kandagatla wrote:

> This patch [1] seems to have remove the argument to
> snd_soc_tplg_component_remove() but not in the stub function.

> I can send a patch to fix this

I already sent my own but forgot to CC you, sorry.

--YK1qolpoN9m7YYoo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF20/IACgkQJNaLcl1U
h9BFPgf/Xq278R6XH6LH1mFMj2+jKIVvchsE7aU/YmwfJVOusOLEnPU/mRx3brqT
jDMJSTm9jyNQgWUn65uFHOXxvoVK7y37O87u66BlhJ7oDVI30B1UZqiaQdnSBz3L
kHHORbMYS4piac36Ux0R/ZS+8HAJa3+qlG73TT8ny9oSsDRchorsyfsBfKd3WgJG
t7D88wWV80bZpl2238E2RXat9acEC2KqrCCe0e9fC3awinrTeVzArcsE+szzZFl0
990PatCtpjzy8edlPc6BegK07m/EGO4zS4oghX3YcLmRV0awjkpAaGXTqD2A6cen
rMuRmJYQDbRk2K/TUZQiNUnDlZ2IWQ==
=lfRE
-----END PGP SIGNATURE-----

--YK1qolpoN9m7YYoo--
