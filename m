Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6BA2D2F33
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 17:14:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729603AbgLHQNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 11:13:36 -0500
Received: from mail-oo1-f67.google.com ([209.85.161.67]:44664 "EHLO
        mail-oo1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726843AbgLHQNg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Dec 2020 11:13:36 -0500
Received: by mail-oo1-f67.google.com with SMTP id n20so495313ooq.11
        for <devicetree@vger.kernel.org>; Tue, 08 Dec 2020 08:13:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2yh3ofZVjOiiNJogOR8PWMhMXkaRVrhkWV6ZqetiGaQ=;
        b=AaMvyGoLGFXXe4bZplJOdMNZqwTv64//+CViKROSyLGdhSgvJaYIyBh4qJ28jKxxjI
         3YycFENda6a2/igZSN+xuty1T05+vqW9lCMJqtASgqk1Usp2irgJplMFbyVjn34PzuLt
         I1+jck/+luTWMWzBncF+1k8M4Rdnt1BtXMcVREtWY88L6XYw0JXXEGBHcBki3yfcD2/t
         ayIBdqk24/uUsfXScEYpCPY7WOBXrq2I9FXmzxjMJqVsZv5pL9XF+wCpV+Jbnu7tw2H8
         FwWdzYFkkqKArlaOudZvpyqsq7jz7NnHP1NzdtT9ksOfwCl2zm3elFWMfG+gzoyOh/5x
         vJjA==
X-Gm-Message-State: AOAM531bXCUO2i5JILbj7uk+nbM4dbxjeCZf9rjqKy4NIyG+5fSyQsXW
        SUFuqEkfgJzuZhKmRylFIw==
X-Google-Smtp-Source: ABdhPJz2bIcS76DYK+G3vm/QY6+bf5ONDbf4huVtLI//9kv2j6vO8ksActQYdM+tGIxxCNfk1ukjGw==
X-Received: by 2002:a4a:be81:: with SMTP id o1mr16927926oop.25.1607443969288;
        Tue, 08 Dec 2020 08:12:49 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k13sm3701969otl.72.2020.12.08.08.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Dec 2020 08:12:48 -0800 (PST)
Received: (nullmailer pid 2626320 invoked by uid 1000);
        Tue, 08 Dec 2020 16:12:47 -0000
Date:   Tue, 8 Dec 2020 10:12:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     vijayakannan.ayyathurai@intel.com
Cc:     daniel.lezcano@linaro.org, tglx@linutronix.de,
        devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com
Subject: Re: [PATCH v1 1/2] dt-bindings: timer: Add bindings for Intel Keem
 Bay SoC timer
Message-ID: <20201208161247.GA2620425@robh.at.kernel.org>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <2938028520edbd0140805a22bdacd0b30c45b2df.1606377035.git.vijayakannan.ayyathurai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2938028520edbd0140805a22bdacd0b30c45b2df.1606377035.git.vijayakannan.ayyathurai@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 26, 2020 at 06:34:08PM +0800, vijayakannan.ayyathurai@intel.com wrote:
> From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
> 
> Add Device Tree bindings for the Timer IP, which used as clocksource and
> clockevent in the Intel Keem Bay SoC.
> 
> Signed-off-by: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
> Acked-by: Mark Gross <mgross@linux.intel.com>
> Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  .../bindings/timer/intel,keembay-timer.yaml   | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml b/Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml
> new file mode 100644
> index 000000000000..396a698967ca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/intel,keembay-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Intel Keem Bay SoC Timers
> +
> +maintainers:
> +  - Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>
> +
> +description:
> +  Intel Keem Bay SoC Timers block contains 8 32-bit general purpose timers,
> +  a free running 64-bit counter, a random number generator and a watchdog
> +  timer. Each gpt can generate an individual interrupt.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          enum:
> +            - intel,keembay-timer
> +            - intel,keembay-counter
> +
> +  reg:
> +    maxItems: 2
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - intel,keembay-timer
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #define KEEM_BAY_A53_TIM
> +
> +    timer@20330010 {
> +        compatible = "intel,keembay-timer";
> +        reg = <0x20330010 0xc>,
> +              <0x20331000 0xc>;
> +        interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&scmi_clk KEEM_BAY_A53_TIM>;
> +    };
> +
> +    counter@203300e8 {
> +        compatible = "intel,keembay-counter";
> +        reg = <0x203300e8 0xc>,
> +              <0x20331000 0xc>;

You have overlapping reg regions here. Don't do that. Define the DT 
in terms of the h/w, not how you want to split things for Linux.

It looks like a single h/w block providing multiple functions.

> +        clocks = <&scmi_clk KEEM_BAY_A53_TIM>;
> +    };
> -- 
> 2.17.1
> 
