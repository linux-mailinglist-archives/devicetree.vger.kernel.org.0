Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AEE9759AFC
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 18:38:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230191AbjGSQiC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 12:38:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbjGSQiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 12:38:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D0D4211F
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 09:37:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 212EF61766
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 16:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42C57C433C8;
        Wed, 19 Jul 2023 16:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689784662;
        bh=7PipBWFg555K33ftgdGqEwMRRe75/RqoUj6M2IyGZTw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=J3cCrxgYAM6F6st1TC3HgQ9d61gWFPxO+c1ZDr1/XBQpC4ucKQmoYgtm8DGvrMr89
         EzZz0OrAIfpKyVXR7OusF9G9OUgK55X/EZ41qeIiLTghVGFsXyNGefDdHBJoy2Ho8F
         GojmjDyG/vFYKL0VbyM8y+W6P1dDl4X14m0itPwIo7Wa0hr6XwJgRgBBnw26NSAlkw
         N9jwU7inZpQV1umHISw+0172EKJvuqOPb6y2MbZ3y9qnvUXqffm489KFdx8gd4mlN4
         sxkRqSYa3oQnJz7HQhWLpLQpkxgwjvq65lN3Yis7rrMJ4va1Xj4tadWJdh/RWYmJN0
         GLfqfDxCZnlPQ==
Date:   Wed, 19 Jul 2023 17:37:38 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowskii+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCHv2] dt-bindings: reset: altr,modrst-offset is not required
 for arm64 SoCFPGA
Message-ID: <20230719-tigress-cleat-4be1de615601@spud>
References: <20230719132749.661914-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hDfPqlp0mUrFYCz4"
Content-Disposition: inline
In-Reply-To: <20230719132749.661914-1-dinguyen@kernel.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--hDfPqlp0mUrFYCz4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 19, 2023 at 08:27:49AM -0500, Dinh Nguyen wrote:
> The property "altr,modrst-offset" is only applicable to arm32 SoCFPGA
> platforms, thus it not required for all platforms.
>=20
> While at it, update my email address.
>=20
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> v2: remove the need for else statement since "altr,modrst-offset" is
>     already allowed
> ---
>  .../devicetree/bindings/reset/altr,rst-mgr.yaml      | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml b/=
Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
> index 4379cec6b35a..761c70cf9ddf 100644
> --- a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
> +++ b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Altera SOCFPGA Reset Manager
> =20
>  maintainers:
> -  - Dinh Nguyen <dinguyen@altera.com>
> +  - Dinh Nguyen <dinguyen@kernel.org>
> =20
>  properties:
>    compatible:
> @@ -32,9 +32,17 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - altr,modrst-offset
>    - '#reset-cells'
> =20
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: altr,stratix10-rst-mgr
> +then:
> +  properties:
> +    altr,modrst-offset: false
> +
>  additionalProperties: false
> =20
>  examples:
> --=20
> 2.25.1
>=20

--hDfPqlp0mUrFYCz4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZLgRUgAKCRB4tDGHoIJi
0iwjAQDk+90wZGTEwXopUHX03xmUhulXvfa3+aCr1f7zR2fQZgD+Pj9B/DIUuEVQ
nuvYdwM1xZs2sKV8L84ndO06HiVRlwU=
=zMc7
-----END PGP SIGNATURE-----

--hDfPqlp0mUrFYCz4--
