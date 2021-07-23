Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3333D42CD
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:20:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231754AbhGWVj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:39:27 -0400
Received: from mail-io1-f46.google.com ([209.85.166.46]:43894 "EHLO
        mail-io1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232900AbhGWVjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:39:21 -0400
Received: by mail-io1-f46.google.com with SMTP id 185so4268747iou.10
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:19:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hAsJB07hDWEJCOh/OouVehgG+LOst1aZR//lkqtGmrw=;
        b=j8ez7ZI9LqPFieS9fqfbVeHKIVNcY4tyoJWVymuffrGw14DDAjdnI8CYL32A0U4+uh
         4l39nrqWpevwtzuDYMmNwYVc7VfE5ABD79ws1JQnU3l/lqE6sOi9MTIxOxormQgS8niN
         Dz6Subz+FxMldJCcYM7nkQCGdE/CV1OHZPf/uOL9OlQntIjx9LC1NV16H+8a2MZMDxRi
         Q0YtqfhfceWws+rl9z1UwpvCOSYHIM3Raa6eo7PtY3t+iwU0UbW/nmubD5F/TYuIV4fC
         4+JjwKt5jWlrAenh+hcFPn5ioPz3PJmn8cK8Vtzp6a9OeqWwb2Z6CBQrSxRlSid4oVnm
         R3JA==
X-Gm-Message-State: AOAM533yau7Skl24X07Ade25RG8stCuiuERln0+KJP0LgOhm6KRoUkNW
        uQQV+BEHJAIW/2g9xibXnQ==
X-Google-Smtp-Source: ABdhPJy3TjPJomj8OiLDe5nKp4qV6D9lvdO4Fh3H35o3CMUfDzs5Tq247q0xJVOTsZV1IDMbAVC8cg==
X-Received: by 2002:a6b:2bd4:: with SMTP id r203mr285960ior.157.1627078794170;
        Fri, 23 Jul 2021 15:19:54 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m26sm19096510ioo.23.2021.07.23.15.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:19:53 -0700 (PDT)
Received: (nullmailer pid 2700062 invoked by uid 1000);
        Fri, 23 Jul 2021 22:19:50 -0000
Date:   Fri, 23 Jul 2021 16:19:50 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Daniel Mack <zonque@gmail.com>,
        Evgeniy Polyakov <zbr@ioremap.net>
Subject: Re: [PATCH 38/54] dt-bindings: w1: Convert 1-Wire GPIO binding to a
 schema
Message-ID: <20210723221950.GA2694572@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-39-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-39-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 04:04:08PM +0200, Maxime Ripard wrote:
> Bitbanged 1-Wire buses are supported by Linux thanks to their device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Daniel Mack <zonque@gmail.com>
> Cc: Evgeniy Polyakov <zbr@ioremap.net>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/w1/w1-gpio.txt        | 27 ------------
>  .../devicetree/bindings/w1/w1-gpio.yaml       | 43 +++++++++++++++++++
>  2 files changed, 43 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/w1/w1-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.txt b/Documentation/devicetree/bindings/w1/w1-gpio.txt
> deleted file mode 100644
> index 3d6554eac240..000000000000
> --- a/Documentation/devicetree/bindings/w1/w1-gpio.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -w1-gpio devicetree bindings
> -
> -Required properties:
> -
> - - compatible: "w1-gpio"
> - - gpios: one or two GPIO specs:
> -		- the first one is used as data I/O pin
> -		- the second one is optional. If specified, it is used as
> -		  enable pin for an external pin pullup.
> -
> -Optional properties:
> -
> - - linux,open-drain: if specified, the data pin is considered in
> -		     open-drain mode.
> -
> -Also refer to the generic w1.txt document.
> -
> -Examples:
> -
> -	onewire {
> -		compatible = "w1-gpio";
> -		gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
> -
> -		battery {
> -			// ...
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/w1/w1-gpio.yaml b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
> new file mode 100644
> index 000000000000..4a780a988718
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/w1/w1-gpio.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/w1/w1-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Bitbanged GPIO 1-Wire Bus Device Tree Bindings
> +
> +maintainers:
> +  - Daniel Mack <zonque@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: w1-gpio
> +
> +  gpios:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: Data I/O pin
> +      - description: Enable pin for an external pull-up resistor
> +
> +  linux,open-drain:
> +    type: boolean
> +    description: >
> +      If specified, the data pin is considered in open-drain mode.
> +
> +required:
> +  - compatible
> +  - gpios
> +
> +additionalProperties: false

Presumably we might have child devices:

additionalProperties:
  type: object

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    onewire {
> +        compatible = "w1-gpio";
> +        gpios = <&gpio 0 GPIO_ACTIVE_HIGH>;
> +    };
> +
> +...
> -- 
> 2.31.1
> 
> 
