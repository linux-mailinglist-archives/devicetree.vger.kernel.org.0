Return-Path: <devicetree+bounces-590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0287A209B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 662C41C20CEE
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBC81118F;
	Fri, 15 Sep 2023 14:15:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4067C10A09
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:15:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B571FC433C8;
	Fri, 15 Sep 2023 14:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694787351;
	bh=my7q6sWI3MWvt71tahat6xPgVNItmOGSgwXOtqEbLN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FM8atK66YrwtjpT6e4y1aWjUIbsW7QcwMS7pm+LJ+lh/kVjGaMsgGFzE+mYQM6hJe
	 JAREwNP86xIWJkQfKx5mUg9Rm1J8ux7vW/MjB9VSR27IinDmgr3o6zy0bLiWcqkgvh
	 t6yZyfQzbJmxz0fVhkp6clm32eHfFI0AvQaYpQXI/3HKeE7mNlbF1xoCkSUY7QfulV
	 jmumv1kU1tZXX3uP2x3NenkiZoZJ8Eb8J50S/81r2DerHhMciDSsC+siN0uL7+6vNy
	 Qp0mxkqp1o/SAB9goZ6YaK21v5qC/UXs+JhjPMfcAxpgOGS9SKFkdVLp9ex/hu9LQB
	 w+2G2jsvL54Vg==
Received: (nullmailer pid 3664536 invoked by uid 1000);
	Fri, 15 Sep 2023 14:15:49 -0000
Date: Fri, 15 Sep 2023 09:15:49 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Jan =?iso-8859-1?Q?Kundr=E1t?= <jan.kundrat@cesnet.cz>, Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-leds@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] leds: triggers: gpio: Rewrite to use trigger-sources
Message-ID: <20230915141549.GA3658872-robh@kernel.org>
References: <20230912-gpio-led-trigger-dt-v1-0-1b50e3756dda@linaro.org>
 <20230912-gpio-led-trigger-dt-v1-2-1b50e3756dda@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230912-gpio-led-trigger-dt-v1-2-1b50e3756dda@linaro.org>

On Tue, Sep 12, 2023 at 03:44:31PM +0200, Linus Walleij wrote:
> By providing a GPIO line as "trigger-sources" in the FWNODE
> (such as from the device tree) and combining with the
> GPIO trigger, we can support a GPIO LED trigger in a natural
> way from the hardware description instead of using the
> custom sysfs and deprecated global GPIO numberspace.
> 
> Example:
> 
> gpio: gpio@0 {
>     compatible "my-gpio";
>     gpio-controller;
>     #gpio-cells = <2>;
>     interrupt-controller;
>     #interrupt-cells = <2>;
>     #trigger-source-cells = <2>;
> };
> 
> leds {
>     compatible = "gpio-leds";
>     led-my-gpio {
>         label = "device:blue:myled";
>         gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
>         default-state = "off";
>         linux,default-trigger = "gpio";
>         trigger-sources = <&gpio 1 GPIO_ACTIVE_HIGH>;
>     };
> };
> 
> Make this the norm, unmark the driver as broken.
> 
> Delete the sysfs handling of GPIOs.
> 
> Since GPIO descriptors inherently can describe inversion,
> the inversion handling can just be deleted.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

[...]

> @@ -167,16 +78,47 @@ ATTRIBUTE_GROUPS(gpio_trig);
>  static int gpio_trig_activate(struct led_classdev *led)
>  {
>  	struct gpio_trig_data *gpio_data;
> +	struct device *dev = led->dev;
> +	int ret;
>  
>  	gpio_data = kzalloc(sizeof(*gpio_data), GFP_KERNEL);
>  	if (!gpio_data)
>  		return -ENOMEM;
>  
> -	gpio_data->led = led;
> -	gpio_data->gpio = -ENOENT;
> +	/*
> +	 * The generic property "trigger-sources" is followed,
> +	 * and we hope that this is a GPIO.
> +	 */
> +	gpio_data->gpiod = fwnode_gpiod_get_index(dev->fwnode,
> +						  "trigger-sources",
> +						  0, GPIOD_IN,
> +						  "led-trigger");

Isn't this going to look for "trigger-sources-gpio" and 
""trigger-sources-gpios"?

Rob

