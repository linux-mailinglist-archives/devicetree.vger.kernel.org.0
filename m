Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 964CD2F608B
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:52:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726259AbhANLw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:52:29 -0500
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:47711 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725982AbhANLw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:52:29 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id AC9785C0178;
        Thu, 14 Jan 2021 06:51:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 14 Jan 2021 06:51:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=VcK6J8P/fXbcexC7SdXVyi4nwGU
        pUf6p7OrEId/vSgk=; b=mH4NSc03Ho8LAPtfTrIyTSlg3WnhUccuhb32OT7hTtH
        fX2GcvXxmbRHCx3DYIeyHsw8x/8Fj+1sKpJ3AqAC26de+MeGdT0UsUTYcXgU5uqt
        J0ou0ghOqTv2QLLO5ZmLtgLqvdfjo2t9aI+7kvQdXTDzmTDXrvSGMdesrz37C8FS
        +2amCAP+61C7m5qSOjZ31FsvrOcE+DGzOfiPowuGuMNXW51/zBHgLAqaSTcAMT0u
        13NsMY3MQF88orGnGCDgJjH5aQJk7rfiFFI03CSC/vGOw/EzWuGXnG7ivWuw0xi5
        tWbFjwA5Tv17j8FHkcpL6aRqwxQ4+C2dGmpW0gSof6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=VcK6J8
        P/fXbcexC7SdXVyi4nwGUpUf6p7OrEId/vSgk=; b=qnhAHx0hpF/o1Yt15OSFrg
        ZLr4wnGC7PV3tHoJqOXV8kP8/jtFQwy3drA4WfNNAAv86XxnYNTZbd/kJ8BKuqVg
        aq6ZVtntotowiLJD7OErTG+aUQmM9zNcQbjJ+4K/aKJfq1j0OJb7xgEQNAzrl+zM
        0+fNpQhnx6sgucyGqAPIe2Y3tIEDRTMk7Mt2V9SBEE4ItmsFUN6mOAGkEcpPikfj
        ey9vggOnkLvMHQqrGFybtFRWLD8YcCHp29nZjxM4YBYvcd7bKZtYk93d7LILe1k2
        4v+ylsvbtbP+QT8Lo0x2VAa8jlhS4r0O+IGAaF/S80uLZD1elCbdM6fWS578ECbA
        ==
X-ME-Sender: <xms:ODAAYA5z7t_rOfd8fjO4kY3X19ojAUpTzwCdaaTDoPnWR9lxPSq2kw>
    <xme:ODAAYB6twxBWbSaHM3PfAFSdurec6WnIUhxGMLGv9uiK18u378_i4u1wWy99P9Xgj
    xhpzKbNPaWRX9Wl3Vo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ODAAYPcB4oOnkQKV3w8qqCjxApzpZ8--ha7t1isu1De8srOCcMq5lw>
    <xmx:ODAAYFIslnsonnqMKmNeG0u1hJq4GP6xCyvGJ5XciCyJbo5wsYTSWg>
    <xmx:ODAAYEJPnr6xANG6Ix6p_IE9jispKC_AfI3YxOmFtSl3Hl1oECMf-Q>
    <xmx:OjAAYNq6Cm0nPMTlOPj-_TLVL9rngKSQUV7BeZo0z3v0kiV32ZZjSw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 9390524005D;
        Thu, 14 Jan 2021 06:51:20 -0500 (EST)
Date:   Thu, 14 Jan 2021 12:51:18 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Icenowy Zheng <icenowy@aosc.io>,
        Emmanuel Vadot <manu@bidouilliste.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 0/8] arm64: dts: allwinner: Various DT fixes
Message-ID: <20210114115118.522bza2gr77535jl@gilmour>
References: <20210113152630.28810-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="agvfapdkpp6vo5tv"
Content-Disposition: inline
In-Reply-To: <20210113152630.28810-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--agvfapdkpp6vo5tv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 13, 2021 at 03:26:22PM +0000, Andre Przywara wrote:
> Hi,
>=20
> small update, mostly adding Fixes: tags.
> Patch 1/7 has been split up to cover A64 and H6 separately.
>=20
> I tried to reach out to people with Pine64-LTS boards to clarify on
> the blue LED, as it seems like production boards are spread thinly
> across developers. We got confirmation from several people with
> several board revisions that this LED works and is indeed blue.
>=20
> I also double checked on the CD pin situation on the two SoPine SOMs
> I have, and could confirm their functionality.
>=20
> Rebased on top of sunxi/dt-for-5.12.
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> a collection of DT fixes I gathered over time:
>=20
> - Adding usbphy references to [EO]HCI0 nodes (A64, H6)
> - Adding Pine64-LTS status LED
> - Dropping non-removable from SoPine/Pine64-LTS SD card
> - Enabling HS200 @ 150 MHz on Pine H64 (H6)
> - Enabling HS200 @ 150 MHz on Pine64-LTS
>=20
> For details please see the individual patches!

Applied the series (with the fix mentionned in patch 3)

Thanks!
Maxime

--agvfapdkpp6vo5tv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAAwNgAKCRDj7w1vZxhR
xTXNAQCYxgfIwslJTO/XQOLAWI00aWzHPZWYjTE+EHxEVEXcaQEA41t08LGpHGZo
n0qx1fllXvtRrMs+13i8z5q5FqtzrwI=
=tXdc
-----END PGP SIGNATURE-----

--agvfapdkpp6vo5tv--
