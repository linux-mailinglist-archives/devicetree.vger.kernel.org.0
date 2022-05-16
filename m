Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FB96527E9B
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 09:32:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241205AbiEPHbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 03:31:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241184AbiEPHbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 03:31:37 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07160BE33
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 00:31:34 -0700 (PDT)
Received: from pyrite.rasen.tech (unknown [45.131.31.234])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9D8F548F;
        Mon, 16 May 2022 09:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1652686291;
        bh=C5A15TUpku7iafyoADVsFp/p5jOmhIL2Z0RIrAcPn3I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CyMbutUeXw3Qwmn8qCSZlBEvnPraM+SO0Cwv2sMY5RtXEoDKtkSGBzsOg3UjnwkRa
         vyd2xMwKDlWlgxVqMqFjlqQ5JvpsJlK95pc+ky9xthSqOl7C1xdp6kwZf2hYb9GsRZ
         4DKMPmFRuf5gKepuIL6i5vJMfo/XPrRsNzp7pPxA=
Date:   Mon, 16 May 2022 09:31:26 +0200
From:   paul.elder@ideasonboard.com
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Lucas Stach <l.stach@pengutronix.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Fix DT example
Message-ID: <20220516073126.GA10587@pyrite.rasen.tech>
References: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220510200543.13482-1-laurent.pinchart@ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Tue, May 10, 2022 at 11:05:43PM +0300, Laurent Pinchart wrote:
> The DT example incorrectly names the ISP power domain "isp1" instead of
> "isp". This causes a validation failure:
> 
> Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.example.dtb: blk-ctl@32ec0000: power-domain-names:7: 'isp' was expected
>         From schema: Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> 
> Fix it.
> 
> Fixes: 584d6dd668e2 ("dt-bindings: soc: Add i.MX8MP media block control DT bindings")
> Reported-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
> Shawn, this fixes an issue in linux-next, could you please apply the
> patch to your imx/bindings branch for v5.19 ?
> ---
>  .../devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> index 21d3ee486295..b246d8386ba4 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> @@ -88,7 +88,7 @@ examples:
>                          <&mediamix_pd>, <&ispdwp_pd>, <&ispdwp_pd>,
>                          <&mipi_phy2_pd>;
>          power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
> -                             "mipi-csi2", "lcdif2", "isp1", "dwe", "mipi-dsi2";
> +                             "mipi-csi2", "lcdif2", "isp", "dwe", "mipi-dsi2";
>          clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
>                   <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
>                   <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
