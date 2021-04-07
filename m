Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 15E9335653C
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 09:31:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235124AbhDGHbK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 03:31:10 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:57295 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236731AbhDGHbI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 03:31:08 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id ACA135C0087;
        Wed,  7 Apr 2021 03:30:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 07 Apr 2021 03:30:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=TX0MoO7wz20xEAsxRsbRka60YhJ
        q/rR3YCf40hGmjFg=; b=LBIQNhSftFHNydpx/rwchDXvbE63tbz0meoXgMrQvGw
        0dhPy82Dszu2ui2BbH2+FaCKRwohfrq62SgW0UpeDfLmulE0rSo8ceW40TqHroSK
        PiOh5feCBZfi/4ydb9GJEgbysVzFzJrlCswkkzbQe8IEeg8rNMna62vnbj2mT/qU
        sP/941lsHSHWCbxt5bzNwNZPNHlr0HFpStvxeBeJNvTW48lwPmKZYu2xZ1/RvAhe
        yWMnHQ0HI8wVkWBuUgroiwOfM9p+yWsGAi1KKFwSO5wE8aZegZpoPt/gJ+fqHbt6
        r8VG82nGydadol90t9pMbfLHwCLNEO9tTZM9Yk6y7Yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=TX0MoO
        7wz20xEAsxRsbRka60YhJq/rR3YCf40hGmjFg=; b=GDVAcBPXTkNP1yrAtGn2/z
        0yRATjIk3ZCGm0yADgAF2mlCall9gL5KDKKgxc67Ok9hbER9gGdNZGSnhMJQEi8u
        NQ6+vpWdLRe2YKqJ0zw9S08+m23ir5asUaiE4vuPaXtY7m1m3DznzX0omAiOlv8z
        CKyzPhSR20MSwPmBKhgWni1HM6iMVNJ3KewPQflJ0MQmPXcWMMgM/V1ZbofjLjgw
        swEJDsdvUuoqz3N73BJLIhkYpWZ+O6/XbyR0Jri96QJ3AfngFEk0ScmlSHBg4M6e
        NsXloxr0Whv1VZizqgGUI261LgbSHPgJr64R9rvvlWshNXW8c9kgDTd2zU90LSZg
        ==
X-ME-Sender: <xms:sF9tYKLt22unhyGwsDUwEj2IoKgloudAsN6adPNX409y-Kb3NKftaw>
    <xme:sF9tYCLWcVlUpMpDcFKtsKbi9hO5sujdG0P8OuUzik9rm7QGI8hDRbXXIN0BPXCSQ
    qBWYCrksjwvWUH4PIo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejiedguddvvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
    heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:sF9tYKsQkzYvDHZcFX00dbL-jgvTIw5uRHbKgQpjJMru2alOPLQuNA>
    <xmx:sF9tYPYmH0r1BaWVPIww4MTPVyUeAYINPMODHlUrx5hXMpNSrE4Hwg>
    <xmx:sF9tYBZfUAf0e2EbZPlJ6NJOy_TO31mVpfhh7BOf9C3bP7NFPFnlmg>
    <xmx:sl9tYEzGBc8k7Ym3rhdmI98f7S8cWBqq3Agq4sWwQjcCiD-q-Niy2A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id B0440108005C;
        Wed,  7 Apr 2021 03:30:56 -0400 (EDT)
Date:   Wed, 7 Apr 2021 09:30:54 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 4/4] ARM: dts: sun8i: r40: add devicetree for Forlinx
 FETA40i-C & OKA40i-C
Message-ID: <20210407073054.wzus3zmzfksilwcf@gilmour>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
 <20210331155616.793550-5-i.uvarov@cognitivepilot.com>
 <20210401094356.zhijxfoihw73ha7k@gilmour>
 <20210401175938.1f6d065c@NervousEnergy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="luel4amtq5kgftxh"
Content-Disposition: inline
In-Reply-To: <20210401175938.1f6d065c@NervousEnergy>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--luel4amtq5kgftxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 01, 2021 at 05:59:38PM +0300, Ivan Uvarov wrote:
> > > +	leds {
> > > +		compatible =3D "gpio-leds";
> > > +
> > > +		led-5 {
> > > +			gpios =3D <&pio 7 26 GPIO_ACTIVE_LOW>; /*
> > > PH26 */
> > > +			color =3D <LED_COLOR_ID_GREEN>;
> > > +			function =3D LED_FUNCTION_STATUS;
> > > +		};
> > > +
> > > +		led-6 {
> > > +			gpios =3D <&pio 8 15 GPIO_ACTIVE_LOW>; /*
> > > PI15 */
> > > +			color =3D <LED_COLOR_ID_BLUE>;
> > > +			function =3D LED_FUNCTION_STATUS;
> > > +		}; =20
> >=20
> > led-5 and led-6? You can start at 0 :)
> >=20
> > Looks good otherwise, thanks
>=20
> This is how they are labeled on the board, so I kept the names. Should
> I rename them anyway?

No, it makes sense then, just add a comment to make it obvious :)

Maxime

--luel4amtq5kgftxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYG1frgAKCRDj7w1vZxhR
xX1cAP4+/1SBN0yPrYZiZQaBi/Eh5xdCmd3SHsKT3pyc6H0qfQD/ZOB2MH4F436i
KqyCSGRpXClRMbNd8X+47LdBcCLtAAc=
=jSjr
-----END PGP SIGNATURE-----

--luel4amtq5kgftxh--
