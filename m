Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3322734B13E
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 22:24:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbhCZVXy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 17:23:54 -0400
Received: from mail-il1-f179.google.com ([209.85.166.179]:36706 "EHLO
        mail-il1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbhCZVXa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 17:23:30 -0400
Received: by mail-il1-f179.google.com with SMTP id t14so6189265ilu.3
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 14:23:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GFAesB2LhZzprNf2dLrQnuDHb35OQ5BFJDmp+fC6R4k=;
        b=A9psODiwAAXZj4mSi8rcC37+Kygr6NnGIJ5bEc9c1tbwZB3aaDlf9uqeuFtE1ltRwj
         Jge2jwIRgVVfs8OfvBhmisC9pGl/gbM5sFfYul0YWqG6iGfqrl/0mefMAns9NOFP1OAr
         E/Ec8sdDrqQjzy/42cCTONQ9BrXt0MN2a4iGEG0EJL2sXLegD8fZm9Hr3/rpvm63/4n4
         JjsstYHpUFCrh/t6E84dbZkl2Q3Z/A8KXs5GUu0SuUDNqdUUIPwic8DyDzZXrxJWYR8B
         AoMur7MsZofTIj6m+N0nvnpxMbxyRQviY0SFBw7PUhd3DV9DmojI3GvXbuZSj7ORZkCR
         Kbaw==
X-Gm-Message-State: AOAM531xyVWH8u4s3tSH7Yos2J5Pns9wyZw/Y03Rx97UJx+l3bTUOuh3
        wzG7hBwzrv+Ev3hdXKRxPg==
X-Google-Smtp-Source: ABdhPJxWDgVuZb4BctFtY8ZGjBJ8tzU8jb1tz9tywHPutqQzSq149SVhO7oqOpDUsdK3jpYTvJTw5w==
X-Received: by 2002:a05:6e02:1d1b:: with SMTP id i27mr12280697ila.87.1616793809709;
        Fri, 26 Mar 2021 14:23:29 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id s3sm3210309ilj.77.2021.03.26.14.23.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 14:23:28 -0700 (PDT)
Received: (nullmailer pid 3883718 invoked by uid 1000);
        Fri, 26 Mar 2021 21:23:27 -0000
Date:   Fri, 26 Mar 2021 15:23:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     airlied@linux.ie, daniel@ffwll.ch, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 1/2] dt-bindings: display: add bindings for
 newhaven,1.8-128160EF
Message-ID: <20210326212327.GA3878282@robh.at.kernel.org>
References: <20210322185032.762277-1-daniel@zonque.org>
 <20210322185032.762277-2-daniel@zonque.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210322185032.762277-2-daniel@zonque.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 22, 2021 at 07:50:31PM +0100, Daniel Mack wrote:
> This adds documentation for a new ILI9163 based, SPI connected display.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  .../bindings/display/ilitek,ili9163.yaml      | 70 +++++++++++++++++++

As this is panel chip, put it in panel/.

>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml b/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
> new file mode 100644
> index 0000000000000..b98c6b871b790
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/ilitek,ili9163.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only

For new bindings: GPL-2.0-only OR BSD-2-Clause

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/ilitek,ili9163.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ilitek ILI9163 display panels device tree bindings
> +
> +maintainers:
> +  - Daniel Mack <daniel@zonque.org>
> +
> +description:
> +  This binding is for display panels using an Ilitek ILI9163 controller in SPI
> +  mode.
> +
> +allOf:
> +  - $ref: panel/panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - newhaven,1.8-128160EF
> +          - ilitek,ili9163
> +      - const: ilitek,ili9163

This says '"ilitek,ili9163", "ilitek,ili9163"' is valid.

> +
> +  spi-max-frequency:
> +    maximum: 32000000
> +
> +  dc-gpios:
> +    maxItems: 1
> +    description: Display data/command selection (D/CX)
> +
> +  backlight: true
> +  reg: true
> +  reset-gpios: true
> +  rotation: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - dc-gpios
> +  - reset-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    backlight: backlight {
> +            compatible = "gpio-backlight";
> +            gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
> +    };
> +    spi {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            display@0{

space                   ^

> +                    compatible = "waveshare,rpi-lcd-35", "ilitek,ili9486";

??

> +                    reg = <0>;
> +                    spi-max-frequency = <32000000>;
> +                    dc-gpios = <&gpio0 24 GPIO_ACTIVE_HIGH>;
> +                    reset-gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
> +                    rotation = <180>;
> +                    backlight = <&backlight>;
> +            };
> +    };
> +
> +...
> -- 
> 2.29.2
> 
