Return-Path: <devicetree+bounces-623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A50E57A22E6
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A128C1C20B63
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEED811C95;
	Fri, 15 Sep 2023 15:48:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B23911C92
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 15:48:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54CB4C433C8;
	Fri, 15 Sep 2023 15:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694792923;
	bh=sOwpmNRFVnGigJMQ+ZdHsMJYHy/EbqpeUv7bUvvmRaE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mGaHVCjjcF+i8dJ3eDD3xDgzW8bUZ/mziODR02cl3jT83hZE14zonQZxdO4PVWAnx
	 X91ofFeXMH87QO39wBdAYpeX2hbDeGdNLaQXlr1hIK0uCcpOfRfyHnE7A4s8l85/U4
	 flwLjbnhsc/pKqNbRhcaGcrpedGKzBEVL18xxpkM87EhuDjeuD9cx74vvj5QvFwAn1
	 SmLj4zI/Mp1/JLwksdu8Ow5+4cAKbWfekluMfH+z2wszUfsu/tEnQFWpmPZQqUF/rc
	 4Go8cOxJomE0yVdVFRf3rKDSvSu+QKCWucJiEydCuQBM4GpCGXo69+ailwPisYUlfo
	 5bnS4c26BYPsg==
Received: (nullmailer pid 3779770 invoked by uid 1000);
	Fri, 15 Sep 2023 15:48:41 -0000
Date: Fri, 15 Sep 2023 10:48:41 -0500
From: Rob Herring <robh@kernel.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>, Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>, Pavel Machek <pavel@ucw.cz>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org, devicetree@vger.kernel.org, linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: Add MPS MP3309C
Message-ID: <20230915154841.GA3776155-robh@kernel.org>
References: <20230915140516.1294925-1-f.suligoi@asem.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230915140516.1294925-1-f.suligoi@asem.it>

On Fri, Sep 15, 2023 at 04:05:15PM +0200, Flavio Suligoi wrote:
> The Monolithic Power (MPS) MP3309C is a WLED step-up converter, featuring a
> programmable switching frequency to optimize efficiency.
> The brightness can be controlled either by I2C commands (called "analog"
> mode) or by a PWM input signal (PWM mode).
> This driver supports both modes.
> 
> For device driver details, please refer to:
> - drivers/video/backlight/mp3309c_bl.c
> 
> The datasheet is available at:
> - https://www.monolithicpower.com/en/mp3309c.html
> 
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
> ---
> 
> v2:
>  - remove useless properties (dimming-mode, pinctrl-names, pinctrl-0,
>    switch-on-delay-ms, switch-off-delay-ms, reset-gpios, reset-on-delay-ms,
>    reset-on-length-ms)
>  - add common.yaml#
>  - remove already included properties (default-brightness, max-brightness)
>  - substitute three boolean properties, used for the overvoltage-protection
>    values, with a single enum property
>  - remove some conditional definitions
>  - remove the 2nd example
> v1:
>  - first version
> 
>  .../bindings/leds/backlight/mps,mp3309c.yaml  | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/backlight/mps,mp3309c.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/mps,mp3309c.yaml b/Documentation/devicetree/bindings/leds/backlight/mps,mp3309c.yaml
> new file mode 100644
> index 000000000000..99ccdba2c08f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/backlight/mps,mp3309c.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/backlight/mps,mp3309c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MPS MP3309C backlight
> +
> +maintainers:
> +  - Flavio Suligoi <f.suligoi@asem.it>
> +
> +description: |
> +  The Monolithic Power (MPS) MP3309C is a WLED step-up converter, featuring a
> +  programmable switching frequency to optimize efficiency.
> +  It supports two different dimming modes:
> +
> +  - analog mode, via I2C commands (default)
> +  - PWM controlled mode.
> +
> +  The datasheet is available at:
> +  https://www.monolithicpower.com/en/mp3309c.html
> +
> +allOf:
> +  - $ref: common.yaml#
> +
> +properties:
> +  compatible:
> +    const: mps,mp3309c
> +
> +  reg:
> +    maxItems: 1
> +
> +  pwms:
> +    description: if present, the backlight is controlled in PWM mode.
> +    maxItems: 1
> +
> +  enable-gpios:
> +    description: GPIO used to enable the backlight in "analog-i2c" dimming mode.
> +    maxItems: 1
> +
> +  mps,overvoltage-protection-microvolt:
> +    description: Overvoltage protection (13.5V, 24V or 35.5V). If missing, the
> +      hardware default of 35.5V is used.

default: 35500000

instead of prose saying the same thing.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +    enum: [ 13500000, 24000000, 35500000 ]
> +
> +  mps,no-sync-mode:
> +    description: disable synchronous rectification mode
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +  - max-brightness
> +  - default-brightness
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        /* Backlight with PWM control */
> +        backlight_pwm: backlight@17 {
> +            compatible = "mps,mp3309c-backlight";
> +            reg = <0x17>;
> +            pwms = <&pwm1 0 3333333 0>; /* 300 Hz --> (1/f) * 1*10^9 */
> +            max-brightness = <100>;
> +            default-brightness = <80>;
> +            overvoltage-protection-microvolt = <24000000>;
> +        };
> +    };
> -- 
> 2.34.1
> 

