Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C13EF4395F
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:13:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732265AbfFMPN0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:13:26 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:54185 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732263AbfFMNbu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 09:31:50 -0400
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1hbPpO-0001nX-5i; Thu, 13 Jun 2019 15:31:42 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <mfe@pengutronix.de>)
        id 1hbPpN-0001dI-Am; Thu, 13 Jun 2019 15:31:41 +0200
Date:   Thu, 13 Jun 2019 15:31:41 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 1/1] ARM: dts: imx6ul: Add PXP node
Message-ID: <20190613133141.36h5cq3xueyfdp2k@pengutronix.de>
References: <20190613102355.20580-1-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190613102355.20580-1-sebastien.szymanski@armadeus.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:30:12 up 26 days, 19:48, 51 users,  load average: 0.06, 0.08,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19-06-13 12:23, Sébastien Szymanski wrote:
> Add PXP node for i.MX6UL/L SoC.
> 
> Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
> 
> Changes for v2:
>  - remove status property
>  
>  arch/arm/boot/dts/imx6ul.dtsi  | 8 ++++++++
>  arch/arm/boot/dts/imx6ull.dtsi | 6 ++++++
>  2 files changed, 14 insertions(+)

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
> index f10012de5eb6..751caaca85c6 100644
> --- a/arch/arm/boot/dts/imx6ul.dtsi
> +++ b/arch/arm/boot/dts/imx6ul.dtsi
> @@ -971,6 +971,14 @@
>  				status = "disabled";
>  			};
>  
> +			pxp: pxp@21cc000 {
> +				compatible = "fsl,imx6ul-pxp";
> +				reg = <0x021cc000 0x4000>;
> +				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&clks IMX6UL_CLK_PXP>;
> +				clock-names = "axi";
> +			};
> +
>  			qspi: spi@21e0000 {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
> index 22e4a307fa59..b017e925bd87 100644
> --- a/arch/arm/boot/dts/imx6ull.dtsi
> +++ b/arch/arm/boot/dts/imx6ull.dtsi
> @@ -34,6 +34,12 @@
>  	compatible = "fsl,imx6ull-ocotp", "syscon";
>  };
>  
> +&pxp {
> +	compatible = "fsl,imx6ull-pxp";
> +	interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
> +		     <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> +};
> +
>  &usdhc1 {
>  	compatible = "fsl,imx6ull-usdhc", "fsl,imx6sx-usdhc";
>  };
> -- 
> 2.19.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
