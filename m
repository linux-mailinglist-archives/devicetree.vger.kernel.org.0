Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 293FE713353
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 10:28:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbjE0I23 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 04:28:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229684AbjE0I21 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 04:28:27 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEED6DF
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 01:28:26 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 463A360F5E
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 08:28:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B77C433EF;
        Sat, 27 May 2023 08:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685176105;
        bh=51xuMw5MtVsC3dUv56a3OkLEtjkK1MoTYM1wTAGLado=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AlIhT9OcNxY/JpgzzxiC2Sb1XawIRDqiawbV9Tx/ogxMslHNuFPTOHWk/t50q7qg9
         l5nuIL92+y9w0nHp9ppJqWA3LfUNrXheJiFaQlXBTvHT6YDMyqvCg1b0ZfqcKcNuBl
         LxbvzMwAXteLpSpM+QkHLA1Kx6e6cBjrD00++wL9YYZ5tioLstFE1+P/LGgbP4iEoX
         q4njLKqHBTFMZZXGZsyA25YnltKKNBBd8/WQshILFnNNn9eveluMI1ZDBZTUkOUdnh
         b+BXFBfw5hlpAQAxs/lbUxNzTPuty2ZdDv+IqPJY+vY850Mtq1W7N9joThsKWkPEg7
         pRMJOhVmGU6kQ==
Date:   Sat, 27 May 2023 16:28:13 +0800
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
Subject: Re: [PATCH] arm64: dts: imx8mp: Enable SAI audio on MX8MP DHCOM PDK2
 and PDK3
