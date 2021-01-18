Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 905452FACC2
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 22:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394660AbhARVfS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 16:35:18 -0500
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:40269 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2389493AbhARKEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Jan 2021 05:04:31 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 5B978528;
        Mon, 18 Jan 2021 05:03:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 18 Jan 2021 05:03:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=CFB9BZEfvv2vUzqGFQdmOaV1AwJ
        bOfGSrreOBpa0s0Y=; b=JSLB6uCXIdCM86muGiibpsEiMHPXa+bU9KbBfH/elgQ
        JZ8aBMWb1LoG4evss4rMW3Ie/cyGiKjN0uREux805l5iiSLp0BMSZEi/5x0mHOKY
        cc6cStCS64FuN2Ah3h16HnkR4aSNUmy0fqG5xKd6LkOYxSv5IWKz6m/f7pRQzN/Z
        2Y1/BL8iYhYZJ1aq2ZhpsQh9vdgV7tnuWcLKpLZbS64qMNp0c04FjQrRsc60H607
        88VGfytM424B7rkIvgM8h4g71UDJ21qT4EkXqgcnHQ26TfnUCIttcC/DOaq1cqCT
        HbrmzWQcxLJ77jUOnjgIAeut96RZR4aNn1dJbnC8PVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=CFB9BZ
        Efvv2vUzqGFQdmOaV1AwJbOfGSrreOBpa0s0Y=; b=N+tKdZhHOSMsE3RJkPXv9H
        dFhS3V0WQIHSrmQ0LxpQbw8i+X3+JAol3YbP0YmWlyoPN+P8mUDyuISejrIuxN9V
        bfjGjNVru9IX5StVDwgAUQd1F5VhpZwBCl8zGtztrVzpnsZ2a+uhXidwYWULm8Dp
        2K6r+2lu6uhiYLKTUaCFIIV/yRtHdzkpqtbvs1t84ue7F/lQBmS4UifqyU6sfpqf
        gcaoqlaLFj0qCjY3QQZbRQ4Q3QKavez1do2allIqoCiuZGr11Up9teQmhUTx18wA
        0Pj6n1ca7rRGmgXnJxIOevO1J6xgmRdek2cCLEpfJkwhUbNe4L3mrNr+7u+KJMFg
        ==
X-ME-Sender: <xms:61wFYODZd8l3PH9lt54gvDFpKCZWIbCLDrjwnZBwV2ArU2OIjalMAQ>
    <xme:61wFYIggPdgZ3my3PIv82-dClrzCVnl4Kfoi9Na1nOiHWHRxauCDwKn4HhmGrBitG
    7ngLnkR7tMkpxC4-gw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtdekgdduudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7FwFYBliAeLJS6uh80inSll8MrapxtEJUYaeYVZuHEnJdqSPqh382g>
    <xmx:7FwFYMymqNoewDZ6uCKZHAq33Tdu4Zhn1XWqPnFTj8ESGzzXWVRfxg>
    <xmx:7FwFYDQR_octMBO_Fve6-1OH2x3sbPnBJqjufksO1b6UaB4m4-6daA>
    <xmx:7FwFYCF3D3wldN2HfeOdAiE9Syz81wbp8aCucSGjKNbZ7TT5N9qUrw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id A4F7E240067;
        Mon, 18 Jan 2021 05:03:23 -0500 (EST)
Date:   Mon, 18 Jan 2021 11:03:21 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro,gm7123
 compatible
Message-ID: <20210118100321.ktbnfpsxka2icbaa@gilmour>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-4-maxime@cerno.tech>
 <YAFBTt6MsFCy1Hkl@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="akugqdgmp5jo7xoc"
Content-Disposition: inline
In-Reply-To: <YAFBTt6MsFCy1Hkl@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--akugqdgmp5jo7xoc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On Fri, Jan 15, 2021 at 09:16:30AM +0200, Laurent Pinchart wrote:
> Thank you for the patch.
>=20
> On Thu, Jan 14, 2021 at 12:35:23PM +0100, Maxime Ripard wrote:
> > The corpro,gm7123 was in use in a DT but was never properly documented,
> > let's add it.
> >=20
> > Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
> >  1 file changed, 4 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/bridge/simple-br=
idge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.=
yaml
> > index 64e8a1c24b40..97ca07b56cbc 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.ya=
ml
> > +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.ya=
ml
> > @@ -22,6 +22,10 @@ properties:
> >                - ti,ths8134a
> >                - ti,ths8134b
> >            - const: ti,ths8134
> > +      - items:
> > +          - const: corpro,gm7123
> > +          - const: adi,adv7123
>=20
> Do we need adi,adv7123 ?

I'm not sure: it looks like having both the adv7123 and the dumb-vga-dac
compatible was never an option, so we can also change the DT to have
corpro,gm7123, dumb-vga-dac

Would that work?

Maxime

--akugqdgmp5jo7xoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAVc6QAKCRDj7w1vZxhR
xWbwAP455h8lmjeGggpOTmvZidac/972DuKkeajVpUNTB0ijZgD/QpSye0ZCGUtj
TM6YCE/KEEaN+Y+le+uPt8SSTm0eyAY=
=ug/K
-----END PGP SIGNATURE-----

--akugqdgmp5jo7xoc--
