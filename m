Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89EA15A4356
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 08:38:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbiH2GiF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 02:38:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiH2GiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 02:38:04 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68354C603
        for <devicetree@vger.kernel.org>; Sun, 28 Aug 2022 23:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661755082; x=1693291082;
  h=subject:from:to:cc:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=bekLjrRex8EQKf6GT2c+Bxj2NhljVa9PsrgUIbKB66Q=;
  b=D1OuCJuVANqIFI8pQE/MLNqpLg1U5b0N7bk6BOBJxkA9lJJpzPwZiKm+
   JWu64Egp2NkHsPibGaykAiwLPWoNKrw5qPm2wd7ecTsbOtOibW7aTxN7e
   Huhzrqx9CVHydbfAyDNghFc8LmTFg7CCufxLQJ4qggtKU/Iq0N+lEK5VS
   N8xCRASMfjgdQDBPSoOQoYEfsNKla5/SRGVhsyCIvUBdPomK1oDsUbTNL
   k79Riei280mOeVKpT33+rU/MOdTsl0R/FB8CbWkLQys9lwhGBzs9gqEc2
   IYe0VUpcGaQbQYDjyTeEzJlGCQu59GFYkwkTUirp5glWNQAbkwRA/vJSb
   A==;
X-IronPort-AV: E=Sophos;i="5.93,272,1654552800"; 
   d="scan'208";a="25845247"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 29 Aug 2022 08:38:00 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 29 Aug 2022 08:38:00 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 29 Aug 2022 08:38:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661755080; x=1693291080;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=bekLjrRex8EQKf6GT2c+Bxj2NhljVa9PsrgUIbKB66Q=;
  b=RlJKgw2wLZnLZDkmLu3Le7FgtkQZFhvH74UX3B8Wdcatijs4rhT+zV7R
   ZGzpgKHK0iizKKp2q6b/IuJFZTT5rxHpQSxDs1tHQikUcgWXzdBGNYaL2
   wAb22azZGlGAC5+UVqUV/PPYafuBmXYk/gw/iRRMfFNIez/TEkD0wq9dK
   8M4n7riBZlKwKfUg9UtN/IDwel7DMl9u4lNqJj3Lb/UamaX4G868cM62N
   Nbn8UDTYtqr3r9g7dHO+uhEVLwoAfau2IulJo5rFOZIum5fLgsag46tf+
   TKJEgLHClbwuDjDDu/5dYEglxni0vrjebdbksJkzeeaDsZHbnzTSAWrzp
   A==;
X-IronPort-AV: E=Sophos;i="5.93,272,1654552800"; 
   d="scan'208";a="25845246"
Subject: Re: [PATCH 3/4] arm64: dts: imx8mp: add HDMI display pipeline
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 29 Aug 2022 08:38:00 +0200
Received: from steina-w.localnet (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4C2A1280056;
        Mon, 29 Aug 2022 08:38:00 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
Date:   Mon, 29 Aug 2022 08:37:57 +0200
Message-ID: <2648019.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220826192932.3217260-3-l.stach@pengutronix.de>
References: <20220826192932.3217260-1-l.stach@pengutronix.de> <20220826192932.3217260-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Lucas,

thanks for that update.

Am Freitag, 26. August 2022, 21:29:31 CEST schrieb Lucas Stach:
> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 83 +++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> 71c2397bf7c2..254d610b93b7 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1145,6 +1145,89 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
>  				clock-names = "ipg";
>  				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_IRQSTEER>;
>  			};
> +
> +			hdmi_pvi: display-bridge@32fc4000 {
> +				compatible = "fsl,imx8mp-hdmi-
pvi";
> +				reg = <0x32fc4000 0x40>;
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_PVI>;
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						
pvi_from_lcdif3: endpoint {
> +							
remote-endpoint = <&lcdif3_to_pvi>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						
pvi_to_hdmi_tx: endpoint {
> +							
remote-endpoint = <&hdmi_tx_from_pvi>;
> +						};
> +					};
> +				};
> +			};
> +
> +			lcdif3: display-controller@32fc6000 {
> +				compatible = "fsl,imx8mp-lcdif";
> +				reg = <0x32fc6000 0x238>;
> +				interrupts = <8 
IRQ_TYPE_LEVEL_HIGH>;

Shouldn't this just be 'interrupts = <8>;'? The irqsteer_hdmi has #interrupt-
cells = <1>;

Best regards,
Alexander

> +				interrupt-parent = 
<&irqsteer_hdmi>;
> +				clocks = <&hdmi_tx_phy>,
> +					 <&clk 
IMX8MP_CLK_HDMI_APB>,
> +					 <&clk 
IMX8MP_CLK_HDMI_ROOT>;
> +				clock-names = "pix", "axi", 
"disp_axi";
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_LCDIF>;
> +				status = "disabled";
> +
> +				port {
> +					lcdif3_to_pvi: endpoint 
{
> +						remote-
endpoint = <&pvi_from_lcdif3>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx: hdmi@32fd8000 {
> +				compatible = "fsl,imx8mp-hdmi";
> +				reg = <0x32fd8000 0x7eff>;
> +				interrupts = <0 
IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = 
<&irqsteer_hdmi>;
> +				clocks = <&clk 
IMX8MP_CLK_HDMI_APB>,
> +					 <&clk 
IMX8MP_CLK_HDMI_REF_266M>,
> +					 <&clk 
IMX8MP_CLK_HDMI_FDCC_TST>,
> +					 <&clk IMX8MP_CLK_32K>,
> +					 <&hdmi_tx_phy>;
> +				clock-names = "iahb", "isfr", 
"fdcc", "cec", "pix";
> +				assigned-clocks = <&clk 
IMX8MP_CLK_HDMI_REF_266M>;
> +				assigned-clock-parents = <&clk 
IMX8MP_SYS_PLL1_266M>;
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +				reg-io-width = <1>;
> +				status = "disabled";
> +
> +				port {
> +					hdmi_tx_from_pvi: 
endpoint {
> +						remote-
endpoint = <&pvi_to_hdmi_tx>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx_phy: phy@32fdff00 {
> +				compatible = "fsl,imx8mp-hdmi-
phy";
> +				reg = <0x32fdff00 0x100>;
> +				clocks = <&clk 
IMX8MP_CLK_HDMI_APB>,
> +					 <&clk 
IMX8MP_CLK_HDMI_24M>;
> +				clock-names = "apb", "ref";
> +				assigned-clocks = <&clk 
IMX8MP_CLK_HDMI_24M>;
> +				assigned-clock-parents = <&clk 
IMX8MP_CLK_24M>;
> +				power-domains = <&hdmi_blk_ctrl 
IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
>  		};
> 
>  		gpu3d: gpu@38000000 {




