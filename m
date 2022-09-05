Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 934A35AC8AC
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 04:08:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235703AbiIECFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 22:05:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235705AbiIECE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 22:04:58 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01FA613F8C
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 19:04:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 098BEB80E96
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 02:04:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEDD0C433C1;
        Mon,  5 Sep 2022 02:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662343485;
        bh=eSd7+1gjMyPVPKQhh/KZ+WxLUHJjctPMpjjZ6OjU7kA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ks+ES/Z7gwydRfZBvDY5n6IsIXIbxFVKLejGc8kVN0aJI2FOXUHBTgSAH7ax3O1ZC
         THM5FI9GyZbuODHgR9y4bHfIy/zbTY1k+23EkYExidjwbPMgCLAEglX0FKSHO+f9yh
         V6zMgRfC0Xqxcxa6jihN+N8Id5cVipM1uZrfAJRxDeC9iVXCMI8eb0QwkDuG64Qlb5
         G9Dt+aRLGcB5nv5KXLTiexAIy/TEo0mClQ8FFaxt7T2yFV91CR0JHys+5JE0dy5Dxj
         f8f4U/sxcF8Ts04Bza6hF+d8odW5Rd8mULUu1vMTJuoHfpY0msb2OpmqAwNH/ZvZbX
         asdNdxTFL5BvQ==
Date:   Mon, 5 Sep 2022 10:04:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de, kernel@pengutronix.de
Subject: Re: [PATCH 3/4] arm64: dts: imx8mp: add HDMI display pipeline
Message-ID: <20220905020439.GZ1728671@dragon>
References: <20220826192932.3217260-1-l.stach@pengutronix.de>
 <20220826192932.3217260-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826192932.3217260-3-l.stach@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 26, 2022 at 09:29:31PM +0200, Lucas Stach wrote:
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
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_PVI>;
> +				status = "disabled";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;

Newline between properties and child node.

Shawn

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
> +				interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-parent = <&irqsteer_hdmi>;
> +				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_REF_266M>,
> +					 <&clk IMX8MP_CLK_HDMI_FDCC_TST>,
> +					 <&clk IMX8MP_CLK_32K>,
> +					 <&hdmi_tx_phy>;
> +				clock-names = "iahb", "isfr", "fdcc", "cec", "pix";
> +				assigned-clocks = <&clk IMX8MP_CLK_HDMI_REF_266M>;
> +				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_266M>;
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX>;
> +				reg-io-width = <1>;
> +				status = "disabled";
> +
> +				port {
> +					hdmi_tx_from_pvi: endpoint {
> +						remote-endpoint = <&pvi_to_hdmi_tx>;
> +					};
> +				};
> +			};
> +
> +			hdmi_tx_phy: phy@32fdff00 {
> +				compatible = "fsl,imx8mp-hdmi-phy";
> +				reg = <0x32fdff00 0x100>;
> +				clocks = <&clk IMX8MP_CLK_HDMI_APB>,
> +					 <&clk IMX8MP_CLK_HDMI_24M>;
> +				clock-names = "apb", "ref";
> +				assigned-clocks = <&clk IMX8MP_CLK_HDMI_24M>;
> +				assigned-clock-parents = <&clk IMX8MP_CLK_24M>;
> +				power-domains = <&hdmi_blk_ctrl IMX8MP_HDMIBLK_PD_HDMI_TX_PHY>;
> +				#clock-cells = <0>;
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
>  		};
>  
>  		gpu3d: gpu@38000000 {
> -- 
> 2.30.2
> 
