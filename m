Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0276401C63
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:37:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242610AbhIFNh4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:37:56 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:45537 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242564AbhIFNhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:37:55 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id 905DB32000F9;
        Mon,  6 Sep 2021 09:36:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 06 Sep 2021 09:36:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=FNpAayLKyvtC/I4ukQ6FMv4dMMI
        amkLS3NUHUK2gHN0=; b=LR771LRrIaaLGpgMLLr2r89O9vr7GjF5oDmZlQntvfu
        tFuXhgiTstTvmReGo4UzPS1er97RWzdZxuO5/QDVeKsmdYL/u7lWo3BYZcNG5SSJ
        WQq7bDLabLgP0muTj0937aLzwCX4sATx9HNxa4KDJ9/kF0IqhSwYeCZIx/wCWhuG
        RGL80EuGhD2D3SSy5Pv/YnxM/tWjOblz+T/352cxUv9s96HYCeBFKWyMmEsGIQ0l
        VKr1+rXU/fSGDJXeOH2Tl09VVhZ6CV4W924TO1vDsFG0xNZBHAVP5yrN/gIgsWtb
        xS7UX/S7n0IzU90+eXu7OuYWH5dWy1/mYaCp7vH4FFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=FNpAay
        LKyvtC/I4ukQ6FMv4dMMIamkLS3NUHUK2gHN0=; b=nP+Z/DvJJxdoJQ1fWf5L51
        sEEd3PVpmHChta7g3JvZJbbXDFQ/FLfRkLGQAKi59bkclODt5Sdy5IWHi4JNs+iZ
        903cu7JskibhkTY9xMS90eeBidu1M3mjH0C/XDVmFIfabk02dKZIUdn+IWlEFC2Y
        ZLnZ4J48853M/3QJlVsYZx39Av0Fsowc6nkFALyBrpsMKPSJCAH6PU3+ZT1vQ7oP
        OAgsruBmDnFhxRtN5CfUFx2/F+NF+E23GKlVa06q5VIhemBvVbiQvGugIZqaGsm8
        1C9VgUNk5teT6MPXU35eNagD9rQ52HeK5wZ248GWCLOMU8JIWdGE13jLwS2UEC1Q
        ==
X-ME-Sender: <xms:cRk2YaME8IVNizEqM7uisHYyLeOXC2eRV2qIa9K3Md6FQULpIU-dCQ>
    <xme:cRk2YY-HlpP8gD-VE-JPJ1gm5aKaHd5kww85VXBHEKwZqWlqrFFX49J7QyFviG3iR
    USkQQou7-Rsu4gBiEk>
X-ME-Received: <xmr:cRk2YRSKFgavS588U67aelMX_8b1G0ecWfXxcHhnRAOhsQxjLibT3IW3do1QT5p37Ed4qAe7OnzVf6lgq2IDgucUm23Z8Lqbjyta>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:cRk2Yasu-r609KBfJn79H-vZAqw0K9FBndcy6vgOvwx3kcKB-LTH6g>
    <xmx:cRk2YSdFW6KmN2qMYuxJf5GRjbIOIrKno1kmvBCpQ6enUZFIUos_lw>
    <xmx:cRk2Ye0X2DO2PBAr8eZROAtg0m0NZVj8k2hl7Q_QzkXBZg8Yi3SSvg>
    <xmx:chk2YfFPzWq1PO5F8MMmVT_EUVEtu_pEt_HBzZUVsGHHgUo5Z1mYbw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:36:49 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:36:48 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 39/52] ARM: dts: sunxi: Rename power-supply names
Message-ID: <20210906133648.n2uz6tp34n74xexu@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-40-maxime@cerno.tech>
 <3269377.QTWDqilR05@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rbjgcvn5zj3atkq4"
Content-Disposition: inline
In-Reply-To: <3269377.QTWDqilR05@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--rbjgcvn5zj3atkq4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:02:44PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:39 CEST je Maxime Ripard napisal(a=
):
> > The name of our PMIC power supply names conflict with the generic
> > regulator supply check that matches anything called *-supply, including
> > the nodes, and then makes sure it's a phandle.
> >=20
> > A node is obviously not a phandle, so let's change our power supplies
> > names to avoid any conflict.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--rbjgcvn5zj3atkq4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZcAAKCRDj7w1vZxhR
xWQBAQDdmDYFoRAXhxxbrBWHKHl5+hWM6QKWNV0hlH1Oj96LEAD/RujdoayblZv0
tHmRvw5cx5c3/GbND+kEFlcnCu5cgw0=
=q0Ut
-----END PGP SIGNATURE-----

--rbjgcvn5zj3atkq4--
