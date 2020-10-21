Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DA3D294D6B
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 15:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437427AbgJUNXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 09:23:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:59182 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2409392AbgJUNXv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Oct 2020 09:23:51 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 783C2221FC;
        Wed, 21 Oct 2020 13:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603286631;
        bh=b3cPCH2ChrkOo+0On+GCFaxbYKBDb2R2dmjWrh01th8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C8GMHKrLxbXtok127CPq0GuZB0QXEqO6wvjYff7dT8f+cwsco4b+i5UzG+DMV6/Hh
         3LstP0uMgqsEhjIy5mJi53BTEJx9CMxb+d2XH2ni4s5Cj/AT/PKQvMtJaSnCHbXhRT
         A8HZn3KJOuhf/QzBL6w+/Hllt4uEfx6lChajJMF0=
Date:   Wed, 21 Oct 2020 14:23:39 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Jiaxin Yu <jiaxin.yu@mediatek.com>
Cc:     tiwai@suse.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        p.zabel@pengutronix.de, tzungbi@google.com,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        shane.chien@mediatek.com, kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH v2 2/5] ASoC: mediatek: mt8192: add platform driver
Message-ID: <20201021132339.GF4497@sirena.org.uk>
References: <1603270435-3548-1-git-send-email-jiaxin.yu@mediatek.com>
 <1603270435-3548-3-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xaMk4Io5JJdpkLEb"
Content-Disposition: inline
In-Reply-To: <1603270435-3548-3-git-send-email-jiaxin.yu@mediatek.com>
X-Cookie: That does not compute.
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--xaMk4Io5JJdpkLEb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2020 at 04:53:52PM +0800, Jiaxin Yu wrote:
> This patch adds mt8192 platform and affiliated drivers.
>=20
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  sound/soc/mediatek/Kconfig                    |   10 +
>  sound/soc/mediatek/Makefile                   |    1 +
>  sound/soc/mediatek/common/mtk-afe-fe-dai.c    |   13 +-
>  sound/soc/mediatek/common/mtk-base-afe.h      |    1 +
>  sound/soc/mediatek/mt8192/Makefile            |   14 +
>  sound/soc/mediatek/mt8192/mt8192-afe-clk.c    |  669 ++++
>  sound/soc/mediatek/mt8192/mt8192-afe-clk.h    |  244 ++
>  sound/soc/mediatek/mt8192/mt8192-afe-common.h |  170 +
>  .../soc/mediatek/mt8192/mt8192-afe-control.c  |  163 +
>  sound/soc/mediatek/mt8192/mt8192-afe-gpio.c   |  306 ++
>  sound/soc/mediatek/mt8192/mt8192-afe-gpio.h   |   19 +
>  sound/soc/mediatek/mt8192/mt8192-afe-pcm.c    | 2389 +++++++++++++
>  sound/soc/mediatek/mt8192/mt8192-dai-adda.c   | 1489 ++++++++
>  sound/soc/mediatek/mt8192/mt8192-dai-i2s.c    | 2139 +++++++++++
>  sound/soc/mediatek/mt8192/mt8192-dai-pcm.c    |  409 +++
>  sound/soc/mediatek/mt8192/mt8192-dai-tdm.c    |  778 ++++
>  .../mediatek/mt8192/mt8192-interconnection.h  |   65 +
>  sound/soc/mediatek/mt8192/mt8192-reg.h        | 3131 +++++++++++++++++
>  18 files changed, 12006 insertions(+), 4 deletions(-)

This is *way* too big to be a single patch, please split it up - it's
over 600K.

--xaMk4Io5JJdpkLEb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+QNlsACgkQJNaLcl1U
h9AabAf/Q9TXeXUMIPn9NWo9v/L9LDjOuG3v6YsvGz0dOKzOGAaBjfvSbd9Wtxla
FGAFsK52ABH7Au6Gm6lKAGgRYY1iP+bG0Pfy0Ow4XdHrPLv/WND+qgFgnaqOZ2Cd
fb7IpP2f57dbOFvFttnhJW132G3wv50HM3TGcX3ZIMdL0x6becq28d3tg05RUJUn
8I0581pbZ9NOiux3Z0qAYsI0j9I8GQLgYmOTXg2v+FivJ5mrRctnxPSy7fhsi9xQ
+k1rpv8+jY/NDbOVPenM/f/EoT2WAynU3KNQbW4oEgTX0z62TDV7A9SX6dO5ncBd
t5HhufaFXlQn1FBV84GrEXTq9ObMsw==
=JxKv
-----END PGP SIGNATURE-----

--xaMk4Io5JJdpkLEb--
