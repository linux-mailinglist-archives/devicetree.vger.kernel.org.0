Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21CC52A095A
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 16:13:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726831AbgJ3PN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 11:13:58 -0400
Received: from mail.kernel.org ([198.145.29.99]:50556 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726810AbgJ3PN6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Oct 2020 11:13:58 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 02A6E2076E;
        Fri, 30 Oct 2020 15:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604070837;
        bh=pPiXS2mW1/f2W1unM/FQYVWjCc8CEmjH+3MTSNc4q9M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=JAmO4VFcfTr29sqAFL//ZYeZJI/+LWSzSjAPQj8ivi5D0Pd59FowG6y+BTeg3X+Ze
         4N//F7KpzJiQJcnE3Tf+IkaqJ+yIU2UHiMhTRGVNHFWeQqWXmwv2ZiA3nO8ms5uHHw
         Y2ZDFHqgjW+BMV+nqE2RhrS9GE8q2qm+MGQCEvjg=
Date:   Fri, 30 Oct 2020 15:13:50 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     tiwai@suse.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com,
        Trevor.Wu@mediatek.com, Bicycle.Tsai@mediatek.com
Subject: Re: [PATCH v3 4/9] ASoC: mediatek: mt8192: support add in platform
 driver
Message-ID: <20201030151350.GG4405@sirena.org.uk>
References: <1603526339-15005-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603526339-15005-5-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="+1TulI7fc0PCHNy3"
Content-Disposition: inline
In-Reply-To: <1603526339-15005-5-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: Blow it out your ear.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--+1TulI7fc0PCHNy3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Oct 24, 2020 at 03:58:54PM +0800, Jiaxin Yu wrote:

> +/* mtkaif dmic */
> +static const char * const mt8192_adda_off_on_str[] = {
> +	"Off", "On"
> +};
> +
> +static const struct soc_enum mt8192_adda_enum[] = {
> +	SOC_ENUM_SINGLE_EXT(ARRAY_SIZE(mt8192_adda_off_on_str),
> +			    mt8192_adda_off_on_str),
> +};

This should be a standard boolean control with a name ending in Switch
rather than an enum.

--+1TulI7fc0PCHNy3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+cLa0ACgkQJNaLcl1U
h9B3mQf+IE/V4fVVJUw8bu2K5OgDC+dzzOkFhc1RMgevIXZErAn7w1rRfNixP5+p
bxPBf8cJgi7WP90wmkGlqRSZMAte4s+T2Bv85D+JadK8HAvJVUifXZTIunErmzyk
HTqxun6K6Fi2Ud61b8h51dMZA/XlBFfkDg4rgb+uAnMQ8gxmxkPjfhDjKqN9N0gt
Ymr+3RsmyETHFq37rS9k1RRb3OdkSVZpnHONfcLsJ1s/lGiS1XMp7b2dJskqotnN
IFeSqpoDfpAXhCioX3Wurw3kHAXaqByDIIq5Pyg9SIBFk5mczZEsCSrMcK8nbTG3
+iZkU7z8BsjBmysZsO4vr/hY6JLPVg==
=3vj9
-----END PGP SIGNATURE-----

--+1TulI7fc0PCHNy3--
