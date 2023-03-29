Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AAA66CEC4A
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 16:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjC2O7r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 10:59:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230346AbjC2O7q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 10:59:46 -0400
Received: from new2-smtp.messagingengine.com (new2-smtp.messagingengine.com [66.111.4.224])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD9E2113
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 07:59:45 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
        by mailnew.nyi.internal (Postfix) with ESMTP id 89213582152;
        Wed, 29 Mar 2023 10:59:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 29 Mar 2023 10:59:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
        :cc:content-type:content-type:date:date:from:from:in-reply-to
        :in-reply-to:message-id:mime-version:references:reply-to:sender
        :subject:subject:to:to; s=fm3; t=1680101982; x=1680109182; bh=/R
        f1DBC2WMIYkr+Jb4z1OBHAGwhx+V0jxtj3s2JHCvw=; b=m1v7hQovafx4X39Fr1
        nAXXtqcTTowIyUnVN4Npm7RonqPcHBDhODQRLpuH2gHj69N6ftuzhHkkCvKN2OZg
        jRULbaAiru1V6PK3zTxxrkeh+JizuIYLLMR3DAIFgBJUav+1JXYKEX0LVnM+uIyE
        94Ooonr4P73Zt0WtdxRtEAF2YnCyTrhiJpDUPzceqx63EDSyeQyBuFqJ6u5/U4K2
        xzIyGBjFNoRUFaG9sN6NKvBAb5CONgWNxUv6ku0OHgW5VBeZ/RESlpLB5bl6OQDQ
        bYev7JdqmOZiZVDOdX7j5HJdzsMRfJTReE7p4+fEs7d6RHRXbPa4bm1X4INWr3g6
        19kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:content-type:date:date
        :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; t=1680101982; x=1680109182; bh=/Rf1DBC2WMIYk
        r+Jb4z1OBHAGwhx+V0jxtj3s2JHCvw=; b=kMHIWsO1SOZmGAa79IJB54hecQ6S/
        +U8TJbH+FRh9WPxducMnPcwyTfz/9LBdRWPrYCNsqU2J1ja64Zz9/qiMTJRTm0n0
        BXxvzgDeHtHWpwvmIJDCPqa/CjA8idpG3+fjDpkf0K56SsA+XU9hmJqMq64PmCAJ
        596JBWTw6gdZCUyPi2eS3BcZRowvbcECHTJk85MGPuwBfHkEVQmMpRrP74x6uIZ9
        JwnQZJzXP/XrSpGZ+USm093L/8+V9+NtiLIg/pC7e04bVJUYxpPuhkL/GUk4f/0i
        N742A6Ue88srdSRjTX4/JSSCcgjGmFgwJZs0+48iCedKcXdVgF+sSQWfA==
X-ME-Sender: <xms:XVIkZHgtT0gPuwRw9nXiS0Id8VF418hbhxy5k1UZnkwVrLdowgYHCw>
    <xme:XVIkZEBIJi-4V2rEE2AfrtisgUHFESdubCiSuRgNTIJ5RHm73PFSoJWUq-5T5ugCV
    nwPtGcVtLpyff6hc5E>
X-ME-Received: <xmr:XVIkZHGbloo5-4oO3kF5gujdkzOFhdNrLtU_fS18W1O2MWqAiUmpXYPkI18>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehiedgkeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeetfefffefgkedtfefgledugfdtjeefjedvtddtkeetieffjedvgfehheff
    hfevudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:XVIkZEQh1-DjZir-ksDy4eB9T04PPUBf0nf1BCXisvYw-4hvPV9nSg>
    <xmx:XVIkZEwGcOLr28Q6yLFYj___AhuNzFDthXSGCHfhreS6NNLUwILz0g>
    <xmx:XVIkZK6SUUYOw1pkgsmL0C12TaUIVQhaUTtGHEJuRfdpcQOXKsHScw>
    <xmx:XlIkZBHupX7Y1xm-7sqTSjer9ypR2T-wBft2y2xjwLwdbGjUyQW9nA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Mar 2023 10:59:40 -0400 (EDT)
Date:   Wed, 29 Mar 2023 16:59:39 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Subject: Re: [PATCH v7 12/12] drm: sun4: dsi: Convert to bridge driver
Message-ID: <20230329145939.7zcex4x2pipivuj4@penduick>
References: <20230329131929.1328612-1-jagan@amarulasolutions.com>
 <20230329131929.1328612-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6fhpyyv3p3yi6x2l"
Content-Disposition: inline
In-Reply-To: <20230329131929.1328612-3-jagan@amarulasolutions.com>
X-Spam-Status: No, score=-0.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--6fhpyyv3p3yi6x2l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

The patch prefix should be drm/sun4i:

On Wed, Mar 29, 2023 at 06:49:29PM +0530, Jagan Teki wrote:
> Convert the encoder to bridge driver in order to standardize on a
> single API by supporting all varients of downstream bridge devices.

Which variant, and why do we need to convert to a bridge to support all of =
them?

> The drm_encoder can't be removed as it's exposed to userspace, so it
> then becomes a dumb encoder, without any operation implemented.
>=20
> Tested on DSI Panel, DSI Bridge, I2C-Configured DSI Bridge.
>=20
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

[...]

> +static const struct component_ops sun6i_dsi_ops;
> +
>  static int sun6i_dsi_attach(struct mipi_dsi_host *host,
>  			    struct mipi_dsi_device *device)
>  {
>  	struct sun6i_dsi *dsi =3D host_to_sun6i_dsi(host);
> -	struct drm_panel *panel =3D of_drm_find_panel(device->dev.of_node);

That one looks unrelated. Why do you need that change?

Maxime

--6fhpyyv3p3yi6x2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZCRSWwAKCRDj7w1vZxhR
xVxjAQDRiN3Xre3IIz1T4C43lttqvpbPqcE2DHMmgqXL79FOnwD+MQuYxHs10wNq
DIbqsDZm77R7tky3bD6gIHherQx6qw0=
=ztGu
-----END PGP SIGNATURE-----

--6fhpyyv3p3yi6x2l--
