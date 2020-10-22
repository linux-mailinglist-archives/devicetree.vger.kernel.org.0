Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FF85295DFB
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 14:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2897837AbgJVMGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 08:06:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:48914 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2503373AbgJVMGJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Oct 2020 08:06:09 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A441C221FE;
        Thu, 22 Oct 2020 12:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603368368;
        bh=t+X/fz+JfWcR2EunKKVuaJPpOA4TjedvNGMrxIpej5U=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=E4Y4GTYOPdmpu+/ow4kGpO4WqSwMFJB/JM+AYpGMSMnsPEGbpwWkDYYEM3oY/NsRL
         k2q6jz57MFl1cwOa86eGIVfCtsjMmUUvPe4Lx0k+JqiNEAkt2BgkRW68izrBXw/WR6
         9I5yT2TWdP6XkATm8b/dS7Nw0BQUAzXZMWLH0zm0=
Date:   Thu, 22 Oct 2020 13:05:56 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     tiwai@suse.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH v2 2/5] ASoC: mediatek: mt8192: add platform driver
Message-ID: <20201022120556.GA4826@sirena.org.uk>
References: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603270435-3548-3-git-send-email-jiaxin.yu@mediatek.com>
 <20201021132339.GF4497@sirena.org.uk>
 <1603361084.8921.26.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
In-Reply-To: <1603361084.8921.26.camel@mhfsdcap03>
X-Cookie: Some settling may occur.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 22, 2020 at 06:04:44PM +0800, Jiaxin Yu wrote:
> On Wed, 2020-10-21 at 14:23 +0100, Mark Brown wrote:

> > This is *way* too big to be a single patch, please split it up - it's
> > over 600K.

> I will split the dai driver files as a seperate patches. Such as:
> ASoC: mediatek: mt8192: support adda in platform driver
> ASoC: mediatek: mt8192: support i2s in platform driver
> ASoC: mediatek: mt8192: support pcm in platform driver
> ASoC: mediatek: mt8192: support tdm in platform driver
> They're still in series of "ASoC: mediatek: mt8192: add platform
> driver".=20
> Is this appropriate? Please correct me if there is any misunderstanding.

That should help, yes.

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+RdZ4ACgkQJNaLcl1U
h9BFaQf+L3FRqaz4A2QbQxIofXh6aZaoYBnbTRNNHq9tK52ZNoBuo7c5Oq5jdDxU
Vrp2Lrp2/5zPc3t2ejKzfghfdaExq0CI+3HhZyy2rpD7DorFI9hhUoMEEy0HeDD2
OObHcIoDeTTQyTTGmTfQ4ii5+pgfNvxbmId1wYBUD4T/3oY2d1ZV9USUCxavMzRy
IhMQabPIRTnOitpCtk8fpWUEzz/2t9vDWFJOTzuUA/wyzPjQ+6oMX1YS3op3n0Y8
GS8Xh70JKZ/tJA4wpprIwovx6dwS8qxs17YvvZSIIopzxlZHbsbZzJpUFdbbF2E1
s/vPkaVt6maR2dVRk2afz3FWPighSg==
=jh/Z
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
