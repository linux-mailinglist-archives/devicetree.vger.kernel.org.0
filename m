Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3B087873F9
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 17:21:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbjHXPVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 11:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241562AbjHXPU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 11:20:57 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27ECF19BA
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 08:20:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B20A764AEB
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59167C433C8;
        Thu, 24 Aug 2023 15:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692890454;
        bh=c2yWFE88Z38tdkA1ropKVgWFAP74msSFydP2MZLzxWg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cI5ssbjVWyf1p9s7cRFtDpuB2PnKkFEMWIXtb4WLhxp4BYy9O4oFCeWIE3gAK1icS
         yJlZRtotKGbX0yvXTUes2HReHlsuiEjn5xiJu5rr/FAbX7KD0bKqiN5Iro+FiEUkue
         mErxIwdKMqaPwdJqqQlLFL8HcY/yvUjZZJK/nsZBY59+vIJXV4IDT34XY3YDDW8SZ7
         7SVdP3ZLDHE60zkYYQcszT0lvAkhBjOBmrmpcGFX7dGq1uFpXRFZ3LH9qSsOhC4feJ
         ri6K4SEBYwbLDY5klVhNFSQlNoHfYGocsbu9g1vtDXS49XCb+OZh8j0Zrl7iNJO+61
         Shz5FY+A+GDcw==
Date:   Thu, 24 Aug 2023 16:20:48 +0100
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
Subject: Re: [PATCH V3 1/8] dt-bindings: vendor-prefixes: document Saef
 Technology
Message-ID: <20230824-gestate-drippy-90294d7c9171@spud>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
 <20230823212554.378403-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="DClmySUOZG7cMczb"
Content-Disposition: inline
In-Reply-To: <20230823212554.378403-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--DClmySUOZG7cMczb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 23, 2023 at 04:25:47PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Document Saef Technology (https://www.saefdisplay.com/).
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index af60bf1a6664..dda90f9d264b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1151,6 +1151,8 @@ patternProperties:
>      description: Shenzhen Roofull Technology Co, Ltd
>    "^roseapplepi,.*":
>      description: RoseapplePi.org
> +  "^saef,.*":
> +    description: Saef Technology Limited
>    "^samsung,.*":
>      description: Samsung Semiconductor
>    "^samtec,.*":
> --=20
> 2.34.1
>=20

--DClmySUOZG7cMczb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZOd1TwAKCRB4tDGHoIJi
0nOmAPwPkrtyi6bQrrWZKxNquGz7TpB7S8DlF+WpOdaQ+UDH5QEAvw9Hrf7SZfin
k1TI+ocMPPNKofJRf2ElU2FZYlZCFgY=
=Sxlt
-----END PGP SIGNATURE-----

--DClmySUOZG7cMczb--
