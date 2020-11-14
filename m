Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F188B2B3115
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 22:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726121AbgKNV6r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 16:58:47 -0500
Received: from mx2.suse.de ([195.135.220.15]:55582 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726112AbgKNV6r (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 16:58:47 -0500
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id B939FAC2E;
        Sat, 14 Nov 2020 21:58:45 +0000 (UTC)
Subject: Re: [PATCH mvebu-dt v2 5/6] ARM: dts: turris-omnia: add LED
 controller node
To:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Cc:     arm@kernel.org,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Gregory CLEMENT <gregory.clement@bootlin.com>
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-6-kabel@kernel.org>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <75e7fb40-be64-3d1a-c3ac-c705f9f6a4b1@suse.de>
Date:   Sat, 14 Nov 2020 22:58:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201114183217.1352-6-kabel@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 14.11.20 19:32, Marek Behún wrote:
> Linux now has incomplete support for the LED controller on Turris Omnia:
> it can set brightness and colors for each LED.
> 
> The controller can also put these LEDs into HW controlled mode, in which
> the LEDs are controlled by HW: for example the WAN LED is connected via
> MCU to the WAN PHY LED pin.
> 
> The driver does not support these HW controlled modes yet, and on probe
> puts the LEDs into SW controlled mode.
> 
> Add node describing the LED controller, but disable it for now.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andreas Färber <afaerber@suse.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  arch/arm/boot/dts/armada-385-turris-omnia.dts | 107 ++++++++++++++++++
>  1 file changed, 107 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> index 14c21cddef72..df53cf925db6 100644
> --- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
> +++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
> @@ -12,6 +12,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
>  #include "armada-385.dtsi"
>  
>  / {
> @@ -172,6 +173,112 @@ i2c@0 {
>  			/* STM32F0 command interface at address 0x2a */
>  			/* leds device (in STM32F0) at address 0x2b */

Update and move this comment now that the node documents the address?

>  
> +			led-controller@2b {
> +				compatible = "cznic,turris-omnia-leds";
> +				reg = <0x2b>;
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				/*
> +				 * The driver does not support HW control mode
> +				 * for the LEDs yet. Disable the LEDs for now.
> +				 *
> +				 * Also LED functions are not stable yet:
> +				 * - there are 3 LEDs connected via MCU to PCIe
> +				 *   ports. One of these ports supports mSATA.
> +				 *   There is no mSATA nor PCIe function.
> +				 *   For now we use LED_FUNCITION_WLAN, since

FUNCTION

> +				 *   in most cases users have wifi cards in
> +				 *   these slots

Doesn't U-Boot detect mSATA and switches SerDes configuration? You could
then have it set LED_FUNCTION_DISK in case of mSATA detected.

I recently didn't find any DT binding for the netdev LED trigger, but
you could set trigger-sources to associate the LEDS with PCIe nodes even
if unused. Same for the LAN LEDs and switch port nodes, if you give them
labels.

> +				 * - there are 2 LEDs dedicated for user: A and
> +				 *   B. Again there is no such function defined.
> +				 *   For now we use LED_FUNCTION_DEBUG

I'd suggest the more neutral LED_FUNCTION_INDICATOR.

Cheers,
Andreas

> +				 */
> +				status = "disabled";
> +
> +				multi-led@0 {
> +					reg = <0x0>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_DEBUG;
> +					function-enumerator = <2>;
> +				};
> +
> +				multi-led@1 {
> +					reg = <0x1>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_DEBUG;
> +					function-enumerator = <1>;
> +				};
> +
> +				multi-led@2 {
> +					reg = <0x2>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_WLAN;
> +					function-enumerator = <3>;
> +				};
> +
> +				multi-led@3 {
> +					reg = <0x3>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_WLAN;
> +					function-enumerator = <2>;
> +				};
> +
> +				multi-led@4 {
> +					reg = <0x4>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_WLAN;
> +					function-enumerator = <1>;
> +				};
> +
> +				multi-led@5 {
> +					reg = <0x5>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_WAN;
> +				};
> +
> +				multi-led@6 {
> +					reg = <0x6>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_LAN;
> +					function-enumerator = <4>;
> +				};
> +
> +				multi-led@7 {
> +					reg = <0x7>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_LAN;
> +					function-enumerator = <3>;
> +				};
> +
> +				multi-led@8 {
> +					reg = <0x8>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_LAN;
> +					function-enumerator = <2>;
> +				};
> +
> +				multi-led@9 {
> +					reg = <0x9>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_LAN;
> +					function-enumerator = <1>;
> +				};
> +
> +				multi-led@a {
> +					reg = <0xa>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_LAN;
> +					function-enumerator = <0>;
> +				};
> +
> +				multi-led@b {
> +					reg = <0xb>;
> +					color = <LED_COLOR_ID_RGB>;
> +					function = LED_FUNCTION_POWER;
> +				};
> +			};
> +
>  			eeprom@54 {
>  				compatible = "atmel,24c64";
>  				reg = <0x54>;
> 


-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
