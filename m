Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DFFC72D9635
	for <lists+devicetree@lfdr.de>; Mon, 14 Dec 2020 11:19:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727215AbgLNKSi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Dec 2020 05:18:38 -0500
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:37251 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727200AbgLNKSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Dec 2020 05:18:38 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 8D88B5C0152;
        Mon, 14 Dec 2020 05:17:32 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 14 Dec 2020 05:17:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=ZhhzqW9pWEM6d6BEhB/y6i8P0um
        zrVkqu81jk0LYZew=; b=rdUZrA0KD3OMjqsiFNfTqvE4QQ+RC7w3+gGowl9YIVm
        Xz9A+CXf3HFXB7LqDVuQ/nrqsCLk5QfAfnF9KC5rSLFF/YAuzpUQHQSzBtjWHL6H
        8TM9WZcRyTMw5aPIWAETmGQx4uuh1lpuZcwLhDVKIEg2Oq8KEb1QSG1Vy2zEKu9U
        FIdXRfolTar4d4FSxGESFBwPDtAWYyFr4km8V2cQXoRrXu+jdVF7/NnIzuOkh4MY
        Oe20z7E0lcJqei1A5laT60nFM4kxVlXnuBqMnL4ZO5FdmBUJhoVOjBYoFl4bo/m7
        u9l/r/tOAyTdtqc/vR2Vps8PPZIDy6Coo0Mx7FZVUmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ZhhzqW
        9pWEM6d6BEhB/y6i8P0umzrVkqu81jk0LYZew=; b=jVLaRRJWFPaR0POwfmDwkO
        z+9fwQFTXS4tknSEM0tSUANv/qbHBLMn+bI+YVDrHd75n5x+6kWzaXJ5eG3SKinN
        Xf5Li2Q1+ZoEXNpfokqOGlaFyu25Z/Rhd/p59j8byTDozUaUrlNizQ65kpWn8TWh
        XiT9NNioOpzMAtrhor8UZ55vhv9PRxElWP7KVIz1vtsqXoLRtxmgF5k8MonsZpfL
        xf1IHiIq/zps7+2MF+rVUB/FuS1AP3wbN5k7ZPS+BkrTdVWBcmwyVIB2DwXfsAhv
        x4SJ5jX0nui9ha7q1PILeCs9X7KehNK11ujpuCeEbMxdpK6Hq+55g/iD+qJrH+xA
        ==
X-ME-Sender: <xms:uzvXX_N1xKtHxBHqjw_JoPNZuITInUdmOV7fEy_9KUQyYcZEMnz6AA>
    <xme:uzvXX5-mmGJopYMkqiV8MzAk-mCvVTthoCTx5nU-Faq5EemFT23e4eiif16hi2g3t
    3mXdur9qmOlk4YO3Kc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudekkedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuddvudfhkeekhefgffetffelgffftdehffduffegveetffehueeivddvjedv
    gfevnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:uzvXX-QjppQtodDJI-j2E5Ij6CgPOu2IlRG-mVQ1Al_tp4SpQyJItg>
    <xmx:uzvXXzuMD6KqqY45QuoUg0V29Oc-_yCcT5jD05o_vzbbN7inGJvMmg>
    <xmx:uzvXX3d7Q6WbEiSB9xtXtJgD-e3Jtf7FR2nS8-ycqKiEbsjVBZF2kg>
    <xmx:vDvXX3lZ9k3rfvn30l9FcCsuASX1O6V09ILXuS_c_aYB9-EqaJPLng>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 908FC1080057;
        Mon, 14 Dec 2020 05:17:31 -0500 (EST)
Date:   Mon, 14 Dec 2020 11:17:30 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Pavel =?utf-8?B?TMO2Ymw=?= <pavel@loebl.cz>
Cc:     devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] ARM: dts: sun8i: h2+: add support for Banana Pi P2 Zero
 board
Message-ID: <20201214101730.ye5566a45gopxm7w@gilmour>
References: <20201212111429.286721-1-pavel@loebl.cz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="djstr6rbgzoa2kp4"
Content-Disposition: inline
In-Reply-To: <20201212111429.286721-1-pavel@loebl.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--djstr6rbgzoa2kp4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Dec 12, 2020 at 12:14:29PM +0100, Pavel L=F6bl wrote:
> Banana Pi P2 Zero is H2+-based board by Sinovoip internally
> similar to Banana Pi M2 Zero.
>=20
> It features:
> - Allwinner H2+, Quad-core Cortex-A7
> - 512MB DDR3 SDRAM
> - 8G eMMC flash
> - MicroSD card slot
> - 100M LAN
> - WiFi (AP6212) & Bluetooth onboard (SDIO + UART)
> - Micro USB OTG port
> - Micro USB connector (power only)
> - Mini HDMI
> - 40 PIN GPIO includes UART, SPI, I2C, IO etc.
> - GPIO-connected key and LED
> - CSI connector
> - IEEE 802.3af PoE standard PoE module support (optional)

Please send this to the proper recipients (get_maintainers.pl will help)

Maxime

--djstr6rbgzoa2kp4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCX9c7ugAKCRDj7w1vZxhR
xS6yAPoC+251u39OI8ZmHHP9XDQhfIRYoQJvDwd9Ps9L/AiF5wD9Fh1dBn/GedqF
hpmVS3DNWAsWHqu7RuDFN2lRhTHMvwM=
=GSZH
-----END PGP SIGNATURE-----

--djstr6rbgzoa2kp4--
