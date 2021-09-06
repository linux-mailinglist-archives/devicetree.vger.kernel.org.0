Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EEAF401C58
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:34:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242482AbhIFNfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:35:50 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:52501 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241526AbhIFNfu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:35:50 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.west.internal (Postfix) with ESMTP id C04B3320093B;
        Mon,  6 Sep 2021 09:34:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 06 Sep 2021 09:34:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=Jea8bhxyUgx/S1dvWFM3KbINsP8
        /5IsEhLfx1C2X84A=; b=V/nAMe56h2J7AnC6fATi7xCatmUPjDWsakto/iJy45h
        IhdV+yGo4UfgCE3wEp6cI5zB68IVEnKVoceNKE4TTsIyncXpuDqfILZMNVucgQxO
        un51hHLy7XJQ9JCfxDiHDYWaKLntcrssewcl9F4qgqvKt90EvJwQN24C36ew4LRj
        bocUwhva+O5qTpxiZFDOXOc1lBx7eEvl1ErkLGCHtbcDlGyCQ9v57Mkizq6QCziU
        1viKHFqgcjfJgA7enmOUxN+Sw3YwWjGB1e3wlX39CwjR9eJ8QTZAOjyh/sWi371q
        NDuXOJ1mFcuaCRCwnM/Acw/fny9JqWaS8GsWYNxOzcQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Jea8bh
        xyUgx/S1dvWFM3KbINsP8/5IsEhLfx1C2X84A=; b=fudb7J1FJzKvMhxw4VhGB1
        nZQcs1exOhfu+2t8DDuDrsD5RWTkJ+inQSZWfSVFjDLbufKZt1fwjgYLuw0T2LFr
        hWrUnFkQzw+XM72EoYQnAAaAleBPKnxHFpQ7nwo4nulr/MqxXXXVSh6baHPGH+6m
        bkD/luG9yYFl2YJkrXH6rFTLApYgLpe+xWhdMPypZYJ2DKHmlOYXbsmeS4n1lXew
        A2/w+wMMgkderF9Dr8QPpVa++O1sRasOeMTNddS6LWtGopiRz9oLyvvFZm2qA6qs
        rjB6nmkwU7bY+7r3JCoyRYuRw53hXbscYpLaEHEpvYB8nQPtBgh3OQTkwcgZWAPQ
        ==
X-ME-Sender: <xms:8xg2YXyNNVzTuYhI5xzmgeX71R5m7f2iFE61rYaCiJCMY4g5wRTOGg>
    <xme:8xg2YfTBMJ4ciLNepcTRbhhCfUyuJQ8A5hFZl9gmUxlwl6ELB_3BO5iKNhxuVUsqR
    MgXGilgJiodhVjpEgM>
X-ME-Received: <xmr:8xg2YRUlVIVthcEAnV7lSFJL50JUanjGnDKpK_CObOy6o-5H-6cr2XOwORVmALAs5ALwes0GHMIddVYwbFByT59WAS-CIqkVRkpK>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:8xg2YRgUZAgo0bvkOo5P6WRswYJfS1swr3qahb6qgwkBrKJBcE-bDw>
    <xmx:8xg2YZDiDQ_43yKbEkrDS7aqkHJ4ZkOeGZ1Yg48FXmJobsJy9ybAFg>
    <xmx:8xg2YaJzHSBlVtSsPiGVwPlMUcl4ueRMs09MGm9ueW7IUVvCyAsP6A>
    <xmx:9Bg2Yb1JURwQU2NTDSW73vXXgvXhI9dVZ_PIy2fALeM0WZxNdbE7TA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:34:43 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:34:40 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 09/52] dt-bindings: clocks: Fix typo in the H6
 compatible
Message-ID: <20210906133440.q3x25ally4rfnbjv@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-10-maxime@cerno.tech>
 <1783466.nJmK62rKpU@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="sory2cakfi7ldehr"
Content-Disposition: inline
In-Reply-To: <1783466.nJmK62rKpU@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--sory2cakfi7ldehr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 10:50:32PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:09 CEST je Maxime Ripard napisal(a=
):
> > Even though both the driver and the device trees all use the
> > allwinner,sun50i-h6-de3-clk, we documented the compatible as
> > allwinner,sun50i-h6-de2-clk in the binding. Let's fix this.
> >=20
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--sory2cakfi7ldehr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYY8AAKCRDj7w1vZxhR
xShXAP9eMy4cxVFTl066aJJfK10HmIBFpJqaFa/PnLFScC2q1QD8DW4+u/BKAMxI
ehJoTsTtN/GHt7BIvBEpBB5hmT89Bwg=
=hza/
-----END PGP SIGNATURE-----

--sory2cakfi7ldehr--
