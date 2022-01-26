Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E3FE49CA28
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 13:57:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234544AbiAZM47 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 07:56:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234510AbiAZM46 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 07:56:58 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC4BC06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 04:56:58 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 411AEB81D01
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 12:56:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C0EEC340E6;
        Wed, 26 Jan 2022 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643201816;
        bh=3QBnc1xy9nvgmIoRKXqQD4CtEni2y0MyECEp2KR1bwU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=c2ZRoe33MxF8KRCS4ZYbdZr04QFB8NAfwU4LuicYgiHbLzB9aS95FZ3zndiNvrhCo
         /S9D+RqholTN12s/AUlNf+UTCPONgfHJWqOkgXQWKnIH3Jof1n2qFR13bKbJeYsmO4
         +BO6gPUoUgUTvhR8AfPqA0Aok580pKkcmorK0VFPlgR5Q1hRsmhFIKSxpLdw+TDQ6o
         5kL4VRVhy6EMpFY+MKa55FHGnLlMGng/8bQ8brwLfUkZzvoEWrnrJsdVWMBnE9MjRz
         i+wKWF564wdZVKgQqVscT40bvwiPLPxXKBD8MnBHHKNa7OFn3MQUnpcYB2/qiSCX8h
         mXNJf5oc1Vm8Q==
Date:   Wed, 26 Jan 2022 20:56:51 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mqml: add PCIe support
Message-ID: <20220126125648.GT4686@dragon>
References: <20211217102207.722897-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211217102207.722897-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 17, 2021 at 11:22:07AM +0100, Alexander Stein wrote:
> Add PCIe support to TQMa8MxML series.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

It doesn't apply to my imx/dt64 branch.  Could you rebase?

Shawn

> ---
> This goes on top of the series recently applied to pci/dwc [1]:
> [PATCH v7 0/8] Add the imx8m pcie phy driver and imx8mm pcie support
> [1] https://patchwork.kernel.org/project/linux-pci/list/?series=589031&state=*
> 
>  .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 19 +++++++++++++++++++
>  .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 +++++
>  arch/arm64/boot/dts/freescale/mba8mx.dtsi     |  6 ++++++
>  3 files changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> index 7844878788f4..286d2df01cfa 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
> @@ -5,6 +5,7 @@
>  
>  /dts-v1/;
>  
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
>  #include "imx8mm-tqma8mqml.dtsi"
>  #include "mba8mx.dtsi"
>  
> @@ -58,6 +59,24 @@ expander2: gpio@27 {
>  	};
>  };
>  
> +&pcie_phy {
> +	clocks = <&pcie0_refclk>;
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
> +	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_AUX>,
> +		<&pcie0_refclk>;
> +	clock-names = "pcie", "pcie_aux", "pcie_bus";
> +	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
> +				<&clk IMX8MM_CLK_PCIE1_CTRL>;
> +	assigned-clock-rates = <10000000>, <250000000>;
> +	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
> +				<&clk IMX8MM_SYS_PLL2_250M>;
> +	status = "okay";
> +};
> +
>  &sai3 {
>  	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
>  	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
> index 284e62acc0b4..16ee9b5179e6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
> @@ -227,6 +227,11 @@ eeprom0: eeprom@57 {
>  	};
>  };
>  
> +&pcie_phy {
> +	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	fsl,clkreq-unsupported;
> +};
> +
>  &usdhc3 {
>  	pinctrl-names = "default", "state_100mhz", "state_200mhz";
>  	pinctrl-0 = <&pinctrl_usdhc3>;
> diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
> index e694dacb16af..42e12c190e9e 100644
> --- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
> +++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
> @@ -87,6 +87,12 @@ panel_in_lvds0: endpoint {
>  		};
>  	};
>  
> +	pcie0_refclk: pcie0-refclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +	};
> +
>  	reg_12v: regulator-12v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "MBA8MX_12V";
> -- 
> 2.25.1
> 
