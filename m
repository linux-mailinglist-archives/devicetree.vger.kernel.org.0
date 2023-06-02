Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86DC3720877
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 19:37:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236139AbjFBRhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 13:37:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236309AbjFBRhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 13:37:47 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FE91B8
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 10:37:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8076265145
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 17:37:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9214C433D2;
        Fri,  2 Jun 2023 17:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685727465;
        bh=DhsHEam7rGf6X12GpQgdkg9oNljtfR9wdREkX9aSVnE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bqHiRtWsIWb4Em/AgWt+8Ew2qsrUY+JmJoiclHA57DJbFvd3IZLUQ2JN4yhHV3qqg
         mGtPB4vhMNTgIpQQ06fU0fPVUo9cGdv2DCtGmNp+JrX5YdXXNN+a3ZDZ3FnLBeSMOK
         w/ltk4oGNKP2brSbyPigokf5PyxWUaw+MDprdKcg4uzUWap3JBixNyvUMO4PrZfm0j
         KEdjaq9RtYeSJLV08bGFiCHSnUrXM+wypPlhqpG6hhlY1SFUopG5haydRY2fqDlyiL
         NPN84WzKhtDVUE9XaIbRzCFGXOv51bv0VfAEOQbjKluO0d/T8ACo8Ccu6lXqWzR179
         gK1RXVpECslSA==
Date:   Fri, 2 Jun 2023 18:37:41 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: arm: bcm: Add bindings for Buffalo
 WZR-1166DHP(2)
Message-ID: <20230602-buffer-uncut-b43aa547e5bf@spud>
References: <20230602153657.11362-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="w39tAt89TiGZDOWF"
Content-Disposition: inline
In-Reply-To: <20230602153657.11362-1-zajec5@gmail.com>
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--w39tAt89TiGZDOWF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 02, 2023 at 05:36:57PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Add two more Northstar devices based on the BCM4708 SoC. Linux already
> contains DTS files for both.
>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml =
b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> index cc34025fdc78..5c3ac97e8728 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> @@ -25,6 +25,8 @@ properties:
>            - enum:
>                - asus,rt-ac56u
>                - asus,rt-ac68u
> +              - buffalo,wzr-1166dhp
> +              - buffalo,wzr-1166dhp2
>                - buffalo,wzr-1750dhp
>                - linksys,ea6300-v1
>                - linksys,ea6500-v2
> --=20
> 2.35.3
>=20

--w39tAt89TiGZDOWF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZHoo5QAKCRB4tDGHoIJi
0kUrAQCNyNPwm9VycQSaxkuG3+3kBgSGK2dAJJ/pEp0B77dkiQD+OfQp5GM8dn7w
kD52MJ7kznMJrYEOyjwm90G2BxGiigU=
=2IV0
-----END PGP SIGNATURE-----

--w39tAt89TiGZDOWF--
