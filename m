Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64A3C401C5E
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:37:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242515AbhIFNhB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:37:01 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:46685 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241526AbhIFNhA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:37:00 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 9269C32000F9;
        Mon,  6 Sep 2021 09:35:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Mon, 06 Sep 2021 09:35:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=89iU5Dc+VdgfMZlYxVTRVQWTI6G
        gXnvWTouLmf1f6i0=; b=HJyGkRvDnpA/zFxk/BTc7IrFO1HUePm0JaWCpdVFP+2
        Tgp7dJIYTYlvyHCt/XIe83RjccfPlSQtzCzOpTeDd1KBbDTSQjG+UqWSQVM+au5r
        CLVtX+JwO0s/HlO6Gx9X5CAZSJtn5Vr4bT6iC/9qnoEzNPvpoyEBxJ/zHnJQalB5
        Z6QGfQNz2PHrTRBMOLtw35l2gmyRec41gmRFrUccRYvr6O2IB3JR9u63zV9vMJp9
        Yq4NeYtBlf+R48hQYVY3vWu0p6m5Ilaal/8csABGwWRjzv0p4GtfmVuBNYe11VZs
        ofpXJ5uJCXoee+6ax3QB9giUQF9ynQ/KMqdb/FW0WzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=89iU5D
        c+VdgfMZlYxVTRVQWTI6GgXnvWTouLmf1f6i0=; b=XqDCfj8xb2bclkAyl0oRt8
        dqbvYJb97uzCa78tZ5MqTixb98FguwKiQmnREVcgpzKju8pVCNfvnRuVL5KYUSZa
        xyeu2375OF5Nq6A003tu7gP/l8/k6tYQ6VYRe4476cVdWGG7Q1aKF2pPlDpedMyk
        kKOaicApe1oDiWfIHd+APMM1ttis2EfTgid1esIg8BCV+quJi1uY1sWENCkDs3tx
        TwgSRlau3JADOyvmDoDbeGtGNPIuPBQbAKaZA77xqLBbQnSUdBW9YI3z6LWg0Pkf
        BoJA20h8R2zX05SsZkXdMH6WKG5QSNZ1L2aKcrXpEzZlG5rPwJkglwGtvGhv78Cw
        ==
X-ME-Sender: <xms:Ohk2YSh9y7mIXuGtrpdc90a41dUFA-g2aR-wBzjt4mlq2Fkb-nBUhg>
    <xme:Ohk2YTBW7EbAgTol31JpWLnTwQybNd--y4R_FXOnuJyiBb4cPv_TVW44aSczCP6Yi
    vAmJ7CE9Ty1PhTnkfI>
X-ME-Received: <xmr:Ohk2YaEqsJMhGIqthayTwmpoN37dPf1wNralNPSV469zuSj30VzRI9AYNZxz4Oq7iuO-l-xr6Qc8sXKcrPviF-DiealyYcCeuW7Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Ohk2YbQ4nlfkoumXCT3t01GncbQYGR60kf8ZidcxBSRixXmD1f-dmg>
    <xmx:Ohk2Yfyggw9ekSfpgCseeDcyOl0lLRtp1AiTK2cvFIZ49VbYbu8vMg>
    <xmx:Ohk2YZ6P5E7y1gHy7cLb0jeDcvUEl820DDI0qJvcaJKj29ahcyMezw>
    <xmx:Oxk2YWl8MiXfofC7KZYoCUIGCpdfZBL5GzJgpCgNDnElIaoay6HhMw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:35:53 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:35:52 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 34/52] dt-bindings: sunxi: Add CPU Configuration
 Controller Binding
Message-ID: <20210906133552.c6gdtvu633elgcpd@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-35-maxime@cerno.tech>
 <6297906.XQY1XBem9x@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kvgnqlvfhf7zu43h"
Content-Disposition: inline
In-Reply-To: <6297906.XQY1XBem9x@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--kvgnqlvfhf7zu43h
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:00:25PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:34 CEST je Maxime Ripard napisal(a=
):
> > Even though we've used the CPU configuration driver for some time and a
> > number of boards using it already, we never had a binding for it. Let's
> > add it based on what the driver expects and the boards are providing.
> >=20
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--kvgnqlvfhf7zu43h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZOAAKCRDj7w1vZxhR
xZB1AQC1Y5P9XibYLGBrdo/dkR+Qv7x5icwB+KJLCJoDvHFHoAD/YEYrkzgExyjv
BzM3WvosrFXYlym54iLT156Vo1hwrws=
=amXc
-----END PGP SIGNATURE-----

--kvgnqlvfhf7zu43h--
