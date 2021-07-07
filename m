Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D5E43BE6DF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 13:06:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231332AbhGGLJG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 07:09:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbhGGLJG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 07:09:06 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48170C061574
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 04:06:26 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <a.fatoum@pengutronix.de>)
        id 1m15Nj-00009A-Mz; Wed, 07 Jul 2021 13:06:19 +0200
Subject: Re: [PATCH] arm64: freescale/imx8mp-evk.dts: reorder nodes
 alphabetically
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
References: <20210707105309.1693138-1-u.kleine-koenig@pengutronix.de>
From:   Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <800ac3ca-e3a0-8d6c-5164-af804c6b2d4d@pengutronix.de>
Date:   Wed, 7 Jul 2021 13:06:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707105309.1693138-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07.07.21 12:53, Uwe Kleine-König wrote:
> The nodes after the root nodes are supposed to be ordered
> alphabetically. So move &flexcan1, &flexcan2 and &pinctrl to their
> proper place.

At least for i.MX, it seems to be convention to have iomuxc at the end
of the file. I'd not reorder it, file is easier to browse when it's not
in the middle.

> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp-evk.dts | 144 +++++++++----------
>  1 file changed, 72 insertions(+), 72 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> index 7b99fad6e4d6..4122323d3ea3 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
> @@ -67,20 +67,6 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
>  	};
>  };
>  
> -&flexcan1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan1>;
> -	xceiver-supply = <&reg_can1_stby>;
> -	status = "okay";
> -};
> -
> -&flexcan2 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_flexcan2>;
> -	xceiver-supply = <&reg_can2_stby>;
> -	status = "disabled";/* can2 pin conflict with pdm */
> -};
> -
>  &eqos {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_eqos>;
> @@ -124,6 +110,20 @@ ethphy1: ethernet-phy@1 {
>  	};
>  };
>  
> +&flexcan1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	xceiver-supply = <&reg_can1_stby>;
> +	status = "okay";
> +};
> +
> +&flexcan2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	xceiver-supply = <&reg_can2_stby>;
> +	status = "disabled";/* can2 pin conflict with pdm */
> +};
> +
>  &i2c1 {
>  	clock-frequency = <400000>;
>  	pinctrl-names = "default";
> @@ -224,64 +224,6 @@ pca6416: gpio@20 {
>  	};
>  };
>  
> -&snvs_pwrkey {
> -	status = "okay";
> -};
> -
> -&uart2 {
> -	/* console */
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_uart2>;
> -	status = "okay";
> -};
> -
> -&usb3_phy1 {
> -	status = "okay";
> -};
> -
> -&usb3_1 {
> -	status = "okay";
> -};
> -
> -&usb_dwc3_1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_usb1_vbus>;
> -	dr_mode = "host";
> -	status = "okay";
> -};
> -
> -&usdhc2 {
> -	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
> -	assigned-clock-rates = <400000000>;
> -	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> -	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> -	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> -	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> -	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> -	vmmc-supply = <&reg_usdhc2_vmmc>;
> -	bus-width = <4>;
> -	status = "okay";
> -};
> -
> -&usdhc3 {
> -	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
> -	assigned-clock-rates = <400000000>;
> -	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> -	pinctrl-0 = <&pinctrl_usdhc3>;
> -	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> -	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> -	bus-width = <8>;
> -	non-removable;
> -	status = "okay";
> -};
> -
> -&wdog1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_wdog>;
> -	fsl,ext-reset-output;
> -	status = "okay";
> -};
> -
>  &iomuxc {
>  	pinctrl_eqos: eqosgrp {
>  		fsl,pins = <
> @@ -490,3 +432,61 @@ MX8MP_IOMUXC_GPIO1_IO02__WDOG1_WDOG_B	0x166
>  		>;
>  	};
>  };
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	/* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
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
> +	pinctrl-0 = <&pinctrl_usb1_vbus>;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC2>;
> +	assigned-clock-rates = <400000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio2 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	assigned-clocks = <&clk IMX8MP_CLK_USDHC3>;
> +	assigned-clock-rates = <400000000>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&wdog1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_wdog>;
> +	fsl,ext-reset-output;
> +	status = "okay";
> +};
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
