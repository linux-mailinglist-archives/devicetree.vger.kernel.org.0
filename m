Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3DF565FD75
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 10:19:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbjAFJTW convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Fri, 6 Jan 2023 04:19:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232680AbjAFJTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 04:19:13 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 201F763188
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 01:19:13 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1pDisH-0007GO-F3; Fri, 06 Jan 2023 10:18:53 +0100
Message-ID: <5c2f0bba0a3a9d846cdfbcf7529759327d895810.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] ARM: dts: vfxxx: Swap SAI DMA order
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Date:   Fri, 06 Jan 2023 10:18:49 +0100
In-Reply-To: <20230105144145.165010-2-marex@denx.de>
References: <20230105144145.165010-1-marex@denx.de>
         <20230105144145.165010-2-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, dem 05.01.2023 um 15:41 +0100 schrieb Marek Vasut:
> Swap the SAI dmas and dma-names to match the order documented in
> Documentation/devicetree/bindings/sound/fsl,sai.yaml
> No functional change.
> 
While I'm not opposing this patch, I find this class of changes a bit
odd. The *-names properties are there so the properties they are naming
can be in any order in the DT without impacting the lookup. Enforcing a
fixed order for named properties just feels odd.

Not sure if the schema validation could take this into account or if
there is any policy in place already by the DT maintainer that we still
want to enforce the same order in the DTs as in the bindings.

Regards,
Lucas

> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Joakim Zhang <qiangqing.zhang@nxp.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Shengjiu Wang <shengjiu.wang@nxp.com>
> Cc: Stefan Agner <stefan@agner.ch>
> Cc: Tim Harvey <tharvey@gateworks.com>
> Cc: alsa-devel@alsa-project.org
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/boot/dts/vfxxx.dtsi | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/vfxxx.dtsi b/arch/arm/boot/dts/vfxxx.dtsi
> index d53f9c9db8bfd..ff4479994b600 100644
> --- a/arch/arm/boot/dts/vfxxx.dtsi
> +++ b/arch/arm/boot/dts/vfxxx.dtsi
> @@ -191,9 +191,8 @@ sai0: sai@4002f000 {
>  					<&clks VF610_CLK_SAI0_DIV>,
>  					<&clks 0>, <&clks 0>;
>  				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> -				dma-names = "tx", "rx";
> -				dmas = <&edma0 0 17>,
> -					<&edma0 0 16>;
> +				dma-names = "rx", "tx";
> +				dmas = <&edma0 0 16>, <&edma0 0 17>;
>  				status = "disabled";
>  			};
>  
> @@ -205,9 +204,8 @@ sai1: sai@40030000 {
>  					<&clks VF610_CLK_SAI1_DIV>,
>  					<&clks 0>, <&clks 0>;
>  				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> -				dma-names = "tx", "rx";
> -				dmas = <&edma0 0 19>,
> -					<&edma0 0 18>;
> +				dma-names = "rx", "tx";
> +				dmas = <&edma0 0 18>, <&edma0 0 19>;
>  				status = "disabled";
>  			};
>  
> @@ -219,9 +217,8 @@ sai2: sai@40031000 {
>  					<&clks VF610_CLK_SAI2_DIV>,
>  					<&clks 0>, <&clks 0>;
>  				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> -				dma-names = "tx", "rx";
> -				dmas = <&edma0 0 21>,
> -					<&edma0 0 20>;
> +				dma-names = "rx", "tx";
> +				dmas = <&edma0 0 20>, <&edma0 0 21>;
>  				status = "disabled";
>  			};
>  
> @@ -233,9 +230,8 @@ sai3: sai@40032000 {
>  					<&clks VF610_CLK_SAI3_DIV>,
>  					<&clks 0>, <&clks 0>;
>  				clock-names = "bus", "mclk1", "mclk2", "mclk3";
> -				dma-names = "tx", "rx";
> -				dmas = <&edma0 1 9>,
> -					<&edma0 1 8>;
> +				dma-names = "rx", "tx";
> +				dmas = <&edma0 1 8>, <&edma0 1 9>;
>  				status = "disabled";
>  			};
>  

