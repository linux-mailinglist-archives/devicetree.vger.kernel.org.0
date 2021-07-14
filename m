Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0382A3C7FF6
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 10:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238449AbhGNI1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 04:27:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:37670 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229940AbhGNI1R (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Jul 2021 04:27:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A09D3613AF;
        Wed, 14 Jul 2021 08:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626251066;
        bh=rUQGs4Iz7LN/L5dlQePw8z6jZXSqSiwYHQTvU6/GcZc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PIAdIE7ByXwOuYem9ic8mutTNKJ5Nj/qifmCbWnEsovNBTMBMR/ISvftuL1j2+qnY
         d66PICAuSHC00rSS2KhE4coLd/DAxBOvmuismv//bW9pDWhHfLnyY2uAYhjqTPbcUD
         WIgSomzgJhhiGao3ljWLmvE40cxr5EXK1JJXkIOgu119BZqp7Eq/mdxLn8tlvIc+lM
         bGvBQ+EGWri3esF0jz/y1DpkVJ56abx63R3YqIaroVUt/67oymqBN2qRgnxNnFoHD6
         UAT6TuX1qO/wa7IuMuCCsQACm7G/oq+BOWPx7oOagKQg8xW8fMxhZKTVPiRoPQtsni
         /sJ+kp6qR3blw==
Date:   Wed, 14 Jul 2021 16:24:20 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     robh+dt@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
        linus.walleij@linaro.org, aisheng.dong@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 11/11] arm64: dts: imx8ulp: Add the basic dts for
 imx8ulp evk board
Message-ID: <20210714082420.GK4419@dragon>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
 <20210625011355.3468586-12-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210625011355.3468586-12-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 09:13:55AM +0800, Jacky Bai wrote:
> Add the basic dts file for i.MX8ULP EVK board.
> Only the necessary devices for minimal system boot up are enabled:
> enet, emmc, usb, console uart.
> 
> some of the devices' pin status may lost during low power mode,
> so additional sleep pinctrl properties are included by default.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  - v3 changes:
>    no
> 
>  - v2 changes:
>    add the memory node place holder
>    update the license
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  arch/arm64/boot/dts/freescale/imx8ulp-evk.dts | 148 ++++++++++++++++++
>  2 files changed, 149 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 25806c4924cb..8c24a05d55af 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -65,5 +65,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-colibri-eval-v3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8ulp-evk.dtb
>  
>  dtb-$(CONFIG_ARCH_S32) += s32v234-evb.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
> new file mode 100644
> index 000000000000..de84f29c12ce
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp-evk.dts
> @@ -0,0 +1,148 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include "imx8ulp.dtsi"
> +
> +/ {
> +	model = "NXP i.MX8ULP EVK";
> +	compatible = "fsl,imx8ulp-evk", "fsl,imx8ulp";
> +
> +	chosen {
> +		stdout-path = &lpuart5;
> +	};
> +
> +	memory@40000000 {

Unit-address doesn't seem to match 'reg' property.

Shawn

> +		device_type = "memory";
> +		reg = <0x0 0x80000000 0 0x80000000>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy {
> +			reg = <1>;
> +			micrel,led-mode = <1>;
> +		};
> +	};
> +};
> +
> +&lpuart5 {
> +	/* console */
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_lpuart5>;
> +	pinctrl-1 = <&pinctrl_lpuart5>;
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_otgid1>;
> +	pinctrl-1 = <&pinctrl_otgid1>;
> +	dr_mode = "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	status = "okay";
> +};
> +
> +&usbphy1 {
> +	status = "okay";
> +};
> +
> +&usbmisc1 {
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_otgid2>;
> +	pinctrl-1 = <&pinctrl_otgid2>;
> +	dr_mode = "otg";
> +	hnp-disable;
> +	srp-disable;
> +	adp-disable;
> +	status = "okay";
> +};
> +
> +&usbphy2 {
> +	status = "okay";
> +};
> +
> +&usbmisc2 {
> +	status = "okay";
> +};
> +
> +&usdhc0 {
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_usdhc0>;
> +	pinctrl-1 = <&pinctrl_usdhc0>;
> +	non-removable;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&iomuxc1 {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			MX8ULP_PAD_PTE15__ENET0_MDC     0x43
> +			MX8ULP_PAD_PTE14__ENET0_MDIO    0x43
> +			MX8ULP_PAD_PTE17__ENET0_RXER    0x43
> +			MX8ULP_PAD_PTE18__ENET0_CRS_DV  0x43
> +			MX8ULP_PAD_PTF1__ENET0_RXD0     0x43
> +			MX8ULP_PAD_PTE20__ENET0_RXD1    0x43
> +			MX8ULP_PAD_PTE16__ENET0_TXEN    0x43
> +			MX8ULP_PAD_PTE23__ENET0_TXD0    0x43
> +			MX8ULP_PAD_PTE22__ENET0_TXD1    0x43
> +			MX8ULP_PAD_PTE19__ENET0_REFCLK  0x43
> +			MX8ULP_PAD_PTF10__ENET0_1588_CLKIN 0x43
> +		>;
> +	};
> +
> +	pinctrl_lpuart5: lpuart5grp {
> +		fsl,pins = <
> +			MX8ULP_PAD_PTF14__LPUART5_TX	0x3
> +			MX8ULP_PAD_PTF15__LPUART5_RX	0x3
> +		>;
> +	};
> +
> +	pinctrl_otgid1: usb1grp {
> +		fsl,pins = <
> +			MX8ULP_PAD_PTF2__USB0_ID	0x10003
> +		>;
> +	};
> +
> +	pinctrl_otgid2: usb2grp {
> +		fsl,pins = <
> +			MX8ULP_PAD_PTD23__USB1_ID	0x10003
> +		>;
> +	};
> +
> +	pinctrl_usdhc0: usdhc0grp {
> +		fsl,pins = <
> +			MX8ULP_PAD_PTD1__SDHC0_CMD	0x43
> +			MX8ULP_PAD_PTD2__SDHC0_CLK	0x10042
> +			MX8ULP_PAD_PTD10__SDHC0_D0	0x43
> +			MX8ULP_PAD_PTD9__SDHC0_D1	0x43
> +			MX8ULP_PAD_PTD8__SDHC0_D2	0x43
> +			MX8ULP_PAD_PTD7__SDHC0_D3	0x43
> +			MX8ULP_PAD_PTD6__SDHC0_D4	0x43
> +			MX8ULP_PAD_PTD5__SDHC0_D5	0x43
> +			MX8ULP_PAD_PTD4__SDHC0_D6	0x43
> +			MX8ULP_PAD_PTD3__SDHC0_D7	0x43
> +			MX8ULP_PAD_PTD11__SDHC0_DQS	0x10042
> +		>;
> +	};
> +};
> -- 
> 2.26.2
> 
