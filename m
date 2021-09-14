Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EA0B40A727
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 09:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240644AbhINHNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 03:13:31 -0400
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:44409 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240629AbhINHNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 03:13:30 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id BA352320099A;
        Tue, 14 Sep 2021 03:12:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Tue, 14 Sep 2021 03:12:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=Fc6wkN2zuzHVhgeAS+AnQDchtXL
        n7np9D/B8joAceZA=; b=1HvlhRvHiV1DncHz2xFtaIt2nDYnbvpDPm6K/sOT16N
        RBN5exLyHncGrjA/W57eHssYlCIerkvUjM21YO0EyjSDJHrThrhTyZmgOLiirgC/
        fU19f0sp9SKzi0TOwemApTPPfflen4lhiomFMhyGM4b8lbCg99T/sehPlA1lYIUt
        vefa8K54tg2efJbxObqoCqZMAMPrt2BicMoI0fwMo+ss4n1/TYKx2LrtU0qpJCCY
        EULysB4hbiG1nnMN2CJU6ifmTYjYEv7bzZE1GKWlzW4sLp324THsUoLqxCrPVfTo
        6FFeXr0je2FvCcsV8BEPzUQMxpy2bNEj1lMcg0cZkMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Fc6wkN
        2zuzHVhgeAS+AnQDchtXLn7np9D/B8joAceZA=; b=Ih6IbOoGjTZIl/40almB8r
        4vQzgO+djCZmBMdailQZCMxlh4y2MnmOE7uSKexuqLeiPeI5zH0VDPAQNq8sEPUY
        XKSr8q0ubhADRqmyrPk1udmYOAuwluTGyMDEYM5ms3pl84imj4qdB+NjmH2vrjoc
        S5Mhmv52SzQPKNv4JzF7wuof/nNt66hL7FsCG3ewjJgbM6+LZ1KNwXrWQmxkjfOQ
        zJHQrYCr6upvUkog1qJ6QB/4tF70D7JTnAagvY9Vi84GCBzABW6l30TjluQiGJu7
        AUeVpMFHdtnMX09gaaqPKYrdpb0JH1vu3NwR/U1Cu/3zaooxhqNURZMyhPtXv8gA
        ==
X-ME-Sender: <xms:SktAYRQweFanL_37CSagnj_I6_pEb6xXeZrRZy9Zkk51PYIEFRlP1A>
    <xme:SktAYayMxL47ubk8OjyM-XcOaFLAQl_jhTAGbXC8JKkcEAOQS2J5jkYliSetzcphe
    tgL90ZJ3EyvvVuQsxU>
X-ME-Received: <xmr:SktAYW3FAp5pZ6QuzwG725OTGoFndYGbwv5WAyikqyqw8WZNsb25xvGEQXX9OAQMLVaiWayFzzlRrmli2-nkiIKIO1HUjhjdChbT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudegkedguddugecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
    heegudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SktAYZBp7Y_IMMc_4SyaSlY6qmP0mbrRkUVqt9myWNOs5CaLnog8hw>
    <xmx:SktAYagW8QG44DysNakVzwQqS0mVj0UeNp3Jx8gtF8AQxr7tZjkeaw>
    <xmx:SktAYdoxyIHN3s9jrSaVuU02wwQYhIzqsRlj9wHi-LOFaVQnCJvEew>
    <xmx:S0tAYeiZWil4Rh_KJK-FokTyfSBBOc58Rh0zi5wBaHSmCPX1czXcSA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 14 Sep 2021 03:12:10 -0400 (EDT)
Date:   Tue, 14 Sep 2021 09:12:08 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 29/52] dt-bindings: mfd: Convert X-Powers AXP binding
 to a schema
Message-ID: <20210914071208.7xalrr2qskzdncgs@gilmour>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-30-maxime@cerno.tech>
 <YTJ7Nf9s1fr3kJny@robh.at.kernel.org>
 <YTXZIn7d5yrRcO0o@google.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="i2ynvafdmliqfxzt"
Content-Disposition: inline
In-Reply-To: <YTXZIn7d5yrRcO0o@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--i2ynvafdmliqfxzt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 06, 2021 at 10:02:26AM +0100, Lee Jones wrote:
> On Fri, 03 Sep 2021, Rob Herring wrote:
>=20
> > On Wed, 01 Sep 2021 11:18:29 +0200, Maxime Ripard wrote:
> > > The X-Powers AXP PMICs are supported by Linux thanks to its device tr=
ee
> > > binding.
> > >=20
> > > Now that we have the DT validation in place, let's convert the device
> > > tree bindings for that driver over to a YAML schema.
> > >=20
> > > Cc: Chen-Yu Tsai <wens@csie.org>
> > > Cc: Lee Jones <lee.jones@linaro.org>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > >=20
> > > ---
> > >=20
> > > Changes from v1:
> > >   - Add GPIO example
> > >   - Remove the limitation on regulator-ramp-delay
> > > ---
> > >  .../i2c/allwinner,sun6i-a31-p2wi.yaml         |   2 +-
> > >  .../devicetree/bindings/mfd/axp20x.txt        | 273 ------------
> > >  .../bindings/mfd/x-powers,axp152.yaml         | 400 ++++++++++++++++=
++
> > >  3 files changed, 401 insertions(+), 274 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/mfd/axp20x.txt
> > >  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ax=
p152.yaml
> > >=20
> >=20
> > Reviewed-by: Rob Herring <robh@kernel.org>
> >=20
> > Note that the gpio child schema needs to be applied with this one.
>=20
> Not sure I'm in possession of that.

So, how do you want to merge that? Through the DT tree?

Maxime

--i2ynvafdmliqfxzt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYUBLSAAKCRDj7w1vZxhR
xTCnAP4nRFX+NUSYOSv7BPfHkL68rqzEZ48dqUeIShoa6czvdAEA6MH0HjZSMhEO
qjLGTpN/RyUKJ4x0wfZdfoL0zzwBXQE=
=d9F/
-----END PGP SIGNATURE-----

--i2ynvafdmliqfxzt--
