Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97244653F24
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 12:40:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbiLVLkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 06:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbiLVLku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 06:40:50 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B7099588
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 03:40:46 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 9273DB81CF0
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 11:40:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2099C433D2;
        Thu, 22 Dec 2022 11:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671709244;
        bh=zTuzNUymVvHbTroTjuOONLQMG4wasPHUEH1HnLC8izg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=L8/4QfGY9ooe0KCepvqowVKfZIBurfxQlI0XjwGvItYyR3ZTymRtfLaZ6zVd/Jzhv
         MJ2XTakxQ+Mdp2Mfd2/zIW/MVVpgVvAaO/baBK0jcY7z5S5zP4zdxwv+7wCPxiM1Vx
         Vj8ngJDgR6mV9D28ii8BCl6s6R8Buika0jGxkWBB03dXn/LWOe68pi7z3PZ+6rfzUs
         rSMAvuLyXzg8GJYRMFSmUTlFKjid++tDjwMSxleBmDMJ7SejxJ7yvI69rn9/0TEfop
         LkFtHz+QADarQcgtIZHvC7yq2qqGc+h5z1haF2t79Utt+gjnYzBOrbMwjeicGyDGT7
         uMoPpoc69O26A==
Date:   Thu, 22 Dec 2022 11:40:39 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Jai Luthra <j-luthra@ti.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4] dt-bindings: sound: tlv320aic3x: Convert to dtschema
Message-ID: <Y6RCN9DxeW7WacPD@sirena.org.uk>
References: <20221221145216.11400-1-j-luthra@ti.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="/E1hF2BNu7Rsk/hm"
Content-Disposition: inline
In-Reply-To: <20221221145216.11400-1-j-luthra@ti.com>
X-Cookie: Yes, but which self do you want to be?
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--/E1hF2BNu7Rsk/hm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 21, 2022 at 08:22:16PM +0530, Jai Luthra wrote:
> Convert bindings for TI's TLV320AIC3x audio codecs to dtschema.
>=20
> The following properties are still found in some old dts files, but will
> be ignored by the driver:

> - assigned-clock-parents, assigned-clock-rates, assigned-clocks

These are from the common clock binding and will be handled by the clock
code.

--/E1hF2BNu7Rsk/hm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmOkQjYACgkQJNaLcl1U
h9Dgmgf/XEFtbzLCL1wn65FWzVlIblV4e8LdP/CH3v8S08vCVtPKOyJpxl/v2eow
32rjN4DNjDcxhbJ22zMEJ815ogSZ/1TE+8zpzOKiWMjKAjWwZiARqcq4CvioXeZQ
qJBmVx+ra4RHqerpUrnHVQ1tjzFz7iPoJvAQ/n2omgg7ZG0u1jnpRUati6j21o+Z
wzW7ebtQaiFLejLZDlZjQb0OfMwUvasAR/JC1RPFJNX96/N7OITvGvoeEmuGydf8
AKwLzkZg3RAjcI2MBQ4liz1aNeeP0y538ZPnQdrir00AMb9SgciJM6CgLJPZXkIf
tVDNcd6gelXr47v/ZpFevq5gVJLcSw==
=ivai
-----END PGP SIGNATURE-----

--/E1hF2BNu7Rsk/hm--
