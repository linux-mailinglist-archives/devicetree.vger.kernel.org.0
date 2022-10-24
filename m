Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4CE16097C9
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 03:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbiJXBbf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 21:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbiJXBbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 21:31:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 761516AE86
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 18:31:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 55BE360EB4
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 01:31:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F41CCC433C1;
        Mon, 24 Oct 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666575089;
        bh=EdKWi/C7dX/2UjgyYSGTmW+CaF6DQNSxi7iImWcA4SA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=cxC19Bh7GUnIHD7td0XYzsJeW5HFi3LzUpVNqli4BNPq1bf8eT8QcSG/NUVx+dzph
         2Kg0b9UpS0iLc0++0HW3G4F9b9pAgii/0f85icnD4er4Ltu8BqMmNYkDExwXcCdrZs
         c/VHlf94NoxHr3exLDx5GXLFoV+spG7qtXiHhPptVEppt8Qk3hGI9CVvZ+estXczVU
         aodERzLNEtVdWTCVDYLAyROHsTKeedCP18g+AgCug8FpoWSVivzCQ+2+UKIV+EhMNL
         wTtDfBMTqqPyoGk5Zw8VoeFMA1bCSxIL4fN8zBdZ7Hda6c+JC814WXOjAJYyLRHLjL
         /SWpO0Cz8ZIow==
Date:   Mon, 24 Oct 2022 09:31:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: imx8mm-tqma8mqml-mba8mx: Fix USB DR
Message-ID: <20221024013123.GV125525@dragon>
References: <20220926112622.2912885-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926112622.2912885-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 01:26:22PM +0200, Alexander Stein wrote:
> extcon does not work somehow, so switch to usb-role-switch instead.

So extcon was added without testing?

Shawn

> 
> Fixes: dfcd1b6f7620 ("arm64: dts: freescale: add initial device tree for TQMa8MQML with i.MX8MM")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 32 +++++++++++++++----
>  1 file changed, 26 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> index bfb44630da6b..56323c989d55 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> @@ -34,11 +34,25 @@ reg_usdhc2_vmmc: regulator-vmmc {
>  		off-on-delay-us = <12000>;
>  	};
>  
> -	extcon_usbotg1: extcon-usbotg1 {
> -		compatible = "linux,extcon-usb-gpio";
> +	connector {
> +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> +		type = "micro";
> +		label = "X19";
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_usb1_extcon>;
> -		id-gpio = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&pinctrl_usb1_connector>;
> +		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				usb_dr_connector: endpoint {
> +					remote-endpoint = <&usb1_drd_sw>;
> +				};
> +			};
> +		};
>  	};
>  };
>  
> @@ -106,13 +120,19 @@ &usbotg1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_usbotg1>;
>  	dr_mode = "otg";
> -	extcon = <&extcon_usbotg1>;
>  	srp-disable;
>  	hnp-disable;
>  	adp-disable;
>  	power-active-high;
>  	over-current-active-low;
> +	usb-role-switch;
>  	status = "okay";
> +
> +	port {
> +		usb1_drd_sw: endpoint {
> +			remote-endpoint = <&usb_dr_connector>;
> +		};
> +	};
>  };
>  
>  &usbotg2 {
> @@ -242,7 +262,7 @@ pinctrl_usbotg1: usbotg1grp {
>  			   <MX8MM_IOMUXC_GPIO1_IO13_USB1_OTG_OC		0x84>;
>  	};
>  
> -	pinctrl_usb1_extcon: usb1-extcongrp {
> +	pinctrl_usb1_connector: usb1-connectorgrp {
>  		fsl,pins = <MX8MM_IOMUXC_GPIO1_IO10_GPIO1_IO10		0x1c0>;
>  	};
>  
> -- 
> 2.25.1
> 
