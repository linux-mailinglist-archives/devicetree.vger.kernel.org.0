Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A70E5367B5C
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 09:46:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235004AbhDVHrR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 03:47:17 -0400
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:45727 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229629AbhDVHrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Apr 2021 03:47:17 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id E67745C0095;
        Thu, 22 Apr 2021 03:46:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 22 Apr 2021 03:46:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=AwgIZmB5EJH5trGQOylc/pmaEoL
        b27QzY3Dbivxts48=; b=FIhh7xz2qR41LUeduUh/o8n4W+lw4V3lGGbLhAIOuaa
        aDq3jZyvBLRF0YllAVkjncYKjBmFvr4Z47zFG/qfay72i4hJKeqtu1Y2wl3p2UOa
        MF1HnRJVXSDCR8fw5ow5fUrE1738+6H2/XlRRulXzKEn/OxFrq41m7MnAGhLvlSF
        D+KlsMrtkdVTOA4hOREGZUQfBGYLBJwM9jR7S6zKujoV9Oc2KQDns/xwLZfVvi75
        7iYL7NLwEDxDr8SqRDzfxMxspfe8XyW/PWMjgxZ+TTDDLQ2QSY8gS4tuAMpXUMS7
        orEUkyn66MBM0ipq78EYDIK/vhROjsuHWYA21hYf8Zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=AwgIZm
        B5EJH5trGQOylc/pmaEoLb27QzY3Dbivxts48=; b=uB4CSYKpKc3UHsQS0UyS2g
        LDXApeeu+JYDk6TmO5YshWbt46ByjaIpgN5jJhOI3AkyegpfNwtMVcRkJWR0gdro
        bWDOV0hlmlsTXUABylO8xx2RaPiQEv5yoM/8myEe5/BmN64+gIt4CoGlBm+uKEqF
        z3+8AOMvY9B8QXau4yBiRR+xnrw8AftCnxjUmU7qdh+mnf4d+YCpGV7vkr0rtYIG
        BtQylSMvMf/6CG7K6TZGH+c+vkL1R1tu6uUwsEyDLDcaVB5c9VjVWoaJl8mUOf/H
        8/qWH3pncBlE/GPjrIe5Cn/we29BBMS4T9LfOvRB+7AYQDvadqWFreHBcYlORDdA
        ==
X-ME-Sender: <xms:4SmBYB_hs8rrapBC1jVyrdqFP1a__uldZvFq5Hu27AcwnmwgPxFS9g>
    <xme:4SmBYFvQYp16xQEo2BcyIlHGcGUwN_EJjWIUpjrpG8HFeI9096TYm9lhk9xg895oK
    GFDNVMNYj2MdfD53VA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvddtledguddulecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheei
    heegudenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:4SmBYPDQiL9oeeYZeANR_MVwtTDpEcqBdspk98oJDVNe6BBPvPHlVA>
    <xmx:4SmBYFcCHHt-l4Coi2xCz6_odV320pw9wYF190-j-IyVeKTRF7NmYw>
    <xmx:4SmBYGPtfmt6MkIH4IkfaAjael47fMu8JfEKfUJjzH0Spl3TMinIBg>
    <xmx:4imBYCDM5yzZN_Nv08OTgyJvbkm0n8UgIpeLhIDN4rbEcJ0ehofCFw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 01FD724005E;
        Thu, 22 Apr 2021 03:46:40 -0400 (EDT)
Date:   Thu, 22 Apr 2021 09:46:39 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Michael Weiser <michael.weiser@gmx.de>,
        Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, Daniel Kulesz <kuleszdl@posteo.org>
Subject: Re: [PATCH v2] arm64: dts: allwinner: Revert SD card CD GPIO for
 Pine64-LTS
Message-ID: <20210422074639.46imznubua2yhj4n@gilmour>
References: <20210414104740.31497-1-andre.przywara@arm.com>
 <YHc11xC1vT1Yr+a1@weiser.dinsnail.net>
 <20210421123354.0a7209a1@slackpad.fritz.box>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="pewxlg7gul6shcna"
Content-Disposition: inline
In-Reply-To: <20210421123354.0a7209a1@slackpad.fritz.box>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--pewxlg7gul6shcna
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 21, 2021 at 12:33:54PM +0100, Andre Przywara wrote:
> On Wed, 14 Apr 2021 20:35:03 +0200
> Michael Weiser <michael.weiser@gmx.de> wrote:
>=20
> Maxime, Chen-Yu:
>=20
> can you please try to push this patch into 5.12, still?
> The Pine64-LTS' SD card is broken otherwise, on both versions of the
> board. The incriminating patch was introduced in 5.12-rc1 (my bad!), so
> it qualifies as a regression fix.

I just sent a PR for it, thanks

Maxime

--pewxlg7gul6shcna
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYIEp3wAKCRDj7w1vZxhR
xQAfAQCTWNddslINMVlZqc+yj8ebu60lvqsXQyMZsxthdHux5AEAoQ4x8LIpylpa
KeguZo6pLnGCtVs8R2pUET6ZkxmZhwo=
=QqnK
-----END PGP SIGNATURE-----

--pewxlg7gul6shcna--
