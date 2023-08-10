Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBA13778188
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 21:28:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231426AbjHJT2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 15:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230327AbjHJT2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 15:28:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 270D01728
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 12:28:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B0534667E5
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 19:28:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D23F6C433C7;
        Thu, 10 Aug 2023 19:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691695732;
        bh=IEzU2DKKPUYeJ2z2QsiU9Rp2PhhCyyWQFd1ITrF1zUU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=l5LLl2rsvkRG17mG6WMeOcShoItFHlO0zl6abEQcJpbIjgoEXoXpszP4cfX8C5Hjs
         0+TYU7GCRf4PoAUOeYSedzKZZ/3FocmtbiHSC2B7rMApA8omTiaHNi5iz1orMwlNRg
         bEOfiPKjRNNWnbGRK8R7LZL5/LurlI4KhdGEJ12z+VQI+o22Kqino2EichPTlWaUkS
         ToN9u4EMRCQX/EW/mMdDE7FdBIajaOd9ptHz13bgpYjwOgR6R+Q334zrGeuEEsbNFL
         BEq2FhsVZZ1kBdnUzNgjrg9k9Ydsq2wGsgJrkvi5UgnzVa3ZOb8JOy48R010wMh59R
         uD+lBCRD5pzMQ==
Date:   Thu, 10 Aug 2023 20:28:47 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, neil.armstrong@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: display: newvision,nv3051d: Add
 Anbernic 351V Support
Message-ID: <20230810-settling-greyhound-cb9ef7048a2b@spud>
References: <20230809153941.1172-1-macroalpha82@gmail.com>
 <20230809153941.1172-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="MzyQSsnUd6NUiXUc"
Content-Disposition: inline
In-Reply-To: <20230809153941.1172-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--MzyQSsnUd6NUiXUc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 09, 2023 at 10:39:40AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Document the Anbernic RG351V panel, which appears to be identical to
> the panel used in their 353 series except for in inclusion of an
> additional DSI format flag.

Sure?
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml       | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv=
3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv30=
51d.yaml
> index 116c1b6030a2..576f3640cb33 100644
> --- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.y=
aml
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.y=
aml
> @@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: NewVision NV3051D based LCD panel
> =20
>  description: |
> -  The NewVision NV3051D is a driver chip used to drive DSI panels. For n=
ow,
> -  this driver only supports the 640x480 panels found in the Anbernic RG3=
53
> -  based devices.
> +  The NewVision NV3051D is a driver chip used to drive DSI panels.
> =20
>  maintainers:
>    - Chris Morgan <macromorgan@hotmail.com>
> @@ -19,11 +17,15 @@ allOf:
> =20
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - anbernic,rg353p-panel
> -          - anbernic,rg353v-panel
> -      - const: newvision,nv3051d
> +    oneOf:
> +      - items:
> +          - enum:
> +              - anbernic,rg353p-panel
> +              - anbernic,rg353v-panel
> +          - const: newvision,nv3051d
> +
> +      - items:
> +          - const: anbernic,rg351v-panel
> =20
>    reg: true
>    backlight: true
> --=20
> 2.34.1
>=20

--MzyQSsnUd6NUiXUc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZNU6bwAKCRB4tDGHoIJi
0kd7AQD8CIJknzMrEg/5OOgz+XcfwEtfPq/RrBpHSWThntRYvwD/W08epyTcTLlc
p6rlrgGoUFiBQAOQJtNmc/AOAppGFQk=
=X2WQ
-----END PGP SIGNATURE-----

--MzyQSsnUd6NUiXUc--
