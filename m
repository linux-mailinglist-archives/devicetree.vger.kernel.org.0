Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A83815AD95A
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 21:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiIETEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 15:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbiIETEC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 15:04:02 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D270857570
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 12:03:59 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oVHNy-0001Ct-As; Mon, 05 Sep 2022 21:03:54 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>, lee@kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register compatible
Date:   Mon, 05 Sep 2022 21:03:53 +0200
Message-ID: <4707456.3daJWjYHZt@diego>
In-Reply-To: <20220831182629.79255-5-sebastian.reichel@collabora.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com> <20220831182629.79255-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sebastian,

Am Mittwoch, 31. August 2022, 20:26:27 CEST schrieb Sebastian Reichel:
> Document rk3588 compatible for QoS registers.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

change looks good, but this is a mfd-binding. So while the rest is for me
to apply, for the mfd syscon we need either Lee to apply it, or an Ack
from him for me to pick it up.


Heiko


> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index c10f0b577268..5369a56b8be1 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -59,6 +59,7 @@ properties:
>                - rockchip,rk3368-qos
>                - rockchip,rk3399-qos
>                - rockchip,rk3568-qos
> +              - rockchip,rk3588-qos
>                - samsung,exynos3-sysreg
>                - samsung,exynos4-sysreg
>                - samsung,exynos5-sysreg
> 




