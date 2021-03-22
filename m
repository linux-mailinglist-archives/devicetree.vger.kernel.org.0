Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA99E344B29
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 17:25:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231129AbhCVQYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 12:24:39 -0400
Received: from foss.arm.com ([217.140.110.172]:34712 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231645AbhCVQYR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Mar 2021 12:24:17 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A873D1042;
        Mon, 22 Mar 2021 09:24:16 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52A053F719;
        Mon, 22 Mar 2021 09:24:15 -0700 (PDT)
Date:   Mon, 22 Mar 2021 16:24:11 +0000
From:   Andre Przywara <andre.przywara@arm.com>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 2/4] ARM: dts: sun8i: r40: add pinmux settings for
 MMC3 and UARTs 2,4,5&7
Message-ID: <20210322162411.1569bc4c@slackpad.fritz.box>
In-Reply-To: <20210322105538.3475183-3-i.uvarov@cognitivepilot.com>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
        <20210322105538.3475183-3-i.uvarov@cognitivepilot.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Mar 2021 13:55:36 +0300
Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:

Hi,

> The Forlinx OKA40i-C devboard makes use of UARTs 0,2,3,4,5 and 7 of the R40
> SoC, of which UART 0 is connected to an RS232 converter, UART 5 routed to
> an RS485 converter, and the rest broken out directly via labeled headers.
> The board also contains a micro-SD slot connected to SDC3.
> 
> This patch adds settings to R40's pinmux node for those UARTs that were not
> already mapped, which would allow us to make use of all available UARTs and
> the micro-SD slot on this board in a further patch.
> 
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

Looks alright, compared against the R40 manual.

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> 
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
> index 0b257a0779..51031a0e59 100644
> --- a/arch/arm/boot/dts/sun8i-r40.dtsi
> +++ b/arch/arm/boot/dts/sun8i-r40.dtsi
> @@ -357,6 +357,8 @@ mmc3: mmc@1c12000 {
>  			clock-names = "ahb", "mmc";
>  			resets = <&ccu RST_BUS_MMC3>;
>  			reset-names = "ahb";
> +			pinctrl-0 = <&mmc3_pins>;
> +			pinctrl-names = "default";
>  			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
>  			status = "disabled";
>  			#address-cells = <1>;
> @@ -601,6 +603,14 @@ mmc2_pins: mmc2-pins {
>  				bias-pull-up;
>  			};
>  
> +			mmc3_pins: mmc3-pins {
> +				pins = "PI4", "PI5", "PI6",
> +				       "PI7", "PI8", "PI9";
> +				function = "mmc3";
> +				drive-strength = <30>;
> +				bias-pull-up;
> +			};
> +
>  			/omit-if-no-ref/
>  			spi0_pc_pins: spi0-pc-pins {
>  				pins = "PC0", "PC1", "PC2";
> @@ -637,6 +647,18 @@ uart0_pb_pins: uart0-pb-pins {
>  				function = "uart0";
>  			};
>  
> +			/omit-if-no-ref/
> +			uart2_pi_pins: uart2-pi-pins {
> +				pins = "PI18", "PI19";
> +				function = "uart2";
> +			};
> +
> +			/omit-if-no-ref/
> +			uart2_rts_cts_pi_pins: uart2-rts-cts-pi-pins{
> +				pins = "PI16", "PI17";
> +				function = "uart2";
> +			};
> +
>  			/omit-if-no-ref/
>  			uart3_pg_pins: uart3-pg-pins {
>  				pins = "PG6", "PG7";
> @@ -648,6 +670,24 @@ uart3_rts_cts_pg_pins: uart3-rts-cts-pg-pins {
>  				pins = "PG8", "PG9";
>  				function = "uart3";
>  			};
> +
> +			/omit-if-no-ref/
> +			uart4_pg_pins: uart4-pg-pins {
> +				pins = "PG10", "PG11";
> +				function = "uart4";
> +			};
> +
> +			/omit-if-no-ref/
> +			uart5_ph_pins: uart5-ph-pins {
> +				pins = "PH6", "PH7";
> +				function = "uart5";
> +			};
> +
> +			/omit-if-no-ref/
> +			uart7_pi_pins: uart7-pi-pins {
> +				pins = "PI20", "PI21";
> +				function = "uart7";
> +			};
>  		};
>  
>  		wdt: watchdog@1c20c90 {

