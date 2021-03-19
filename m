Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1E46341E06
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 14:21:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbhCSNVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 09:21:01 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:49027 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229914AbhCSNU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Mar 2021 09:20:59 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 1297E5C0058;
        Fri, 19 Mar 2021 09:20:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Fri, 19 Mar 2021 09:20:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=ksDPQUXeM9U98hCEjxuinON746W
        wfuMCxW5XRIaE9Ss=; b=AFG+rrDDUo2f64lK8UEsY3SiaIFInKU25/Jv4UpFI1x
        cycwqi/CVtpZcaGxTnbVzpT8RMPCx+0NQQ4sHXgz2psyopPFNgHOCh4sDTTwI2iW
        huPtH50heiUX4fv2w7u+YIM+BeV0zZVnqvICB4ciOk4Of1mywyfKbyCV6wGYltyZ
        /PU4vbTyeyrcbV8fKmJxcvTTy1Wjm77t/xeVZYWpnGlKLi3Tys4sPAdG5ZsZsDNp
        5HV5HScEyKrKjR5nsJxPOXchWLpVYrUcTjfGraJyMa4iNIPQeL0bkrg6DJiWh0eZ
        T35dLH3TN8Bw7lZKvE+mt299HWFyqzABLaQaawZ5qpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ksDPQU
        XeM9U98hCEjxuinON746WwfuMCxW5XRIaE9Ss=; b=lAZpUbn3r+lz3uLNSLcHKS
        35BzIRKcJJ+nvgTxjCMLg5MvWZfflXzMXrspXxhQ2Ic+mqRZDbMgfUcIBQ+7WHRr
        qUspgu4nXOzIHC/A44bAy9lpPRh+KuJ+mByKcXZ16eLo4ZgaVE4pFv2Yt84bTPta
        BEOUaLWtzWw/OuEI6u98jC918FpaYe3YOrUJiEcervZw9dhwGOCID/65lmUMLHgU
        DX7WHC0bu+XL/SmQ1NNp4B/M5XRbzNKmWOOjQbQkaK5nfluGOUu5I2FYZAC0HPST
        FAbIE//h+FB2cPnrPwIGQzC3J4aWiq/wFCZavU2MgcB77Wd6V0060UutWV0h7qaw
        ==
X-ME-Sender: <xms:OaVUYPypT9VXZ2y1F8hqw95KXXHk2TAVuR6oaZaucJFL8R13rtQFGA>
    <xme:OaVUYHNJaQoIkkkDh0StcRcZFAz4sjXJD_jSgRyzrJ9Tj0H56oFWa1naCkMIEaanS
    V0eA0ebsmJqeD2c6Bc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefkedghedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:OaVUYGON-hc3IX_doZKSnuLtGpdnB-D0sgPZLORKL_WWGbUeY6mhaQ>
    <xmx:OaVUYBQSpEMfTI-u_zs0ZdA4QSAx3vaVRTYTaIyyXn9hai4ovxhI7A>
    <xmx:OaVUYAC0iEYRfGBFixbfWuW3vhcWzOERvrg7KkBY7xeiCWv9aByyeA>
    <xmx:O6VUYAG0t2qt2Ngz6HZu3AFIb6fY_Gyp6USTYegSw9xpAz1hGtAqyg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 87F141080066;
        Fri, 19 Mar 2021 09:20:57 -0400 (EDT)
Date:   Fri, 19 Mar 2021 14:20:55 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: Re: [PATCH] arm64: dts: allwinner: Fix SD card CD GPIO for SOPine
 systems
Message-ID: <20210319132055.5vsdg5hlz4g6iui4@gilmour>
References: <20210316144219.5973-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="az5wrjp7vcwyuwa6"
Content-Disposition: inline
In-Reply-To: <20210316144219.5973-1-andre.przywara@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--az5wrjp7vcwyuwa6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 16, 2021 at 02:42:19PM +0000, Andre Przywara wrote:
> Commit 941432d00768 ("arm64: dts: allwinner: Drop non-removable from
> SoPine/LTS SD card") enabled the card detect GPIO for the SOPine module,
> along the way with the Pine64-LTS, which share the same base .dtsi.
>=20
> However while both boards indeed have a working CD GPIO on PF6, the
> polarity is different: the SOPine modules uses a "push-pull" socket,
> which has an active-high switch, while the Pine64-LTS use the more
> traditional push-push socket and the common active-low switch.
>=20
> Fix the polarity in the sopine.dtsi, and overwrite it in the LTS
> board .dts, to make the SD card work again on systems using SOPine
> modules.
>=20
> Fixes: 941432d00768 ("arm64: dts: allwinner: Drop non-removable from SoPi=
ne/LTS SD card")
> Reported-by: Ashley <contact@victorianfox.com>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks

Maxime

--az5wrjp7vcwyuwa6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYFSlNwAKCRDj7w1vZxhR
xWhmAQDZ3v68wp4jr/FoX/igiDajIaOBuEk8eqJBolKCpwFQIwEAjuZ5d16UAyqP
0hGeQnnUbztD7tohlu6hWzYon3eBugQ=
=aq3+
-----END PGP SIGNATURE-----

--az5wrjp7vcwyuwa6--
