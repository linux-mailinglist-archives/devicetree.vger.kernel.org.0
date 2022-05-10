Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5B0A521CC3
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 16:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244000AbiEJOtb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 10:49:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242130AbiEJOtX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 10:49:23 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 619076BFF2
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 07:08:11 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1noQWz-00057J-J3; Tue, 10 May 2022 16:08:05 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, krzk+dt@kernel.org,
        robh+dt@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names mandatory for VOP2
Date:   Tue, 10 May 2022 16:08:02 +0200
Message-ID: <3353209.QJadu78ljV@diego>
In-Reply-To: <20220510070914.2346011-2-s.hauer@pengutronix.de>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de> <20220510070914.2346011-2-s.hauer@pengutronix.de>
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

Hi Sascha,

Am Dienstag, 10. Mai 2022, 09:09:12 CEST schrieb Sascha Hauer:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

I'm not sure how the DT-people work - if they only track the devicetree list
or their x+dt@kernel.org accounts or some mixture, but the patch was
missing the maintainer email addresses - I've added them here now :-) .

The change looks good to me and as I merged the original binding
into drm-misc only some days ago, we also don't have a backwards-
compat issue yet, so hopefully DT-people will think similarly .

Heiko


> ---
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 655d9b327f7d3..7238cdec9eb8a 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -22,7 +22,7 @@ properties:
>        - rockchip,rk3568-vop
>  
>    reg:
> -    minItems: 1
> +    minItems: 2
>      items:
>        - description:
>            Must contain one entry corresponding to the base address and length
> @@ -31,6 +31,11 @@ properties:
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
> @@ -86,6 +91,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts
>    - clocks
>    - clock-names
> 




