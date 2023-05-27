Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 464F5713368
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231741AbjE0Ifb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:35:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbjE0If3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:35:29 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C11A8C3
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:35:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5982B60AC6
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:35:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED268C433D2;
        Sat, 27 May 2023 08:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685176527;
        bh=XYdcjPomSSsFXNH1BrOpBiyPumQENsTVl0EEF/lrhtw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UC7gagx2Fhm8OFwJgVBpxmbieYW38YxTkCNNTypfGtnXqZfIs8SwBSmvvyDWjXqJ5
         7D8Z9XKFuS6E32DYJJyD2h1I1SXu1CJD8oiaZLaeG/5sBjCnVcvb8C7FWtucDOaQFt
         M7jxleFKSK2pKa/RzDLn+o8B0yvCWoBBu+poNsz8490gEfOk1Oi/M9uPnl9xoZb/sy
         N/RI0RJgpkUhwjP9ewO7548J7SnbkWNGKQ2h/o8d7DABzYPf07J2qx4jLN9+QSHTTg
         kmLkhJt8v0SBf711wYjuBrRe6owTmfrhtulExOC4h2k8Xp2GYr/YCZEeaMuFc4zgb1
         jGZiHlr0D/wNw==
Date:   Sat, 27 May 2023 16:35:15 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Add TC9595 bridge on DH electronics
 i.MX8M Plus DHCOM
Message-ID: <20230527083515.GE528183@dragon>
References: <20230515162424.67597-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515162424.67597-1-marex@denx.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 06:24:24PM +0200, Marek Vasut wrote:
> Add TC9595 DSI-to-DPI and DSI-to-(e)DP bridge to
> DH electronics i.MX8M Plus DHCOM SoM . The bridge
> is populated on the SoM, but disabled by default
> unless used for display output.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> index 98a11c31d7d45..9c0cb75386e36 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> @@ -240,6 +240,36 @@ &i2c3 {
>  	sda-gpios = <&gpio5 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  	status = "okay";
>  
> +	tc_bridge: bridge@f {
> +		compatible = "toshiba,tc9595", "toshiba,tc358767";

Is "toshiba,tc9595" documented?

Shawn

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tc9595>;
> +		reg = <0xf>;
> +		clock-names = "ref";
> +		clocks = <&clk IMX8MP_CLK_CLKOUT2>;
> +		assigned-clocks = <&clk IMX8MP_CLK_CLKOUT2_SEL>,
> +				  <&clk IMX8MP_CLK_CLKOUT2>,
> +				  <&clk IMX8MP_AUDIO_PLL2_OUT>;
> +		assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL2_OUT>;
> +		assigned-clock-rates = <13000000>, <13000000>, <156000000>;
> +		reset-gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				tc_bridge_in: endpoint {
> +					data-lanes = <1 2 3 4>;
> +					remote-endpoint = <&dsi_out>;
> +				};
> +			};
> +		};
> +	};
> +
>  	pmic: pmic@25 {
>  		compatible = "nxp,pca9450c";
>  		reg = <0x25>;
> @@ -406,6 +436,22 @@ &i2c5 {	/* HDMI EDID bus */
>  	status = "okay";
>  };
>  
> +&mipi_dsi {
> +	samsung,burst-clock-frequency = <160000000>;
> +	samsung,esc-clock-frequency = <10000000>;
> +
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +
> +			dsi_out: endpoint {
> +				data-lanes = <1 2 3 4>;
> +				remote-endpoint = <&tc_bridge_in>;
> +			};
> +		};
> +	};
> +};
> +
>  &pwm1 {
>  	pinctrl-0 = <&pinctrl_pwm1>;
>  	pinctrl-names = "default";
> @@ -880,6 +926,15 @@ MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0xd6
>  		>;
>  	};
>  
> +	pinctrl_tc9595: dhcom-tc9595-grp {
> +		fsl,pins = <
> +			/* RESET_DSIBRIDGE */
> +			MX8MP_IOMUXC_SAI1_RXC__GPIO4_IO01		0x40000146
> +			/* DSI-CONV_INT Interrupt */
> +			MX8MP_IOMUXC_SAI5_RXD0__GPIO3_IO21		0x141
> +		>;
> +	};
> +
>  	pinctrl_touch: dhcom-touch-grp {
>  		fsl,pins = <
>  			/* #TOUCH_INT */
> -- 
> 2.39.2
> 
