Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 809F63FFE46
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 12:37:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235162AbhICKiO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 06:38:14 -0400
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26]:33099 "EHLO
        wnew1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235190AbhICKiN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 06:38:13 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailnew.west.internal (Postfix) with ESMTP id 8E39E2B011F0;
        Fri,  3 Sep 2021 06:37:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Fri, 03 Sep 2021 06:37:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=92f0ToILxLd4qqC7uwuiv16lIYd
        cRF20nOyTcl2xBHY=; b=uqd2z0PK/3fEi+nR/cs8fCE/vKF6g+2s6A3ovsdxLeu
        lnHj2q551kmhSh4txQ0uqND9WI0AlQSynb+G8PNXJO2k5wRg06BwzoZWMWGxooQ8
        OAhJDtr48ZOZOpPRceKE53w7n1DwgMCsAGtteAy9vPVHbxuzwcnECU6REEN0lEy1
        6+wL4SicCG3pZVPbHVB8BTfcHl2qduhDrQb/T/fPIs1YlYOBucrSB33iTQRHF2Yt
        fSPUuWR9dvavC4Rr8Y+uasAHtOKV7xiXWq3/XfaXBkZ2qgrOAOZbkajPyKBeX/nn
        HuI6GX2QPBkKECePr26BoQJZrPjlz1/Xy4f0ashb9kA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=92f0To
        ILxLd4qqC7uwuiv16lIYdcRF20nOyTcl2xBHY=; b=vbkAuAeX3kSJLKJZ9Aebrv
        jFjdJzFujZanHKgba1OXh+4kCaio5VCQZUM1xB4T8tc6WLllUlRkJSrjnCzh9WKt
        SG+AuXL/VAanT+uxmAp+1oRmSHq9DlMzpfdvNxfyoMx9hfkOe80nfOzI8bE7LWLc
        iQ5QFz7U2BP00ttaE77k/ZyjSlKdXLMKXEnGIvDqW/i4L/A6UAZdazxXk0wqCP5z
        NXZMzl7zTEgFANAg+MNyFCjGfaHV4mBTOlWXSt1SaAj+VZREF3dSsLkaszK789VD
        +oUBpnNmLqSf08u9eAAVbShzNrY5wRmvNwxWMxZrFtPdraeuQ5paoO2QvW072sxw
        ==
X-ME-Sender: <xms:1foxYbsRGdURdXauFO1mA0UlRilNERl2oBfdlU0UvSUeOHyYwNNeaQ>
    <xme:1foxYceq9AsUd3pkUsDTLnlJj0HcHH6Sh23VEtX7hlFyy8QCtwGFzBuwnV3kIj9ZF
    dMNJw5-sqXGnTfUwSI>
X-ME-Received: <xmr:1foxYezYb-HzCojHZSe9AE8E_lkJ9to5TJvLzqMNnQ9LRqA5h4hmViadLVD32Xf9qC_wJgoRuFZXHv0f2cWy3TNbzz8tuxT_4Tsv>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvjedgvdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:1foxYaPQ9l9EC7rMyP1oI9beED63jwIqw8A4b1uKm4Y4G3NooF_hcw>
    <xmx:1foxYb8LEYhrABQIEOsLktUO4Xhjy4PBI8wvkbheim4F8a9hCh4DGw>
    <xmx:1foxYaU2yjYeG-ZG2HCYuOy7EQhLhorDLirNoJk0-_sCnC5-bI2w6Q>
    <xmx:1voxYc0LXjH3j21YzJCXtoz4QQ7cInCChNpg1ZMO5s7FJHHWZeydzGRD6Pc>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 3 Sep 2021 06:37:08 -0400 (EDT)
Date:   Fri, 3 Sep 2021 12:37:06 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        patches@opensource.cirrus.com, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/52] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210903103706.jhyn4ancyfr6bjcy@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-2-maxime@cerno.tech>
 <20210901143950.GE5976@sirena.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nn7t3ny4bscqmydq"
Content-Disposition: inline
In-Reply-To: <20210901143950.GE5976@sirena.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--nn7t3ny4bscqmydq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mark,

On Wed, Sep 01, 2021 at 03:39:50PM +0100, Mark Brown wrote:
> On Wed, Sep 01, 2021 at 11:18:01AM +0200, Maxime Ripard wrote:
> > Even though we had the wm8978 driver for some time and a number of
> > boards using it already, we never had a binding for it. Let's add it
> > based on what the driver expects and the boards are providing.
>=20
> What's the story with dependencies here?  I don't have a cover letter or
> anything and there seem to be a bunch of tangentially related patches in
> a series here.

There's no dependency, you can pick the ASoC patches safely

Maxime

--nn7t3ny4bscqmydq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTH60gAKCRDj7w1vZxhR
xUMgAP4qpnWTe63yyrkomVlN9dloDX9xwfM9GEQUIexQad/NFgEAsqbdW/DtCEBr
+apb+G1prVt3kAcIYdWWOnzqrMrKww4=
=a+YU
-----END PGP SIGNATURE-----

--nn7t3ny4bscqmydq--
