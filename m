Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8904670C405
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 19:08:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbjEVRIo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 13:08:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231321AbjEVRIn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 13:08:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96E3EFA
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 10:08:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 21F2361F9D
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 17:08:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD629C433EF;
        Mon, 22 May 2023 17:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684775320;
        bh=W88oJ+jhrQa/HleWShWTyCrzGtdp879Aev4p04UFuxs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GXcnLECb5J6CNi0wX/juQrLcM0qZDevZar7mzIj5sd92kEa61Al+A6J/LAMrRILln
         TZ51kIkdRALIKYRASZNZ5nNJdzy1XvF7w/VeG02PhYwrp1T5MtnUgPP510SzzVjnC7
         ppC5tRzFDdW0lamLMguboJbDtUTHXuM+9NE5JdxNNQXR5ZHklNuXUAg1EbHSe2+nUI
         T6IqPpSxR7KDZPCSYcocjOXmqYeJAX2int6ERD6OyysJRHt0K1pmpqM7/YUZ8CDgjh
         njPQn8nL8mixG6YrPAeEyxORLChTsSFc4t6nfIUwKitqMXhQJC3L9TkYWLH8QAD5U1
         i294a0nFjqEIA==
Date:   Mon, 22 May 2023 18:08:35 +0100
From:   Conor Dooley <conor@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: unify version notation of
 Northstar devices
Message-ID: <20230522-bacterium-quality-b51ee7dc124c@spud>
References: <20230520112601.11821-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="imFe2BxjNIhP2SoP"
Content-Disposition: inline
In-Reply-To: <20230520112601.11821-1-zajec5@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--imFe2BxjNIhP2SoP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 20, 2023 at 01:26:00PM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Always use a minus/hyphen char to separate model from version. This
> unifies binding's "compatible" strings.

Am I just being paranoid in thinking that software may have relied on
the former naming scheme?
On the other hand, my OCD really likes the change.

>=20
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/arm/bcm/brcm,bcm4708.yaml    | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml =
b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> index 454b0e93245d..cc34025fdc78 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> @@ -28,10 +28,10 @@ properties:
>                - buffalo,wzr-1750dhp
>                - linksys,ea6300-v1
>                - linksys,ea6500-v2
> -              - luxul,xap-1510v1
> +              - luxul,xap-1510-v1
>                - luxul,xwc-1000
> -              - netgear,r6250v1
> -              - netgear,r6300v2
> +              - netgear,r6250-v1
> +              - netgear,r6300-v2
>                - smartrg,sr400ac
>                - brcm,bcm94708
>            - const: brcm,bcm4708
> @@ -42,8 +42,8 @@ properties:
>                - asus,rt-n18u
>                - buffalo,wzr-600dhp2
>                - buffalo,wzr-900dhp
> -              - luxul,xap-1410v1
> -              - luxul,xwr-1200v1
> +              - luxul,xap-1410-v1
> +              - luxul,xwr-1200-v1
>                - tplink,archer-c5-v2
>            - const: brcm,bcm47081
>            - const: brcm,bcm4708
> @@ -72,7 +72,7 @@ properties:
>                - luxul,xap-1610-v1
>                - luxul,xbr-4500-v1
>                - luxul,xwc-2000-v1
> -              - luxul,xwr-3100v1
> +              - luxul,xwr-3100-v1
>                - luxul,xwr-3150-v1
>                - netgear,r8500
>                - phicomm,k3
> --=20
> 2.35.3
>=20

--imFe2BxjNIhP2SoP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZGuhkwAKCRB4tDGHoIJi
0sOJAQCyDJqp5/2UcUdVS6F21qbDHBZt0EzTEdMSrFcPqijLjAEArJgL5/QBZA2u
F2bNceV0WdeTohpnmrbfWzdJUpWBmAs=
=6B15
-----END PGP SIGNATURE-----

--imFe2BxjNIhP2SoP--
