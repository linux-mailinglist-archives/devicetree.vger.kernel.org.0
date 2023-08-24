Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBBB37873FA
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 17:22:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234753AbjHXPVv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 11:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239035AbjHXPVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 11:21:22 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D6119B0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 08:21:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 58E2067120
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 15:21:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8080C433C7;
        Thu, 24 Aug 2023 15:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692890479;
        bh=Qb5Yy8Vzxuufb365bzDWVQYMRsyIdkqIvKjhFzedS/s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ibdx/T0FOuVZ91It4Yy0eVvwH1jDiktRroh57kFHD9110izmKvv/9xLMf2vZnZ49U
         H3ZFfOnALpEuPmpbCFnI6qP7lmrYjL2JqiRWFKKxwa3jzq4onmpwW6JC5T8p7MEvfo
         peCFZbcpoylTRhj6IduMGMR7OtK7LqouI6ruU7rZkOPvJUCDNM/sO9VIJtm8LqvR/1
         eejrY/V1jKpUbQgzbDPz+Dg6d8UCNuIHvpOXvJ6EeDruLXWdl/mml29mkjHd2JPVVO
         GhiEPSBiAnl8h/oK8hJU8sLTTBPFN62ykUttBW+fWymQPcjUY8S6c+eBDUeSyQSKGh
         Vb01oSBnmA91w==
Date:   Thu, 24 Aug 2023 16:21:13 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        mripard@kernel.org, jagan@edgeble.ai, heiko@sntech.de,
        uwu@icenowy.me, andre.przywara@arm.com, daniel@ffwll.ch,
        airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
        noralf@tronnes.org, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 4/8] dt-bindings: usb: Add V3s compatible string for
 EHCI
Message-ID: <20230824-gallery-gracious-08d78c52019b@spud>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
 <20230823212554.378403-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tKDyxjO0ZZOvTCts"
Content-Disposition: inline
In-Reply-To: <20230823212554.378403-5-macroalpha82@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--tKDyxjO0ZZOvTCts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 04:25:50PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> The Allwinner V3s uses a generic EHCI and OHCI for USB host
> communication and the MUSB controller for OTG mode. Add compatible
> strings for the EHCI node.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Do=
cumentation/devicetree/bindings/usb/generic-ehci.yaml
> index b956bb5fada7..f37191f21501 100644
> --- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> +++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
> @@ -38,6 +38,7 @@ properties:
>                - allwinner,sun8i-a83t-ehci
>                - allwinner,sun8i-h3-ehci
>                - allwinner,sun8i-r40-ehci
> +              - allwinner,sun8i-v3s-ehci
>                - allwinner,sun9i-a80-ehci
>                - allwinner,sun20i-d1-ehci
>                - aspeed,ast2400-ehci
> --=20
> 2.34.1
>=20

--tKDyxjO0ZZOvTCts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOd1aQAKCRB4tDGHoIJi
0rMnAP9HNcnHDNc/weHJ0LuUiKQ40lr+tIW2eX9UonmPQbkuPQEA7rEsq4UGnuuB
1ola5yshSoJrJ7gTi6ydTFmzMGr+5gs=
=ltmS
-----END PGP SIGNATURE-----

--tKDyxjO0ZZOvTCts--
