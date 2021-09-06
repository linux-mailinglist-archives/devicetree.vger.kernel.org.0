Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95FA0401C62
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:37:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242598AbhIFNhW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:37:22 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:51821 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242564AbhIFNhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:37:22 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 0F96A32000F9;
        Mon,  6 Sep 2021 09:36:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 06 Sep 2021 09:36:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=hQ5PFK5bIFLNrGqB3/frDmr1eJL
        dCdn+8hvD1nV9qvQ=; b=wSShQbwiB8qXGhllohUkuXQhrM620+Hzy/Xo88VTfNx
        djzYCcM1JRh56Gv/aQH7UjH9MSF37KCEZLzuzA3+7AD9wy3WOJ6ufHdbPjX9T4It
        FnCS7Xhry0ilYLU+QyJPrncNCdZloqsgQv7kITP6bSFPGlE3F9TVZF7VnLl+ZYQi
        9bK+ZJl9Ei9SgGdcGkwYFWM6dIq51N3EXRPc8O7p++6ITE6+GGQOTAr0LqSPXK9g
        mBFrOT/JZ3TGYCcxm8ba8jX5fZEBO5rYQ58DAuvbcotE4Nzgtscaq+b/HsiaxZju
        fi8KxL/dUzFfDGJw6I/GZ/lj8WvRJ6ykrPWx6cuwSew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=hQ5PFK
        5bIFLNrGqB3/frDmr1eJLdCdn+8hvD1nV9qvQ=; b=j/ZJ4tD3d+0MzmJovEIGo4
        GygMPfu71xTr8hjlM9zw41Cp6JdqjMudKc5yQ8WFnUX+7uqO8jDtzGYxSzAZbxnx
        NoGLEXjyWwbzS5Uvr6dlfZtPdgc2xb0j7MdapyLj6V7HXT8VJB6LTUkuKHCp4o7e
        0hnB+AirGsmc7WLcY/o2kqi+fFTqC3Z+HRqylzmeLZ9WOb5lv/tU7A01nhQ0Wso7
        /EY2l3NcxcXEgXWrvOsvbx2I9b3VtIdbOkP5T5jBdzq3Pq1OfhkC8HxJH/el0Yg8
        w4xqXhFmsjgibkeFYKikjXFr4PMUsEK3NpiwJTz8E62skHcWDex6au5uOrR7erOw
        ==
X-ME-Sender: <xms:UBk2YTycMPDjL2wI3Jsw68M8SLkW2nPSFrfrbrPe9GiSk4-24SaQaA>
    <xme:UBk2YbSJVkjTY28aNU21gFiTylEM2WXDO0a0LqcVhSW7pkd48okwRNGA12L2nEBaa
    b39oTm3d0qWA3csJac>
X-ME-Received: <xmr:UBk2YdWx4I08pttjjmkh9NgeIDrPu5DXL_bCG5A_JE2RnOXl3_zVtNdKOznTDcLnExjGIWT0xo7EyXqOH-e0-kqD3GvvKcYnxXOA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:UBk2YdiBsDPU24m4J6fxuKAlogsaLXWV9VaKp78nCF6IGAV0v9W0gw>
    <xmx:UBk2YVAdM9Z-lxqvDKBAsdLILeM8mskIFIa6E8PDyoHF-tK-BLGD9g>
    <xmx:UBk2YWL3vwZC9JBS-SM8I0KeHnaWcNBYMca2z9omWeWyFGln-ISr_Q>
    <xmx:UBk2YX2ILVSxlgCPIedXl5y1OzIRwG30dBuqffw2fRPjyu6IrS-SZA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:36:16 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:36:13 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 35/52] dt-bindings: sunxi: Add Allwinner A80 PRCM
 Binding
Message-ID: <20210906133613.3ougu5t5b5norqe2@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-36-maxime@cerno.tech>
 <2285228.JHccdbRnrP@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3eap2buodc6jrd2w"
Content-Disposition: inline
In-Reply-To: <2285228.JHccdbRnrP@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3eap2buodc6jrd2w
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:01:17PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:35 CEST je Maxime Ripard napisal(a=
):
> > Even though we've used the A80 PRCM driver for some time and a number of
> > boards using it already, we never had a binding for it. Let's add it
> > based on what the driver expects and the boards are providing.
> >=20
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--3eap2buodc6jrd2w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZTQAKCRDj7w1vZxhR
xQEJAPsEErQEKN5pGom9a2MobBvXaIAuN42nV7ZOurZhyOPhZgEAyy/uswrucFj+
Dy1iFoyPjSt5GNR4I2Mcx9yuvURDMgc=
=TTGT
-----END PGP SIGNATURE-----

--3eap2buodc6jrd2w--
