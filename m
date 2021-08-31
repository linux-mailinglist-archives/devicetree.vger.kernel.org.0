Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CB433FCF93
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 00:29:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230286AbhHaWaA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 18:30:00 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:40731 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240791AbhHaW37 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 18:29:59 -0400
Received: by mail-oi1-f180.google.com with SMTP id h133so1224601oib.7
        for <devicetree@vger.kernel.org>; Tue, 31 Aug 2021 15:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DlIKGrJhzXDsC2KcNbGElcUOBBOTh/HViU6kDBixtqI=;
        b=oNHH/LWvWzPtqSmluczNJViiM1vfA2s/pprB28oLT0sxKcXgIQStZXd+1X76NK4HAY
         LZlTm9pzmoQ7TIcOaK3TjodhwsO9PdTC4iwoL1tDNTAUMgJCDLhoiHGITe8bYUTKFY64
         rUhzPhI2Ff5r2IrJGaAPPMXfzRjZisxm/mOZlS7ycM4KYa3MxgtUhbfZBL15A7xrwHsb
         MDJI7qozS7D/KNEw1/wwboP5MWq3Ibs7RMC5etdxuipEnWKKWH8JHuMaHnJcQFU+YMzz
         RfRRX0mi73X81bop7ZPouYr5ah6HPuMzESxGUBK8Hl4iNpNxD5orzlAYs7YU+TCWoBWm
         PPOg==
X-Gm-Message-State: AOAM531H1r8ZLVaC7h1faneOxQNEr1k8CnWgcx6vc0XvlytoUDza4Gkg
        RU9nosq3KYWC1u6sWnD3bw==
X-Google-Smtp-Source: ABdhPJxJpEVmzxg/L1hN2ArJ25r6p596P18MN9gR3Yo8prFOuHrsPGKBIVNukJC2oiJeGwhh1XTWJg==
X-Received: by 2002:a05:6808:46:: with SMTP id v6mr4833237oic.61.1630448943615;
        Tue, 31 Aug 2021 15:29:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n73sm3970960oig.9.2021.08.31.15.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 15:29:03 -0700 (PDT)
Received: (nullmailer pid 756533 invoked by uid 1000);
        Tue, 31 Aug 2021 22:29:02 -0000
Date:   Tue, 31 Aug 2021 17:29:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>
Cc:     broonie@kernel.org, heiko@sntech.de,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v2 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings
 to yaml
