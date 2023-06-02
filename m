Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FA30720874
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 19:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236765AbjFBRgr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 13:36:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236683AbjFBRgr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 13:36:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6128B1B9
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 10:36:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F2FD260ED1
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 17:36:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06835C433D2;
        Fri,  2 Jun 2023 17:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685727405;
        bh=H8cO8pwKMsgmyagKn0dUw4ty1lVYzMAg/B0nJrCbPPk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=B3UoMKi01tdjuM/yNwb/HhcXMoDmwMRx6E0jpL0EYmygJ3nl3PhYoZpFQ3/amrjU0
         012lWNGdxHUOFz17Rc1NFuVX4va5gaINxLhqCYfwi5ToMFkr3XqILCaQ+QoxglfgMR
         gWQZfK2xamdbjj0hZU2FY3RGskBPCg7HsOumXoU+0EFlt7aG/td363RJWDsEKDcPOO
         NJtToqFgvtVuoCSyCBIqzqRJ43tFig6mJNJ5aiPEF6VIKKcXoRT3WPEv8+iim3W1gy
         AkQK6IX5DFdvdwoBGEKwmGFqbw4+p1Px2jIDzdanFS+B0romUON5BYhO06U+RPE3pU
         47EZGKwpy8MNw==
Date:   Fri, 2 Jun 2023 18:36:40 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pratyush Yadav <ptyadav@amazon.de>,
        Dhruva Gole <d-gole@ti.com>, linux-mtd@lists.infradead.org,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: mtd: partitions: Include TP-Link SafeLoader
 in allowed list
Message-ID: <20230602-concise-lent-612301adb856@spud>
References: <20230602161023.14739-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="o5EchAN4kPIujJ+I"
Content-Disposition: inline
In-Reply-To: <20230602161023.14739-1-zajec5@gmail.com>
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--o5EchAN4kPIujJ+I
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 02, 2023 at 06:10:23PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> This fixes validation of Linux hosted DTS files for Northstar based
> TP-Link routers.

What is the actual error that this fixes?

Cheers,
Conor.

>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/mtd/partitions/partitions.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/partitions.=
yaml b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
> index 2edc65e0e361..1dda2c80747b 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
> @@ -21,6 +21,7 @@ oneOf:
>    - $ref: linksys,ns-partitions.yaml
>    - $ref: qcom,smem-part.yaml
>    - $ref: redboot-fis.yaml
> +  - $ref: tplink,safeloader-partitions.yaml
> =20
>  properties:
>    compatible: true
> --=20
> 2.35.3
>=20

--o5EchAN4kPIujJ+I
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHooqAAKCRB4tDGHoIJi
0rLIAQDtgZZe23hQKLk5rCFrwCL8nX7+5VxmDD0sKDgn55FjyQD9HdyW13V8NeR4
wtJpUiHFEqfkD/ZXnOxfrfeksxuQowc=
=h+rh
-----END PGP SIGNATURE-----

--o5EchAN4kPIujJ+I--
