Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB84353DE34
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 22:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347311AbiFEUjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 16:39:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347307AbiFEUjN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 16:39:13 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 041C34926F
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 13:39:12 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id v1so14749582ejg.13
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 13:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=P9L7w7W6RPaXwuf6/p/GwxC09aYDu7d3RscTwNyf88U=;
        b=pZE+4OAL8EJ80YrjiSrwLFbh7Ieim2MYSuzABYIBlcL6eRz+dAqT+sJOxZodEGCUnL
         OJJjMTN6fKqVesSNeVChMrLwJqdqFVnkWiZJP4wDg0l9+MWUo1BNi78vNTLzBaeC5ifJ
         Hu2cjY1oSD3QdFOsYHptfpT0+O3APorht18uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P9L7w7W6RPaXwuf6/p/GwxC09aYDu7d3RscTwNyf88U=;
        b=lNPbMlgO4nai3yppVRS0LDvdyXtfOeXZACq+KjOq9xKf3ifgrtvLeS59oJ/Jr5rKJw
         tlNvPut6NvqjIJehEpvoMnqPBuiK6TUg4rdWhNfarshvrDNXt61glGhYBO0rl541nKwo
         aQi/Kz4ovuLk/FVxLGzxUXa0jBUl8N+XbtbLaEnZqX7wx/9iemmZ34DxDxqzAR6TkZSQ
         KP+LmtwwNbhsjdwAXHMBonwCNJTwZ4f5Ub4EAZahWCBEXnaNQX2tAL6AEyC3lFJyr74A
         rD58Ouj6o056KkM9fprHsYDwiYtV4VgX7sOAsJl1KWSC9dnQixUkLhStorlWX7tiDoBb
         lZxQ==
X-Gm-Message-State: AOAM533XLv4Hp/VdDyBjbJhiPyKU/Iip72GCJSxlmldrBgfcgu1LJAGH
        cC4S9l5sYsHBHCiKU+hkcBnvQg==
X-Google-Smtp-Source: ABdhPJy7ux80/Cp/KJX7ALhwAtEwHuoA0WCKR3RmH87sSzBJ8cHsZw3ZO2UH0ZSQJE7FdXIHXVWcYg==
X-Received: by 2002:a17:906:3bd2:b0:711:ce53:5d5f with SMTP id v18-20020a1709063bd200b00711ce535d5fmr2269193ejf.500.1654461550509;
        Sun, 05 Jun 2022 13:39:10 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-2-39-143-183.cust.vodafonedsl.it. [2.39.143.183])
        by smtp.gmail.com with ESMTPSA id g3-20020aa7dd83000000b0042bc5a536edsm7291574edv.28.2022.06.05.13.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 13:39:09 -0700 (PDT)
Date:   Sun, 5 Jun 2022 22:39:06 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 2/3] arm64: dts: freescale: add i.MX93 11x11 EVK basic
 support
Message-ID: <20220605203906.GA194967@tom-ThinkPad-T14s-Gen-2i>
References: <20220425110330.1630984-1-peng.fan@oss.nxp.com>
 <20220425110330.1630984-3-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220425110330.1630984-3-peng.fan@oss.nxp.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peng,

On Mon, Apr 25, 2022 at 07:03:29PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Enable lpuart & SDHC for console and rootfs
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 130 ++++++++++++++++++
>  2 files changed, 131 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 851e6faf8c05..955706c666d8 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -105,6 +105,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx93-11x11-evk.dtb
>  
>  imx8mm-venice-gw72xx-0x-imx219-dtbs	:= imx8mm-venice-gw73xx-0x.dtb imx8mm-venice-gw73xx-0x-imx219.dtbo
>  imx8mm-venice-gw72xx-0x-rs232-rts-dtbs	:= imx8mm-venice-gw72xx-0x.dtb imx8mm-venice-gw72xx-0x-rs232-rts.dtbo
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> new file mode 100644
> index 000000000000..5ee63e3e4759
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -0,0 +1,130 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2022 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include "imx93.dtsi"
> +
> +/ {
> +	chosen {
> +		stdout-path = &lpuart1;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&mu1 {
> +	status = "okay";
> +};
> +
> +&mu2 {
> +	status = "okay";
> +};
> +
> +&lpuart1 { /* console */
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1>;
> +	pinctrl-2 = <&pinctrl_usdhc1>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	cd-gpios = <&gpio3 00 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	bus-width = <4>;
> +	status = "okay";
> +	no-sdio;
> +	no-mmc;
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	status = "okay";

I think you don't need status = "okay" here.
dts node is enable as default.

> +
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX93_PAD_UART1_RXD__LPUART1_RX			0x31e
> +			MX93_PAD_UART1_TXD__LPUART1_TX			0x31e
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX93_PAD_UART2_TXD__LPUART2_TX			0x31e
> +			MX93_PAD_UART2_RXD__LPUART2_RX			0x31e
> +		>;
> +	};
> +
> +	pinctrl_uart5: uart5grp {
> +		fsl,pins = <
> +			MX93_PAD_DAP_TDO_TRACESWO__LPUART5_TX	0x31e
> +			MX93_PAD_DAP_TDI__LPUART5_RX		0x31e
> +			MX93_PAD_DAP_TMS_SWDIO__LPUART5_RTS_B	0x31e
> +			MX93_PAD_DAP_TCLK_SWCLK__LPUART5_CTS_B	0x31e
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX93_PAD_SD1_CLK__USDHC1_CLK		0x17fe
> +			MX93_PAD_SD1_CMD__USDHC1_CMD		0x13fe
> +			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x13fe
> +			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x13fe
> +			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x13fe
> +			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x13fe
> +			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x13fe
> +			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x13fe
> +			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x13fe
> +			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x13fe
> +			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x17fe
> +		>;
> +	};
> +
> +	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
> +		fsl,pins = <
> +			MX93_PAD_SD2_RESET_B__GPIO3_IO07	0x31e
> +		>;
> +	};
> +
> +	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
> +		fsl,pins = <
> +			MX93_PAD_SD2_CD_B__GPIO3_IO00		0x31e
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX93_PAD_SD2_CLK__USDHC2_CLK		0x17fe
> +			MX93_PAD_SD2_CMD__USDHC2_CMD		0x13fe
> +			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x13fe
> +			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x13fe
> +			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x13fe
> +			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x13fe
> +			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
> +		>;
> +	};
> +};
> -- 
> 2.25.1
> 

Regards,
Tommaso

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