Message-ID: <YS6tLlVSjnYZtEil@robh.at.kernel.org>
References: <1630285788-28002-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630285861-28147-2-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 30, 2021 at 09:11:01AM +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2:
> - Fix yamllint errors.
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 ------------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 115 +++++++++++++++++++++
>  2 files changed, 115 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> deleted file mode 100644
> index b2d7e47..0000000
> --- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> +++ /dev/null
> @@ -1,64 +0,0 @@
> -* Rockchip PDM controller
> -
> -Required properties:
> -
> -- compatible: "rockchip,pdm"
> -  - "rockchip,px30-pdm"
> -  - "rockchip,rk1808-pdm"
> -  - "rockchip,rk3308-pdm"
> -  - "rockchip,rk3568-pdm"
> -  - "rockchip,rv1126-pdm"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- dmas: DMA specifiers for rx dma. See the DMA client binding,
> -	Documentation/devicetree/bindings/dma/dma.txt
> -- dma-names: should include "rx".
> -- clocks: a list of phandle + clock-specifer pairs, one for each entry in clock-names.
> -- clock-names: should contain following:
> -   - "pdm_hclk": clock for PDM BUS
> -   - "pdm_clk" : clock for PDM controller
> -- resets: a list of phandle + reset-specifer paris, one for each entry in reset-names.
> -- reset-names: reset names, should include "pdm-m".
> -- pinctrl-names: Must contain a "default" entry.
> -- pinctrl-N: One property must exist for each entry in
> -	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
> -	     for details of the property values.
> -
> -Optional properties:
> -- rockchip,path-map: This is a variable length array, that shows the mapping
> -  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
> -
> -   path0 <-- sdi0
> -   path1 <-- sdi1
> -   path2 <-- sdi2
> -   path3 <-- sdi3
> -
> -  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
> -
> -   path0 <-- sdi3
> -   path1 <-- sdi2
> -   path2 <-- sdi1
> -   path3 <-- sdi0
> -
> -Example for rk3328 PDM controller:
> -
> -pdm: pdm@ff040000 {
> -	compatible = "rockchip,pdm";
> -	reg = <0x0 0xff040000 0x0 0x1000>;
> -	clocks = <&clk_pdm>, <&clk_gates28 0>;
> -	clock-names = "pdm_clk", "pdm_hclk";
> -	dmas = <&pdma 16>;
> -	#dma-cells = <1>;
> -	dma-names = "rx";
> -	pinctrl-names = "default", "sleep";
> -	pinctrl-0 = <&pdmm0_clk
> -		     &pdmm0_sdi0
> -		     &pdmm0_sdi1
> -		     &pdmm0_sdi2
> -		     &pdmm0_sdi3>;
> -	pinctrl-1 = <&pdmm0_clk_sleep
> -		     &pdmm0_sdi0_sleep
> -		     &pdmm0_sdi1_sleep
> -		     &pdmm0_sdi2_sleep
> -		     &pdmm0_sdi3_sleep>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> new file mode 100644
> index 0000000..fa24ddf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/rockchip,pdm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip PDM controller
> +
> +description:
> +  The Pulse Density Modulation Interface Controller (PDMC) is
> +  a PDM interface controller and decoder that support PDM format.
> +  It integrates a clock generator driving the PDM microphone
> +  and embeds filters which decimate the incoming bit stream to
> +  obtain most common audio rates.
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,pdm
> +      - rockchip,px30-pdm
> +      - rockchip,rk1808-pdm
> +      - rockchip,rk3308-pdm
> +      - rockchip,rk3568-pdm
> +      - rockchip,rv1126-pdm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock for PDM controller
> +      - description: clock for PDM BUS
> +
> +  clock-names:
> +    items:
> +      - const: pdm_clk
> +      - const: pdm_hclk
> +
> +  dmas:
> +    maxItems: 1
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    items:
> +      - description: reset for PDM controller
> +
> +  reset-names:
> +    items:
> +      - const: pdm-m
> +
> +  rockchip,path-map:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Defines the mapping of PDM SDIx to PDM PATHx.
> +      By default, they are mapped one-to-one.
> +    items:
> +      - description: which sdi to connect to path 0
> +      - description: which sdi to connect to path 1
> +      - description: which sdi to connect to path 2
> +      - description: which sdi to connect to path 3

This would be more specific in terms of allowed values:

maxItems: 4
uniqueItems: true
items:
  enum: [ 0, 1, 2, 3 ]

> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dmas
> +  - dma-names
> +  - "#sound-dai-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3328-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    pdm@ff040000 {
> +      compatible = "rockchip,pdm";
> +      reg = <0x0 0xff040000 0x0 0x1000>;
> +      interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru SCLK_PDM>, <&cru HCLK_PDM>;
> +      clock-names = "pdm_clk", "pdm_hclk";
> +      dmas = <&dmac 16>;
> +      dma-names = "rx";
> +      #sound-dai-cells = <0>;
> +      pinctrl-names = "default", "sleep";
> +      pinctrl-0 = <&pdmm0_clk
> +                   &pdmm0_sdi0
> +                   &pdmm0_sdi1
> +                   &pdmm0_sdi2
> +                   &pdmm0_sdi3>;
> +      pinctrl-1 = <&pdmm0_clk_sleep
> +                   &pdmm0_sdi0_sleep
> +                   &pdmm0_sdi1_sleep
> +                   &pdmm0_sdi2_sleep
> +                   &pdmm0_sdi3_sleep>;
> +    };
> -- 
> 2.7.4
> 
> 
> 
> 
