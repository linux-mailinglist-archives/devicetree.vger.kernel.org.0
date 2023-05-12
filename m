Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E0F870116F
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 23:40:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238399AbjELVkG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 17:40:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237001AbjELVkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 17:40:06 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AEDE5B93
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 14:40:05 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CA07C61CFB
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 21:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F23FDC433EF;
        Fri, 12 May 2023 21:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683927604;
        bh=KIkWcPr+8Ai6rs8xhYCgfBIb28NBYuUZ1jlpiLJME20=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FNJuHI2QEtiU2N37bw8ItRP1jT75L3EDor153a7oE0LMkiHQUEFmFCBf7Mz4fNaVB
         61qfrbfqHA6jyHkUNcoj6Bpluzu7qKY/G9dmN+3Kiq5++XCcImQaj8gy9IhA0akCqF
         u1RCemaM6uSCiwnAzsp1cbuAcgao4atGPkTejglHtoTwZ1OOesK8y5jaeNOtrNg0IB
         3HPCJK4qJXTtupNHyIyTPgCiDXg1EN3JbsSzglXOvYkxKCGmF7T7WY+dJoyPUxGiVA
         kknuOoeQujZsH2HKQSeWti6h8A/6vkX7hGJipeNd9qW17FNPKEGAE0OXGOTqtswo3j
         KEMWbp/WB5Fqw==
Date:   Fri, 12 May 2023 22:39:59 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, sebastian.reichel@collabora.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: add Anbernic RG353PS
Message-ID: <20230512-mothball-mongoose-724fd30fa8e4@spud>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
 <20230512162039.31132-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6W+/UUZmsps6p5qu"
Content-Disposition: inline
In-Reply-To: <20230512162039.31132-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--6W+/UUZmsps6p5qu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 12, 2023 at 11:20:38AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add devicetree binding for Anbernic RG353PS. This device is identical
> to the RG353P, except it does not have a touchscreen, does not have
> an eMMC, only includes 1GB of RAM, and ships with only the 2nd
> revision panel based on a Sitronix ST7703 controller. Support for the
> panel has been added in a separate commit.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

The see-through case looks kinda cool actually.
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ec141c937b8b..362df3f2a037 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -40,6 +40,11 @@ properties:
>            - const: anbernic,rg353p
>            - const: rockchip,rk3566
> =20
> +      - description: Anbernic RG353PS
> +        items:
> +          - const: anbernic,rg353ps
> +          - const: rockchip,rk3566
> +
>        - description: Anbernic RG353V
>          items:
>            - const: anbernic,rg353v
> --=20
> 2.34.1
>=20

--6W+/UUZmsps6p5qu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZF6yLwAKCRB4tDGHoIJi
0t21AP9rVHBoIPtOldCOdXy+x9g4qaYdLwxad4HevcZAMDjtlQD/WnT6rH7bcmwR
ZH44LV1MSD2ecdKiz8FhRzH+NntCvAk=
=JHJc
-----END PGP SIGNATURE-----

--6W+/UUZmsps6p5qu--
