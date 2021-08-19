Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 679353F1ADE
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 15:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240152AbhHSNqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 09:46:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239919AbhHSNqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 09:46:23 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8EE0C061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 06:45:46 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mGiMY-0006SP-6Z; Thu, 19 Aug 2021 15:45:42 +0200
Message-ID: <72e1194e10ccb4f87aed96265114f0963e805092.camel@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx: add minor fix to pass schema dtb check
From:   Lucas Stach <l.stach@pengutronix.de>
To:     haibo.chen@nxp.com, robh+dt@kernel.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     aisheng.dong@nxp.com, devicetree@vger.kernel.org, stefan@agner.ch,
        linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
        linux-arm-kernel@lists.infradead.org
Date:   Thu, 19 Aug 2021 15:45:40 +0200
In-Reply-To: <1629277950-7230-1-git-send-email-haibo.chen@nxp.com>
References: <1629277950-7230-1-git-send-email-haibo.chen@nxp.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, dem 18.08.2021 um 17:12 +0800 schrieb haibo.chen@nxp.com:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Add some fix to pass schema dtb check for fsl-imx-esdhc.yaml

Nack.

As far as I can see the controller is functionally compatible to the
fallback compatibles (in some cases with reduced functionality, like no
HS200) support. Removing those fallback compatibles will break older
kernels that don't have support for the new, preferred compatibles and
other software like bootloaders that might match to the fallback
compatibles, as they don't make use of the extended functionality
anyways.

Please fix the schema to accept the valid fallback compatibles.

Regards,
Lucas

> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> ---
>  arch/arm/boot/dts/imx50.dtsi   | 8 ++++----
>  arch/arm/boot/dts/imx6sl.dtsi  | 8 ++++----
>  arch/arm/boot/dts/imx6sll.dtsi | 6 +++---
>  arch/arm/boot/dts/imx6sx.dtsi  | 8 ++++----
>  arch/arm/boot/dts/imx6ul.dtsi  | 4 ++--
>  arch/arm/boot/dts/imx6ull.dtsi | 4 ++--
>  arch/arm/boot/dts/imx7s.dtsi   | 6 +++---
>  arch/arm/boot/dts/imx7ulp.dtsi | 4 ++--
>  arch/arm/boot/dts/vfxxx.dtsi   | 4 ++--
>  9 files changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx50.dtsi b/arch/arm/boot/dts/imx50.dtsi
> index a969f335b240..a1814f10f7f0 100644
> --- a/arch/arm/boot/dts/imx50.dtsi
> +++ b/arch/arm/boot/dts/imx50.dtsi
> @@ -116,7 +116,7 @@
>  				ranges;
>  
>  				esdhc1: mmc@50004000 {
> -					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
> +					compatible = "fsl,imx53-esdhc";
>  					reg = <0x50004000 0x4000>;
>  					interrupts = <1>;
>  					clocks = <&clks IMX5_CLK_ESDHC1_IPG_GATE>,
> @@ -128,7 +128,7 @@
>  				};
>  
>  				esdhc2: mmc@50008000 {
> -					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
> +					compatible = "fsl,imx53-esdhc";
>  					reg = <0x50008000 0x4000>;
>  					interrupts = <2>;
>  					clocks = <&clks IMX5_CLK_ESDHC2_IPG_GATE>,
> @@ -177,7 +177,7 @@
>  				};
>  
>  				esdhc3: mmc@50020000 {
> -					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
> +					compatible = "fsl,imx53-esdhc";
>  					reg = <0x50020000 0x4000>;
>  					interrupts = <3>;
>  					clocks = <&clks IMX5_CLK_ESDHC3_IPG_GATE>,
> @@ -189,7 +189,7 @@
>  				};
>  
>  				esdhc4: mmc@50024000 {
> -					compatible = "fsl,imx50-esdhc", "fsl,imx53-esdhc";
> +					compatible = "fsl,imx53-esdhc";
>  					reg = <0x50024000 0x4000>;
>  					interrupts = <4>;
>  					clocks = <&clks IMX5_CLK_ESDHC4_IPG_GATE>,
> diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
> index 997b96c1c47b..e40e017b6f38 100644
> --- a/arch/arm/boot/dts/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/imx6sl.dtsi
> @@ -858,7 +858,7 @@
>  			};
>  
>  			usdhc1: mmc@2190000 {
> -				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
> +				compatible = "fsl,imx6sl-usdhc";
>  				reg = <0x02190000 0x4000>;
>  				interrupts = <0 22 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SL_CLK_USDHC1>,
> @@ -870,7 +870,7 @@
>  			};
>  
>  			usdhc2: mmc@2194000 {
> -				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
> +				compatible = "fsl,imx6sl-usdhc";
>  				reg = <0x02194000 0x4000>;
>  				interrupts = <0 23 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SL_CLK_USDHC2>,
> @@ -882,7 +882,7 @@
>  			};
>  
>  			usdhc3: mmc@2198000 {
> -				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
> +				compatible = "fsl,imx6sl-usdhc";
>  				reg = <0x02198000 0x4000>;
>  				interrupts = <0 24 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SL_CLK_USDHC3>,
> @@ -894,7 +894,7 @@
>  			};
>  
>  			usdhc4: mmc@219c000 {
> -				compatible = "fsl,imx6sl-usdhc", "fsl,imx6q-usdhc";
> +				compatible = "fsl,imx6sl-usdhc";
>  				reg = <0x0219c000 0x4000>;
>  				interrupts = <0 25 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SL_CLK_USDHC4>,
> diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
> index 04f8d637a501..82b248353386 100644
> --- a/arch/arm/boot/dts/imx6sll.dtsi
> +++ b/arch/arm/boot/dts/imx6sll.dtsi
> @@ -711,7 +711,7 @@
>  			};
>  
>  			usdhc1: mmc@2190000 {
> -				compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> +				compatible = "fsl,imx6sll-usdhc";
>  				reg = <0x02190000 0x4000>;
>  				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SLL_CLK_USDHC1>,
> @@ -725,7 +725,7 @@
>  			};
>  
>  			usdhc2: mmc@2194000 {
> -				compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> +				compatible = "fsl,imx6sll-usdhc";
>  				reg = <0x02194000 0x4000>;
>  				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SLL_CLK_USDHC2>,
> @@ -739,7 +739,7 @@
>  			};
>  
>  			usdhc3: mmc@2198000 {
> -				compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> +				compatible = "fsl,imx6sll-usdhc";
>  				reg = <0x02198000 0x4000>;
>  				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SLL_CLK_USDHC3>,
> diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
> index 8516730778df..acab73c932c1 100644
> --- a/arch/arm/boot/dts/imx6sx.dtsi
> +++ b/arch/arm/boot/dts/imx6sx.dtsi
> @@ -967,7 +967,7 @@
>  			};
>  
>  			usdhc1: mmc@2190000 {
> -				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx6sx-usdhc";
>  				reg = <0x02190000 0x4000>;
>  				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SX_CLK_USDHC1>,
> @@ -979,7 +979,7 @@
>  			};
>  
>  			usdhc2: mmc@2194000 {
> -				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx6sx-usdhc";
>  				reg = <0x02194000 0x4000>;
>  				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SX_CLK_USDHC2>,
> @@ -991,7 +991,7 @@
>  			};
>  
>  			usdhc3: mmc@2198000 {
> -				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx6sx-usdhc";
>  				reg = <0x02198000 0x4000>;
>  				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SX_CLK_USDHC3>,
> @@ -1003,7 +1003,7 @@
>  			};
>  
>  			usdhc4: mmc@219c000 {
> -				compatible = "fsl,imx6sx-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx6sx-usdhc";
>  				reg = <0x0219c000 0x4000>;
>  				interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6SX_CLK_USDHC4>,
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index afeec01f6522..c066d85b2c0a 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -891,7 +891,7 @@
>  			};
>  
>  			usdhc1: mmc@2190000 {
> -				compatible = "fsl,imx6ul-usdhc", "fsl,imx6sx-usdhc";
> +				compatible = "fsl,imx6sx-usdhc";
>  				reg = <0x02190000 0x4000>;
>  				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_USDHC1>,
> @@ -905,7 +905,7 @@
>  			};
>  
>  			usdhc2: mmc@2194000 {
> -				compatible = "fsl,imx6ul-usdhc", "fsl,imx6sx-usdhc";
> +				compatible = "fsl,imx6sx-usdhc";
>  				reg = <0x02194000 0x4000>;
>  				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_USDHC2>,
> diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
> index 9bf67490ac49..8b1ed3bc7393 100644
> --- a/arch/arm/boot/dts/imx6ull.dtsi
> +++ b/arch/arm/boot/dts/imx6ull.dtsi
> @@ -42,11 +42,11 @@
>  };
>  
>  &usdhc1 {
> -	compatible = "fsl,imx6ull-usdhc", "fsl,imx6sx-usdhc";
> +	compatible = "fsl,imx6ull-usdhc";
>  };
>  
>  &usdhc2 {
> -	compatible = "fsl,imx6ull-usdhc", "fsl,imx6sx-usdhc";
> +	compatible = "fsl,imx6ull-usdhc";
>  };
>  
>  / {
> diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
> index 1843fc053870..075f8e5c0579 100644
> --- a/arch/arm/boot/dts/imx7s.dtsi
> +++ b/arch/arm/boot/dts/imx7s.dtsi
> @@ -1158,7 +1158,7 @@
>  			};
>  
>  			usdhc1: mmc@30b40000 {
> -				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx7d-usdhc";
>  				reg = <0x30b40000 0x10000>;
>  				interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
> @@ -1170,7 +1170,7 @@
>  			};
>  
>  			usdhc2: mmc@30b50000 {
> -				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx7d-usdhc";
>  				reg = <0x30b50000 0x10000>;
>  				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
> @@ -1182,7 +1182,7 @@
>  			};
>  
>  			usdhc3: mmc@30b60000 {
> -				compatible = "fsl,imx7d-usdhc", "fsl,imx6sl-usdhc";
> +				compatible = "fsl,imx7d-usdhc";
>  				reg = <0x30b60000 0x10000>;
>  				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX7D_IPG_ROOT_CLK>,
> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
> index b7ea37ad4e55..456c3f5f393c 100644
> --- a/arch/arm/boot/dts/imx7ulp.dtsi
> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> @@ -216,7 +216,7 @@
>  		};
>  
>  		usdhc0: mmc@40370000 {
> -			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
> +			compatible = "fsl,imx7ulp-usdhc";
>  			reg = <0x40370000 0x10000>;
>  			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
> @@ -230,7 +230,7 @@
>  		};
>  
>  		usdhc1: mmc@40380000 {
> -			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
> +			compatible = "fsl,imx7ulp-usdhc";
>  			reg = <0x40380000 0x10000>;
>  			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&scg1 IMX7ULP_CLK_NIC1_BUS_DIV>,
> diff --git a/arch/arm/boot/dts/vfxxx.dtsi b/arch/arm/boot/dts/vfxxx.dtsi
> index d53f9c9db8bf..c5651f23b3fd 100644
> --- a/arch/arm/boot/dts/vfxxx.dtsi
> +++ b/arch/arm/boot/dts/vfxxx.dtsi
> @@ -574,7 +574,7 @@
>  							<20000000>;
>  			};
>  
> -			esdhc0: esdhc@400b1000 {
> +			esdhc0: mmc@400b1000 {
>  				compatible = "fsl,imx53-esdhc";
>  				reg = <0x400b1000 0x1000>;
>  				interrupts = <27 IRQ_TYPE_LEVEL_HIGH>;
> @@ -585,7 +585,7 @@
>  				status = "disabled";
>  			};
>  
> -			esdhc1: esdhc@400b2000 {
> +			esdhc1: mmc@400b2000 {
>  				compatible = "fsl,imx53-esdhc";
>  				reg = <0x400b2000 0x1000>;
>  				interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;


