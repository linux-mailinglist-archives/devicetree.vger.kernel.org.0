Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A56B061919F
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 08:13:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbiKDHNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 03:13:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbiKDHNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 03:13:30 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1808E27B22
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 00:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667546008; x=1699082008;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xd0p4wIkQZstjM24CW/U/ZPDBuX1FLgsH4lw2kNwVrI=;
  b=ONFP7eo1l9V5OVnBCINP/VNXEjBSZUoVd39/1r1HOXbhqrRPVTdO76m6
   vnbOhB46kxuaCR8FKw74LA87937esXaWB9vg+Q1TN7klvFRj6hBP4sabO
   5BRNB4ZxJZCkJqP/unbw6JNvTpWV3ZPJ5/D5gqcD+rkaePEvZysAMO816
   4sm1yHZA6hBu7W4P724ACH3p1GGmeH6kuskp7/T4V6jZ9h9TxiMcLPT5h
   xc+NyqoiF2bXlou3UsXy4wfrwBIqTfhksJUuBMgkKbnBw6tUX5hfHoYs2
   oRKnPUarCna1DbVcUeIORckefBRbgwGzNQJhcFikAr1xOPE8RuHDt1aNu
   A==;
X-IronPort-AV: E=Sophos;i="5.96,136,1665439200"; 
   d="scan'208";a="27152653"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 04 Nov 2022 08:13:26 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 04 Nov 2022 08:13:26 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 04 Nov 2022 08:13:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1667546006; x=1699082006;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xd0p4wIkQZstjM24CW/U/ZPDBuX1FLgsH4lw2kNwVrI=;
  b=T9Ai2bkWX9AUiKBnG4CwZhu4OMFH/+pA6EseudXmSxiM2g0Ins+jniCr
   Nr+++h9ihgyBnq/p13Afv/YDSKn9jojzXNvu2GFBISgIWwMICsLvprg4E
   gYt/uRmh0CWVOdIu1fZ7zIsOt1d1DNKFd/AwRExjAsSLowBGiNwPu/qOF
   Q0RtHf/2ydLgpOxYh/2qFuHDsG4L8Sc0iHn7246rKlHqHrDnb2Zu0JWXr
   wBOEE0oqmEETHmsvuMIgCa/kqdFNXwG104gB38T08ENEEtlI0nKrTSgYz
   19236yIAdTYEOcKmj3jod20rN1ru1DvxGuPUGVAUZfH57yGej0l03ki2m
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,136,1665439200"; 
   d="scan'208";a="27152652"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 04 Nov 2022 08:13:25 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A2D50280056;
        Fri,  4 Nov 2022 08:13:25 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>,
        Adam Ford <aford173@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: imx8mq: Swap SAI DMA order
Date:   Fri, 04 Nov 2022 08:13:22 +0100
Message-ID: <2105362.yKVeVyVuyW@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20221103181920.95736-1-marex@denx.de>
References: <20221103181920.95736-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

thanks for this patch.

Am Donnerstag, 3. November 2022, 19:19:18 CET schrieb Marek Vasut:
> Swap the SAI dmas and dma-names to match the order documented in
> Documentation/devicetree/bindings/sound/fsl-sai.txt

This file has been converted to Documentation/devicetree/bindings/sound/
fsl,sai.yaml in commit d563336877b2 ("ASoC: dt-bindings: fsl,sai: Convert 
format to json-schema"). In next since next-20220816.
In this schema the DMA order 'tx', 'rx' is only for fsl,vf610-sai, all other 
compatibles use 'rx', 'tx'. So this swap is not needed anymore.
Same is for imx8mm and imx8mn.
This change should have been made before schema conversion, so they would have 
been identical on all compatibles...

Best regards,
Alexander

> using the following regex:
> 
> "
> s@\(dma[^=]\+= \)\([^,]\+\), \([^;]\+\);@\1\3, \2;
> "
> 
> No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Joakim Zhang <qiangqing.zhang@nxp.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Paul Elder <paul.elder@ideasonboard.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Zhu <hongxing.zhu@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Tim Harvey <tharvey@gateworks.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mq.dtsi index
> c47e2d7235d3e..f00b040ca03e9 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -345,8 +345,8 @@ sai1: sai@30010000 {
>  				         <&clk IMX8MQ_CLK_SAI1_ROOT>,
>  				         <&clk IMX8MQ_CLK_DUMMY>, 
<&clk IMX8MQ_CLK_DUMMY>;
>  				clock-names = "bus", "mclk1", "mclk2", 
"mclk3";
> -				dmas = <&sdma2 8 24 0>, <&sdma1 9 24 
0>;
> -				dma-names = "rx", "tx";
> +				dmas = <&sdma1 9 24 0>, <&sdma2 8 24 
0>;
> +				dma-names = "tx", "rx";
>  				status = "disabled";
>  			};
> 
> @@ -359,8 +359,8 @@ sai6: sai@30030000 {
>  				         <&clk IMX8MQ_CLK_SAI6_ROOT>,
>  				         <&clk IMX8MQ_CLK_DUMMY>, 
<&clk IMX8MQ_CLK_DUMMY>;
>  				clock-names = "bus", "mclk1", "mclk2", 
"mclk3";
> -				dmas = <&sdma2 4 24 0>, <&sdma2 5 24 
0>;
> -				dma-names = "rx", "tx";
> +				dmas = <&sdma2 5 24 0>, <&sdma2 4 24 
0>;
> +				dma-names = "tx", "rx";
>  				status = "disabled";
>  			};
> 
> @@ -373,8 +373,8 @@ sai5: sai@30040000 {
>  				         <&clk IMX8MQ_CLK_SAI5_ROOT>,
>  				         <&clk IMX8MQ_CLK_DUMMY>, 
<&clk IMX8MQ_CLK_DUMMY>;
>  				clock-names = "bus", "mclk1", "mclk2", 
"mclk3";
> -				dmas = <&sdma2 2 24 0>, <&sdma2 3 24 
0>;
> -				dma-names = "rx", "tx";
> +				dmas = <&sdma2 3 24 0>, <&sdma2 2 24 
0>;
> +				dma-names = "tx", "rx";
>  				status = "disabled";
>  			};
> 
> @@ -387,8 +387,8 @@ sai4: sai@30050000 {
>  				         <&clk IMX8MQ_CLK_SAI4_ROOT>,
>  				         <&clk IMX8MQ_CLK_DUMMY>, 
<&clk IMX8MQ_CLK_DUMMY>;
>  				clock-names = "bus", "mclk1", "mclk2", 
"mclk3";
> -				dmas = <&sdma2 0 24 0>, <&sdma2 1 24 
0>;
> -				dma-names = "rx", "tx";
> +				dmas = <&sdma2 1 24 0>, <&sdma2 0 24 
0>;
> +				dma-names = "tx", "rx";
>  				status = "disabled";
>  			};




