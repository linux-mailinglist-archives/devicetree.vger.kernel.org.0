Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54C55401C78
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242389AbhIFNjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:39:36 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:38263 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242129AbhIFNjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:39:35 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id CF364320093D;
        Mon,  6 Sep 2021 09:38:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Mon, 06 Sep 2021 09:38:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=W0euGFEsvy1fJpcxpNHvh9rXEZX
        AVqLyxLRo9g2vD8I=; b=R7wVipupUqvsmDnuwJoqTI6p5LU6PupRV+pZuzFvdzQ
        KFer9wVzGr2Ie2oZhqrV51ufpf+bkU8MqH47q5EH0bfYWLSI/80ROdBk1zvSXoPF
        5iwYnFBWFFvjyf9R5ml8pE9Ji9H7ayTedpxPEh67ku6ZnxNKJzd4EhZadKn1vnYY
        EcbCAOpZqATdLj7njQ1earkCUfW36y+hOD6HeJT/M0eLs81FIVL97wFn8eSRrUr2
        2SG/RE4pzNJY+aLsNfQpO9d77CHT9/feJhl9QjvTisoMDrM9iUxXK8I6z3pfamty
        wceGKYZF6vPZGoAyjoaZDSKVdm2Z1rf1dbaXgn3QfRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=W0euGF
        Esvy1fJpcxpNHvh9rXEZXAVqLyxLRo9g2vD8I=; b=VpMbJ27waGnyCep62A6uvY
        s65KwPD/koT+8o6AuSu8pez16JshtNqu6M1Cw7kPHlxz7Jmvxbre6yREwYCFpWbx
        splSSy12FnrDbXEendQsMBZQKIdOobA8OusuUrCOBVxfXgjnAP6NeQTDJ+ukqgDh
        TXpXHsOXrE648+oGRKuxrTbTUc3CbWtjZ1sYvrlLm6lGLdWzZ+4ypqtAqdruZeNx
        mi3eL5U0nSz9gYtNJokXrFhb0txTWRf9HkUMYmeOXxI6GrxRcb1upBWjaEGlkk0D
        WaGSXKd/EJGCipzk1ltgLkX9wNWJ2nSGtGzbDMAZY1Ws0Ykl+o5iyA/t/he1BvCA
        ==
X-ME-Sender: <xms:1Rk2YXXNFVvn9SLNkn0a-yACTgOt_vBlTj7QmtvwKiqfpIgLT4tNEA>
    <xme:1Rk2Yfm0sYTbTFbSIwzy98flJTEpf6JYTIOXIGQ0VBDK8f85mM-F0fZqLizAa1AMt
    TRYT1IlCFe-7ix9h4g>
X-ME-Received: <xmr:1Rk2YTYcLuOrcpdowaK3GqxbYdFc6qRWF4w2rjVYzqhLwisif1dmYDxh8SwxiKKm92X6aASRY8CS1qy-_ZmsSy5DToln38vPau5P>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:1Rk2YSXzpUJJiAAZAA6yNQDcFfGQyBUq0Gr2mSGoLP2TIjHCf85GtA>
    <xmx:1Rk2YRmJe_GLYwj6U1OQXk_c7m2j1e-VnkalknsyycAHgRPMvCvduw>
    <xmx:1Rk2YfdxuGDgIcawLm-bzH-d69FtBjZ06IjrCfHJrE09yoTBLig_dg>
    <xmx:1hk2YUsLAdkRwy1SVRgHa2lFg8HB7ZTxiN_jLORuqCnroDTMLiWWqw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:38:29 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:38:28 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 43/52] ARM: dts: sunxi: Fix the SPI NOR node names
Message-ID: <20210906133828.vtxjm2ltk4e5frne@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-44-maxime@cerno.tech>
 <6132201.v4zFc0b8HB@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="llqrvvxkft6dlvqu"
Content-Disposition: inline
In-Reply-To: <6132201.v4zFc0b8HB@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--llqrvvxkft6dlvqu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:06:45PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:43 CEST je Maxime Ripard napisal(a=
):
> > According to the SPI NOR bindings, the flash node names are supposed to
> > be flash@<address>. Let's fix our users to use that new scheme.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--llqrvvxkft6dlvqu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZ1AAKCRDj7w1vZxhR
xSsnAQDWLOokPb+Nfk7IChVZyugne15cf1NqSeKD0HwYWooB8wEAyMLQoPNF8jdM
knD1foKsimtBjnLy8V17d3uTAgn7Wwo=
=cdB3
-----END PGP SIGNATURE-----

--llqrvvxkft6dlvqu--
