Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E8F52F9CF0
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 11:39:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388440AbhARKhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 05:37:46 -0500
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:44887 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2389814AbhARKPy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 05:15:54 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id E2C411585;
        Mon, 18 Jan 2021 05:15:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 18 Jan 2021 05:15:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=fM/OR5bMbjK642/ahP0Ny1LYwDT
        vhOHowWFE8Xc2wHc=; b=oIxcG/sDku+VH+uxW1TgEHQH4O29S3on/QZ3dHO2p10
        EJq+iuFUycsRAFWEzjAbUyVy7WtjzaBny/jq+CP4t1fkYn2z9kNsNkTWR/8Fw8rk
        AJHnO4l3Mw2650u5eV0/TvPsxws+cppMz+FVoRO9ReERKZEpZLfhUK39Tu2UDEfa
        gX1c0r2Sq00E/tuQPEkZUfI60YP+erD/yF20k0VslQPqig555LWF0kr/1IYihzCT
        UCsllEKTyqOCEuDQ5BLrFyOmab3U2HZqYflRNjm5UO3+c/FKt3X/1oif7XzT1sCs
        fvMpCUXUcPkiT6EfErRAySuQRqQI33sjz6hOEWcbTtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=fM/OR5
        bMbjK642/ahP0Ny1LYwDTvhOHowWFE8Xc2wHc=; b=Q6qOy9T+nFLV/dkh1GS7rq
        oAHU5JALy2VsmuHtVnA/BeqsCbXeURqLb4pH/kj32UM1J8rglk2CfBeAKo+4q0JC
        P0ZWBK73KS68fS0kXAVjTwGe/L/mNC85blYbY/ujPpW4awa7GqcOn2NG0SfsV2eN
        L5raV6Ne4MPKtnnr3DClIgFg4jAzxMUjSy79CxGWnoPuLxrXjt5tDdIDkmSecELh
        /Zhggli7mVHb5BaqtzrtOhx5obBF2edOGhxbtuzmxYbAUEYZDlv2he+ENLWRq0CF
        f/IvbKQotP4Lexen/itrocTcaB30ccnW1t74esmWpH/cLjGXcit7THnSCUMFfHsg
        ==
X-ME-Sender: <xms:qV8FYFYi6UoIM2EasQJPza5gdoU-BGiTpBCa9HrosN2RFig686J-iA>
    <xme:qV8FYOZNhxE0siUCp8QzczrSHrP3lokuqiQ1OGaf-RvPL4iKaWBQFfV-VTOW4hImO
    uWyOur82s19wQRVprg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtdekgddufecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qV8FYBVQFrMM8JP7oWIaXqBbFLTzzJfGbAOsAkxN5K6OtdsueIT52g>
    <xmx:qV8FYF3s8_a3HdwTObkEwJiM6cWvpL_OeO_uXFYPt_JRGId94y2lvA>
    <xmx:qV8FYIYenpl8gzTi8eRPGYNILZExa6CPAh_6Cjl5cGcP6PhwHilmNA>
    <xmx:ql8FYNsBTiw1Ia2K90_sia1Z2VnWFp7n27mNv357KUNxkrxx14J5iw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 2EB3324005B;
        Mon, 18 Jan 2021 05:15:05 -0500 (EST)
Date:   Mon, 18 Jan 2021 11:15:01 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Alistair Francis <alistair@alistair23.me>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 05/19] dt-bindings: bluetooth: realtek: Switch to
 unevaluatedProperties
Message-ID: <20210118101501.mmlgsiyj5rulrpgk@gilmour>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-5-maxime@cerno.tech>
 <20210115013714.GA3798333@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="p2akrc3zycmkmy4i"
Content-Disposition: inline
In-Reply-To: <20210115013714.GA3798333@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--p2akrc3zycmkmy4i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Thu, Jan 14, 2021 at 07:37:14PM -0600, Rob Herring wrote:
> On Thu, Jan 14, 2021 at 12:35:24PM +0100, Maxime Ripard wrote:
> > additionalProperties prevent any property not explicitly defined in the
> > binding to be used. Yet, some serial properties like max-speed are valid
> > and validated through the serial/serial.yaml binding.
> >=20
> > Let's change additionalProperties to unevaluatedProperties to avoid
> > spurious warnings.
> >=20
> > Cc: Alistair Francis <alistair@alistair23.me>
> > Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  Documentation/devicetree/bindings/net/realtek-bluetooth.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.ya=
ml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> > index 4f485df69ac3..f4d4969d87f4 100644
> > --- a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> > +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> > @@ -37,7 +37,7 @@ properties:
> >  required:
> >    - compatible
> > =20
> > -additionalProperties: false
> > +unevaluatedProperties: false
>=20
> This would still fail because the serial schema is applied to the parent=
=20
> and this schema is applied to the child node. It's a common problem for=
=20
> how we've done bus schemas. We'd need to split them into 2 schemas and=20
> reference the child schema here. I'd rather not do that here because=20
> then we'd apply the schema twice assuming we keep bus schemas also=20
> applying the child schemas (which is good at least until we have schemas=
=20
> for *all* possible child devices).

I couldn't find what requires additionalProperties in the meta-schemas,
could you point me to what enforces it?

> We've handled this in other cases by just doing 'max-speed: true' here.

I will do that then, thanks!
Maxime

--p2akrc3zycmkmy4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAVfpQAKCRDj7w1vZxhR
xaXOAP95Lk20T0ZHJyV7JdNnmfNh+KASNQVqIC5Ph3fpwUf9GQEAxkR2/nf9RCFx
1GWW2OowBxLpk5SVJlRMuF0u6h/YtAQ=
=FLIt
-----END PGP SIGNATURE-----

--p2akrc3zycmkmy4i--
