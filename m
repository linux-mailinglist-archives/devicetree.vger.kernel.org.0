Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63EA94A3FFD
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 11:19:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232024AbiAaKTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 05:19:44 -0500
Received: from foss.arm.com ([217.140.110.172]:44336 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1358078AbiAaKTn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Jan 2022 05:19:43 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14012D6E;
        Mon, 31 Jan 2022 02:19:43 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 481FB3F774;
        Mon, 31 Jan 2022 02:19:42 -0800 (PST)
Date:   Mon, 31 Jan 2022 09:50:56 +0000
From:   Andre Przywara <andre.przywara@foss.arm.com>
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        linux-sunxi@lists.linux.dev, mripard@kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] ARM: dtsi: suniv: F1c100s add clock and reset
 macros
Message-ID: <20220131095056.39416dce@donnerap.cambridge.arm.com>
In-Reply-To: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
References: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Jan 2022 17:03:22 -0500
Jesse Taube <mr.bossman075@gmail.com> wrote:

> Include clock and reset macros and replace magic numbers.
> 
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>

Checked that the numbers match the definitions in the header file, also
the generated .dtb files are identical.

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  arch/arm/boot/dts/suniv-f1c100s.dtsi | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/suniv-f1c100s.dtsi b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> index 6100d3b75f61..953228cc8d52 100644
> --- a/arch/arm/boot/dts/suniv-f1c100s.dtsi
> +++ b/arch/arm/boot/dts/suniv-f1c100s.dtsi
> @@ -4,6 +4,9 @@
>   * Copyright 2018 Mesih Kilinc <mesihkilinc@gmail.com>
>   */
>  
> +#include <dt-bindings/clock/suniv-ccu-f1c100s.h>
> +#include <dt-bindings/reset/suniv-ccu-f1c100s.h>
> +
>  / {
>  	#address-cells = <1>;
>  	#size-cells = <1>;
> @@ -82,7 +85,7 @@ pio: pinctrl@1c20800 {
>  			compatible = "allwinner,suniv-f1c100s-pinctrl";
>  			reg = <0x01c20800 0x400>;
>  			interrupts = <38>, <39>, <40>;
> -			clocks = <&ccu 37>, <&osc24M>, <&osc32k>;
> +			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&osc32k>;
>  			clock-names = "apb", "hosc", "losc";
>  			gpio-controller;
>  			interrupt-controller;
> @@ -114,8 +117,8 @@ uart0: serial@1c25000 {
>  			interrupts = <1>;
>  			reg-shift = <2>;
>  			reg-io-width = <4>;
> -			clocks = <&ccu 38>;
> -			resets = <&ccu 24>;
> +			clocks = <&ccu CLK_BUS_UART0>;
> +			resets = <&ccu RST_BUS_UART0>;
>  			status = "disabled";
>  		};
>  
> @@ -125,8 +128,8 @@ uart1: serial@1c25400 {
>  			interrupts = <2>;
>  			reg-shift = <2>;
>  			reg-io-width = <4>;
> -			clocks = <&ccu 39>;
> -			resets = <&ccu 25>;
> +			clocks = <&ccu CLK_BUS_UART1>;
> +			resets = <&ccu RST_BUS_UART1>;
>  			status = "disabled";
>  		};
>  
> @@ -136,8 +139,8 @@ uart2: serial@1c25800 {
>  			interrupts = <3>;
>  			reg-shift = <2>;
>  			reg-io-width = <4>;
> -			clocks = <&ccu 40>;
> -			resets = <&ccu 26>;
> +			clocks = <&ccu CLK_BUS_UART2>;
> +			resets = <&ccu RST_BUS_UART2>;
>  			status = "disabled";
>  		};
>  	};

