Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFA0D5F302F
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 14:20:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbiJCMUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 08:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229831AbiJCMUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 08:20:06 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0C6D1CFC1
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 05:20:04 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4E8EF440;
        Mon,  3 Oct 2022 14:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1664799603;
        bh=Z/GvY+euJrqFoaFm1VouA6eViwI3B0y9El9xpY/hWWQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MigYGc2is7lqjwq1Jmz3BkgJeI5PlXtEiDjJqZHeHC7299RJoRjwghhHuq7qcM71j
         23ll9a3rw40sq34nePo7RPwl4wwqrk5wfgep/u79imtX+VFq5MwMC2y0Es57xT/5IJ
         QZ3gaaIr1XOcukrxAv/Cs6ESBT6HAVnO5hMIIexg=
Date:   Mon, 3 Oct 2022 15:20:01 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Daniel Scally <dan.scally@ideasonboard.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        kieran.bingham@ideasonboard.com, debix-tech@polyhex.net
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A Board
Message-ID: <YzrTcXEJMlXzsiWF@pendragon.ideasonboard.com>
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
 <20221003083705.22495-3-dan.scally@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221003083705.22495-3-dan.scally@ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

Thank you for the patch.

On Mon, Oct 03, 2022 at 09:37:04AM +0100, Daniel Scally wrote:
> Add an entry to the list of imx8mp boards denoting the Debix Model A
> board from Polyhex Technology Co.
> 
> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index ef524378d449..0be82122ef05 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -916,6 +916,7 @@ properties:
>            - enum:
>                - fsl,imx8mp-evk            # i.MX8MP EVK Board
>                - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
> +              - polyhex,imx8mp-debix-modela2gb # Polyhex Debix Model A (2GB) Board

"model-a-2gb" would be more readable. I'm tempted to drop the "-2gb"
suffix, and let the boot loader fill in the memory size.

>                - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
>                - toradex,verdin-imx8mp-nonwifi  # Verdin iMX8M Plus Modules without Wi-Fi / BT
>                - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules

-- 
Regards,

Laurent Pinchart
