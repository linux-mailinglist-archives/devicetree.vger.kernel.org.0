Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32E5E6B8C2D
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 08:46:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230310AbjCNHqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 03:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbjCNHqZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 03:46:25 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A94994F6D
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 00:46:19 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 43C3BB81887
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:46:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E82A0C433EF;
        Tue, 14 Mar 2023 07:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678779976;
        bh=he0dIS15NrPiOP6nfQukxJSBq6n5Ecl1RNpbb9P/8e4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r2EqEvVovQwLwtx03840Uq3g6YFrVn2NG6Emm/6yD/SkRobD6WYskeAaLrwgOO3Jc
         NKItMRMdnbcQFHGsNtZTG0RHJksElTEfDnzatyc08NBAfpM8hsEfP3/1fzAQLCI8r0
         ltfAqWucxC5oOCjyPDotIyc/Ty10K7MiikZRmqm4Y1GAhwF7sk8u6MXvg01BbuxSQk
         Zs9vxxyhRCznYYpZmxE0YOxbYDUKfITjVa+Rp3Fpkb3snvl0Fw6UshGsHV/NWgy6B3
         NXN6NPSzcGhultbRRA8VEGzwpBj/GGvLCxIS07XwSZWIaNCPqFAmQ3u0NgEaAd/XLs
         IevmV3prgc6fw==
Date:   Tue, 14 Mar 2023 15:46:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp-debix: add USB host support
Message-ID: <20230314074602.GD143566@dragon>
References: <20230228170247.910655-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228170247.910655-1-l.stach@pengutronix.de>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 06:02:47PM +0100, Lucas Stach wrote:
> This adds support for the 4 USB3 host ports on the board, which are
> connected to the i.MX8MP SoC via a Realtek RTS5411 hub.
> 
> As the schematic for the board is not available, I could not validate
> that this really reflects the reality, but I modeled things after the
> hacked in usage of the GPIOs in the downstream kernel.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../dts/freescale/imx8mp-debix-model-a.dts    | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> index 2876d18f2a38..94dc089e4550 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> @@ -43,6 +43,17 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
>  		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  	};
> +
> +	reg_usb_hub: regulator-usb-hub {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usb_hub>;
> +		regulator-name = "USB_HUB";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio4 26 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
>  };
>  
>  &A53_0 {
> @@ -254,6 +265,39 @@ &uart4 {
>  	status = "okay";
>  };
>  
> +&usb3_phy1 {
> +	status = "okay";
> +};
> +
> +&usb3_1 {
> +	status = "okay";
> +};
> +
> +&usb_dwc3_1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb1>;
> +	dr_mode = "host";
> +	status = "okay";

I had to fix it up by adding

	#address-cells = <1>;
	#size-cells = <0>;

Otherwise, DTC emits reg_format warnings.

/soc@0/usb@32f10108/usb@38200000/hub@1:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
/soc@0/usb@32f10108/usb@38200000/hub@2:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)

Shawn

> +
> +	/* 2.x hub on port 1 */
> +	usb_hub_2_x: hub@1 {
> +		compatible = "usbbda,5411";
> +		reg = <1>;
> +		reset-gpios = <&gpio4 25 GPIO_ACTIVE_LOW>;
> +		vdd-supply = <&reg_usb_hub>;
> +		peer-hub = <&usb_hub_3_x>;
> +	};
> +
> +	/* 3.x hub on port 2 */
> +	usb_hub_3_x: hub@2 {
> +		compatible = "usbbda,411";
> +		reg = <2>;
> +		reset-gpios = <&gpio4 25 GPIO_ACTIVE_LOW>;
> +		vdd-supply = <&reg_usb_hub>;
> +		peer-hub = <&usb_hub_2_x>;
> +	};
> +};
> +
>  /* SD Card */
>  &usdhc2 {
>  	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> @@ -384,6 +428,12 @@ MX8MP_IOMUXC_SD2_RESET_B__GPIO2_IO19				0x41
>  		>;
>  	};
>  
> +	pinctrl_reg_usb_hub: regusbhubgrp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_SAI2_TXD0__GPIO4_IO26				0x19
> +		>;
> +	};
> +
>  	pinctrl_rtc_int: rtcintgrp {
>  		fsl,pins = <
>  			MX8MP_IOMUXC_SD1_STROBE__GPIO2_IO11				0x140
> @@ -411,6 +461,13 @@ MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX				0x49
>  		>;
>  	};
>  
> +	pinctrl_usb1: usb1grp {
> +		fsl,pins = <
> +			MX8MP_IOMUXC_GPIO1_IO14__USB2_OTG_PWR				0x10
> +			MX8MP_IOMUXC_SAI2_TXC__GPIO4_IO25				0x19
> +		>;
> +	};
> +
>  	pinctrl_usdhc2: usdhc2grp {
>  		fsl,pins = <
>  			MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK				0x190
> -- 
> 2.30.2
> 
