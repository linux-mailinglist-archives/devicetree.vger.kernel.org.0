Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A93C964E7AB
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 08:18:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbiLPHSp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 02:18:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiLPHSi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 02:18:38 -0500
Received: from smtp-out-03.comm2000.it (smtp-out-03.comm2000.it [212.97.32.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 889192657A
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 23:18:35 -0800 (PST)
Received: from francesco-nb.int.toradex.com (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: francesco@dolcini.it)
        by smtp-out-03.comm2000.it (Postfix) with ESMTPSA id 8E501B4B8B8;
        Fri, 16 Dec 2022 08:18:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailserver.it;
        s=mailsrv; t=1671175112;
        bh=miNmkieVPPsqkUXWF5VgrICZMNtAlsvlsIC4ac72dSs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To;
        b=R3bSlux0gcnN2sdkx8Sf6hlfVKRsBlXqjO7mzp9W19sLxTlY0GSyYzOQwXONCwi7B
         b08IDO0oIrbriajWaq/AWf2K1Vg9La1Atv/GsGJ2K4EGMHYOy7KSYp1HpvP6KMwFuh
         b9NYfQFiPNDqupzpdKW0rLcBdXcbc0/d7ZqmbNtmh+NTlnx+HUBRXLPB3cazsj+kze
         UZUIOudofrtyXA0BmqCoTXuyT9peKJL7WLpvvNx73nYbFauztHW3JWCcEXhFl/d6OP
         2wc4uZ6weGOBnJOn5m3D4ng14Ao4V2PjrIPfdfYq2bU2PJ8ahxgToPIjFiF9WEFFWY
         7eyWrXFJovcbQ==
Date:   Fri, 16 Dec 2022 08:18:26 +0100
From:   Francesco Dolcini <francesco@dolcini.it>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: Split i.MX8M Mini Toradex Verdin
 based boards
Message-ID: <Y5wbwsKJj/H0wjSH@francesco-nb.int.toradex.com>
References: <20221215232137.144256-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221215232137.144256-1-marex@denx.de>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_LOW,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Marek

On Fri, Dec 16, 2022 at 12:21:34AM +0100, Marek Vasut wrote:
> The Toradex Verdin based boards have compatible string in the form:
> "vendor,custom-board", "toradex,som", "fsl,soc"
> Split the binding entry so this triplet can be matched on.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
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
>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 05b5276a0e14c..8dda0e25b99e4 100644
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
> @@ -838,6 +837,12 @@ properties:
>                - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
>            - const: fsl,imx8mm
>  
> +      - description: Verdin iMX8M Mini Module based Boards
I would expect here something like "i.MX8MM Menlo board with Verdin SoM", am I wrong?

Francesco

