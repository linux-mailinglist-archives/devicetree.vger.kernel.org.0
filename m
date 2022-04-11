Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F9D64FBB77
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 13:59:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245019AbiDKMBm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 08:01:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231547AbiDKMBk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 08:01:40 -0400
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7351E1AD92
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 04:59:27 -0700 (PDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id BD91C320208F;
        Mon, 11 Apr 2022 07:59:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 11 Apr 2022 07:59:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; t=1649678365; x=1649764765; bh=0qJaiZk6qA
        srEaDmTUAGx++TIqfK79p9zce7kcZU8lk=; b=c8ZfBNdbOZ7JWXONVaRAFIwRJ0
        IAZwVz9BvCu5buQAisI+tOp73hcSH7CKMB7qZq7C29xg0Y/+Ixntr3r3bnW4EF6Z
        WO2X2LT+E4FCGlTIPeuPeXoWn09HGxwg6u1b/XTrCw7EAx9bFcgqqFElwceF9rsE
        PjvF5mcc9oJcf/UQZFtNABpDDrZIfK4kaRjnwUE5Q0/DDDPY4eIkbM+r3t1JawSH
        L1d9fR9arrIuXyS41V1nVXbkB3NZQRBBciH6gmoFTVyfs52uydzBDurSr2CZhoCL
        Xih8FPntb7R9D1b39zkD73x3JSOnnKeIUm61dU3BBGrum9YAdU2woNgJygjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1649678365; x=
        1649764765; bh=0qJaiZk6qAsrEaDmTUAGx++TIqfK79p9zce7kcZU8lk=; b=H
        DBAb8A1uIs4YtS4QeBTFI2ppSHZrxmkXoCN6Fs4DnlnoR2AxBxm4Jg+tg78QxZz2
        ldhwdMWmWluO0Y6uMoOVaBRmabj3ppmYBiursfWE2XMvIfxXZjtotMALISiFqe2w
        +PLGSUbxNJZSlNqBIQeJRXAapqqLB4/sAVJqC4BzMGIf7y7aepZxuqKM36VBpMc1
        DDGtsoz3fZ0cvl83sKaANHGgg9XSbKe0jX8QjVMmLljvLCobsXMcEmeqXiALXpSQ
        zaXzS0LiYfayuycfj4wgj2A6fL+fMCp8YqIVBU9/iDkhLJg2+ebC8IUgrjiPfnF5
        gsAu/2OQYDqyPDGF6husw==
X-ME-Sender: <xms:HBhUYmkb5ANZ6yHcNeOX1kwyCC6UUbin4mDazgnMfltpGPfEAo2D4A>
    <xme:HBhUYt0dgjM5n4khqg6Tffblp5ri6MtBL9ekD0LbmTaJYfFS7t_vrH3h7lJ1UVfAP
    -NqYtoZbId_Cb4ynqI>
X-ME-Received: <xmr:HBhUYkqdV_obaPjFDVMikHKt0Y2vqGOhwyj6r0MlD-lP3PuGKx0017AcvqT1Cte6X6Nvjgog1YETQ9XTWEYRbRSqa5z6fFczttfaFJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekiedggeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepveevfeffudeviedtgeethffhteeuffetfeffvdehvedvheetteehvdelfffg
    jedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpe
    dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HBhUYqngub_TQhzydet8XiOKo2NKBCT3zfx397NWrAq0QHsKR3un8Q>
    <xmx:HBhUYk1CDIja_720Rpx2yIfjIwqRoOFkZFFVrq4BZlkRs97Rsd6j4w>
    <xmx:HBhUYhsFrFZLgzStGLiSxFCLEQj_5OgSZskYIinzaXYOnAvLmS6B9A>
    <xmx:HRhUYtFOhZ3bAf29gHLX7MJzbWbnrPNScgnXl1IwU4Fln3aFXN_iEg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 11 Apr 2022 07:59:24 -0400 (EDT)
Date:   Mon, 11 Apr 2022 13:59:22 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH v0 07/10] phy: freescale: add Samsung HDMI PHY
Message-ID: <20220411115922.luv2gyutdecvsxa3@houat>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-8-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="gze2mcn7iv4mzkgz"
Content-Disposition: inline
In-Reply-To: <20220406160123.1272911-8-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--gze2mcn7iv4mzkgz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lucas,

On Wed, Apr 06, 2022 at 06:01:20PM +0200, Lucas Stach wrote:
> +static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
> +					 unsigned long parent_rate)
> +{
> +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> +
> +	if (!phy->cur_cfg)
> +		return 0;
> +
> +	return phy->cur_cfg->clk_rate;
> +}

This means that the clock will return 0 at initialization, which will
throw the rate accounting in the CCF off.

Returning 0 here isn't valid. Surely that phy has a default
configuration at boot that you could use to initialize a rate?

See https://lore.kernel.org/linux-clk/20220408091037.2041955-1-maxime@cerno.tech/

Maxime

--gze2mcn7iv4mzkgz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYlQYGgAKCRDj7w1vZxhR
xeBpAQCJcFWh2PVcJIOtynWxA1viOlH3w9X5no7GMk6bkiTkvgD7BJp9gmbCUMvt
mGBDtMSqVlbzzUn4KoAnBisVHCZ4awI=
=jPTb
-----END PGP SIGNATURE-----

--gze2mcn7iv4mzkgz--
