Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1085B3A70
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 16:12:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiIIOMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 10:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiIIOMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 10:12:54 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 322D4A6C22
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 07:12:54 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oWeUW-0005i0-Q7; Fri, 09 Sep 2022 15:56:20 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, cl@rock-chips.com,
        s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org,
        kishon@ti.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
Date:   Fri, 09 Sep 2022 15:56:19 +0200
Message-ID: <19907775.sIn9rWBj0N@diego>
In-Reply-To: <20220906174823.28561-3-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com> <20220906174823.28561-3-macroalpha82@gmail.com>
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

Am Dienstag, 6. September 2022, 19:48:20 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a compatible string for the rk3568 dsi-dphy.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index 8a3032a3bd73..5c35e5ceec0b 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -18,6 +18,7 @@ properties:
>        - rockchip,px30-dsi-dphy
>        - rockchip,rk3128-dsi-dphy
>        - rockchip,rk3368-dsi-dphy
> +      - rockchip,rk3568-dsi-dphy
>  
>    reg:
>      maxItems: 1
> 




