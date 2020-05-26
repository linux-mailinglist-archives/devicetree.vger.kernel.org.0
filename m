Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75D721BB3F8
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2020 04:29:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726272AbgD1C3I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Apr 2020 22:29:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726262AbgD1C3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Apr 2020 22:29:07 -0400
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AFDAC03C1AC
        for <devicetree@vger.kernel.org>; Mon, 27 Apr 2020 19:29:07 -0700 (PDT)
Received: by mail-lf1-x144.google.com with SMTP id m2so15554325lfo.6
        for <devicetree@vger.kernel.org>; Mon, 27 Apr 2020 19:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+uGJzCGEZzpm9VH9v4SN7yHKhIbgY4iai+hN2gQwj7k=;
        b=KUUydT39YgoMICFNQ29Gp22uxFO9wPacG05nzpU8Ri9QKU1lmnF/YOVmDYkCseg/xC
         t0ZKWtHSsGC9GbJQ+F3uAWU3VXe0/3zJD17HXskl9GF4C7WRUlkVZd3o8DxCJuyzBcPt
         DOz91j6aoWByuRHWJEwfJQBGs8LkpZc2HGp6EcTf0AnRBq1saxtKg/ybeRc6pppGbtNi
         DN4ZdMeBGUfMiSwSD7WYV/JQaL/ZucoyQItg0xsDcfOjOXzVU4VFBzLx5G2vl8g1dw6C
         DZ6KimzbeEJ5gvfKL86BpvTHdedylChqwOdIZ9g2sCiMTG/tl8pQZoFzhVg42RFXHiAK
         82lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+uGJzCGEZzpm9VH9v4SN7yHKhIbgY4iai+hN2gQwj7k=;
        b=gHgJq6Zxu7go7hEkcqcoVPCe7DUAary6Ss5sFbr8PvHbwPTI5PXeX9VBwJs+j1Id6h
         mjf7yWmZzbCqDkykofoDhLJleRFAewep9LAn+57K9xX5Dtcmy93J15YTjZI2gHA/wSdA
         catG0Liz0Is4rkEiiGKVBtnL6HhyW4lJM9/dVPUBcY4pIsAUSXeF4LVYzR1LuvBqx9xK
         en3KfBX08pcYIa9iPk6ESSWop/CLvl6a0pDhg9E+QTBj9ng70h4SKChIoR9RFLDtiSOH
         P3n1HvyusIejC33QEkzDF9aY0+wkHaHdtCnA3jwf+K/Xu+kptkKbqv7mAVBpYrrf0N9H
         VZ4w==
X-Gm-Message-State: AGi0Pub0EJgTl+Calx/r2YeJo9WalhnLcwoTF2NVNRBMhj2lHDwdjiry
        VGM4PrfPuc8a0LsJJXb6Es/7UA==
X-Google-Smtp-Source: APiQypIsxF+967Us38v4D2URSli5eYkS88vfjKMguWtQBZcMphNaX0Sjm0AX+vOlPiyoT5NgY0dfWA==
X-Received: by 2002:ac2:4426:: with SMTP id w6mr17323851lfl.8.1588040945426;
        Mon, 27 Apr 2020 19:29:05 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
        by smtp.gmail.com with ESMTPSA id q24sm12683484lfc.29.2020.04.27.19.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2020 19:29:04 -0700 (PDT)
Date:   Tue, 28 Apr 2020 04:29:04 +0200
From:   Niklas =?iso-8859-1?Q?S=F6derlund?= 
        <niklas.soderlund@ragnatech.se>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Chris Brandt <chris.brandt@renesas.com>,
        devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: timer: renesas: ostm: Convert to json-schema
Message-ID: <20200428022904.GC1208690@oden.dyn.berto.se>
References: <20200427193224.29548-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200427193224.29548-1-geert+renesas@glider.be>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Geert,

Thanks for your patch.

On 2020-04-27 21:32:24 +0200, Geert Uytterhoeven wrote:
> Convert the Renesas OS Timer (OSTM) Device Tree binding documentation to
> json-schema.
> 
> Document missing properties.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Niklas S�derlund <niklas.soderlund@ragnatech.se>

> ---
> For a clean dtbs_check, this depends on "[PATCH] ARM: dts: r7s9210: Remove
> bogus clock-names from OSTM nodes"
> (https://lore.kernel.org/r/20200427192932.28967-1-geert+renesas@glider.be)
> which I intend to queue as a fix for v5.7.
> 
>  .../bindings/timer/renesas,ostm.txt           | 31 ----------
>  .../bindings/timer/renesas,ostm.yaml          | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/renesas,ostm.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/renesas,ostm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/renesas,ostm.txt b/Documentation/devicetree/bindings/timer/renesas,ostm.txt
> deleted file mode 100644
> index 81a78f8bcf170a82..0000000000000000
> --- a/Documentation/devicetree/bindings/timer/renesas,ostm.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -* Renesas OS Timer (OSTM)
> -
> -The OSTM is a multi-channel 32-bit timer/counter with fixed clock
> -source that can operate in either interval count down timer or free-running
> -compare match mode.
> -
> -Channels are independent from each other.
> -
> -Required Properties:
> -
> -  - compatible: must be one or more of the following:
> -    - "renesas,r7s72100-ostm" for the R7S72100 (RZ/A1) OSTM
> -    - "renesas,r7s9210-ostm" for the R7S9210 (RZ/A2) OSTM
> -    - "renesas,ostm" for any OSTM
> -		This is a fallback for the above renesas,*-ostm entries
> -
> -  - reg: base address and length of the register block for a timer channel.
> -
> -  - interrupts: interrupt specifier for the timer channel.
> -
> -  - clocks: clock specifier for the timer channel.
> -
> -Example: R7S72100 (RZ/A1H) OSTM node
> -
> -	ostm0: timer@fcfec000 {
> -		compatible = "renesas,r7s72100-ostm", "renesas,ostm";
> -		reg = <0xfcfec000 0x30>;
> -		interrupts = <GIC_SPI 102 IRQ_TYPE_EDGE_RISING>;
> -		clocks = <&mstp5_clks R7S72100_CLK_OSTM0>;
> -		power-domains = <&cpg_clocks>;
> -	};
> diff --git a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
> new file mode 100644
> index 0000000000000000..600d47ab7d58570f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/renesas,ostm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas OS Timer (OSTM)
> +
> +maintainers:
> +  - Chris Brandt <chris.brandt@renesas.com>
> +  - Geert Uytterhoeven <geert+renesas@glider.be>
> +
> +description:
> +  The OSTM is a multi-channel 32-bit timer/counter with fixed clock source that
> +  can operate in either interval count down timer or free-running compare match
> +  mode.
> +
> +  Channels are independent from each other.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r7s72100-ostm # RZ/A1H
> +          - renesas,r7s9210-ostm  # RZ/A2M
> +      - const: renesas,ostm       # Generic
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r7s72100-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    ostm0: timer@fcfec000 {
> +            compatible = "renesas,r7s72100-ostm", "renesas,ostm";
> +            reg = <0xfcfec000 0x30>;
> +            interrupts = <GIC_SPI 102 IRQ_TYPE_EDGE_RISING>;
> +            clocks = <&mstp5_clks R7S72100_CLK_OSTM0>;
> +            power-domains = <&cpg_clocks>;
> +    };
> -- 
> 2.17.1
> 

-- 
Regards,
Niklas S�derlund
