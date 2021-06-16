Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8793A3AA281
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 19:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbhFPRhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 13:37:08 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:40585 "EHLO
        mail-io1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231408AbhFPRhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 13:37:08 -0400
Received: by mail-io1-f47.google.com with SMTP id l64so46712ioa.7
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 10:35:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DpSfOUb9/9vbD4ddO57dF7C1db6zqLEZBc2LZKcp3Hs=;
        b=aWChCAJswjN69qfos2zHtU/Aoa31lDZbQbZOgg5iPn+dnGEIx8KMDhVwL7qMUzQKO2
         0rJWXckOJaADtr31297qFQf5XX6KoKUIj70cr9I4eINOB3RQ7g55NoLpM/4IQZ52WjpY
         2CEUjTYCDetZzDfvMx6VcpmOOtBsZrGKSBJuO4cW0G+N9mXcgRXXexduQtgTdZ5+lvd8
         XecdbklxkgpJb8/xtedqVz8GU7Dd89JYYKvB6WxjhsY3+GY37LH1XgTupIAZSucNZn7d
         Jmbl6yTngfKipVhYDjKHQWho20ZFULBegoJ4iiUJR2RLAS/0UJvLuIyIk7lt42eSza2E
         T8dg==
X-Gm-Message-State: AOAM533NO8QPS0zTEDnuAwEFi+lAChQTwJW3y6znXmOvmvrcc3yiVbqT
        iJ7zHqPN0+0SV/W8RtMoVA==
X-Google-Smtp-Source: ABdhPJx3s6uv3g9WuuXUcfUno/XZQl72NQ5BtQXK56A9fCzFn2g8G0qfMLl99kLetN9cOZs+jsKMPw==
X-Received: by 2002:a5d:85c1:: with SMTP id e1mr436718ios.18.1623864901773;
        Wed, 16 Jun 2021 10:35:01 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n2sm1494661iod.54.2021.06.16.10.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 10:35:00 -0700 (PDT)
Received: (nullmailer pid 3587179 invoked by uid 1000);
        Wed, 16 Jun 2021 17:34:59 -0000
Date:   Wed, 16 Jun 2021 11:34:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: interrupt-controller: Convert ARM VIC to
 json-schema
Message-ID: <20210616173459.GA3578389@robh.at.kernel.org>
References: <20210611111033.2818949-1-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210611111033.2818949-1-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 11, 2021 at 12:10:33PM +0100, Sudeep Holla wrote:
> Convert the ARM VIC binding document to DT schema format using
> json-schema.
> 
> Cc: Rob Herring <robh@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../bindings/interrupt-controller/arm,vic.txt | 41 --------
>  .../interrupt-controller/arm,vic.yaml         | 93 +++++++++++++++++++
>  2 files changed, 93 insertions(+), 41 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
> 
> v1->v2:
> 	- Added arm,versatile-vic to the list of compatibles as suggested
> 	  by Linus W and added his review tag
> 	- Updated the SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> 	  Original txt file doesn't carry anything and is not sure about
> 	  it, but just followed what I have done with scmi/scpi ones

It's default GPL-2.0, so you'd need permission to dual license.

> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
> deleted file mode 100644
> index dd527216c5fb..000000000000
> --- a/Documentation/devicetree/bindings/interrupt-controller/arm,vic.txt
> +++ /dev/null
> @@ -1,41 +0,0 @@
> -* ARM Vectored Interrupt Controller
> -
> -One or more Vectored Interrupt Controllers (VIC's) can be connected in an ARM
> -system for interrupt routing.  For multiple controllers they can either be
> -nested or have the outputs wire-OR'd together.
> -
> -Required properties:
> -
> -- compatible : should be one of
> -	"arm,pl190-vic"
> -	"arm,pl192-vic"
> -- interrupt-controller : Identifies the node as an interrupt controller
> -- #interrupt-cells : The number of cells to define the interrupts.  Must be 1 as
> -  the VIC has no configuration options for interrupt sources.  The cell is a u32
> -  and defines the interrupt number.
> -- reg : The register bank for the VIC.
> -
> -Optional properties:
> -
> -- interrupts : Interrupt source for parent controllers if the VIC is nested.
> -- valid-mask : A one cell big bit mask of valid interrupt sources. Each bit
> -  represents single interrupt source, starting from source 0 at LSb and ending
> -  at source 31 at MSb. A bit that is set means that the source is wired and
> -  clear means otherwise. If unspecified, defaults to all valid.
> -- valid-wakeup-mask : A one cell big bit mask of interrupt sources that can be
> -  configured as wake up source for the system. Order of bits is the same as for
> -  valid-mask property. A set bit means that this interrupt source can be
> -  configured as a wake up source for the system. If unspecied, defaults to all
> -  interrupt sources configurable as wake up sources.
> -
> -Example:
> -
> -	vic0: interrupt-controller@60000 {
> -		compatible = "arm,pl192-vic";
> -		interrupt-controller;
> -		#interrupt-cells = <1>;
> -		reg = <0x60000 0x1000>;
> -
> -		valid-mask = <0xffffff7f>;
> -		valid-wakeup-mask = <0x0000ff7f>;
> -	};
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
> new file mode 100644
> index 000000000000..60576bf14b43
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/arm,vic.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/arm,vic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Vectored Interrupt Controller
> +
> +maintainers:
> +  - Rob Herring <robh@kernel.org>
> +
> +description: |+
> +  One or more Vectored Interrupt Controllers (VIC's) can be connected in an
> +  ARM system for interrupt routing.  For multiple controllers they can either
> +  be nested or have the outputs wire-OR'd together.
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: arm,pl190-vic
> +      - const: arm,pl192-vic
> +      - const: arm,versatile-vic

Use enum instead of oneOf+const

> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 1
> +    description:
> +      The number of cells to define the interrupts.  It must be 1 as the
> +      VIC has no configuration options for interrupt sources. The single
> +      cell defines the interrupt number.
> +
> +  reg:
> +    description: The register bank for the VIC.

Drop. That's every 'reg' ...

> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      Interrupt source for the parent interrupt controller if the VIC
> +      is nested.

Drop.

> +    maxItems: 1
> +
> +  interrupts-extended:

Don't need this. The tooling will add it for any 'interrupts' property.

> +    description:
> +      Interrupt source for the parent interrupt controllers if the VIC
> +      is nested.
> +    maxItems: 1
> +
> +  valid-mask:
> +    description:
> +      A one cell big bit mask of valid interrupt sources. Each bit
> +      represents single interrupt source, starting from source 0 at
> +      LSb and ending at source 31 at MSb. A bit that is set means
> +      that the source is wired and clear means otherwise. If unspecified,
> +      defaults to all valid.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maxItems: 1

Drop. It's not an array.

> +
> +  valid-wakeup-mask:
> +    description:
> +      A one cell big bit mask of interrupt sources that can be configured
> +      as wake up source for the system. Order of bits is the same as for
> +      valid-mask property. A set bit means that this interrupt source
> +      can be configured as a wake up source for the system. If unspecied,
> +      defaults to all interrupt sources configurable as wake up sources.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    maxItems: 1

Drop.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    // GICv1

GIC?

> +    vic0: interrupt-controller@60000 {
> +      compatible = "arm,pl192-vic";
> +      interrupt-controller;
> +      #interrupt-cells = <1>;
> +      reg = <0x60000 0x1000>;
> +
> +      valid-mask = <0xffffff7f>;
> +      valid-wakeup-mask = <0x0000ff7f>;
> +    };
> +
> +...
> -- 
> 2.25.1
