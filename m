Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29EF63A4E23
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 12:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229819AbhFLKNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Jun 2021 06:13:10 -0400
Received: from sibelius.xs4all.nl ([83.163.83.176]:52353 "EHLO
        sibelius.xs4all.nl" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230459AbhFLKNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Jun 2021 06:13:09 -0400
Received: from localhost (bloch.sibelius.xs4all.nl [local])
        by bloch.sibelius.xs4all.nl (OpenSMTPD) with ESMTPA id 8de0dbfb;
        Sat, 12 Jun 2021 12:11:08 +0200 (CEST)
Date:   Sat, 12 Jun 2021 12:11:08 +0200 (CEST)
From:   Mark Kettenis <mark.kettenis@xs4all.nl>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     thunder.leizhen@huawei.com, leoyang.li@nxp.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        vabhav.sharma@nxp.com, linux@armlinux.org.uk
In-Reply-To: <20210612021057.GE29138@dragon> (message from Shawn Guo on Sat,
        12 Jun 2021 10:10:58 +0800)
Subject: Re: [PATCH 1/1] arm64: dts: lx2160a: Normalize the compatible string
 of "arm, sbsa-uart"
References: <20210524035244.8677-1-thunder.leizhen@huawei.com>
 <5612f2cad25a3041@bloch.sibelius.xs4all.nl>
 <52e44070-3b6f-b8ee-2f23-6059517755a8@huawei.com> <20210612021057.GE29138@dragon>
MIME-version: 1.0
Content-type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Message-ID: <56133c63c48700e7@bloch.sibelius.xs4all.nl>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Date: Sat, 12 Jun 2021 10:10:58 +0800
> From: Shawn Guo <shawnguo@kernel.org>
> 
> On Tue, May 25, 2021 at 10:00:30AM +0800, Leizhen (ThunderTown) wrote:
> > 
> > 
> > On 2021/5/25 1:36, Mark Kettenis wrote:
> > >> From: Zhen Lei <thunder.leizhen@huawei.com>
> > >> Date: Mon, 24 May 2021 11:52:44 +0800
> > >> Content-Type: text/plain; charset="us-ascii"
> > >>
> > >> The compatible string of ARM SBSA defined generic UART needs to contain
> > >> only "arm,sbsa-uart" and does not need to contain "arm,pl011". Otherwise,
> > >> the pl011.yaml will check it and falsely report many warnings similar to
> > >> the following:
> > >>
> > >> arch/arm64/boot/dts/freescale/fsl-lx2160a-clearfog-cx.dt.yaml:
> > >>  serial@21c0000: compatible:0: 'arm,pl011' was expected
> > >>  serial@21c0000: compatible:1: 'arm,primecell' was expected
> > >>
> > >> Delete the redundant "arm,pl011" to fix it.
> > > 
> > > According to its reference manual, the LX2160A has a full PL011
> > > implementation.  So I think this is the wrong "fix".
> > 
> > No, No, Please refer: https://www.spinics.net/lists/devicetree/msg424054.html
> > 
> > Now the "arm,sbsa-uart" driver is mixed with amba-pl011.c，It's impossible
> > "arm,pl011" is loaded but "arm,sbsa-uart" is not loaded. So it makes no sense
> > to append "arm, pl011" to the end of the compatible string as an alternative
> > driver.
> > 
> > drivers/tty/serial/amba-pl011.c:2784:       { .compatible = "arm,sbsa-uart", },
> 
> I guess Mark is suggesting the following fix.
> 
>                 uart0: serial@21c0000 {
> -                       compatible = "arm,sbsa-uart","arm,pl011";
> +                       compatible = "arm,pl011", "arm,primecell";
>                         reg = <0x0 0x21c0000 0x0 0x1000>;
>                         interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> -                       current-speed = <115200>;
>                         status = "disabled";
>                 };
> 
> I copied some folks who might help clarify whether LX2160A UART is a SBSA
> or a full PL011.

Sorry, I missed Leizhen's original reply.  But yes, that is what I
meant.  According to the NXP documentation, the LX2160A has a real
PL011 UART, so the correct fix is what Shawn suggests above.

Cheers,

Mark

> > >> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> > >> ---
> > >>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 8 ++++----
> > >>  1 file changed, 4 insertions(+), 4 deletions(-)
> > >>
> > >> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > >> index 4fcc869c21a4..417546616d85 100644
> > >> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > >> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > >> @@ -920,7 +920,7 @@
> > >>  		};
> > >>  
> > >>  		uart0: serial@21c0000 {
> > >> -			compatible = "arm,sbsa-uart","arm,pl011";
> > >> +			compatible = "arm,sbsa-uart";
> > >>  			reg = <0x0 0x21c0000 0x0 0x1000>;
> > >>  			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> > >>  			current-speed = <115200>;
> > >> @@ -928,7 +928,7 @@
> > >>  		};
> > >>  
> > >>  		uart1: serial@21d0000 {
> > >> -			compatible = "arm,sbsa-uart","arm,pl011";
> > >> +			compatible = "arm,sbsa-uart";
> > >>  			reg = <0x0 0x21d0000 0x0 0x1000>;
> > >>  			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> > >>  			current-speed = <115200>;
> > >> @@ -936,7 +936,7 @@
> > >>  		};
> > >>  
> > >>  		uart2: serial@21e0000 {
> > >> -			compatible = "arm,sbsa-uart","arm,pl011";
> > >> +			compatible = "arm,sbsa-uart";
> > >>  			reg = <0x0 0x21e0000 0x0 0x1000>;
> > >>  			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> > >>  			current-speed = <115200>;
> > >> @@ -944,7 +944,7 @@
> > >>  		};
> > >>  
> > >>  		uart3: serial@21f0000 {
> > >> -			compatible = "arm,sbsa-uart","arm,pl011";
> > >> +			compatible = "arm,sbsa-uart";
> > >>  			reg = <0x0 0x21f0000 0x0 0x1000>;
> > >>  			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
> > >>  			current-speed = <115200>;
> > >> -- 
> > >> 2.21.1
> > >>
> > >>
> > >>
> > >> _______________________________________________
> > >> linux-arm-kernel mailing list
> > >> linux-arm-kernel@lists.infradead.org
> > >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > >>
> > > 
> > > .
> > > 
> > 
> 
