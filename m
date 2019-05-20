Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AAFF023B5F
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 16:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730921AbfETO6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 10:58:44 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:35329 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730351AbfETO6o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 10:58:44 -0400
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 51DB540017;
        Mon, 20 May 2019 14:58:37 +0000 (UTC)
Date:   Mon, 20 May 2019 16:58:30 +0200
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        devicetree@vger.kernel.org,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Message-ID: <20190520145830.GE3274@piout.net>
References: <20190516225614.1458-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190516225614.1458-1-robh@kernel.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2019 17:56:14-0500, Rob Herring wrote:
> While properties and child nodes with the same name are valid DT, the
> practice is not encouraged.

I don't see anything mentioning that in the devicetree specification. I
think this is something you should add if you don't want that to happen
again.

> Furthermore, the collision is problematic for
> YAML encoded DT. Let's just avoid the issue and rename the nodes.
> 

Or maybe you should fix the tool ;)

Do you plan to enforce it at some point? How close are you?

> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  arch/arm/boot/dts/at91sam9261ek.dts    | 2 +-
>  arch/arm/boot/dts/at91sam9263ek.dts    | 2 +-
>  arch/arm/boot/dts/at91sam9m10g45ek.dts | 2 +-
>  arch/arm/boot/dts/at91sam9rlek.dts     | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/at91sam9261ek.dts b/arch/arm/boot/dts/at91sam9261ek.dts
> index f681cd727010..02b116b48c3b 100644
> --- a/arch/arm/boot/dts/at91sam9261ek.dts
> +++ b/arch/arm/boot/dts/at91sam9261ek.dts
> @@ -49,7 +49,7 @@
>  			atmel,power-control-gpio = <&pioA 12 GPIO_ACTIVE_LOW>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <16>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9263ek.dts b/arch/arm/boot/dts/at91sam9263ek.dts
> index 13d415c22a69..924fe563f6fa 100644
> --- a/arch/arm/boot/dts/at91sam9263ek.dts
> +++ b/arch/arm/boot/dts/at91sam9263ek.dts
> @@ -111,7 +111,7 @@
>  			display = <&display0>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <16>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9m10g45ek.dts b/arch/arm/boot/dts/at91sam9m10g45ek.dts
> index 46107c2f1ab9..5226e952a729 100644
> --- a/arch/arm/boot/dts/at91sam9m10g45ek.dts
> +++ b/arch/arm/boot/dts/at91sam9m10g45ek.dts
> @@ -236,7 +236,7 @@
>  			display = <&display0>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <32>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> diff --git a/arch/arm/boot/dts/at91sam9rlek.dts b/arch/arm/boot/dts/at91sam9rlek.dts
> index 27d8a1f44233..a000a459f17b 100644
> --- a/arch/arm/boot/dts/at91sam9rlek.dts
> +++ b/arch/arm/boot/dts/at91sam9rlek.dts
> @@ -37,7 +37,7 @@
>  			display = <&display0>;
>  			status = "okay";
>  
> -			display0: display {
> +			display0: panel {
>  				bits-per-pixel = <16>;
>  				atmel,lcdcon-backlight;
>  				atmel,dmacon = <0x1>;
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
