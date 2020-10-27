Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1424729ACF3
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 14:15:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2900595AbgJ0NPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 09:15:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:59808 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2900594AbgJ0NPY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Oct 2020 09:15:24 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DC2FF20754;
        Tue, 27 Oct 2020 13:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603804524;
        bh=CKo8KOUMplKS1VrSLuvL8FxdF3DDU1PHkPmmeQygRn0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qpaowbDKPCL8ZKLZ1CYaRphl4mwuEjsn3wuN+aR2nQeUruLgKyg7rAyYNG87W2d9N
         qNkTdA7YHzoPo0U7Uqmo5A7PtTwlgeMwVNcIT+HWZ/62sOStwIJmvzo7JTfahx2MA9
         TnOSpkOqUYG9TenOaH0QKJ2Yn/HutoXiIeEjf0+o=
Date:   Tue, 27 Oct 2020 13:15:19 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     robh+dt@kernel.org, matthias.bgg@gmail.com, tiwai@suse.com,
        tzungbi@google.com, alsa-devel@alsa-project.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com
Subject: Re: [PATCH 1/2] ASoC: mt6359: skip first time data at the beginning
 of DMIC recording
Message-ID: <20201027131519.GA4895@sirena.org.uk>
References: <1603521686-13036-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603521686-13036-2-git-send-email-jiaxin.yu@mediatek.com>
 <20201026123325.GC7402@sirena.org.uk>
 <1603794538.26523.6.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline
In-Reply-To: <1603794538.26523.6.camel@mhfsdcap03>
X-Cookie: That's no moon...
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 27, 2020 at 06:28:58PM +0800, Jiaxin Yu wrote:
> On Mon, 2020-10-26 at 12:33 +0000, Mark Brown wrote:

> > This seems like something that would apply equally to all DMICs so
> > should be done at a more general level rather than in this specific
> > driver, for example it could be done in the DMIC driver.

> So you suggest that we use sound/soc/codecs/dmic.c to control the delay
> after recording?
> If so, should we add one more CODEC('dmic-codec' and 'dmic-hifi') to
> dmic's dai-link? It looks link dmic.c has helped us do something to
> control dmics.

Yes, exactly.

--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+YHWYACgkQJNaLcl1U
h9A9lgf+PN31doFGHC7Emm3X2bk/3W8+ZvprGxuARbGdn20d4mbHrGrDUmP90wIU
dhB4VL04Mr+t2/7qLon3PfOWlzlCAyZ58pelvYwdx8Uqj5w9dBhGTobHXnadx53w
0cMC+BuJWDhr+J+7ct0y92v1V6hI23e4PCOk7QA2pLuE4iH6TQ6btK/olmXW9aDr
SJZxGryZCzriC19M7pxkULmHrk1A6DlDDpumT1dJ8/EUWw6SZVlzgt+cQykC0xhe
ZgE1HacS2EDS4CaUXj2mbUzaC+xDcfv5puAZoLDGKeVqxyX7/iTr9jCOidoZueJu
HhB1EDSlvibPjviYgtFncqKRdEcN/A==
=5+cB
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--
