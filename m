Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BC16401C82
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233820AbhIFNmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:42:10 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:44645 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242691AbhIFNk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:40:28 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id 1947D32000F9;
        Mon,  6 Sep 2021 09:39:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 06 Sep 2021 09:39:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=26+SXLtQzMERLv0YSLEIhg54lDV
        pudp0ZWBc3nJM6nY=; b=yIeHuZ6AswkWX0pRLVswQk3SdB5MIDc4avSwQoPQ/PH
        3zr+EigbahSt3prehoxsxhki3nBwrb6WDYh1J/PoYKcM8FaazYxqwFBmVxd0t1J9
        hZKcjjxJB1wAKgYrhSglNt93y4SzsIVJjCdVMHfP/bTJswBAgKGjpu3HBuxaGRYp
        B5d5EhOQmmfjjIKPXRH1bGOzsvldn7wPecW2A+gzTT2GphKk6WUYqgsNmHhUIF27
        4rxkYNdqSG72pMskt8QtpXoH6avzMOjHSh52TpT7Od5Zs3dRaXkSqTZ6L47lw/Nv
        3uFLJvszvtqQjc6J87Yil3AHl5af9zFZCTtulp3+3Iw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=26+SXL
        tQzMERLv0YSLEIhg54lDVpudp0ZWBc3nJM6nY=; b=lQprNlwAPfB82ReRHceUow
        MyOs72K6Fn2etnz6m+bvfBgUKm3JYty9XndKHr7tMb1szDrGVURzjMWf1XsZ7tEV
        zAjFtyT9oqyrGQ5sqnU/MiVw5XcOsmXddjhtOHSCLJGmg9DTPoJ54S6xS9JjMj0A
        2sem2/LAFhinxQ56LAxgVvhZuF2h3z6VxwNoqZxcF/r3XefwlL5dA7xPtxLpz/W9
        n6IMUPAJxj+wFv6ang3utfn08dkeVG8bVm3ysjen/vQ5qj9t5mpZQtPjSrmuTVdz
        0EbyyyGExK537pK/8z0ktUnvqHM/WswNz2b1Tebf3yz8HGi+6IU+V1uqOUhi6g/w
        ==
X-ME-Sender: <xms:CRo2YaRAzFhKsGwMdsk152A915AsCKowdhPqTnQ-RNkyluC3V6an0g>
    <xme:CRo2Yfz5MGg2M-GhSAEZrQ0zaI3X3yLivsbXisvm-gU2ZMBsG3B4phjOnA-Rhm0Qb
    mor9ppiiDwLKgERh14>
X-ME-Received: <xmr:CRo2YX0wI1Gofo-m_OPBuqv2DIdFlYawVojETQyvcbnFily8LfCcO32rNFFjSXj4CgTvVQ8A8qtSYd3VvPyyHr5r-uxclu1UapnU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:CRo2YWBfq4ejG8UxMZi0g7IgswXKQK3oP2zZa347UCoeRrnNiZWa4Q>
    <xmx:CRo2YTigayRv3jeqYzpa3TUrUxqxI36iEi-yA_IDRLP2u4ZQYPoARA>
    <xmx:CRo2YSokTPhv9FGuxwXLt19lsdI1q1zVZ97lEW2oMfhmaEy4K5NeXw>
    <xmx:Cho2YZay4gsO60u745Np9S-5P7QSApWFyzXs1tOpM_t1nJRZOXkWFw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:39:21 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:39:20 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 46/52] ARM: dts: cubieboard4: Remove the dumb-vga-dac
 compatible
Message-ID: <20210906133920.py5hzrahylqzo6lb@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-47-maxime@cerno.tech>
 <2130170.LrcM1eeYEP@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="v5zmh6a36fo3jdju"
Content-Disposition: inline
In-Reply-To: <2130170.LrcM1eeYEP@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--v5zmh6a36fo3jdju
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:12:27PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:46 CEST je Maxime Ripard napisal(a=
):
> > The dumb-vga-dac and adi,adv7123 compatibles are not supposed to be used
> > together according to the binding.
> >=20
> > Since the corpro gm7123 is a drop-in replacement for the adv7123, let's
> > remove dumb-vga-dac from our compatible list.
> >=20
> > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--v5zmh6a36fo3jdju
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYaCAAKCRDj7w1vZxhR
xYqAAQDt85gBZOlWDQ0eLLFOZ+gylHDPuBII1wkyuHGhck6UUgD/WysUsoTW6E/x
uuN5cfxxuaQ/vjHJsyltJ9KyF5GNegA=
=obHC
-----END PGP SIGNATURE-----

--v5zmh6a36fo3jdju--
