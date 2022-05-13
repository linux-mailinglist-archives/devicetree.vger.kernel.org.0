Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF1C3526CED
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 00:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232010AbiEMW1G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 18:27:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231667AbiEMW1D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 18:27:03 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB522154B0C
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 15:26:59 -0700 (PDT)
Received: from p508fd4ce.dip0.t-ipconnect.de ([80.143.212.206] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1npdkM-0003mT-8O; Sat, 14 May 2022 00:26:54 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names mandatory for VOP2
Date:   Sat, 14 May 2022 00:26:53 +0200
Message-ID: <6824319.LvFx2qVVIh@phil>
In-Reply-To: <20220511082109.1110043-2-s.hauer@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de> <20220511082109.1110043-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob, Krzysztof,

Am Mittwoch, 11. Mai 2022, 10:21:07 CEST schrieb Sascha Hauer:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

does this look ok now?

Thanks
Heiko

> ---
> 
> Notes:
>     Changes since v1:
>     - Drop minItems
>     - Add reg-names properties to example
> 
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 655d9b327f7d3..fba45091d9092 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -22,7 +22,6 @@ properties:
>        - rockchip,rk3568-vop
>  
>    reg:
> -    minItems: 1
>      items:
>        - description:
>            Must contain one entry corresponding to the base address and length
> @@ -31,6 +30,11 @@ properties:
>            Can optionally contain a second entry corresponding to
>            the CRTC gamma LUT address.
>  
> +  reg-names:
> +    items:
> +      - const: vop
> +      - const: gamma-lut
> +
>    interrupts:
>      maxItems: 1
>      description:
> @@ -86,6 +90,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts
>    - clocks
>    - clock-names
> @@ -104,6 +109,7 @@ examples:
>              vop: vop@fe040000 {
>                  compatible = "rockchip,rk3568-vop";
>                  reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +                reg-names = "vop", "gamma-lut";
>                  interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
>                  clocks = <&cru ACLK_VOP>,
>                           <&cru HCLK_VOP>,
> 




