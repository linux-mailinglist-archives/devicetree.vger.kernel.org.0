Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02EF438F253
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 19:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233191AbhEXRhm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 13:37:42 -0400
Received: from sibelius.xs4all.nl ([83.163.83.176]:61984 "EHLO
        sibelius.xs4all.nl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233112AbhEXRhl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 13:37:41 -0400
Received: from localhost (bloch.sibelius.xs4all.nl [local])
        by bloch.sibelius.xs4all.nl (OpenSMTPD) with ESMTPA id c4427888;
        Mon, 24 May 2021 19:36:10 +0200 (CEST)
Date:   Mon, 24 May 2021 19:36:10 +0200 (CEST)
From:   Mark Kettenis <mark.kettenis@xs4all.nl>
To:     Zhen Lei <thunder.leizhen@huawei.com>
Cc:     shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        thunder.leizhen@huawei.com
In-Reply-To: <20210524035244.8677-1-thunder.leizhen@huawei.com> (message from
        Zhen Lei on Mon, 24 May 2021 11:52:44 +0800)
Subject: Re: [PATCH 1/1] arm64: dts: lx2160a: Normalize the compatible string of
 "arm, sbsa-uart"
References: <20210524035244.8677-1-thunder.leizhen@huawei.com>
Message-ID: <5612f2cad25a3041@bloch.sibelius.xs4all.nl>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> From: Zhen Lei <thunder.leizhen@huawei.com>
> Date: Mon, 24 May 2021 11:52:44 +0800
> Content-Type: text/plain; charset="us-ascii"
> 
> The compatible string of ARM SBSA defined generic UART needs to contain
> only "arm,sbsa-uart" and does not need to contain "arm,pl011". Otherwise,
> the pl011.yaml will check it and falsely report many warnings similar to
> the following:
> 
> arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-cx.dt.yaml:
>  serial@21c0000: compatible:0: 'arm,pl011' was expected
>  serial@21c0000: compatible:1: 'arm,primecell' was expected
> 
> Delete the redundant "arm,pl011" to fix it.

According to its reference manual, the LX2160A has a full PL011
implementation.  So I think this is the wrong "fix".

> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 4fcc869c21a4..417546616d85 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -920,7 +920,7 @@
>  		};
>  
>  		uart0: serial@21c0000 {
> -			compatible = "arm,sbsa-uart","arm,pl011";
> +			compatible = "arm,sbsa-uart";
>  			reg = <0x0 0x21c0000 0x0 0x1000>;
>  			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
>  			current-speed = <115200>;
> @@ -928,7 +928,7 @@
>  		};
>  
>  		uart1: serial@21d0000 {
> -			compatible = "arm,sbsa-uart","arm,pl011";
> +			compatible = "arm,sbsa-uart";
>  			reg = <0x0 0x21d0000 0x0 0x1000>;
>  			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>  			current-speed = <115200>;
> @@ -936,7 +936,7 @@
>  		};
>  
>  		uart2: serial@21e0000 {
> -			compatible = "arm,sbsa-uart","arm,pl011";
> +			compatible = "arm,sbsa-uart";
>  			reg = <0x0 0x21e0000 0x0 0x1000>;
>  			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
>  			current-speed = <115200>;
> @@ -944,7 +944,7 @@
>  		};
>  
>  		uart3: serial@21f0000 {
> -			compatible = "arm,sbsa-uart","arm,pl011";
> +			compatible = "arm,sbsa-uart";
>  			reg = <0x0 0x21f0000 0x0 0x1000>;
>  			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
>  			current-speed = <115200>;
> -- 
> 2.21.1
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
