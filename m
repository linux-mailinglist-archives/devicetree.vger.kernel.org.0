Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B792351287
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 11:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233697AbhDAJkQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 05:40:16 -0400
Received: from out5-smtp.messagingengine.com ([66.111.4.29]:32831 "EHLO
        out5-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233881AbhDAJkF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 05:40:05 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id E0DC45C00B3;
        Thu,  1 Apr 2021 05:40:04 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 01 Apr 2021 05:40:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=yvCjoqJ3dwumfSijciyVo+9V3wC
        bqdEbFp1dG4JsIwk=; b=VVIK6hGC6blQMAfkIYKStYVFi0JY+puOJ8vRbuUbs2c
        QNegepYlgEv3CqM2+rWOy+r8DfIQx+6h52bQ5/io+iR4zy43rlK7WLf+X34awKEq
        JETbTkZ3OFwpjV3tw2d9u0/gYQPr5pvREs7EOlPEeInGaEsa5SX9kdBpHz+eBrAn
        bPKL3YMrtt+kP0FEptF5W4WpNT25ITx5JMc/ybiqndVr1dTYVd4yhm7p9MCL7PdE
        136kCDbggPApF/bzaUw0x+eeKzA+pSBZFlkpPk075anSjFskXyutQQAbX5h4fvgl
        euVyQJhqiCFAdu08wrbPbV+4yAe/zeF5LJ0bA0OutIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=yvCjoq
        J3dwumfSijciyVo+9V3wCbqdEbFp1dG4JsIwk=; b=YEKUKRrOgdymIMoQMgQWIT
        KxI8+C5qm4tvuUq7wD8Rg6kjNizw9I8rZBXAGw9qTLjpr+hOdI3ola0UdeeLxdzu
        xrINbVK/yEOFJkwTZ3kMbc0cIzQ7gkxRpSCSdeqTUrb3v97OEp+/ZZOF5ppRZVjn
        igydF9aPleIp6GMHf55yvn4oXiWEpjljpG5eCgH0WzTs76k9ouw2ZXq+oALaq6Ki
        cvsoBXPqJN4Sgv4sNYxG16AGehGkdo/TeJQwckSdyED7UGOjCFZgMZC5aDdtBWwQ
        13A0zdtiKpW7vpmZwW11IqX/wfvKZwX9fmQDHdgn8sgj65IMwavML2GsEelC89YQ
        ==
X-ME-Sender: <xms:9JRlYBySY2dw9ahi7y3BCJjCl4biCWEOCUT5DM4lkIkEKAnl3Ojgag>
    <xme:9JRlYBPf79xoeDXFGwL-ZH75kWh1BjliqOgwG8c9AlJ0So4cKZgOdh2_ohTu5viHh
    5o2XbiaaC2USyUSMds>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudeigedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:9JRlYIMCNlVrkSYqGO8NLBWBXCKA4AYmbCKtsD7x2dD7vV3oCeLdLA>
    <xmx:9JRlYLSwr3o1ceQQW56wjpuvhEgnlpSjQBnNpFuRRRkr5_3NF5nn1Q>
    <xmx:9JRlYCD-fiI17653-9XGuRJTyHwcmpRk0VQso8l09FmMtw0tsW8E8Q>
    <xmx:9JRlYDdoiQL7y3lXIAFQBLKyQMGel1P2JIQ6iiyNxGi7X-NfZRikjg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id E9D5C1080057;
        Thu,  1 Apr 2021 05:40:03 -0400 (EDT)
Date:   Thu, 1 Apr 2021 11:40:01 +0200
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
Message-ID: <20210401094001.sh3nvkj5psbdcig5@gilmour>
References: <20210331155616.793550-1-i.uvarov@cognitivepilot.com>
 <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="d5vgazwclpegow73"
Content-Disposition: inline
In-Reply-To: <20210331155616.793550-4-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--d5vgazwclpegow73
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 31, 2021 at 06:56:15PM +0300, Ivan Uvarov wrote:
> The OKA40i-C is a carrier/development board for the Forlinx FETA40i-C SoM
> based on the Allwinner R40/A40i SoC.
>=20
> This patch adds the relevant dt-binding documentation in preparation for
> the next patch, which adds a devicetree for the SoM and board.
>=20
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>
>=20
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documenta=
tion/devicetree/bindings/arm/sunxi.yaml
> index 08607c7ec1..74f8decd78 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -224,6 +224,12 @@ properties:
>            - const: empire-electronix,m712
>            - const: allwinner,sun5i-a13
> =20
> +      - description: Forlinx OKA40i-C Development board
> +        items:
> +          - const: forlinx,oka40i-c
> +          - const: forlinx,feta40i-c
> +          - const: allwinner,sun8i-r40
> +
>        - description: FriendlyARM NanoPi A64
>          items:
>            - const: friendlyarm,nanopi-a64
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index f6064d84a4..e2ea1a731e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -403,6 +403,8 @@ patternProperties:
>      description: Firefly
>    "^focaltech,.*":
>      description: FocalTech Systems Co.,Ltd
> +  "^forlinx,.*":
> +    description: Baoding Forlinx Embedded Technology Co., Ltd.
>    "^frida,.*":
>      description: Shenzhen Frida LCD Co., Ltd.
>    "^friendlyarm,.*":
> --=20
> 2.25.1

This part needs to be in a separate patch too

Maxime


--d5vgazwclpegow73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYGWU8QAKCRDj7w1vZxhR
xak4AQDzhJmNlxlKKzxAX/oUk3Nxqe7heUyqwNcPFi56NbRC8AD+N8mta6mvGxoE
mzcBkgio+MKalWM8/DlxSTHi+dkjxQo=
=wFIC
-----END PGP SIGNATURE-----

--d5vgazwclpegow73--
