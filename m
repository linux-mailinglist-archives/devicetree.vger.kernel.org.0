Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48AA14FE80
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 03:42:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726996AbfFXBmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jun 2019 21:42:24 -0400
Received: from mail.kernel.org ([198.145.29.99]:60616 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726480AbfFXBmY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 23 Jun 2019 21:42:24 -0400
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1679B22CE3;
        Mon, 24 Jun 2019 00:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1561337236;
        bh=B8mxJ2WxO0a+tpbQ7BgOa08JuU/+hYlzgRT6U1IDjk4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ofbn9G8ziLCE5qVkS2ich3ghdmxDfZoBOG/eWUki/8wE2ADbpHNyr2JcpvIL/Pqt4
         AYKWoi4pPp9rDLQIOyFo3h81R8YlhfnSxJeUDf8uTE7OXR9SOdetcZTGYyCG3z6Jp/
         dgZGwF74h+WuPBHW4UNC0+aqFd509gKh/r7rWs9w=
Date:   Mon, 24 Jun 2019 08:47:04 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>,
        Lothar =?iso-8859-1?Q?Wa=DFmann?= <LW@KARO-electronics.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul: fix PWM[1-4] interrupts
Message-ID: <20190624004703.GF3800@dragon>
References: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190618155834.15545-1-sebastien.szymanski@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Lothar

On Tue, Jun 18, 2019 at 05:58:34PM +0200, Sébastien Szymanski wrote:
> According to the i.MX6UL/L RM, table 3.1 "ARM Cortex A7 domain interrupt
> summary", the interrupts for the PWM[1-4] go from 83 to 86.
> 
> Fixes: b9901fe84f02 ("ARM: dts: imx6ul: add pwm[1-4] nodes")
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>

Just curious - did you spot the error by testing PWM or merely by
looking at the code and document?

Shawn

> ---
>  arch/arm/boot/dts/imx6ul.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index bbf010c73336..a7f6d1d58e20 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -358,7 +358,7 @@
>  			pwm1: pwm@2080000 {
>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg = <0x02080000 0x4000>;
> -				interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_PWM1>,
>  					 <&clks IMX6UL_CLK_PWM1>;
>  				clock-names = "ipg", "per";
> @@ -369,7 +369,7 @@
>  			pwm2: pwm@2084000 {
>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg = <0x02084000 0x4000>;
> -				interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_PWM2>,
>  					 <&clks IMX6UL_CLK_PWM2>;
>  				clock-names = "ipg", "per";
> @@ -380,7 +380,7 @@
>  			pwm3: pwm@2088000 {
>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg = <0x02088000 0x4000>;
> -				interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_PWM3>,
>  					 <&clks IMX6UL_CLK_PWM3>;
>  				clock-names = "ipg", "per";
> @@ -391,7 +391,7 @@
>  			pwm4: pwm@208c000 {
>  				compatible = "fsl,imx6ul-pwm", "fsl,imx27-pwm";
>  				reg = <0x0208c000 0x4000>;
> -				interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks = <&clks IMX6UL_CLK_PWM4>,
>  					 <&clks IMX6UL_CLK_PWM4>;
>  				clock-names = "ipg", "per";
> -- 
> 2.21.0
> 
