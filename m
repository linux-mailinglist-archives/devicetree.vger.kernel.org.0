Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A093401C84
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242689AbhIFNmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:42:32 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:60853 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242225AbhIFNmb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:42:31 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id BA1F73200905;
        Mon,  6 Sep 2021 09:41:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 06 Sep 2021 09:41:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=fUyfUxh7s7Tji6fH/fDXcLL12DD
        CfWqXivA9sNN9v0M=; b=eJ5LR3es3WBjWlvWiMCE8opHujj6ZLnsCKwr4FS1BZJ
        f1wEJ6xytPMsU1EZRzF9PEqQiqpowvLIGbhK/Sb/gYprDUrO29YTCvgswAIa9qC1
        3kEx6EOOGWGZIhNU7NFyowYL0BsMRV0E9mpR7qqvyAUb8cRyx33q08ja4VlXjYsx
        j6R53NjAXE2gux3r7s85Hp2uwPlpaBYSryyx/UAcQMOqM4rpjwdUfIhqMGzChYxh
        e+LCCGLRJoznkRs8PqpixAnGDhZbTVPG7w7ZVSrDCd9+u3unhUBQtafgXRyTsJda
        P+RuoBxdqW9FjdinMQ1HZA2U5Y7/Y/dkc42f42s54vQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=fUyfUx
        h7s7Tji6fH/fDXcLL12DDCfWqXivA9sNN9v0M=; b=Gxs7wqefynopTU/6HAFSus
        D46DdJ4ROT5dTLAJ5OfpK6a8vq2CDRPZ2zpalOxx57S5snBOoz/7DuLVN0Lkx2L2
        g+eTc/A2Wg6F/+zrq3tDJa535aAcVZ7UVo6/eNYAY7lRKc8veYRZTdV1t9WVScLt
        pdTZLqudD1wKXClI7J+ZJ8Mmt1kuMK5MP/UWcieUNrKq+AuU9MEj+uhEZ/GiRl/a
        GIW4kCUfDlr/O1gtRUzANHOXRPkKb0CK6SftjctcyAGm+ZHUn1ufiOt8WuBH7f/Y
        maQTAjFgCayrrhxt+//BIMZAG5ECj/21anGYu5sdJinE4vWje6gFS4ayDgLIz1fg
        ==
X-ME-Sender: <xms:hRo2YeYDiq2bunpqz5foErte_DZ9PTgW-CvoOS6vkgOJo2JY731u9g>
    <xme:hRo2YRZpQjdz_0SEPqNTlTjn6q-FCYbAMxZW20-xGaPVTMvXrdCYHA13jxp8HaAKC
    DNL5FOYV8vpf-Xxe44>
X-ME-Received: <xmr:hRo2YY_aWB2q9alFVAyIaDD2vwgNkxQKHHPunwncpR5Vp9Cdz8R8mWZNI03FHZ7JEo0UA92hj5iu8TlwS3Yxy_eGLK85oo3uI4-9>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hRo2YQr16BUVmoKFf8Pn9ZzQ8OiBqp74i67HfYPxW7OlI9ilNPfRqQ>
    <xmx:hRo2YZoV023JKMQQKhTlSq7Dl7kzBNryeHs19fOqMsj0eaw3X1nklg>
    <xmx:hRo2YeQqJ19Cyto9YCqjC0M6KwmO44d7wU5DWmombhszE50zq4nBtQ>
    <xmx:hho2YSB4djwKYRt0LreFlhmbRf61Lv1DoTFX6AYACwBUXpmo5ZSGMw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:41:25 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:41:24 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 51/52] arm64: dts: allwinner: teres-i: Add missing reg
Message-ID: <20210906134124.mery3wv5lwkafz56@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-52-maxime@cerno.tech>
 <5261980.QV9FR7U8TA@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="w3dmhftwiaholeha"
Content-Disposition: inline
In-Reply-To: <5261980.QV9FR7U8TA@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--w3dmhftwiaholeha
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:14:34PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:51 CEST je Maxime Ripard napisal(a=
):
> > The anx6345 bridge mandates that the input port is named port@0. Since
> > we have a unit-address, this implies that we need a reg property with
> > the same value, but it was found to be missing in the Teres-I device
> > tree. Make sure it's there.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--w3dmhftwiaholeha
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYahAAKCRDj7w1vZxhR
xYwLAQD8VkJ3kaVvfIiccvB/AEoMerHQDfUZAn700kgfSba+oAD/RpmQ2Kzapkcw
r7xvILtExMJ/X8O6XJhj/B4MBGvJpwU=
=CJaj
-----END PGP SIGNATURE-----

--w3dmhftwiaholeha--
