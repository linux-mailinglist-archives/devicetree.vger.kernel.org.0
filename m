Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEF9A76BEF2
	for <lists+devicetree@lfdr.de>; Tue,  1 Aug 2023 23:05:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjHAVF3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Aug 2023 17:05:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbjHAVFT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Aug 2023 17:05:19 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18F8D129
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 14:05:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A1BC66170E
        for <devicetree@vger.kernel.org>; Tue,  1 Aug 2023 21:05:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F9F7C433C8;
        Tue,  1 Aug 2023 21:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690923918;
        bh=k/0yaN5mmQBaHjig4m14XSWgvdujOdGEwmwnD1Xh0QI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qdHvBB+KBf3Q5Vh5WxignzVfnsRm7UTycxrpHQHg1KaoDLAaRPlAlnukQ5S3IolzI
         aXaXjddBFFEFlI+rFlP7dEAynJaEaPB/fO3FBwYv5vG7+o1F/8L3U5KKrqu8NaDyhE
         YeHzPDB7jyZyGjodLsUN15ehzsQNrB8BIqkmhspxO/IK9yUdaWuNwBDJMA/dIQxj+N
         zDtJJGcFEkDRMAXQMtLyMpJiy1LT7UJnqMGW+LwxQpgDiENzojDy+aCnJZBSyYrLbO
         HHayuDCz7HKu9uMYYqTF+J2cLTENnUcMQqFaEMWQfiisegAgCpde+G3ohl1/FeWlOy
         ZSkVTKy/mh01g==
Date:   Tue, 1 Aug 2023 22:05:13 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 07/14] dt-bindings: display: rockchip-dw-mipi-dsi:
 Document rv1126 DSI
Message-ID: <20230801-fetch-playful-e3051d981fd1@spud>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-8-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="PdhcfD1FdcYjrOlw"
Content-Disposition: inline
In-Reply-To: <20230731110012.2913742-8-jagan@edgeble.ai>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--PdhcfD1FdcYjrOlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 31, 2023 at 04:30:05PM +0530, Jagan Teki wrote:
> Document the MIPI DSI for Rockchip RV1126.
>=20
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
> Cc: dri-devel@lists.freedesktop.org
> Cc: devicetree@vger.kernel.org
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
>=20
>  .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,dw-mipi-dsi.yaml
> index 8e8a40879140..ccf79e738fa1 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi=
-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi=
-dsi.yaml
> @@ -18,6 +18,7 @@ properties:
>            - rockchip,rk3288-mipi-dsi
>            - rockchip,rk3399-mipi-dsi
>            - rockchip,rk3568-mipi-dsi
> +          - rockchip,rv1126-mipi-dsi
>        - const: snps,dw-mipi-dsi
> =20
>    interrupts:
> @@ -77,6 +78,7 @@ allOf:
>              enum:
>                - rockchip,px30-mipi-dsi
>                - rockchip,rk3568-mipi-dsi
> +              - rockchip,rv1126-mipi-dsi
> =20
>      then:
>        properties:
> --=20
> 2.25.1
>=20

--PdhcfD1FdcYjrOlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZMlziQAKCRB4tDGHoIJi
0gcPAP4gYxp0Dt+dfNq++YlKsOoCR+vDHgItHbVYbqVWUVx9igD/QtRuD+0/S51/
eB12vTH+tqtbNz+9UQ1y1/p1e1VOSw4=
=r80M
-----END PGP SIGNATURE-----

--PdhcfD1FdcYjrOlw--
