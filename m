Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD7C7649F29
	for <lists+devicetree@lfdr.de>; Mon, 12 Dec 2022 13:54:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232398AbiLLMyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Dec 2022 07:54:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232032AbiLLMyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Dec 2022 07:54:23 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48F8A270B
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 04:54:22 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DEEB961017
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 12:54:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40771C433F2
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 12:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670849661;
        bh=GCBaVQu2Nzo62Ur1JfJg7JyN9hXz/sGTodwEpRdPGeM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=vNdrIp4C36ITWQMBW+IwpJb/DeVWsbuFXiQk52LBQWtz0lViIG02NLOFFOSYplu+C
         sx/KUAFoXoj4NJRiNWiBgqttgEMfkI7SEb/e0U+svDaYA38uRmMyMHIwr+3C0PB+J8
         6FF6YWXU44qcQDaj1g30cbryvbrpw6M1tY139n0iJvDmHHOyQnpNPA7KouHAwcxPWJ
         0T071Ft4ZVRy9bCp2UN0bmR+bp/3x9HwtemZkAWBg/IMTeI2r3P5ruxCULZgL8Pxj8
         1eBsUhkIYPAhGeXmgyDfs4my5OfBHDTSB2QhpOxB4pw+BvJz5zLL3+I2bM83+DIo14
         FLb3xOnMbpVrQ==
Received: by mail-yb1-f179.google.com with SMTP id c140so13457235ybf.11
        for <devicetree@vger.kernel.org>; Mon, 12 Dec 2022 04:54:21 -0800 (PST)
X-Gm-Message-State: ANoB5plZnKDwV4i2xIJysXw5F5HPv0CkcNflQEh6uvDI4ri6QriJmD2P
        yKn710mSLytjh1m+FgeIlG2FIVNzH91u9XHzEA==
X-Google-Smtp-Source: AA0mqf5gXcRjwPVID2BQeZNc7VBPDxIuQjU50sUi97B+QIlPgCJRJT77l/r1rSbSE4bL6jYcoEpF/xwh91HDrMME8is=
X-Received: by 2002:a5b:2c6:0:b0:6be:99e7:c5f0 with SMTP id
 h6-20020a5b02c6000000b006be99e7c5f0mr91773161ybp.248.1670849660239; Mon, 12
 Dec 2022 04:54:20 -0800 (PST)
MIME-Version: 1.0
References: <20221212055137.270638-1-marex@denx.de>
In-Reply-To: <20221212055137.270638-1-marex@denx.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 12 Dec 2022 06:54:08 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Cz7Ea7k1cTYEoXcEyg+1JQCyQnZqhJG5kL-BE4Wj-rQ@mail.gmail.com>
Message-ID: <CAL_Jsq+Cz7Ea7k1cTYEoXcEyg+1JQCyQnZqhJG5kL-BE4Wj-rQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liu Ying <victor.liu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 11, 2022 at 11:51 PM Marek Vasut <marex@denx.de> wrote:
>
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
> and i.MX6SX, i.MX6SL. Document the property and mark it as required
> on the aforementioned variants of the IP, present in those SoCs.
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Krzysztof
>     - Add mx6sx power domain into the list
> V3: - Update commit message
>     - Add i.MX6SL
>     - Update example
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml  | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 876015a44a1e6..1f17be501749b 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -52,6 +52,9 @@ properties:
>    interrupts:
>      maxItems: 1
>
> +  power-domains:
> +    maxItems: 1
> +

This conflicts with adding 'power-domains' for i.MX8MP in my tree.

>    port:
>      $ref: /schemas/graph.yaml#/properties/port
>      description: The LCDIF output port
> @@ -87,6 +90,19 @@ allOf:
>            maxItems: 1
>          clock-names:
>            maxItems: 1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx6sl-lcdif
> +              - fsl,imx6sx-lcdif
> +              - fsl,imx8mm-lcdif
> +              - fsl,imx8mn-lcdif
> +              - fsl,imx8mp-lcdif
> +    then:
> +      required:
> +        - power-domains
>
>  examples:
>    - |
> @@ -101,6 +117,7 @@ examples:
>                   <&clks IMX6SX_CLK_LCDIF_APB>,
>                   <&clks IMX6SX_CLK_DISPLAY_AXI>;
>          clock-names = "pix", "axi", "disp_axi";
> +        power-domains = <&pd_disp>;
>
>          port {
>              endpoint {
> --
> 2.35.1
>
