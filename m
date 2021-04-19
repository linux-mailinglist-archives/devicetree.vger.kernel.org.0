Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34853364883
	for <lists+devicetree@lfdr.de>; Mon, 19 Apr 2021 18:50:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233508AbhDSQub (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Apr 2021 12:50:31 -0400
Received: from mail.kernel.org ([198.145.29.99]:57570 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231674AbhDSQub (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 19 Apr 2021 12:50:31 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A88B761157;
        Mon, 19 Apr 2021 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1618851001;
        bh=G6gi9IjvdNZuZmHQ/8XdX7I5tvLU/HvmeSYi0RrlJh0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rcx8KDUspMsnso4SdE1irJBmyMVW7dUsAzNGrCdhztyAh6zSGvQ+OBZnC3lN0GJHt
         qEwW9ZWHLbsHa4dam13PWxl7QXF8uB+wODR89NOHKFhDxIemDicY8AeuKOkyWh29tF
         9HLNuvoN1WHTvQ9wnf98rwWlvw6RNmQHrHU1HtKNdgbT6HyL5tXhy+LYYTQM5UNGOM
         e6RIHQf258ClL/BSuOsOJSIiozY5sFXD0ZmsRbOz9s8h3jaMP1I2JpM7hnU+q14S3g
         IbTM+OTTpC2Za3bWZVZ+CvWB2wr1xIJYTjZc4N6GA6wR9LVApPlmLAC9m9DC8RbxOa
         YdFBYd6QkAOvg==
Date:   Mon, 19 Apr 2021 17:49:36 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Chris Morgan <macromorgan@hotmail.com>
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
        perex@perex.cz, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [v6 2/3] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210419164936.GD5645@sirena.org.uk>
References: <20210419155718.17348-1-macromorgan@hotmail.com>
 <SN6PR06MB5342B0506101902E4889B335A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="76DTJ5CE0DCVQemd"
Content-Disposition: inline
In-Reply-To: <SN6PR06MB5342B0506101902E4889B335A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Cookie: I will never lie to you.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--76DTJ5CE0DCVQemd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 19, 2021 at 10:57:17AM -0500, Chris Morgan wrote:
> Add support for the Rockchip rk817 audio codec integrated into the
> rk817 PMIC. This is based on the sources provided by Rockchip from
> their BSP kernel.

Reviewed-by: Mark Brown <broonie@kernel.org>

--76DTJ5CE0DCVQemd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB9tJ8ACgkQJNaLcl1U
h9COQwf9E3C8jlYIm7wGEcFotmudBgIWSQEkeJ9fvGuyz5NgjBU2HPyJG3r2XMeG
Q16qzMuSYLrcmKp9UKL+I04sRxmbF6CVUhwmz4qwkB+KXo1XncQgxe/U9r21kvsx
egbsEcowqE8efCYXQPaGKQfT1V/YgSSzWUaDmbv09RzZ6i0OuVTrMQsmZoOmVtqH
yoBTdNLvTCNGJ7fRqeuvWzP5K4CCyxA+pO3Z0qMGLJx6GzKBrol6CY92Bp7boqOm
InC+F/7hBtgQgjL8tzojOl+MMh2j067ICSQYcfr/rfxuA4Pb07/gJuZZA8HzV9mg
Et4oE70z2RXFXMzbzesIPIW3wUGq4g==
=7Sjc
-----END PGP SIGNATURE-----

--76DTJ5CE0DCVQemd--
