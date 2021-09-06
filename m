Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4F22401C83
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242666AbhIFNmU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:42:20 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:38945 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242225AbhIFNmS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:42:18 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id 6B0543200905;
        Mon,  6 Sep 2021 09:41:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Mon, 06 Sep 2021 09:41:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=H46HkdwlFW/UvqIozju7LITMM4A
        QN9cVFEjzWk/VQOI=; b=BlEgytXR6+aeGGVl+i8H2EMoBVHAZ8l5LfRz+mah8aH
        2bO9UVYpHSg0vuVmVQjDsRGFGgjcVHf5gfq5VREQMdtQKuce0ulxWdOVwvGVpdZY
        gF6puxc05DKStpkaR0akgVWvUENnQxxSbPpAvWqUGu/xJ00Az6s7Ow1EHZOvz6zy
        btShflmdQ9iUGcP929+540wmBkqFE+ovayP1L7ZdXMiFgE+Gv5rUFwPkI6JBPAyV
        6n88QRZPAfVE+W6/oOZiGVvZCd5vcsZhMollzc7j21Qt//TfNYSez3v7jE7udrlS
        dHt0WvbAU7Pr6UMHISWjQZF9lYC1Vf5iESutIN6M9kg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=H46Hkd
        wlFW/UvqIozju7LITMM4AQN9cVFEjzWk/VQOI=; b=LMwNA+nZjyS9QPjVAlUO49
        VdmeMykoilE+pYsQjvnAExBsfVOp5tPgZbT5bEHbnQ2xsfsFCJRUFoI4JmoTKSkV
        SDnRe/XHqWixMHN1DzWz7e/JfEp9ae2ato2056R5oFbhQmNorVfDQ8g7Vorwnm+U
        IyBokbwFzlWjv4wmuXm2HjqL6mcExkkuFpx92qCRQArU3/eEs5WN5StAj32HRFo8
        caPalz9rEzN39PdVmu4XXznuAiI7+XRrXODqfNNFeCY6KmXzPDHWa4jQeuTDkExa
        18d1vq3VGwV9YSIZKSUCZna7CREY7A4S/g6PIUZYxMMRJvE1d2ash43RCv9tjVdw
        ==
X-ME-Sender: <xms:dRo2Yf_YfngkDDiAlLh46eRhCdRwm0AJb_FmsbmFOJuCH9k1S-Yx0g>
    <xme:dRo2YbuaAbrVfq8PQ3y80Cw_qqjKx5eGpzo4KBSg0rB848GcrSGzmItY8sUg3D7Bo
    H6tCNtDKhAz0To68jw>
X-ME-Received: <xmr:dRo2YdA7d2nPXQkxWSdU9phgT7PJAspsImJ6ZHF9AUok_-KX701FXwLMVpad9kdrDtu08_RnzaxRrDtonAfE1d3jrr9x894TV4s4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:dRo2YbfDJNB9D_T4CwCjoMRP7ITNTnmrvpVAzSID5YQbXTMbyVe7sQ>
    <xmx:dRo2YUODdQJyDvh-B3lpZRcPREI9UvOS7afyo-ARb4eTxuk8ccdVVw>
    <xmx:dRo2YdmxoTwMDcCPbegGmOtiSrQiNXeDndkoXn3l8JjsEs7twqumLw>
    <xmx:dho2YT2XrYf30lLa_9pW3_w5a7C96Jy2mkAKLt9EIuf9a4NgXyVKKw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:41:09 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:41:08 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 50/52] arm64: dts: allwinner: pinetab: Change
 regulator node name to avoid warning
Message-ID: <20210906134108.c6n5bxivuzwjrp7l@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-51-maxime@cerno.tech>
 <2097331.FtbFhWGVOK@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ist724ze64tlagsc"
Content-Disposition: inline
In-Reply-To: <2097331.FtbFhWGVOK@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ist724ze64tlagsc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:14:08PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:50 CEST je Maxime Ripard napisal(a=
):
> > The fixed regulator clock name has a unit address, but no reg property,
> > which generates a warning in DTC. Change its name to remove its useless
> > unit address.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--ist724ze64tlagsc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYadAAKCRDj7w1vZxhR
xUuNAQCRflmS3q16X42EhcDyNwwZ+KGqz4hEJrnuOD9l3xoZPgEA//d/OxgVe5cE
TQ4trE/IT64JWMuHI2Ig4b9K8uEqVAM=
=eHaj
-----END PGP SIGNATURE-----

--ist724ze64tlagsc--
