Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28D3B401C67
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242658AbhIFNiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:38:25 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:34417 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242659AbhIFNiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:38:19 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 1C901320093D;
        Mon,  6 Sep 2021 09:37:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 06 Sep 2021 09:37:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=KgVTXHb92KHuBQ8yeea0hRqHs3o
        pt1Y4Azvh05nw+UQ=; b=DYBd9EsPg192JUc4nUgYZv08RVqJJTqBdu605OL4AuG
        mb+GIYps6KshBSHOTHAc7l7im0tFd5y+/FRp1itvJi1CGyHTP5+97UFcNDdm+tsB
        loSXq3B+kbJhn2VPdMQaDi97mVvh1PcmL0LFHq4TeM3aI3fUkXNJ4i2kEhnUyRyH
        5g7FKww+FniwXra7Y0KYr/BF2SPcrmBComrUke3/SXPqF/iez8dJ3Ei12o0X4Dr5
        JnUhch/kRhEtR11zCkBUGEm5a1j4Wg08/oUyaXtHNbehNjoSbtG8Z8yh+q3SITxX
        Bhzi6PZk39k3pVwl/gHqfjagVOV3HAVZ3tykeQKVG6A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=KgVTXH
        b92KHuBQ8yeea0hRqHs3opt1Y4Azvh05nw+UQ=; b=pEPHSqmUDJy+an8NpbXQTa
        VlmzIJDih40UOdqKLvbhBjNn+1NelN0As/VbNhQxzjbEdYBQNmo3RLff0YUDMkkj
        UJQnVy1SrjR0khA8aMm5klkiZLc1xffPLJkYXwwGgeSPvU/ae1T1DB6Z7HtUiNEU
        eN5AO2a3eJISF2hxrsxsLL4sAeHNI8dxqwEJ46IP8B3HW9xqx/Y9emqQF9Vmonty
        SEfySpWrcXbLLc8niAaWJ5Fr9uT836tsEBRcrkvalTmp3f4GyaCeCAXbreA05+xe
        k2Ylb/PVVe/MW82zrCXXEqP7QIvFfBB9XyMuUyEU4UpsycKOquhHQUvPaqRuVHlQ
        ==
X-ME-Sender: <xms:iBk2YSf4tqD8vl_ba4IbWjQHLGdkr7_T3yX5Vfey8nkImR7_f-q3EQ>
    <xme:iBk2YcPOxK7Y6xMqo9DQq2vx55KsWjbLiDTsAmwC_Y9YfnTdQecMyvnE7N2bb5EPZ
    lwelr7gzOHnNtL7LTM>
X-ME-Received: <xmr:iBk2YTiTs-hrLGhbZpYnbk5hF9G6BzG_n4y-5aePhivbBVEWvXORCAyhTjj4mX7r_ZVjrAPhXIOxbyfERVgZOJlmgZ5DvJCaYHa6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:iBk2Yf9qPfc8J2FnUn-Lk3pUpg-1hMjotTqJdorX4EwRD-X4kV3iCw>
    <xmx:iBk2Yetsn3SbjOBTXl2gq5Zehthyy_wpyOaLWGmPTL7CSEKUNgYZSA>
    <xmx:iBk2YWEeR5dgBx7b2twzlSGsGRIpHlZ0m5xmHIoRrWks016hXrrfSQ>
    <xmx:iRk2YQUcEGPPLqQPT-ibU6O2RdoHyc0aBvTtsKSJ8TzsSSXHeXveiQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:37:12 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:37:11 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 40/52] ARM: dts: sunxi: Rename gpio pinctrl names
Message-ID: <20210906133711.hiylg4kijnai6eln@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-41-maxime@cerno.tech>
 <1977908.zjU7uxLu2B@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="iedmqvl3dq3wvbxf"
Content-Disposition: inline
In-Reply-To: <1977908.zjU7uxLu2B@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--iedmqvl3dq3wvbxf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:03:11PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:40 CEST je Maxime Ripard napisal(a=
):
> > We've had a pinctrl node name convention for a while now, let's follow
> > it for the AXP pinctrl nodes as well.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--iedmqvl3dq3wvbxf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZhwAKCRDj7w1vZxhR
xcaIAP44Z3rSSYfY4LF/RE+KPLJoRREZNIS5nJZcWM8JNd9gPgD9G7Bh3FTrjy3/
1BhyuvASU6+EHTPqaqLCDIzlwUelUAk=
=mNBM
-----END PGP SIGNATURE-----

--iedmqvl3dq3wvbxf--