Message-ID: <20230527082813.GD528183@dragon>
References: <20230515155205.61275-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230515155205.61275-1-marex@denx.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 15, 2023 at 05:52:05PM +0200, Marek Vasut wrote:
> Add SAI I2S and audio bindings on MX8MP DHCOM PDK2 and PDK3.
> 
> The VDDA is supplied from on-carrier-board regulator, the VDDIO
> is supplied from always-on on-SoM regulator. Except for different
> I2C bus used to connect the codec, the implementation is virtually
> identical on both carrier boards.
> 
> Align regulator-avdd name to regulator-3p3vdd on PDK3, since this
> is the VDDA supply and it is the same on both carrier boards.
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
>  .../boot/dts/freescale/imx8mp-dhcom-pdk2.dts  | 54 +++++++++++++++++++
>  .../boot/dts/freescale/imx8mp-dhcom-pdk3.dts  | 47 +++++++++++++++-
>  .../boot/dts/freescale/imx8mp-dhcom-som.dtsi  | 17 ++++++
>  3 files changed, 116 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
> index 92df6c1277c36..de26c09e17805 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk2.dts
> @@ -23,6 +23,12 @@ chosen {
>  		stdout-path = &uart1;
>  	};
>  
> +	clk_ext_audio_codec: clock-codec {
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		compatible = "fixed-clock";

Can we start properties with 'compatible'?

Shawn

> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -102,6 +108,43 @@ led-3 {
>  			pinctrl-names = "default";
>  		};
>  	};
> +
> +	reg_3p3vdd: regulator-3p3vdd {	/* 3.3VDD */
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "3P3VDD";
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SGTL5000-Card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&codec_dai>;
> +		simple-audio-card,frame-master = <&codec_dai>;
> +		simple-audio-card,widgets = "Headphone", "Headphone Jack";
> +		simple-audio-card,routing = "Headphone Jack", "HP_OUT";
> +
> +		cpu_dai: simple-audio-card,cpu {
> +			sound-dai = <&sai3>;
> +		};
> +
> +		codec_dai: simple-audio-card,codec {
> +			sound-dai = <&sgtl5000>;
> +		};
> +	};
> +};
> +
> +&i2c5 {
> +	sgtl5000: codec@a {
> +		compatible = "fsl,sgtl5000";
> +		reg = <0x0a>;
> +		#sound-dai-cells = <0>;
> +		clocks = <&clk_ext_audio_codec>;
> +		VDDA-supply = <&reg_3p3vdd>;
> +		VDDIO-supply = <&reg_vdd_3p3v_awo>;
> +	};
>  };
>  
>  &fec {	/* Second ethernet */
> @@ -155,6 +198,17 @@ &pcie {
>  	status = "okay";
>  };
>  
> +&sai3 {
> +	#sound-dai-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sai3>;
> +	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
> +	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <12288000>;
> +	fsl,sai-mclk-direction-output;
> +	status = "okay";
> +};
> +
>  &usb3_1 {
>  	fsl,over-current-active-low;
>  };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> index 24dc58b3404fb..6bcf17ffc9393 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> @@ -23,6 +23,12 @@ chosen {
>  		stdout-path = &uart1;
>  	};
>  
> +	clk_ext_audio_codec: clock-codec {
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		compatible = "fixed-clock";
> +	};
> +
>  	clk_xtal25: clock-xtal25 {
>  		compatible = "fixed-clock";
>  		#clock-cells = <0>;
> @@ -140,12 +146,30 @@ led-3 {
>  		};
>  	};
>  
> -	reg_avdd: regulator-avdd {	/* AUDIO_VDD */
> +	reg_3p3vdd: regulator-3p3vdd {	/* 3.3VDD */
>  		compatible = "regulator-fixed";
>  		regulator-always-on;
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		regulator-name = "AUDIO_VDD";
> +		regulator-name = "3P3VDD";
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SGTL5000-Card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&codec_dai>;
> +		simple-audio-card,frame-master = <&codec_dai>;
> +		simple-audio-card,widgets = "Headphone", "Headphone Jack";
> +		simple-audio-card,routing = "Headphone Jack", "HP_OUT";
> +
> +		cpu_dai: simple-audio-card,cpu {
> +			sound-dai = <&sai3>;
> +		};
> +
> +		codec_dai: simple-audio-card,codec {
> +			sound-dai = <&sgtl5000>;
> +		};
>  	};
>  };
>  
> @@ -161,6 +185,15 @@ i2cmuxed0: i2c@0 {
>  			#size-cells = <0>;
>  			reg = <0>;
>  
> +			sgtl5000: codec@a {
> +				compatible = "fsl,sgtl5000";
> +				reg = <0x0a>;
> +				#sound-dai-cells = <0>;
> +				clocks = <&clk_ext_audio_codec>;
> +				VDDA-supply = <&reg_3p3vdd>;
> +				VDDIO-supply = <&reg_vdd_3p3v_awo>;
> +			};
> +
>  			typec@3d {
>  				compatible = "nxp,ptn5150";
>  				reg = <0x3d>;
> @@ -263,6 +296,16 @@ &pcie {
>  	status = "okay";
>  };
>  
> +&sai3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_sai3>;
> +	assigned-clocks = <&clk IMX8MP_CLK_SAI3>;
> +	assigned-clock-parents = <&clk IMX8MP_AUDIO_PLL1_OUT>;
> +	assigned-clock-rates = <12288000>;
> +	fsl,sai-mclk-direction-output;
> +	status = "okay";
> +};
> +
>  &usb_dwc3_0 {
>  	usb-role-switch;
>  
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> index 7e804f6507843..98a11c31d7d45 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
> @@ -49,6 +49,14 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
>  		startup-delay-us = <100>;
>  		vin-supply = <&buck4>;
>  	};
> +
> +	reg_vdd_3p3v_awo: regulator-vdd-3p3v-awo {	/* VDD_3V3_AWO */
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "VDD_3P3V_AWO";
> +	};
>  };
>  
>  &A53_0 {
> @@ -863,6 +871,15 @@ MX8MP_IOMUXC_SPDIF_EXT_CLK__GPIO5_IO05		0x40000080
>  		>;
>  	};
>  
> +	pinctrl_sai3: dhcom-sai3-grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI3_TXFS__AUDIOMIX_SAI3_TX_SYNC	0xd6
> +			MX8MP_IOMUXC_SAI3_TXC__AUDIOMIX_SAI3_TX_BCLK	0xd6
> +			MX8MP_IOMUXC_SAI3_RXD__AUDIOMIX_SAI3_RX_DATA00	0xd6
> +			MX8MP_IOMUXC_SAI3_TXD__AUDIOMIX_SAI3_TX_DATA00	0xd6
> +		>;
> +	};
> +
>  	pinctrl_touch: dhcom-touch-grp {
>  		fsl,pins = <
>  			/* #TOUCH_INT */
> -- 
> 2.39.2
> 
