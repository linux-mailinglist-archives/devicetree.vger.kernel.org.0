Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 231A4401C7E
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:40:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241383AbhIFNl0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:41:26 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:43321 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233820AbhIFNl0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:41:26 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id F01293200942;
        Mon,  6 Sep 2021 09:40:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 06 Sep 2021 09:40:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=Umcke4JEo3n97ZvadALhTHCUBJj
        GNFl+SKHshB4qa8o=; b=CTEt4e3tLU/vW1zNCJoOD1eKd1Mk9Jh2hKKemDQ8QgO
        4L0ixP/q+0Jp6XLjQ7jGxVqsGF7u7ytVcRxt5jwB6f9hahFA6PxHVZ6itkfgCv0c
        6pUMZxDfZX6Lo4fyJ58dEQ+89sXr6bEZPFhbCE5dwPup6WK7wDPHNVK6NI3NJNc8
        u/KRS+O+m0V+qBL1LZoIokCicnOdpDXsS/mXD3o7Lp7u+kmaMPI/c0+M7DqG66gn
        3Ka+QTqnXpIc6YjNLIheohzNshIUyTsTT6SXZuH4W+xcF35EUOKrYdnyiCpNnJkm
        Ttn1sxOmRii2g5OZiEUcad/igLNA5px6yN4tfgFnZqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Umcke4
        JEo3n97ZvadALhTHCUBJjGNFl+SKHshB4qa8o=; b=oLwF5hNtYgDU8FLbnAt5qu
        eniqxv50jeaJpcoyhn0e4kOsQqULrBFp5PsU2WYwomNOyyg13cjHBtRJ7JBXu+RW
        ervNslcpjTIDSRkp/EwAudNYbq5edf6vObZLtM89uoVkmRVFNrjf2GlzNuQz6Cqv
        3klv1GMecfBaKqZy1mXENFJVs9z5Guh4x1N3tnqQObx4fIsoVEs7shWs9ErNhq/A
        P9u84hcMlL/X8hohBYurALGcAcNpjZ7lCBA07p3ifG82NhKJhgKbDKnmPuSlXaXz
        UZFhHxVYCSc63uG1X4+x+C1ol81ax18mQzDxYFn8VBOiRLRxaDxTvZ5/a0SqO5fQ
        ==
X-ME-Sender: <xms:RBo2YfzIWGWrP4c8HmZzcmRL8Hcx0dXltBMabTIqdXB3wGi_eAX4aQ>
    <xme:RBo2YXQXpgNLOv0G9oVEephmA-N7chyDl1qhuniQuqCWBuWdAOX8ZzJQj3O_ARhTA
    I2eMBbRaA9NOko_I5w>
X-ME-Received: <xmr:RBo2YZWMGvUwGebddysSmnr1GvhDGg9QTVAL8lbULZK4Vuv5fCX7bO5_LsCwTipMErCZb4p_hMmutPgHysHLs2Xvsmt_BjMmIIMS>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepgeenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:RBo2YZgl20rjZ0N-3FVTHY1trI7mRt0E-nDxI8DvwmEgbPpvEmeQ_A>
    <xmx:RBo2YRBWeXeBDtgh47h15gqMsCSk21GLkCalytTUr9RUV-Q1uYEICA>
    <xmx:RBo2YSKhoplartyhj816QpGdIbf_DLSJ-uXvH9JBEFAMoLkWiMnVkw>
    <xmx:RBo2YU4jVdUc5_xTaQLfsaBF2IQ1vjcM-yyOIlEM5-9XuJBL2uloEw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:40:20 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:40:19 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 48/52] arm64: dts: allwinner: h6: Fix de3 parent
 clocks ordering
Message-ID: <20210906134019.mzm5pz7cika37npg@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-49-maxime@cerno.tech>
 <2044793.L55KqCCc06@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yykqd5v2axgcob2m"
Content-Disposition: inline
In-Reply-To: <2044793.L55KqCCc06@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--yykqd5v2axgcob2m
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:13:25PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:48 CEST je Maxime Ripard napisal(a=
):
> > While it doesn't really matter from a functional point of view in this
> > driver's case, it's usually a good practice to list the clocks in a
> > driver in the same driver across all its users.
> >=20
> > The H6 is using the inverse order than all the other users, so let's
> > make it consistent.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--yykqd5v2axgcob2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYaQwAKCRDj7w1vZxhR
xXrhAP9nS+ze16Oa9RH2AJCywoaOsbqWp5SbJJKYM+2xUg/SCwEAuHlwdA2HWixn
ej05yG9/rgjl1j91sjOQxVkcWq8Aiw8=
=I8k5
-----END PGP SIGNATURE-----

--yykqd5v2axgcob2m--
