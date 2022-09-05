Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C33C15AC8C4
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 04:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231814AbiIECWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 22:22:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231830AbiIECWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 22:22:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F2DC2716E
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 19:22:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9FEC461049
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 02:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61409C433D6;
        Mon,  5 Sep 2022 02:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662344555;
        bh=916uXypaAnZ9d2zo9QefAmHgvekVDX7XVcreYrQhrqc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=r8FdPtVN0Xuw1fs7oWy96arw4QRiVRZtu+bIuqrcFSaP/udNuyBgdTwf7wCQZzLea
         d2hplsPM6sYrfmOUoM4SUPhnVlsIv9Mr+oHwpiXNegippPGj3p4rjvmsKWImYli2y3
         G9ykngcxDqwVelkgSEdz4/I+NY1XezK5McDvNupq7SknA1YCMcr6AGRduVgN3bM58v
         ZGVT6mcaI1LLUjhji8Bv2c5wsEMxst5QLoA/lMUj0U/WqZrITKGSRL8LoyF3dN+E/j
         AuMnTNLi+SsaZPOydnQHMMmwhnmdWFSHRBmc3S7GIMH7hcb1Y6ms0gzv0TBi44dpy5
         VYCL2e20LJWpA==
Date:   Mon, 5 Sep 2022 10:22:28 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>, Jun Li <jun.li@nxp.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: tqma8mpql: add USB DR support
Message-ID: <20220905022228.GB1728671@dragon>
References: <20220831074606.1677052-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220831074606.1677052-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 31, 2022 at 09:46:06AM +0200, Alexander Stein wrote:
> Add support for USB DR on USB1 interface. Host/Device detection is done
> using the usb-role-switch connector.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Split from previous series
> * For now enable USB OTG only
> 
>  .../freescale/imx8mp-tqma8mpql-mba8mpxl.dts   | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> index d8ca52976170..b30d75b1fa47 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mpxl.dts
> @@ -459,6 +459,37 @@ &usdhc2 {
>  	status = "okay";
>  };
>  
> +&usb3_phy0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb0>;

Should the pinctrl be in USB controller instead of PHY node?

> +	status = "okay";
> +};
> +
> +&usb3_0 {
> +	fsl,over-current-active-low;
> +	status = "okay";
> +};
> +
> +&usb_dwc3_0 {

These nodes are not in alphabetic order.

> +	/* dual role is implemented, but not a full featured OTG */
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	dr_mode = "otg";
> +	usb-role-switch;
> +	role-switch-default-mode = "peripheral";
> +	status = "okay";
> +
> +	connector {
> +		compatible = "gpio-usb-b-connector", "usb-b-connector";
> +		type = "micro";
> +		label = "X29";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbcon0>;
> +		id-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
>  &iomuxc {
>  	pinctrl_backlight: backlightgrp {
>  		fsl,pins = <MX8MP_IOMUXC_SAI5_RXFS__GPIO3_IO19		0x14>;
> @@ -666,6 +697,15 @@ pinctrl_uart4: uart4grp {
>  			   <MX8MP_IOMUXC_UART4_TXD__UART4_DCE_TX	0x140>;
>  	};
>  
> +	pinctrl_usbcon0: usb0congrp {
> +		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO10__GPIO1_IO10		0x1c0>;
> +	};
> +
> +	pinctrl_usb0: usb0grp {

pinctrl_usb0 should go before pinctrl_usbcon0?

Shawn

> +		fsl,pins = <MX8MP_IOMUXC_GPIO1_IO13__USB1_OTG_OC	0x1c0>,
> +			   <MX8MP_IOMUXC_GPIO1_IO12__USB1_OTG_PWR	0x1c0>;
> +	};
> +
>  	pinctrl_usdhc2: usdhc2grp {
>  		fsl,pins = <MX8MP_IOMUXC_SD2_CLK__USDHC2_CLK		0x192>,
>  			   <MX8MP_IOMUXC_SD2_CMD__USDHC2_CMD		0x1d2>,
> -- 
> 2.25.1
> 
