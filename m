Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B95164F323
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 22:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231790AbiLPV0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 16:26:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231822AbiLPVZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 16:25:58 -0500
Received: from smtp-out-04.comm2000.it (smtp-out-04.comm2000.it [212.97.32.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3573C741
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 13:25:56 -0800 (PST)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-04.comm2000.it (Postfix) with ESMTPSA id 4AFC4BC724E;
        Fri, 16 Dec 2022 22:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1671225953;
        bh=upIEUwlWVrfW3nmuMK8vLJ6GmeS0q93+uf7YxMn6V7Q=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To;
        b=hOppawOEQuyFziKm8F0EEsgci1IltWuZI+txk+wh7wQgi4TgodO2QWmw98X+0xVFS
         qZvn5MQvje19Fjf/+jzzWjpb9JgU6BtcmN4uhsZ3apCiTr7/a73looziPZJ5u02lzr
         mH/00eJYx9OBdGj1btpYcyHZDvLu2IK9bnOkIyXbyCXKcMfhd5lkEWUxuDcoJu+IaQ
         f3AXTbbJx5xrxErOdofiMnwqtRHoWPLK7Gm03P1ZuZ/A2V9sKLFzHgymumoBqPo0ce
         hgoTUE06XTdTLiEEXEvA+jQSMwpvV3tt4tRLOF7oKymGjD0nfy19sawJvzObvuleni
         KQ7TOBW+ZlM1Q==
Date:   Fri, 16 Dec 2022 22:25:17 +0100
From:   Francesco Dolcini <francesco@dolcini.it>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: Move MX8Menlo board to i.MX8M
 Mini Toradex Verdin SoM entry
Message-ID: <Y5ziPRGF6y5k1IvS@francesco-nb.int.toradex.com>
References: <20221216210244.591865-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221216210244.591865-1-marex@denx.de>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 16, 2022 at 10:02:41PM +0100, Marek Vasut wrote:
> The MX8Menlo board is based on i.MX8M Mini Toradex Verdin SoM
> which results in compatible string in the form:
> "vendor,custom-board", "toradex,som-nonwifi", "toradex,som", "fsl,soc"
> Move the binding entry so this quadruplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


> ---
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Rework the patch
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 05b5276a0e14c..cd3078768887a 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -830,7 +830,6 @@ properties:
>                - innocomm,wb15-evk         # i.MX8MM Innocomm EVK board with WB15 SoM
>                - kontron,imx8mm-sl         # i.MX8MM Kontron SL (N801X) SOM
>                - kontron,imx8mm-osm-s      # i.MX8MM Kontron OSM-S (N802X) SOM
> -              - menlo,mx8menlo            # i.MX8MM Menlo board with Verdin SoM
>                - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
>                - toradex,verdin-imx8mm-nonwifi  # Verdin iMX8M Mini Modules without Wi-Fi / BT
>                - toradex,verdin-imx8mm-wifi  # Verdin iMX8M Mini Wi-Fi / BT Modules
> @@ -861,6 +860,7 @@ properties:
>        - description: Toradex Boards with Verdin iMX8M Mini Modules
>          items:
>            - enum:
> +              - menlo,mx8menlo                       # Verdin iMX8M Mini Module on i.MX8MM Menlo board
>                - toradex,verdin-imx8mm-nonwifi-dahlia # Verdin iMX8M Mini Module on Dahlia
>                - toradex,verdin-imx8mm-nonwifi-dev    # Verdin iMX8M Mini Module on Verdin Development Board
>            - const: toradex,verdin-imx8mm-nonwifi     # Verdin iMX8M Mini Module without Wi-Fi / BT
> -- 
> 2.35.1
> 
