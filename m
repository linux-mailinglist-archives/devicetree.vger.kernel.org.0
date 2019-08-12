Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C61B8A1BC
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 16:57:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726898AbfHLO5G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 10:57:06 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:60085 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726734AbfHLO5G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 10:57:06 -0400
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr [92.137.69.152])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2C7391C0006;
        Mon, 12 Aug 2019 14:57:03 +0000 (UTC)
Date:   Mon, 12 Aug 2019 16:57:02 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Cc:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] at91/dt: ariettag25: style cleanup
Message-ID: <20190812145702.GO3600@piout.net>
References: <20190731220045.3992-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190731220045.3992-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The subject prefix should be "ARM: dts: at91:"

On 01/08/2019 00:00:45+0200, Uwe Kleine-König wrote:
> - newline between properties and sub-nodes
> - use tags from included dtsi instead of duplicating the hierarchy
> - status should be the last property
> - drop duplicated alias
> 
> There are no differences in the generated .dtb
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> ---
> Hello,
> 
> these are the style rules I was teached when modifying imx dts files.
> Do they apply to at91, too?
> 
> Best regards
> Uwe
> 
>  arch/arm/boot/dts/at91-ariettag25.dts | 87 +++++++++++++--------------
>  1 file changed, 43 insertions(+), 44 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91-ariettag25.dts b/arch/arm/boot/dts/at91-ariettag25.dts
> index 7a34c4dc05d2..8f9f5a22cbf6 100644
> --- a/arch/arm/boot/dts/at91-ariettag25.dts
> +++ b/arch/arm/boot/dts/at91-ariettag25.dts
> @@ -6,14 +6,11 @@
>   */
>  /dts-v1/;
>  #include "at91sam9g25.dtsi"
> +
>  / {
>  	model = "Acme Systems Arietta G25";
>  	compatible = "acme,ariettag25", "atmel,at91sam9x5", "atmel,at91sam9";
>  
> -	aliases {
> -		serial0 = &dbgu;
> -	};
> -
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> @@ -34,55 +31,16 @@
>  
>  	ahb {
>  		apb {
> -			mmc0: mmc@f0008000 {
> -				pinctrl-0 = <
> -				  &pinctrl_mmc0_slot0_clk_cmd_dat0
> -				  &pinctrl_mmc0_slot0_dat1_3>;
> -				status = "okay";
> -
> -				slot@0 {
> -					reg = <0>;
> -					bus-width = <4>;
> -				};
> -			};
> -
> -			tcb0: timer@f8008000 {
> -				timer@0 {
> -					compatible = "atmel,tcb-timer";
> -					reg = <0>;
> -				};
> -
> -				timer@1 {
> -					compatible = "atmel,tcb-timer";
> -					reg = <1>;
> -				};
> -			};
> -
> -			usb2: gadget@f803c000 {
> -				status = "okay";
> -			};
> -
> -			dbgu: serial@fffff200 {
> -				status = "okay";
> -			};
> -
>  			rtc@fffffeb0 {

You can had a label to the rtc in a preliminary patch so you can remove
the hierarchy.

>  				status = "okay";
>  			};
>  		};
>  
> -		usb0: ohci@600000 {
> -			status = "okay";
> -			num-ports = <3>;
> -		};
> -
> -		usb1: ehci@700000 {
> -			status = "okay";
> -		};
>  	};
>  
>  	leds {
>  		compatible = "gpio-leds";
> +
>  		arietta_led {
>  			label = "arietta_led";
>  			gpios = <&pioB 8 GPIO_ACTIVE_HIGH>; /* PB8 */
> @@ -90,3 +48,44 @@
>  		};
>  	};
>  };
> +
> +&dbgu {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	pinctrl-0 = <
> +		&pinctrl_mmc0_slot0_clk_cmd_dat0
> +		&pinctrl_mmc0_slot0_dat1_3>;
> +	status = "okay";
> +
> +	slot@0 {
> +		reg = <0>;
> +		bus-width = <4>;
> +	};
> +};
> +
> +&tcb0 {
> +	timer@0 {
> +		compatible = "atmel,tcb-timer";
> +		reg = <0>;
> +	};
> +
> +	timer@1 {
> +		compatible = "atmel,tcb-timer";
> +		reg = <1>;
> +	};
> +};
> +
> +&usb0 {
> +	num-ports = <3>;
> +	status = "okay";
> +};
> +
> +&usb1 {
> +	status = "okay";
> +};
> +
> +&usb2 {
> +	status = "okay";
> +};
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
