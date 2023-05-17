Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8649C706B03
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 16:25:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229815AbjEQOZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 10:25:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbjEQOZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 10:25:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2866131
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 07:25:10 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8EFE763EDB
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 14:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92E1EC433D2;
        Wed, 17 May 2023 14:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684333510;
        bh=1Dhwlac21N7ey15bOhy39Z0+Sh+RslIFzrW1eG0d8Dc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i0C4K8amXrs4WpK0bt4cyjr3Zoz1ySv2+y+FKIS8z/UKEcYSo+pbMGiGsIb6Hcru2
         KZfYnis/IKZlbnXk8n8F1kTLDggJNXQjUC+IiFi4C/8+XLLCT3aqwZYNLthxUcaK/e
         tFnj77Ht25StijnoYLVWd9ilTEywf7QThhbFvWTZj2jaXQydVNqFFkC5LvEC6G3byX
         qL91uNa5lVPwPquhQHREw4Qe1yCYjBXwUl3kN13gEeeR9jEKNoVAlz8DM5WQIYGgbh
         la2mPUWaWRAQc8Amz6P8kn4jMX6kH7dMwV3Mmdm7CebANznOtQ+oYliUFWeyY/kEIC
         Mou9zngaVJJWw==
Date:   Wed, 17 May 2023 23:25:06 +0900
From:   Mark Brown <broonie@kernel.org>
To:     AS50 CTLin0 <ctlin0@nuvoton.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
Subject: Re: [PATCH] ASoC: dt-bindings: nau8315: Convert to dtschema
Message-ID: <ZGTjwpR4ZKKtXy4m@finisterre.sirena.org.uk>
References: <20230516054944.1081808-1-CTLIN0@nuvoton.com>
 <e2819075-c41f-716b-023f-fb1ad13a3466@linaro.org>
 <cbeabc50-35f7-70ee-5165-8a785513b1fc@nuvoton.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="x2XVQy2HSnCc2cWo"
Content-Disposition: inline
In-Reply-To: <cbeabc50-35f7-70ee-5165-8a785513b1fc@nuvoton.com>
X-Cookie: Avoid contact with eyes.
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--x2XVQy2HSnCc2cWo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 17, 2023 at 11:28:46AM +0800, AS50 CTLin0 wrote:
> On 5/17/2023 12:10 AM, Krzysztof Kozlowski wrote:

> > The only thing driver is doing is to toggle this pin. If it is missing
> > the entire driver is noop, thus above comment is a bit funny. It
> > probably should be mandatory pin. But I see it was there since beginning
> > so ok.

No, it's not just that - the driver also describes the supported formats
and rates to the subsystem so we can constrain the DAI appropraitely.

--x2XVQy2HSnCc2cWo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRk478ACgkQJNaLcl1U
h9CtjQf/U8+HjwzklTu3T4CIP10H9Oh9JrvIuqh5nk+6nXZxz75nPZg+2ugCBUoN
6W2nhN0DRI6rPf88jFJ/OO0qS6d0Vvf2l3FeXKconU2I71gifGtQxt+hvCsODqkI
00wulEv+2MNNAec1HyeDLYoF2ezD1s1ZjsKtryhbt3DAWVzXN8X2lExxWpzG2a9b
6onuu0zVLGlGgYw0BeIE+KhpIzqaRuk9ogJnGxqUlhlnanJXvHfJR75dWEGOPW6m
6Hf5TqeNZa8xn2d2El3o748/umwUxoimn5/qioGA2S02c7V2ExHW7YICu883ief5
a0DjxBswhr/PJh5rPX9Hi34ZhZJliA==
=594/
-----END PGP SIGNATURE-----

--x2XVQy2HSnCc2cWo--
