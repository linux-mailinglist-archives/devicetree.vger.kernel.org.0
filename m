Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3D9C2A0CE4
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 18:54:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbgJ3Ryb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 13:54:31 -0400
Received: from mail.kernel.org ([198.145.29.99]:49456 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726061AbgJ3Ryb (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Oct 2020 13:54:31 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 63DD920724;
        Fri, 30 Oct 2020 17:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604080471;
        bh=WyIRFsjXv5w+8VVFK7eNxhmPJtSeLSv3UXi+yyCplRM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=zDy+5mupTyPqwhFZOW7mD744CDzWz58CLBw1/RPEp2gnxtjY6r4JFNj/VDvnlhhp+
         pk2QAaOyZ5gyxO4gIX+zwUMJRMhleQKzIkIO+q1di43F49Ru8IN/q+vSv4SsFaJhJg
         hCRnoBCCokXd8NYCs+yLUMy1VE0MThP5FkMvpdOA=
Date:   Fri, 30 Oct 2020 17:54:23 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     tiwai@suse.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com,
        Trevor.Wu@mediatek.com, Bicycle.Tsai@mediatek.com
Subject: Re: [PATCH v3 0/9] ASoC: Mediatek: Add support for MT8192 SoC
Message-ID: <20201030175423.GI4405@sirena.org.uk>
References: <1603526339-15005-1-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="qLni7iB6Dl8qUSwk"
Content-Disposition: inline
In-Reply-To: <1603526339-15005-1-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: Blow it out your ear.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--qLni7iB6Dl8qUSwk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 24, 2020 at 03:58:50PM +0800, Jiaxin Yu wrote:
> This series of patches adds support for Mediatek AFE for MT8192 SoC. At the same
> time, the calibration function of MT6359 is completed with real machine driver.
> The patch is based on broonie tree "for-next" branch.

I had some small comments but they were all pretty minor - overall this
is basically fine once those are addressed.

--qLni7iB6Dl8qUSwk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+cU04ACgkQJNaLcl1U
h9C1ggf/YtHZAAqO9N519wguyC9a/9FWSK1GJNx4NkUmdW2O/CX/iCOyQUxNzKnt
uZTt9o6BWcs/GpIk8tDx5KtSsZc+fciFLz8wqlXmu5hgEgJ/pT9+5Wv9GSnAfiAQ
wkY98BDiiTXDFZqUUfkbMOW/gDjuCWhWYwxZCS7AVU+v3+3Mm6kw4fsbwAk2anUo
U98Sjh/26RgPpUaPXGJR2gCGhzYwy0aYodnKxEdsgF/5mhXyzjpG+ps/G1xfWDEe
Nk5T7UoQCGAwaWZYVc4DV4dk0jVGZR7h5Cywf97pUYaANBV4UUGwdH2Ssqt0tOc2
g1v0F4GmGt5dT98mnx4H6+Xiw3wiaw==
=FE4p
-----END PGP SIGNATURE-----

--qLni7iB6Dl8qUSwk--
