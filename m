Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83648401C85
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:41:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242691AbhIFNmv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:42:51 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:59743 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242225AbhIFNmv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:42:51 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 356C932008FC;
        Mon,  6 Sep 2021 09:41:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 06 Sep 2021 09:41:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=YSKDFYRJ1PWlp4WgYiXx5n3L/K7
        MktO365klnIj3tXg=; b=gI3XTW7MrtVhV4yyhVIR8Zj4s158eR5qZ56nJSack9D
        Z6tM1X4cHnK4sbZnik+CxZuUUNs/jZcIRQIlTSuR/qk6vuMgQmN7yzi9CqKFWOQf
        wU2deDIbOT0oc3IhvFJr5zcmEmvZ4E6REi7jfONPyNMozvEpuWJpwgqiio76lr3i
        UGIAr1VCWl9VjLljTszlWAOk5SZu8ZdH757y++mmu0hlGL4HgFPAoZ6tB1lF4geY
        LZmHLOZyWwCjG7+90uns/EHMixm9nvbHKy6RzfuDBrCfyD9Tn/+STwJTDKN1kOWs
        zI579h6l69L+7ukQZIMZ1mtrc2JVeCFhKU+aJuWcz3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=YSKDFY
        RJ1PWlp4WgYiXx5n3L/K7MktO365klnIj3tXg=; b=c+55M6/3JGfPBQUm6s9iDH
        RSRxankIgurrtVPu73mKIaiM5tTmLMVDZAwZzumdiusgKmJ3oOtUAx6v2p3xU3j0
        u5++LbvM9lrKME3gvhzEiHzMOG0T7459MeaBDjavIM46f9w/KnIX+1Y+z0cwK5zR
        iRG35MeFGR0SM9UiAN8/7Jo+wsRWHHJMmTX0aG7wUPL+aMXjPVJh3iw5auWWfCG2
        Y6QJ6akolMOlHFD6bXZfWNMEO+XU6HwIdNJncDc8ximGprAtvj+dFFwqcFPdC1Jr
        ZhGdhJEm5CgKGfM8isMXk8PCef7KgN6xQukt83GzqPpxeLkxPAP8DFZ9aJNnCHQw
        ==
X-ME-Sender: <xms:mBo2YQTZdF58JBLnxDiQEYRgLUimwiZPMjvEtFF545E9lDK0McyURQ>
    <xme:mBo2YdwaYAIxxAGrmyloOwLKpvOkEQgWMzesdIeghVPmy1d-vhmnm5_7h5jFnB4dn
    0wr5scMuqTWzPTgf7Q>
X-ME-Received: <xmr:mBo2Yd1vPd3isxmdedllDuFT8fEXE3e95ZgKO65NUAPeyfBQRLOwJsBMpJB6Yg9hpYVia5mbs17l5N2pYCG7GX8Lu3RKocTpP-6C>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:mRo2YUCbSHDirdBjQ7rdZe7oPpAb3KzWKV9xg-Kg55FjD78R6aG79Q>
    <xmx:mRo2YZheqeVl2Bj-oS35JLpqKu4XKm1Pbxk9q9s7Dg6X0qdoI3qkkw>
    <xmx:mRo2YQpzIHnHrzjZKIEF3KEScMeYFdZSP6BSswwzQuWmBXR-1P39jg>
    <xmx:mRo2YXYooWuK8rLimj2Dx7KnoIoaYIy6Y1Rshlu84LOqDzHGPvbhiw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:41:44 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:41:43 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 52/52] arm64: dts: allwinner: teres-i: Remove
 wakekup-source from the PMIC
Message-ID: <20210906134143.4cp3pwg7g5exjiun@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-53-maxime@cerno.tech>
 <3434514.rl2y26N2pE@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="gl45kziyk33h7nnr"
Content-Disposition: inline
In-Reply-To: <3434514.rl2y26N2pE@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--gl45kziyk33h7nnr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:24:48PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:52 CEST je Maxime Ripard napisal(a=
):
> > Neither the binding nor the driver make any use of the wakeup-source
> > property for the AXP803. Remove it.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--gl45kziyk33h7nnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYalwAKCRDj7w1vZxhR
xZ1fAQD8/NVEv4DNunSFH488D33Dyt5GgBx5kP7Ml30JeYAkuAEAnp5i9FTt8TlJ
Z6vx9X7aAd7O6DWnFjDhaEeNR3FOfQ0=
=H5sK
-----END PGP SIGNATURE-----

--gl45kziyk33h7nnr--
