Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97ED56899DF
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 14:37:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232879AbjBCNh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 08:37:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232882AbjBCNhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 08:37:25 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B091979F20
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 05:37:19 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 483DE61F1F
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 13:37:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7AB1C433EF;
        Fri,  3 Feb 2023 13:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675431438;
        bh=unIYp8TTE723ciZu0oNaexw40yoC6GI+uvWw+r5E8/4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NH+8wi0cH0SroieKSfjKxRAG17IFzTDDe/ecV2yk9TBDodw31G45d8EDqJZm+hu+M
         29QxYPufaZv+Jdeybi0FaIbsKzi/3M4MaqMa8Rk3c2++tGC4DWp4EoV2zaLOC69i4r
         nq+/QJc6AQbb00G7x30Ietzfodg65ZmqrxN+8PZpRkyyI00lgRdvpFNU+bAncV9dDN
         aCC5CZ2UWMUdptzDcEeoTaHaF1aV2tCF4xTnq/WBgmwZ3RKMEvY6qNsBwbsyrze83Q
         oBUyGVQKtApllvVxI2edPvhq8AtbLJEv+RkC6hRkKTKY5tMUFNBNJ7FwuY0KrnB8n/
         RinCyGhvm2QZQ==
Date:   Fri, 3 Feb 2023 13:37:13 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: irondevice,sma1303: Rework
 binding and add missing properties
Message-ID: <Y90OCX002gLuf+Jx@sirena.org.uk>
References: <20230203094239.25700-1-kiseok.jo@irondevice.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="N+stlK+T/xtXLQ+R"
Content-Disposition: inline
In-Reply-To: <20230203094239.25700-1-kiseok.jo@irondevice.com>
X-Cookie: No animals were injured.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--N+stlK+T/xtXLQ+R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 03, 2023 at 09:42:37AM +0000, Kiseok Jo wrote:

> +  sys-clk-id:
> +    description:
> +      select the using system clock.
> +      0 = External Clock 19.2MHz
> +      1 = External Clock 24.576MHz
> +      2 = Using PLL in MCLK
> +      3 = Using PLL in BCLK
> +    $ref: "/schemas/types.yaml#/definitions/uint32"
> +    maximum: 3
> +    default: 3

We really shouldn't have this as a custom property, we should be using
a combination of the clock bindings.

In the driver this would turn into using clk_get() to get the MCLK, then
we can query the rate with clk_get_rate() and use option 0 or 1 if the
rate matches, or the PLL otherwise.  If we fail to get MCLK then we can
fall back to using BCLK.

--N+stlK+T/xtXLQ+R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmPdDgkACgkQJNaLcl1U
h9B8LQf8DFGH+a04ycoUUBFk1KB8KTcpcsg9bxqAEV3wXSQAVXXcXmni+9egtWxY
HAB9/+P+RG2wlQvJeWipCc43kH583d8RFlQazZRbQIi0ZuLdurHxIvnkFMZTFMLY
/+S9khQK8N0IkOg3dmiji8E6LtxULO7zRM0yRfBkQekQ+1qdjotJaI/Zyt5j4USP
coO7Zws3z8zFSzEIXK7Puv+8XoUe4UjI2sHdGmad9THE9AJKkmuxMoZ6jn/qG3oa
XSu9rd2iaisjhIzM3V3+02YvKxQCHveFmJgEFgHVJk3aZCTgad4GysPWxsADIO9p
kyoTjhxgHmxicvrCVvJaPHs88CR1Qw==
=k4Fw
-----END PGP SIGNATURE-----

--N+stlK+T/xtXLQ+R--
