Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 795F9401C75
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 15:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242199AbhIFNjJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 09:39:09 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:51963 "EHLO
        wout1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242129AbhIFNjI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 09:39:08 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id 556783200942;
        Mon,  6 Sep 2021 09:38:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Mon, 06 Sep 2021 09:38:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=A+7kjlzxclhzPFFqhCOI/OCajTB
        M2hieFNCFaa7kIEU=; b=jpXP+0Ar2cfRWVl/qgAzS98Rp7Ym3o72V7PKlJko+qJ
        0rw6/U09BLbGfuwq3z7ACcZx4RSc293a4PX4diPrmN37FJq7vp3NT+JFH3OE8IEI
        xpF3uMmf8eVoJFYXPInYMLXoLtnMFAPf4s/gUzyzFLtDU7akGsufhXKHAEY2ZrRY
        qFSzUO13aLR755eid/lbcBi4Hz3Krd4DIHM4s9ScwQj70T5JAxSuw/LN5I1ABCDc
        9ghqjSBdzkNiNKiHnD0Ye0s8SvPQz/U0j0wout36QprcStpbvIwesYo0iDIQHDzi
        zXjabuoIl0ybpfqWTlzdIj2GLK7xszs1RSUjcwOkMmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=A+7kjl
        zxclhzPFFqhCOI/OCajTBM2hieFNCFaa7kIEU=; b=JpoqPNE2ErOjXsJiF53cGt
        PlgEXpImtzVFTkeu4h15E9/ti0zmE1dgPgfN9oYQcyG7H52ZLubMQTFzXGogPIfo
        lRam3sMcbD9bJN2K9/vKhHRYHwUDbrcDTe59RT2ooOqESXt/vySbmNbRtJJf4jXV
        Qp/GN4eiSHHd9ff5qoVcpBIjxjVmNaKK9mfSIzC7w/Q0O2zT2slnYl29RZF0fOUr
        xKsf2VuY26ZNWqJqU3dRfHw3jrVT0uZ79qEShpHcBYjmO0aevlq+ByCn/6KcVKta
        vOyyiPcV6kUiiHs6RSE7+7v3luIH8Np8cjz/XKVA89esAfCn7H9pP+25wOyA3fcw
        ==
X-ME-Sender: <xms:uhk2YX2YeKHnMzzNzXHKRMEkKL9GWgvHGpe1KpO9N3MT1wxHvqg8ZA>
    <xme:uhk2YWFXi1pT4XjYUrCUrQZVMiCa2-XRRvVc8jufoTMe4JAOSnKvIASNeVGl3ZwiS
    N3NrTSMzMh2XTw1zkw>
X-ME-Received: <xmr:uhk2YX6yoWAqnrh8s7Ivx4YpZYlRQAaoHiZizqAMxe1OSHhuLjcBYWXoJIVxy1-9bZjp2Joy7pm-cKZpggfRHkl-zEQq7lsWInP1>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudeffedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepuedtgfejueduheevgfevvdettdduleffgfffkeeltdffkeegudekjeeuveei
    gedunecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:uhk2Yc2fQYCJUZ98PXRbOGoZYMKTRGa4IQCqQvP5AZslDw1aBWZHmw>
    <xmx:uhk2YaH8wuTK80VcKa3TycTOYGg-oLaZUoj_RgDfnTfgrRJXCpvQlQ>
    <xmx:uhk2Yd_SUJlI_AKwT1uv24YNOOhsZIrfKqdl5c715avE8QWjuZDQoQ>
    <xmx:uhk2YXOX1aS6ZGWSVZdMc59A1KOIeNmk-ZWR0wFuEuIh3Jc3eDic_g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Sep 2021 09:38:02 -0400 (EDT)
Date:   Mon, 6 Sep 2021 15:38:01 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 42/52] ARM: dts: sunxi: Fix OPPs node name
Message-ID: <20210906133801.ao2jqa7q7v27ygvt@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-43-maxime@cerno.tech>
 <1958923.BEphW5xq3y@kista>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3hkfk4ptatxno6rw"
Content-Disposition: inline
In-Reply-To: <1958923.BEphW5xq3y@kista>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--3hkfk4ptatxno6rw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 05, 2021 at 11:05:58PM +0200, Jernej =C5=A0krabec wrote:
> Dne sreda, 01. september 2021 ob 11:18:42 CEST je Maxime Ripard napisal(a=
):
> > The operating-points-v2 nodes are named inconsistently, but mostly
> > either opp_table0 or gpu-opp-table.  However, the underscore is an
> > invalid character for a node name and the thermal zone binding
> > explicitly requires that zones are called opp-table-*. Let's fix it.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Applied, thanks
Maxime

--3hkfk4ptatxno6rw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYTYZuQAKCRDj7w1vZxhR
xeKIAQCr8u1F8Sb27cokItioF43bKePUjBMDa6dmGo8cGkf9+wD/V79uoQUW6Iaj
luvras6eP9CC66X751KZdb90o5REog8=
=OUar
-----END PGP SIGNATURE-----

--3hkfk4ptatxno6rw--
