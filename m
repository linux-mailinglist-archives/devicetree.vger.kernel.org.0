Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95F4E3D4236
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232129AbhGWUwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 16:52:21 -0400
Received: from mail-il1-f175.google.com ([209.85.166.175]:37822 "EHLO
        mail-il1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231350AbhGWUwU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 16:52:20 -0400
Received: by mail-il1-f175.google.com with SMTP id l11so2828060iln.4
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:32:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=f/WiKoWyV9QptWIwMFMCYOpe69XG23M9PXTcI/Bn9Hs=;
        b=Lolq8xvsbyu8oLnhbsirGw3c2cQC4RS9xr+ERKx3jJsfuDcee+e+XbJ7Dkg9EYYG67
         AxONSvCKZfbrFNsilJwqdXtzBEQ0nHYxDOrxsxXlN6VMACtSTJZ8pZbd06VqOv4K+Nxv
         DvRUYMkGuGzxUAt3Bi5/JE79nBVdVEamQGFBI0UFlRbFQfNk/id40D4/cZcstdk4RLEw
         z1jegM+fiMCCZl61GEvAHCunoI9EKqi5PS1H9dSz51zA2iByeTUV22SGs2o2JQnsxevC
         51vR9tvU3eDBEdNAlpJPEkKLW3V9+jVOEr8tyXgtLDKEN8E4x1keXf2AueICgBzjNY4f
         Fe6A==
X-Gm-Message-State: AOAM532nE5GeyDbGODxNdM4Ty6x+BplkyHWLiEBppYG9mCK7VtmuHeCW
        b4DBRIHl2+gaQfBAkMy09A==
X-Google-Smtp-Source: ABdhPJwypJ9szGQNGPcy/ytm0d1Lgd/fJuURL2NlVTYGgoc2gbp1KoH5R5FUZ/tVzHOOxfFZHWQIaw==
X-Received: by 2002:a92:d10c:: with SMTP id a12mr4885234ilb.100.1627075973524;
        Fri, 23 Jul 2021 14:32:53 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id w8sm16224487ill.50.2021.07.23.14.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:32:52 -0700 (PDT)
Received: (nullmailer pid 2625227 invoked by uid 1000);
        Fri, 23 Jul 2021 21:32:51 -0000
Date:   Fri, 23 Jul 2021 15:32:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 01/54] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210723213251.GA2622319@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-2-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 04:03:31PM +0200, Maxime Ripard wrote:
> Even though we had the wm8978 driver for some time and a number of
> boards using it already, we never had a binding for it. Let's add it
> based on what the driver expects and the boards are providing.
> 
> Cc: alsa-devel@alsa-project.org
> Cc: devicetree@vger.kernel.org
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/sound/wlf,wm8978.yaml | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
> new file mode 100644
> index 000000000000..6761380261e3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/wlf,wm8978.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/wlf,wm8978.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Wolfson WM8978 Codec Device Tree Bindings
> +
> +maintainers:
> +  - Mark Brown <broonie@kernel.org>

No one from Wolfson cares about this device?

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +properties:
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  compatible:
> +    const: wlf,wm8978
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 526000
> +
> +required:
> +  - '#sound-dai-cells'
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        codec@0 {
> +            #sound-dai-cells = <0>;
> +            compatible = "wlf,wm8978";
> +            reg = <0>;
> +            spi-max-frequency = <500000>;
> +        };
> +    };
> +
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        codec@0 {
> +            #sound-dai-cells = <0>;
> +            compatible = "wlf,wm8978";
> +            reg = <0>;
> +        };
> +    };
> +
> +...
> -- 
> 2.31.1
> 
> 
