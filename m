Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53EDE453356
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 14:57:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236835AbhKPN74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 08:59:56 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:46315 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229583AbhKPN74 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 08:59:56 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id B102732019DA;
        Tue, 16 Nov 2021 08:56:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 16 Nov 2021 08:56:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:mime-version:content-type; s=
        fm1; bh=7J2IjKkGNokXaQbhQeDaa8jZzCKQn2qBc05+ZRslF20=; b=SgAea0uT
        6qb090YaPfk3B18YhnLon0T72OIYDK+K2oktUEzgUioBQsgjY2rNMNYTEFaEfPMg
        tmryybq+x5QBZc6g44puWJl5Wl1h8BsaacxV20xJe7L3QH5/kRch382WwiaLvIkY
        FwfMXXHnxpSOo1f9meArnezCnXK9D6aHVJs8EITOBVHf6Z8ud1vHbel7vqSOURZ6
        O7KGGi/Hk0I8fn3LPBYseAtexAFG8GHlnq7NYJl6Obn//BvCulFWKjTzSaeGr56O
        78Nug+SvYjM2GbsDTVsv3w1bMKtN4DWPUeXvWZnt8WyBPCVM3aPgFO5hgRjzGIyx
        NXmfAzh0K0AA3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:message-id
        :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm1; bh=7J2IjKkGNokXaQbhQeDaa8jZzCKQn
        2qBc05+ZRslF20=; b=hA4aS/UGdJyTety1U/62CeLIU/3+uBbIRZrehwn4eY6Xr
        QNhHYqpkjsTA91d3WvtUDBE3UaF11YJ5dHAzLU84JjEGpmP0J3wyiTQzF+0wpAuo
        W0AKJCMK2iapFRiDWtj9vun98PLnw5cxmBMVF8eYzmZUeOkcKhBcG1tP8SIRfrpu
        t4N7LFumGhU2z8ZM594fcz5Q20xUiDrwLOY9PHS4oC9dmiwpm+xDPLN1ftfSK+lE
        gaRBXU1brmHvXzRDgMLFQLBDLMcJSuEwYACpNG4XBMcs3yJ+9pepl2DEs7pmXnxD
        NrWBkkwc+zglTJv1r3EMeTmmA6lp/ODKzchDDB62A==
X-ME-Sender: <xms:qbiTYUAsKehdE2eD0kQyMOxEiKdJUItLUVQoqmVG3G1xma1zX3xJig>
    <xme:qbiTYWhzP2qcQuAaahp1ehPnr1cUGiDvSf7zt7-U5oyCVMMN6lisaGpiVGludt-pN
    1SJHbVDMHhusGd6BvI>
X-ME-Received: <xmr:qbiTYXnr88mLiVONNcmF6eRBiQFMELI0mTrU8DCB24VgbhT-bqyjmI3Ci8s_4q26TpfzqOK9MkY1TdqJVYTSaoaqhRM41GkmLG5HrQZ4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfedvgdehjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkgggtugesghdtreertddtvdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeeghedvvdffleevieeugffgieeuuddvhfefuefhgfeljeelgefhvdegtdevgeelkeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigih
    hmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qbiTYaxk2WgCTI-8G0hXd5xnm2fCXKK0XFxAfASVpNqJNgDLPeKzvg>
    <xmx:qbiTYZQp1idjdnlKhaJM9tgFzfQi1dk5wb2JtP3g4MpjuuCNn1UN0A>
    <xmx:qbiTYVZI4YxTgUo3BHodmy7mb7fqMUQD4trLsDj0wNd3ug_VPCQqrg>
    <xmx:qriTYUdVndGe13ZmymoUD8Gw64TywMCTMi2bgOJrO64HLcS1oGH_Dw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Nov 2021 08:56:57 -0500 (EST)
Date:   Tue, 16 Nov 2021 14:56:55 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: UnevaluatedProperties and DWMAC
Message-ID: <20211116135655.kwco2hlozt2omp7m@gilmour>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="a63cob7za4dv4mne"
Content-Disposition: inline
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--a63cob7za4dv4mne
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

Thanks for updating jsonschema and supporting the 2019.09 Draft. I tried
to do this recently but struggled a bit.

As you can imagine, I went along and ran it on the Allwinner SoCs and it
looks like there's a weird interaction between unevaluatedProperties and
Documentation/devicetree/bindings/net/snps,dwmac.yaml

Indeed, schemas using it (allwinner,sun7i-a20-gmac.yaml is a rather
straightforward example) seem to fail the unevaluatedProperties check,
like:

.../arch/arm/boot/dts/sun7i-a20-wexler-tab7200.dt.yaml: ethernet@1c50000: Unevaluated properties are not allowed ('snps,pbl', 'snps,fixed-burst', 'snps,force_sf_dma_mode', 'mdio' were unexpected)
	From schema: .../Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml

All these properties are definitely in snps,dwmac.yaml, and it's pretty
much the only issue when running dtbs_check across all the sunxi DTs, so
unevaluatedProperties seems to be working just fine as well.

I first wondered if it could be because of the custom select clause in
snps,dwmac.yaml that doesn't include the allwinner,sun7i-a20-gmac
compatible, but even removing that clause entirely doesn't improve the
situation.

Do you have an idea of what could be going on?

Thanks!
Maxime

--a63cob7za4dv4mne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYZO4pwAKCRDj7w1vZxhR
xYOaAQCopCf/pAp4L6sXloZ1fBww5OW71ozkj48l71mGCkD3yQEAo/k2FWD8t48k
UhS/aBm3gpXHgQ4HADib4eP1JcnJGQI=
=Fxue
-----END PGP SIGNATURE-----

--a63cob7za4dv4mne--
