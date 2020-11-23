Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B7132C04E4
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 12:51:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729008AbgKWLtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 06:49:01 -0500
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:48655 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728976AbgKWLtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Nov 2020 06:49:01 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 198565C0108;
        Mon, 23 Nov 2020 06:49:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 23 Nov 2020 06:49:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=7fEeAt5jaIBkGz0PxqKjod4+IEj
        nl+A/hEHuItOpFqM=; b=W1RMP8F5qYqHnyr6uUk5tn59t6AQ76e+biBS9c1LALQ
        MpSTAtFC/rOqgGUSZrBfYsfVUnbuiT49xvy7TOII9cUJehtYfEXvLiYOgpZMrqSH
        SoS//zQEVJhmHpbNGepTdbwVstFL4WWRnMvo5BSxNJxen2d2UXTvCq2ZWOrxwduq
        vKZiMWYTkPSEaOcgkD7ou/hIfgcMZFmLCB6sfqj+yAktMbpfqYW+gQ+fU52JE2tU
        xBLF3OKbSzeW1PLgeskg5woXeh61xzelbhnVfb9Lyn6LZlqsPV2qN860DLt2Xs5v
        vfw4seEF7n2AhFoB57of6hKKNOP8pXLb8e0ZW3v5w8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7fEeAt
        5jaIBkGz0PxqKjod4+IEjnl+A/hEHuItOpFqM=; b=q2XVooJTczED9PFcoKls2G
        LnCaFthZ0NbrxllRcPTIzrofkFnhWa7ieZG2uofDWMcRH0B111uHiLqqxlP4/+Sw
        JBuxmCOHjwSmrs5Sq1/GMbVVUNuMmbNJfz4V1+fpobIoKPqKFAyHg4LI643mu/TJ
        w+chK5rkJWkPJKXO4GiNgi9u9AehTrv4c0rQG5R3tz/oaxp80db5AC3rflo54eCs
        BcnH0BUaWQeR1iqB4V/oho3ZNgXB6PN3AcUIo1kkCUQkbe74o0tHxpDJRwTADCL5
        fo3I1Lmo46Zt9rcVg8LlG/78SJaKPmfGGPoFsI2JWFMZxaXcZIkBba3TRMw/mkrQ
        ==
X-ME-Sender: <xms:qqG7X2UuUi9q7TWsLat9PxsO6SN-ZOZN3MO7ORre1AF6KGNAY3j4rQ>
    <xme:qqG7Xymbvp6yj3-ciNryDRDZJYJ5j1D4YVTtRHLTigJZMlqtN3dizT3_vFCoZpA6k
    D7etMOerTYeVbucd00>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudegiedgfeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qqG7X6Y-u2U6PHATdLkYJunVjHTAJKmmReMfQHFy7VTrtlADtqK4OA>
    <xmx:qqG7X9U87oQa5trAG7yV9TQ_iXX6iBzmkNDg5yNJXaMJSNRZZpDPrw>
    <xmx:qqG7XwkJt6rxcW1lNQRZX6063ehxpajvMWTn9Fw7mqcvkelep9uw6g>
    <xmx:rKG7XxBNEHgApxjZ1aq9Rc8R_22_rAx5jDOBEzDNKStv1h7cFuy4wQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 3177C3064AB3;
        Mon, 23 Nov 2020 06:48:58 -0500 (EST)
Date:   Mon, 23 Nov 2020 12:48:56 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@kernel.org>
Cc:     Jernej Skrabec <jernej.skrabec@siol.net>,
        Adam Sampson <ats@offog.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Andrew Lunn <andrew@lunn.ch>
Subject: Re: [linux-sunxi] Re: [PATCH] ARM: dts: sun7i: pcduino3-nano: enable
 RGMII RX/TX delay on PHY
Message-ID: <20201123114856.inde7dzom6o32bzv@gilmour>
References: <20201025140144.28693-1-ats@offog.org>
 <20201025163429.GH792004@lunn.ch>
 <CAGb2v66+nwg5_nNPbMOFapkM9jBpTddpqn=5N6be8rJAGNJ4Gw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yvjvsvrp4e6jyhcy"
Content-Disposition: inline
In-Reply-To: <CAGb2v66+nwg5_nNPbMOFapkM9jBpTddpqn=5N6be8rJAGNJ4Gw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--yvjvsvrp4e6jyhcy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 23, 2020 at 12:42:54PM +0800, Chen-Yu Tsai wrote:
> On Mon, Oct 26, 2020 at 12:34 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > On Sun, Oct 25, 2020 at 02:01:44PM +0000, Adam Sampson wrote:
> > > The RX/TX delays for the Ethernet PHY on the Linksprite pcDuino 3 Nano
> > > are configured in hardware, using resistors that are populated to pull
> > > the RTL8211E's RXDLY/TXDLY pins low or high as needed.
> > >
> > > phy-mode should be set to rgmii-id to reflect this. Previously it was
> > > set to rgmii, which used to work but now results in the delays being
> > > disabled again as a result of the bugfix in commit bbc4d71d6354 ("net:
> > > phy: realtek: fix rtl8211e rx/tx delay config").
> > >
> > > Tested on two pcDuino 3 Nano boards purchased in 2015. Without this f=
ix,
> > > Ethernet works unreliably on one board and doesn't work at all on the
> > > other.
> > >
> > > Fixes: 061035d456c9 ("ARM: dts: sun7i: Add dts file for pcDuino 3 Nan=
o board")
> > > Signed-off-by: Adam Sampson <ats@offog.org>
> >
> > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>=20
> Looks like none of the maintainers were listed in the recipients.
>=20
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Adam, can you resend that patch?

Maxime

--yvjvsvrp4e6jyhcy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX7uhqAAKCRDj7w1vZxhR
xf2KAP0bcBUwsAYopA6NLIhFw/9laKbPhLBSIQS++YlKxxMnnQEAidv1SVt9qvpy
TACBZy01g2RIuzocUu2Zhx9kJz9Vggg=
=E6WO
-----END PGP SIGNATURE-----

--yvjvsvrp4e6jyhcy--
