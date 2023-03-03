Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A884E6A9D9D
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 18:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbjCCR00 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 12:26:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjCCR00 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 12:26:26 -0500
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E52004FA97
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 09:26:24 -0800 (PST)
Received: from booty (unknown [77.244.183.192])
        (Authenticated sender: luca.ceresoli@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id E39F21BF212;
        Fri,  3 Mar 2023 17:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1677864383;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=20Dk+iHGyzjY+l1jCNtPmr3EsTnF5RXbAd9cpCD38cc=;
        b=fibp+j1t6o6UWI4dFKiJAP7xXkFgG6DuXnTC09sxav8/ReSLTpwgD+w/3dS6wu13rj3ojv
        nXVXYQHpDMzBOLZSNKgpAivpMFawyQtM/ztR7TzDNBZrhhDBL5qspw97gOMcsPPvNsXh/m
        X5+ev/S9mO4D1NXWW3LoktZfIAn477w2LrjuPquw7zmgppaDB3ez/Fxx81H9uJFCh5J3sq
        7CDYtWVTJJ+9Gbnhw9vyiFiq8748mJfNRHuuEehOHG6hXTLFpag6Papz6iApxa22jVpMb7
        d9O40sci5n6EW3daP5lHAMTNhDaHOYiX71RXZGdJnVChYV9E0nSHdt1qYPpVxg==
Date:   Fri, 3 Mar 2023 18:26:19 +0100
From:   Luca Ceresoli <luca.ceresoli@bootlin.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
Subject: Re: [PATCH 3/4] arm64: dts: imx8mp: add HDMI display pipeline
Message-ID: <20230303182619.3ecd177c@booty>
In-Reply-To: <20220826192932.3217260-3-l.stach@pengutronix.de>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
        <20220826192932.3217260-3-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Lucas,

On Fri, 26 Aug 2022 21:29:31 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 83 +++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 71c2397bf7c2..254d610b93b7 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1145,6 +1145,89 @@ irqsteer_hdmi: interrupt-controller@32fc2000 {
>  				clock-names = "ipg";
>  				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_IRQSTEER>;
>  			};
> +
> +			hdmi_pvi: display-bridge@32fc4000 {
> +				compatible = "fsl,imx8mp-hdmi-pvi";
> +				reg = <0x32fc4000 0x40>;

Should be <... 0x44>, there is a register at offset 0x40.

> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +						pvi_from_lcdif3: endpoint {
> +							remote-endpoint = <&lcdif3_to_pvi>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +						pvi_to_hdmi_tx: endpoint {
> +							remote-endpoint = <&hdmi_tx_from_pvi>;
> +						};
> +					};
> +				};
> +			};
> +
> +			lcdif3: display-controller@32fc6000 {
> +				compatible = "fsl,imx8mp-lcdif";
> +				reg = <0x32fc6000 0x238>;

Same here: 0x238 -> 0x23c

> +				interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = <&irqsteer_hdmi>;
> +				clocks = <&hdmi_tx_phy>,
> +					 <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_ROOT>;
> +				clock-names = "pix", "axi", "disp_axi";
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_LCDIF>;
> +				status = "disabled";
> +
> +				port {
> +					lcdif3_to_pvi: endpoint {
> +						remote-endpoint = <&pvi_from_lcdif3>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx: hdmi@32fd8000 {
> +				compatible = "fsl,imx8mp-hdmi";
> +				reg = <0x32fd8000 0x7eff>;

And here: 0x7f00, even though good sense would suggest 0x8000 I guess.

I haven't gone in more depth in reviewing this patch, but it is
definitely working so with the above fixed you can add:

 Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>


-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
