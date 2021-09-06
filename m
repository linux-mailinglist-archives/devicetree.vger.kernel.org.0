Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18263401C7C
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236164AbhIFNk6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:40:58 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:52573 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233820AbhIFNk6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:40:58 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id 11F923200944;
        Mon,  6 Sep 2021 09:39:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 06 Sep 2021 09:39:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=TmDy505jKGi56ty70/mLDosW/kZ
        xvDphAGz1sg1kieg=; b=gFR8zvqNGBAA7mGtKdeYJk916aYK/ZqvpRMpOfIfjQB
        8ykwXtWnUHqqOxcCdpdTZdPWp1A/XSwqzN0o4CGvgNCmiB5prSXwOKMQc413xG2u
        9ZF7R2jWrZzQY4i0HLOD5Csjb1I1chA+uTVgmnisTapHzydWiF6CRuXLaN8lFWbU
        g2DyChQToBMZDME6kY9nGfxHDICqWnDWLOOaGiE0NqLrZaXnZ9tP0TJTc0tcjHV2
        XLEbglinjpkquH4XRQ0PpX+ojkKpb58N6X+AseoTXi7tlLpB7ZbfAis01h63OvCw
        30XmcfaKFYrQPf++No9ERfWvnmDgbb1ZhC1U83xX/Nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=TmDy50
        5jKGi56ty70/mLDosW/kZxvDphAGz1sg1kieg=; b=G6+pKJhJTfKk/YYU4U+0jY
        BGtnWLVejR7an2C+sKFcKBGBE6Um5/Gp/B2jlgASjiGioQfog8sEc46f9/2hcNNa
        Yt/CqWFm1tEEmnWWIVIOpaQFaxFGs07Ox3/JpuhZasM4Zq2LzxSXAzT5VHsE/ZWW
        HHjSmPTMyhbmE68TMfbN0SdTD4drHVVLhBTRONYSP0Hrdw0Qs3p/QpRDyiBDcxP5
        cBIwoX4f4jAh0xkkE/cAeFIG23LL35VSFjaEYZahnW097WO+GSgtyM19+U6haJqF
        bOLbHGKb7+NOBI84SDzLv+gO/RUKCW6U8KliOCvjuIPCAkXcyF1QTLg8YzU1kgYg
        ==
X-ME-Sender: <xms:KBo2YYm54OEsa_yCe1J6i6Cmvl5ziuCnd_HX5rqH_GbXz_PTzA_JHw>
    <xme:KBo2YX0xojM6wl44l7kHnhnXUPssgPB7-m9cXyPqlx8TyPeZ_BbQ8Bf65H3ULDPIH
    3BMYe6qMgClyMWlM7w>
X-ME-Received: <xmr:KBo2YWq4IbET8cSvc-J0GuVkPJicN0fYS1CiEWFcCIJILxKjm-o5Grhc9i1tv2E3SaSf0FBBzF98wku9HIdrXc7xN7aju98A6yNc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepfeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:KBo2YUktpumNVpi6oT_I3sLP0RYx3ZaKG7ss7vsrCRex6SHuXRiNOg>
    <xmx:KBo2YW2iABJjBxAbgvVclMvwCb1amdUAeV7i0E6_ke9eUFR79M5krQ>
    <xmx:KBo2Ybuylf9C4toRZvPO7nwzNZKCe3MPDmy_5uaEAarx48L-cAOxHQ>
    <xmx:KBo2YS9sKZcFgZW62lR4Dwq9YpXlLY5A756bl9Z5krYMVG3C8Db2kg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:39:52 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:39:51 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 47/52] arm64: dts: allwinner: h5: Fix GPU thermal zone
 node name
Message-ID: <20210906133951.hct5xu2j5x5exc6k@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-48-maxime@cerno.tech>
 <4078279.uekIYQBzCl@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="uob22g5ufmv2lx7e"
Content-Disposition: inline
In-Reply-To: <4078279.uekIYQBzCl@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--uob22g5ufmv2lx7e
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:12:51PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:47 CEST je Maxime Ripard napisal(a=
):
> > The GPU thermal zone is named gpu_thermal. However, the underscore is
> > an invalid character for a node name and the thermal zone binding
> > explicitly requires that zones are called *-thermal. Let's fix it.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--uob22g5ufmv2lx7e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYaJwAKCRDj7w1vZxhR
xW92AQC9HdJhB5ptIe4EgVATYZu6gaVhTkQy6QT0ZDdug7CIJQEA5bpzAO6k02y2
6jHqCUOtIXta+/e1z3o7AVGzOduzHgc=
=ijCU
-----END PGP SIGNATURE-----

--uob22g5ufmv2lx7e--
