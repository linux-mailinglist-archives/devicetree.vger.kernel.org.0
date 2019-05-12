Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66BF11AB37
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2019 10:30:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726319AbfELIaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 May 2019 04:30:01 -0400
Received: from mail.kernel.org ([198.145.29.99]:33608 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726232AbfELIaB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 12 May 2019 04:30:01 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id EDD812133D;
        Sun, 12 May 2019 08:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1557649800;
        bh=3Aob7gTB5wbprGzyKA6422nWjas+uOgwddzQsZBIhGk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=jxWVzoClFYUxdluWJa6aIcqYN6U6/eI2RBuQjNfDU2XB1Qu86Dz2MQBetfw2eVVh1
         c64YnQeOf+tlHmJ7Vtmok6iFx1efb93Ylz/aMzItqpuctBwBBTognwTuiKqXr+xpm1
         xycx2EvZ3Q8FKfNJT4qiQl2aSo2zLnIMOnoltJwc=
Date:   Sun, 12 May 2019 16:29:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     BOUGH CHEN <haibo.chen@nxp.com>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/3] ARM: dts: imx7d-sdb: add SD3.0 support for USDHC1
Message-ID: <20190512082928.GP15856@dragon>
References: <20190429124547.19928-1-haibo.chen@nxp.com>
 <20190429124547.19928-2-haibo.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190429124547.19928-2-haibo.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 29, 2019 at 12:38:00PM +0000, BOUGH CHEN wrote:
> i.MX7D-SDB board support SD3.0 for USDHC1, so add it here.
> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
> ---
>  arch/arm/boot/dts/imx7d-sdb.dts | 53 +++++++++++++++++++++++++++++----
>  1 file changed, 48 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx7d-sdb.dts b/arch/arm/boot/dts/imx7d-sdb.dts
> index 6a6035b2bc22..f468557c121b 100644
> --- a/arch/arm/boot/dts/imx7d-sdb.dts
> +++ b/arch/arm/boot/dts/imx7d-sdb.dts
> @@ -87,6 +87,17 @@
>  		regulator-max-microvolt = <1800000>;
>  	};
>  
> +	reg_sd1_vmmc: regulator-sd1-vmmc {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_SD1";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio5 2 GPIO_ACTIVE_HIGH>;
> +		startup-delay-us = <200000>;
> +		enable-active-high;
> +	};
> +
> +
>  	reg_brcm: regulator-brcm {
>  		compatible = "regulator-fixed";
>  		gpio = <&gpio4 21 GPIO_ACTIVE_HIGH>;
> @@ -408,12 +419,16 @@
>  };
>  
>  &usdhc1 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_usdhc1>;
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>, <&pinctrl_usdhc1_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>, <&pinctrl_usdhc1_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>, <&pinctrl_usdhc1_gpio>;
>  	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
>  	wp-gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
>  	wakeup-source;
>  	keep-power-in-suspend;
> +	vmmc-supply = <&reg_sd1_vmmc>;
> +	fsl,tuning-step = <2>;
>  	status = "okay";
>  };
>  
> @@ -638,6 +653,15 @@
>  			>;
>  		};
>  
> +		pinctrl_usdhc1_gpio: usdhc1_gpiogrp {
> +			fsl,pins = <
> +				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
> +				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* WP */
> +				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59 /* VMMC */
> +				 MX7D_PAD_GPIO1_IO08__SD1_VSELECT	0x59 /* VSELECT */

The indentation of this line doesn't align with above ones.

Shawn

> +			>;
> +		};
> +
>  		pinctrl_usdhc1: usdhc1grp {
>  			fsl,pins = <
>  				MX7D_PAD_SD1_CMD__SD1_CMD		0x59
> @@ -646,9 +670,28 @@
>  				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
>  				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
>  				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
> -				MX7D_PAD_SD1_CD_B__GPIO5_IO0		0x59 /* CD */
> -				MX7D_PAD_SD1_WP__GPIO5_IO1		0x59 /* WP */
> -				MX7D_PAD_SD1_RESET_B__GPIO5_IO2		0x59 /* vmmc */
> +			>;
> +		};
> +
> +		pinctrl_usdhc1_100mhz: usdhc1grp_100mhz {
> +			fsl,pins = <
> +				MX7D_PAD_SD1_CMD__SD1_CMD		0x59
> +				MX7D_PAD_SD1_CLK__SD1_CLK		0x19
> +				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x59
> +				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x59
> +				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x59
> +				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x59
> +			>;
> +		};
> +
> +		pinctrl_usdhc1_200mhz: usdhc1grp_200mhz {
> +			fsl,pins = <
> +				MX7D_PAD_SD1_CMD__SD1_CMD		0x5b
> +				MX7D_PAD_SD1_CLK__SD1_CLK		0x1b
> +				MX7D_PAD_SD1_DATA0__SD1_DATA0		0x5b
> +				MX7D_PAD_SD1_DATA1__SD1_DATA1		0x5b
> +				MX7D_PAD_SD1_DATA2__SD1_DATA2		0x5b
> +				MX7D_PAD_SD1_DATA3__SD1_DATA3		0x5b
>  			>;
>  		};
>  
> -- 
> 2.17.1
> 
