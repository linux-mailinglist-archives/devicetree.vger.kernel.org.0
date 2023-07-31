Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D82B76A22A
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 22:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjGaUtc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 16:49:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjGaUtb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 16:49:31 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 871FD198B
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:49:29 -0700 (PDT)
Received: from i53875aa8.versanet.de ([83.135.90.168] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1qQZpX-0008Uq-4l; Mon, 31 Jul 2023 22:49:27 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Cc:     Jagan Teki <jagan@edgeble.ai>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 03/14] dt-bindings: phy: rockchip-inno-dsidphy: Document rv1126
Date:   Mon, 31 Jul 2023 22:49:26 +0200
Message-ID: <4851208.31r3eYUQgx@diego>
In-Reply-To: <20230731110012.2913742-4-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
 <20230731110012.2913742-4-jagan@edgeble.ai>
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

Am Montag, 31. Juli 2023, 13:00:01 CEST schrieb Jagan Teki:
> Document a compatible string for the rv1126 dsi-dphy.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

Acked-by: Heiko Stuebner <heiko@sntech.de>

> ---
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Kishon Vijay Abraham I <kishon@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Conor Dooley <conor+dt@kernel.org>
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index 5c35e5ceec0b..46e64fa293d5 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - rockchip,rk3128-dsi-dphy
>        - rockchip,rk3368-dsi-dphy
>        - rockchip,rk3568-dsi-dphy
> +      - rockchip,rv1126-dsi-dphy
>  
>    reg:
>      maxItems: 1
> 




