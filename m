Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EDF286F9A1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 08:47:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725920AbfGVGrR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 02:47:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:45472 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725874AbfGVGrR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 02:47:17 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 892D221F26;
        Mon, 22 Jul 2019 06:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563778035;
        bh=a5YLJRmMMfpR4oyo64JY0vYsZcQu8HLzJBH9Qp4qCuI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=X36zM3QXTxgoGTyPt/C8y2OMKutCeBIht/siA8WMvPAk8zzC4yc4mZCAAhJHwwEDZ
         ea/7wc8UuzgJd9dV2HmqpeaJWHa/8IL8MS3anOJBlzhlPxZK1mGqZBGAVic2qZTsnm
         PuTsSChP7GluxWp2kQMrwurXspIHA11sTrmai+FM=
Date:   Mon, 22 Jul 2019 14:46:50 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     fugang.duan@nxp.com
Cc:     festevam@gmail.com, daniel.baluta@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH arm64/dts 1/1] arm64: dts: imx8qxp: add lpuart baud clock
Message-ID: <20190722064649.GA3738@dragon>
References: <20190704100443.10957-1-fugang.duan@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190704100443.10957-1-fugang.duan@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 04, 2019 at 06:04:43PM +0800, fugang.duan@nxp.com wrote:
> From: Fugang Duan <fugang.duan@nxp.com>
> 
> Add imx8qxp lpuart baud clock.
> 
> Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 05fa0b7..4402b2e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -30,6 +30,9 @@
>  		mmc2 = &usdhc3;
>  		mu1 = &lsio_mu1;
>  		serial0 = &adma_lpuart0;
> +		serial1 = &adma_lpuart1;
> +		serial2 = &adma_lpuart2;
> +		serial3 = &adma_lpuart3;

This is not about adding baud clock, right?  Please either mention the
change in the commit log, or have it as a separate patch.

Shawn

>  	};
>  
>  	cpus {
> @@ -209,8 +212,9 @@
>  			reg = <0x5a060000 0x1000>;
>  			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART0_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART0_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_0>;
>  			status = "disabled";
>  		};
> @@ -220,8 +224,9 @@
>  			reg = <0x5a070000 0x1000>;
>  			interrupts = <GIC_SPI 226 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART1_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART1_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_1>;
>  			status = "disabled";
>  		};
> @@ -231,8 +236,9 @@
>  			reg = <0x5a080000 0x1000>;
>  			interrupts = <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART2_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART2_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_2>;
>  			status = "disabled";
>  		};
> @@ -242,8 +248,9 @@
>  			reg = <0x5a090000 0x1000>;
>  			interrupts = <GIC_SPI 228 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
> -			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> -			clock-names = "ipg";
> +			clocks = <&adma_lpcg IMX_ADMA_LPCG_UART3_IPG_CLK>,
> +				 <&adma_lpcg IMX_ADMA_LPCG_UART3_BAUD_CLK>;
> +			clock-names = "ipg", "baud";
>  			power-domains = <&pd IMX_SC_R_UART_3>;
>  			status = "disabled";
>  		};
> -- 
> 2.7.4
> 
