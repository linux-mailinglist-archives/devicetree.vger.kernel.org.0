Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F43A356528
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 09:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349525AbhDGHYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 03:24:46 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:41099 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1346594AbhDGHYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 03:24:11 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 9F4075C0156;
        Wed,  7 Apr 2021 03:24:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 07 Apr 2021 03:24:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=U6yVMQoIcpseoI9PqcbXpK0KWWy
        r1oSXYAoug+WfggY=; b=HXSwfctCKIdwdkVo7qy49a2l4QyzFnzqpbeW1gPPMck
        qFrYwQ6t7X4v7jYUnBpTb6vnHzcbyeTuMG47JLNo3AkYLTtYwSNeNWRkHn+R01S5
        HKu8R7DqbdYShyW8MowauFI+PrAkMF//JpgsHYEy2qRiYg+ebaSOOtV1FpRugkNy
        +a8cnw2ardw2xfaokbM5833Rm9oVtHdGO1+hC2OP8hgCDru7pBFcrwPLBOiD0h0f
        T1Vdw/t6H/DKkLjakXRFDvJ0PMm6J5hVmXZDp1GMydV0uNqUCRDZ5BNzcGIbXJ7c
        zdc1vtGvaOYYrdYlOpPWCIZlWliNwifIiRJLJFeBWvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=U6yVMQ
        oIcpseoI9PqcbXpK0KWWyr1oSXYAoug+WfggY=; b=iTxKQQn/4HnbKfvhZn8EVx
        eXwk+WnoQTkiCBd2oQURSJkAzrsDqp25mmB4FL4/Ey9wUV6k3ZhmtjqGaF28AiaZ
        tr3xJFHxS2fRfXUhoX7dv+4v/Rw5lPvklFHLcDPWlSH2akD/TnfxrM5QMhZebMor
        eakYfS8z/WPBRNGGguVQoxat6fgRo4eorT0PjjhmTTPDjnClWDhSkzo/+P31jTAE
        50ZfYzPRczPC0xCDuHrWlJEN3EXHHOnaYbKVzeA4QghvDkUOrnH8GRPUc5ZDOFdU
        MkgZEL7G08j7Qqsy0jgsR5j3kaHRUL9ELsXrt7s/g9lQ+zjNwcHTkLGinZUmfmow
        ==
X-ME-Sender: <xms:EF5tYJgxAUN9zHANLK3otFkgdVTz2Jz6yraV5_4l-fWiJXsv4cPTag>
    <xme:EF5tYODJJmpfgLoPLUt0V66kCpgZGwIpPFPpOXKXcGOUa5uwnPiYpmJ1urdANaKmP
    aVyjuscOD2kLK7EHco>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejiedguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
    heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:EF5tYJGMw12LbTJzZSuAnJNFxn2mHWxv-roTevlwKC3BxJMi2fqx1Q>
    <xmx:EF5tYOSLHDU8hBR2gFWkTfeZk8CeOraCfua9crpmntOp-i37jvPk9A>
    <xmx:EF5tYGwsSi2pwgLrKzfwcryQVytA8I06WZdFpnerNcs2AsozIx4H3g>
    <xmx:EV5tYNp3l8_voWwLmF3c2Lsm6JVSfwfev7q6vaUKz6feHyrzJlFTTg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id CFF90240057;
        Wed,  7 Apr 2021 03:23:59 -0400 (EDT)
Date:   Wed, 7 Apr 2021 09:23:57 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: add compatible strings for
 Forlinx OKA40i-C
Message-ID: <20210407072357.2bq36io23iuhlvbe@gilmour>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
 <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
 <20210401094001.sh3nvkj5psbdcig5@gilmour>
 <20210401175420.39b75553@NervousEnergy>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7e6el5qz5feisyan"
Content-Disposition: inline
In-Reply-To: <20210401175420.39b75553@NervousEnergy>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7e6el5qz5feisyan
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Apr 01, 2021 at 05:55:37PM +0300, Ivan Uvarov wrote:
> On Thu, 1 Apr 2021 11:40:01 +0200
> Maxime Ripard <maxime@cerno.tech> wrote:
>=20
> > On Wed, Mar 31, 2021 at 06:56:15PM +0300, Ivan Uvarov wrote:
> > > The OKA40i-C is a carrier/development board for the Forlinx
> > > FETA40i-C SoM based on the Allwinner R40/A40i SoC.
> > >=20
> > > This patch adds the relevant dt-binding documentation in
> > > preparation for the next patch, which adds a devicetree for the SoM
> > > and board.
> > >=20
> > > Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
> > >=20
> > >  2 files changed, 8 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > > b/Documentation/devicetree/bindings/arm/sunxi.yaml index
> > > 08607c7ec1..74f8decd78 100644 ---
> > > a/Documentation/devicetree/bindings/arm/sunxi.yaml +++
> > > b/Documentation/devicetree/bindings/arm/sunxi.yaml @@ -224,6
> > > +224,12 @@ properties:
> > >            - const: empire-electronix,m712
> > >            - const: allwinner,sun5i-a13
> > > =20
> > > +      - description: Forlinx OKA40i-C Development board
> > > +        items:
> > > +          - const: forlinx,oka40i-c
> > > +          - const: forlinx,feta40i-c
> > > +          - const: allwinner,sun8i-r40
> > > +
> > >        - description: FriendlyARM NanoPi A64
> > >          items:
> > >            - const: friendlyarm,nanopi-a64
> > > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > b/Documentation/devicetree/bindings/vendor-prefixes.yaml index
> > > f6064d84a4..e2ea1a731e 100644 ---
> > > a/Documentation/devicetree/bindings/vendor-prefixes.yaml +++
> > > b/Documentation/devicetree/bindings/vendor-prefixes.yaml @@ -403,6
> > > +403,8 @@ patternProperties: description: Firefly
> > >    "^focaltech,.*":
> > >      description: FocalTech Systems Co.,Ltd
> > > +  "^forlinx,.*":
> > > +    description: Baoding Forlinx Embedded Technology Co., Ltd.
> > >    "^frida,.*":
> > >      description: Shenzhen Frida LCD Co., Ltd.
> > >    "^friendlyarm,.*":
> > > --=20
> > > 2.25.1 =20
> >=20
> > This part needs to be in a separate patch too
> >=20
> > Maxime
> >=20
>=20
> As in, a separate patch for just the vendor prefix?

Exactly :)

Maxime

--7e6el5qz5feisyan
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYG1eDQAKCRDj7w1vZxhR
xXe1AQCZHvLNhSyemHfNjSB5tHwACfiHDIm060mpXpLG8jqGoAEAwCdjPZjRk45A
uA59EGKDodNOc0o9crav4kwgPHhZzAg=
=Y6CO
-----END PGP SIGNATURE-----

--7e6el5qz5feisyan--
