Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97399557FD5
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232027AbiFWQ3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232285AbiFWQ3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:29:40 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEF8F46B32
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:29:39 -0700 (PDT)
Received: from [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: obbardc)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id AEEC266017E4;
        Thu, 23 Jun 2022 17:29:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001778;
        bh=0fcf2Og5+kAlUKXKZjiLdn0YJRF3DsBLftoZV9IJdiw=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=l+w2abAK8h9HgrwpbWg/B7Xm/ZaYbCCurnXZ5ciUQbyFRDTaxvAMFlniqbO8hgs+S
         981JtASOd+mligWTmMli1hppeFeGWghNcEEmC4+0/Y5fiTssfNFoMTBmp4jqnSulK2
         p3GPoLcdzkwTAMDKAJ7NogogOjBqlbHZ8Grr9PtOqIz1Stm9ynrF2g90OPyhvnnKoN
         PpgFpwZFFBIm6918/vzZHy3hIJJZ0eMY7mB4GTJwpwL79QTmvRjQ5HO7uGbM1nOGnS
         gCpZhnxZuTUGBOhqTMSx23f4Yjarc3OfE+HPqmMYDyAYDZUutn/IrDq9sMpMQuSFJG
         1eJdb/IWM8ohg==
Message-ID: <0a302a938736d3d5dc9e158718f2cd0c33b53ea4.camel@collabora.com>
Subject: Re: [PATCH 1/6] dt-bindings: arm: rockchip: add rk3388 compatible
 string to pmu.yaml
From:   Christopher Obbard <chris.obbard@collabora.com>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Date:   Thu, 23 Jun 2022 17:29:33 +0100
In-Reply-To: <20220623162309.243766-2-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
         <20220623162309.243766-2-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.2-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2022-06-23 at 18:23 +0200, Sebastian Reichel wrote:
> Add the compatible for the pmu mfd on rk3388.

Hey Sebastian,

Also looks looks like this (and the patch subject) should instead refer
to the rk3588 ?

Thanks!
Chris


>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> =C2=A0Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
> =C2=A01 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> index 5ece38065e54..4c645049c15b 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> @@ -25,6 +25,7 @@ select:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,r=
k3368-pmu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,r=
k3399-pmu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,r=
k3568-pmu
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,rk3588=
-pmu
> =C2=A0
> =C2=A0=C2=A0 required:
> =C2=A0=C2=A0=C2=A0=C2=A0 - compatible
> @@ -39,6 +40,7 @@ properties:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,r=
k3368-pmu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,r=
k3399-pmu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,r=
k3568-pmu
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - rockchip,rk3588=
-pmu
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: syscon
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - const: simple-mfd
> =C2=A0
> --=20
> 2.35.1
>=20
>=20
