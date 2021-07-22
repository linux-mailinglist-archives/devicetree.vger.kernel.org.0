Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11B923D211A
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 11:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231280AbhGVJDw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 05:03:52 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:40971 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231272AbhGVJDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 05:03:51 -0400
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailout.nyi.internal (Postfix) with ESMTP id B9A835C00CB;
        Thu, 22 Jul 2021 05:44:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 22 Jul 2021 05:44:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=IeSRbdKFOSKlGmnR4TG7QTBHwig
        FaSGVNE6BHClkg5o=; b=ppfI0W7WbalQzAAJw0eg9g0EpPx5C25U5yYvJjKc+ER
        cE7UXCRh6lkLkWfBnDR7ppmd821oXXUMaceU8wuzICN4Dbn1AZyKsNcAE5dcmYpj
        wMhG5a0kf5orJuUkxMWVauz/s8F+kRuY8GLYZfBoqiEwwZPp9+zg7PavfxRshiWc
        zWXXWIsmZoN7ot5/WbhJmkHvZvqZv3DtKw95B4CjAUaPI9sw/aTkSQS9LnYvCG7D
        UnnPQda72+FT6ulioJAaIAQBnM5MTmtkpAwMB6NOIG86VsLeX81fT4gJzzE/I6PZ
        7SQ0DMMqUr064iySTYgVSorEO0Gnf0qmdT6kCy/Xo2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=IeSRbd
        KFOSKlGmnR4TG7QTBHwigFaSGVNE6BHClkg5o=; b=lQHAR3mrKIvezxkfmQk3PI
        3cdsN0zhKEm1wCaFMjMm2Siam5HS1osW9KZQ7fW4Gw5oxbPw+B50qBSjyBIjhp0T
        D6LWdotlUhVimia9IGa0r48EvJoAytPNPvwOfyUR7Vl3AjQkrlXk1msDWR7FN/1I
        fAep7l5posyjNnsWdqXtHXmF+H64GeYUx8su0fEeyItxG01cHZbg/zCSF9xlQVNP
        tZUcWnKzUm8YW2fd1eAg0qSZ1KaL9t9d6cn3l/lvczxa0ZAUbVTOFO1V2E7qEbdx
        q05y6tZpgfe83FVIKMJOKwpk0hXlKTXZZt7FTPCVsh6YcXPAK88UBe7kCaUyYRdQ
        ==
X-ME-Sender: <xms:9z35YAHP5AwXILVW2mh-Boqc99BetURELeCwXbn3-h5Vy-J8ZuFrzQ>
    <xme:9z35YJUlSQo8MXKPhO3mkTLcaxjHw7VxOxufo8HzQ8FVIMVA_98p0rgWw8R1mEjND
    oiFWGT6RlT4jVJRqik>
X-ME-Received: <xmr:9z35YKI2petNPq5CzC2oS82vs2h74KuqUJRsD3SUO7RG8zgqlOUiGnUZ8va5zSm4QoD_KkVe0ujnNRV5lkg6TSnRKEjo4ofDBG4O>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeigddujecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
    udenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:9z35YCE7qeKA58UxCGaYYtA0ahzCqXE6vzY-BDVn3slkv0nQnWsTLA>
    <xmx:9z35YGWX3enec_8mKnoYt9ccDu7TI3XfRXck5J6-AuXEZoUpNUceXg>
    <xmx:9z35YFPQYFF9O-F6CeqUFbBU6Sj_2tNUn6hXUgaj-5t86Zntw_9vRA>
    <xmx:-D35YKoLd9jaQOaHJwOKkpMqj35Ktlfff-RrZAo69TDN9gD_HxeIxA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 05:44:22 -0400 (EDT)
Date:   Thu, 22 Jul 2021 11:44:20 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-sunxi@googlegroups.com, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 11/54] dt-bindings: display: simple-bridge: Add corpro,
 gm7123 compatible
Message-ID: <20210722094420.4x5g5qjzevir27bq@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-12-maxime@cerno.tech>
 <YPgsLcV9La3gXvMZ@ravnborg.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="yz2fab3yuo4pgq2a"
Content-Disposition: inline
In-Reply-To: <YPgsLcV9La3gXvMZ@ravnborg.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--yz2fab3yuo4pgq2a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 21, 2021 at 04:16:13PM +0200, Sam Ravnborg wrote:
> On Wed, Jul 21, 2021 at 04:03:41PM +0200, Maxime Ripard wrote:
> > The corpro,gm7123 was in use in a DT but was never properly documented,
> > let's add it.
> >=20
> > Cc: dri-devel@lists.freedesktop.org
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Applied to drm-misc-next, thanks!
Maxime

--yz2fab3yuo4pgq2a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYPk99AAKCRDj7w1vZxhR
xfxyAQCbrNNYahQ4ZrqShUZriUCvr+SsoyLAH8oZGMHqB6gNsgD9EBBxA5R8AtWg
HIQsTVxfXyu6Bge+lTmmSFPN+4hXRQU=
=v3GL
-----END PGP SIGNATURE-----

--yz2fab3yuo4pgq2a--
