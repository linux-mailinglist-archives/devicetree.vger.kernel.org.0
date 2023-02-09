Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1AD69079A
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 12:42:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbjBILms (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 06:42:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbjBILmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 06:42:24 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 824F181845
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 03:30:46 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E8450B820F0
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 11:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32EFBC433EF;
        Thu,  9 Feb 2023 11:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675942182;
        bh=+7RFwa1I0v/qKrQVzAsd84ldsHARLTjT4cNOA/yPUC0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lLfzzJ/toiiIvdAXYMATPZYY4XGwRWvtURK9D0ck+oulllRjswUl6RY9ie4zwStdM
         G8wBnNd1mqol/Y7wVHgWGbj/waa1/VyDHsLxsGNYl8+no9hbaBTZ2lZKHdaNSA0zjC
         uVGdl6wAma73Iyvkh0Igqx9FWg8t+N9j+ziUrzkItsH8hT0dFOZg46AyWS3QyoKcj1
         4Ss2uCjFD2yh/E6DXQhwl+W2iqyy/nUd9VCzFdpRzgsm6C4Ql/mJXH01+HuL3dXwgE
         cmLqMQNifwW0R4jbMtuE8U5w47l6YckejXGofKgUynKiUDrMIgSpC5LfJ8OoXcoLm2
         e4Nv6R4xLICpw==
Date:   Thu, 9 Feb 2023 11:29:35 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3] ASoC: SMA1303: Remove the sysclk setting in devicetree
Message-ID: <Y+TZH6qQ7Old+53F@sirena.org.uk>
References: <20230209084903.13000-2-kiseok.jo@irondevice.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wBHpl9UONE0UrCV5"
Content-Disposition: inline
In-Reply-To: <20230209084903.13000-2-kiseok.jo@irondevice.com>
X-Cookie: Anger is momentary madness.
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--wBHpl9UONE0UrCV5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 09, 2023 at 08:49:03AM +0000, Kiseok Jo wrote:
> In SMA1303, this device does not support MCLK.
> So it need to remove sysclk setting in devicetree.
> v2: Modify the sysclk setting - using devm_clk_get for mclk.

Don't worry about it for now but the v2 above should go after the ---

>=20
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

here.  This means the tools know they can remove it from the commit when
applying things to git.  Like I say no need to worry about it for this
submission - I'll fix it up locally, no need to resend.

--wBHpl9UONE0UrCV5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmPk2R4ACgkQJNaLcl1U
h9CHTAf/U4ONdeOv8dyg+zb9EsLhCd9SAg6M8ohWpb0TghO+oXLMBN+0kPU3vJvB
FGhHRGjj8bJ8kMWDgLfG5pX+edXuPBTgVYyCHUdlFHSToSw42txhGMD7ht8G9xbb
zoeWvSpWOMQrRuXxeYIAKsx3R6zazcs3Sl6yHCIwr5eZUSD0ntq/gVXWszg62rSd
wlbf508nitHgP4fNmNEoqvFpcwbihJsDeVRyBwLfXGXFmAh07I7gqnKTEew25l34
ME92dlDr/U+FsZBB8Kuk8n5Qmd63zatDGayeTMh5ZYU4FPTAIpRoz999aiPljPlO
uEjBOsdFOs7U4WtxyX9Yz2w/NEl/Vg==
=xGrV
-----END PGP SIGNATURE-----

--wBHpl9UONE0UrCV5--
