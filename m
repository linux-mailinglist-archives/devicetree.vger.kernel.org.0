Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 140122C296E
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 15:25:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388078AbgKXOYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 09:24:46 -0500
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:58395 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731656AbgKXOYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 24 Nov 2020 09:24:45 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 68A9E5C016A;
        Tue, 24 Nov 2020 09:24:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 24 Nov 2020 09:24:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=amK/fRNowsZOlWEpmhXvskIVnp6
        qpElgGaBED3fXCC8=; b=a0hcErUV9yHLtGPqR1BuKJJgcwEw2LbjHhcnKKh08ga
        gF44gaP1SZF6GJFIdpkkZARnyFBiXeblTYVXCpJ0dWP0EIBY9w8o5oM2KDma1PGl
        zeOU1SHYaoQymR5a6U8lmttodxf7ZOQiCvFsZYCD4qGJ/4kLNut+yIeE1aVD0/kS
        RkyjMaD089DfqEG/xfqb7OpXfBqS+UzRlQVk95y1IY62Lf4squGD4VYSd2vBZdfH
        R91umr2NRh7exKedpe9KcFqGdGW5gV6VSCPbv2D6wnkL7Q7sdWds6nlPf1Pyqlp+
        vBOXD3aB7de8tdqWZaJgLvR/jU0oBPVAHWlVYBeVWEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=amK/fR
        NowsZOlWEpmhXvskIVnp6qpElgGaBED3fXCC8=; b=D6V0rWIKcxdSGU41qQXLaD
        9ucEBsRnqToBA2MekNH7zA22Mq8B+b3xyf1Hm0zfxZmEu6tYR0Gf7pAD+y2g9wJK
        EoO97OEv1QwuCWQfbR/2Tf3+HJyHbKQg0GPw/JjwVUGg6MaAemBtN+2JTNNjMY3m
        NAlY6mdhgxJ9iS6Vy6T5dTaAO6DBwUR/HPxWdGorURjp/kVWiVn0QwZ0WVhL4COf
        8hBDuS6bBwpHsrpo3dN8xw11Uv7AxNjSeNJxEjgwjtv6jPN5A+lWIqab0vZNtg3Y
        lp/7qLQiOcm3qrT/HROsx7bc0irFeYPdcPzW8bFs6414NsTEd7Y88xq+0JDcVzZQ
        ==
X-ME-Sender: <xms:qhe9X7SXNebOCwJ1vM0XC6OADYr9M6XXFmclxt7oMICA54gdl8glFA>
    <xme:qhe9X8xrA2UndGz3ELdoMPpYpnqL6ZYxtGuMqf_U0K7C5al_DUC16BZCNHSuWdW_M
    Q26ijYLa5i6AhAmQAk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudegkedgieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qhe9Xw2GvlQKNRJJlBfkiFdBf0RdbVYPpaqveXmVGW7XpXrlhswoHQ>
    <xmx:qhe9X7AtbmBi5Vc6w8mHqg7pc_FEkDukMJr_AWN1U8Dv3I30b5hfeA>
    <xmx:qhe9X0hYeQaupQXPuJvr9YOqOnsbqEWbollJ4sGL43haT8eN3TQo4A>
    <xmx:rBe9X-YvTXIioip5sSflep16_vecR63Kb80MkUk6jXzR9vIvt8XCZQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 861B7328005A;
        Tue, 24 Nov 2020 09:24:42 -0500 (EST)
Date:   Tue, 24 Nov 2020 15:24:40 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Adam Sampson <ats@offog.org>
Cc:     Chen-Yu Tsai <wens@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Andrew Lunn <andrew@lunn.ch>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] ARM: dts: sun7i: pcduino3-nano: enable RGMII RX/TX delay
 on PHY
Message-ID: <20201124142440.5ott772bz5f4ieln@gilmour>
References: <20201123174739.6809-1-ats@offog.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="amx2spjg4vkfvkzb"
Content-Disposition: inline
In-Reply-To: <20201123174739.6809-1-ats@offog.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--amx2spjg4vkfvkzb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 23, 2020 at 05:47:39PM +0000, Adam Sampson wrote:
> The RX/TX delays for the Ethernet PHY on the Linksprite pcDuino 3 Nano
> are configured in hardware, using resistors that are populated to pull
> the RTL8211E's RXDLY/TXDLY pins low or high as needed.
>=20
> phy-mode should be set to rgmii-id to reflect this. Previously it was
> set to rgmii, which used to work but now results in the delays being
> disabled again as a result of the bugfix in commit bbc4d71d6354 ("net:
> phy: realtek: fix rtl8211e rx/tx delay config").
>=20
> Tested on two pcDuino 3 Nano boards purchased in 2015. Without this fix,
> Ethernet works unreliably on one board and doesn't work at all on the
> other.
>=20
> Fixes: 061035d456c9 ("ARM: dts: sun7i: Add dts file for pcDuino 3 Nano bo=
ard")
> Signed-off-by: Adam Sampson <ats@offog.org>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks
Maxime

--amx2spjg4vkfvkzb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX70XqAAKCRDj7w1vZxhR
xXFZAQDePWHoGN3twKUypUJIM5ddHcYFdu+hUA08KzRBvzMAgQD/RW8gsj7GbYpp
s7icpunZaT+dY2RszaHINx0mxNDKeAg=
=/B08
-----END PGP SIGNATURE-----

--amx2spjg4vkfvkzb--
