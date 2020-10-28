Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6512029D6DF
	for <lists+devicetree@lfdr.de>; Wed, 28 Oct 2020 23:19:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731990AbgJ1WTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 18:19:03 -0400
Received: from mail.kernel.org ([198.145.29.99]:60520 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731689AbgJ1WRl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 18:17:41 -0400
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 367872465D;
        Wed, 28 Oct 2020 08:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1603874795;
        bh=fotDBd2F06pQwQ4Q3Ro5fE1KlZat+X53h2z3yrZ43d0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=F90ZZJvw2FNf62slF6MaS5BK3VkGrYfi0vu2ZNw+ItdfVZw1kli9c7Vi/r4verH0l
         aVWdvNaDQTh8P1ypmUc6kEvasv6AEe5ich+ui7/lctN/sSJZca/tT8jX3AwJ6oNT02
         PivTekqsysTg70wr3JdYU9jXkh4N2sKV31gMIUN8=
Date:   Wed, 28 Oct 2020 16:46:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Stefan Riedmueller <s.riedmueller@phytec.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Yunus Bas <y.bas@phytec.de>
Subject: Re: [PATCH 4/6] ARM: dts: imx6ul: segin: Add phyBOARD-Segin with
 eMMC phyCORE-i.MX6UL
Message-ID: <20201028084627.GE28755@dragon>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
 <20200922092313.151293-4-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200922092313.151293-4-s.riedmueller@phytec.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 22, 2020 at 11:23:11AM +0200, Stefan Riedmueller wrote:
> From: Yunus Bas <y.bas@phytec.de>
> 
> Add a PHYTEC phyBOARD-Segin full featured with phyCORE-i.MX 6UL with
> eMMC and following features:
>     - i.MX 6UL
>     - 512 MB RAM
>     - eMMC
>     - USB Host/OTG
>     - 2x 100 Mbit/s Ethernet
>     - RS232
>     - CAN
> 
> Signed-off-by: Yunus Bas <y.bas@phytec.de>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/boot/dts/Makefile                    |  1 +
>  .../dts/imx6ul-phytec-segin-ff-rdk-emmc.dts   | 93 +++++++++++++++++++
>  2 files changed, 94 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 4572db3fa5ae..81ede0707a51 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -615,6 +615,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ul-pico-dwarf.dtb \
>  	imx6ul-pico-hobbit.dtb \
>  	imx6ul-pico-pi.dtb \
> +	imx6ul-phytec-segin-ff-rdk-emmc.dtb \
>  	imx6ul-phytec-segin-ff-rdk-nand.dtb \
>  	imx6ul-tx6ul-0010.dtb \
>  	imx6ul-tx6ul-0011.dtb \
> diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
> new file mode 100644
> index 000000000000..934c05fad615
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-emmc.dts
> @@ -0,0 +1,93 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
> +/*
> + * Copyright (C) 2020 PHYTEC Messtechnik GmbH
> + * Author: Yunus Bas <y.bas@phytec.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6ul.dtsi"
> +#include "imx6ul-phytec-phycore-som.dtsi"
> +#include "imx6ul-phytec-segin.dtsi"
> +#include "imx6ul-phytec-segin-peb-eval-01.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with eMMC";
> +	compatible = "phytec,imx6ul-pbacd10-emmc", "phytec,imx6ul-pbacd10",
> +		     "phytec,imx6ul-pcl063","fsl,imx6ul";
> +};
> +
> +&adc1 {
> +	status = "okay";
> +};
> +
> +&can1 {
> +	status = "okay";
> +};
> +
> +&tlv320 {
> +	status = "okay";
> +};

It breaks the alphabetic order.

Shawn

> +
> +&ecspi3 {
> +	status = "okay";
> +};
> +
> +&ethphy1 {
> +	status = "okay";
> +};
> +
> +&ethphy2 {
> +	status = "okay";
> +};
> +
> +&fec1 {
> +	status = "okay";
> +};
> +
> +&fec2 {
> +	status = "okay";
> +};
> +
> +&i2c_rtc {
> +	status = "okay";
> +};
> +
> +&reg_can1_en {
> +	status = "okay";
> +};
> +
> +&reg_sound_1v8 {
> +	status = "okay";
> +};
> +
> +&reg_sound_3v3 {
> +	status = "okay";
> +};
> +
> +&sai2 {
> +	status = "okay";
> +};
> +
> +&sound {
> +	status = "okay";
> +};
> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&usbotg1 {
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	status = "okay";
> +};
> -- 
> 2.25.1
> 
