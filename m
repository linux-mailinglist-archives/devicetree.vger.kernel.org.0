Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 968283D4275
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:54:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231724AbhGWVNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:13:55 -0400
Received: from mail-il1-f177.google.com ([209.85.166.177]:41855 "EHLO
        mail-il1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231839AbhGWVNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:13:55 -0400
Received: by mail-il1-f177.google.com with SMTP id s5so2834722ild.8
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:54:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=agR0EsIxUAONrVj8l6ozH7xalH1afrd/nF4lT8UPZwA=;
        b=WydLz0BVtK4pBSCaJK3ZjKnmL7SFTDWNFPUTO5Za9erEiLsqAcTRKQ3oAPndKgw9l+
         UbderzznWHUX3jt+buvXnEi+e94e+/+Jgji4c1CKBtbGXELbuYE3A1uT5e2FZdrkPVlr
         CT1sFdn0O0d1DltZjTBY9vTHF82lEmpXpy9eK9BSd/VPnOyRD4n6vGOa7gMCsqbqV4hu
         cuIZ+JZrYFCbsourtSFTN+AmgeDvmRsU0kGTAX58ee7Zyb+tI+VHvfBYNYU9+83n/v8/
         K/DV1BEBigj5q4xBiRebN2Zboi6GkbfvbvtLItV3nHZA8l93yd1K8c2AmlvFq+uWxh5v
         iylw==
X-Gm-Message-State: AOAM532sWfBZdSqkcBHPW1KjdtX+pBAb7NuQrPF00hfhz3aM3dGf0IH4
        mXd535RBjPQcq565eee8SQ==
X-Google-Smtp-Source: ABdhPJzrrwBh/TglD+y151ZTpw2UUh7lPOqoSUkwpYYw6bLUkgYZuawtqpKoUkdG8+WX2mJ6URBrgQ==
X-Received: by 2002:a92:de4f:: with SMTP id e15mr473862ilr.267.1627077267868;
        Fri, 23 Jul 2021 14:54:27 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id k4sm18837007ior.55.2021.07.23.14.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:54:27 -0700 (PDT)
Received: (nullmailer pid 2660030 invoked by uid 1000);
        Fri, 23 Jul 2021 21:54:26 -0000
Date:   Fri, 23 Jul 2021 15:54:26 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 23/54] dt-bindings: mfd: Convert X-Powers AC100 binding
 to a schema
Message-ID: <20210723215426.GA2656991@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-24-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-24-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 04:03:53PM +0200, Maxime Ripard wrote:
> The X-Powers AC100 hybrid devices are supported by Linux thanks to its
> device tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/mfd/ac100.txt         |  50 --------
>  .../bindings/mfd/x-powers,ac100.yaml          | 113 ++++++++++++++++++
>  2 files changed, 113 insertions(+), 50 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/ac100.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/ac100.txt b/Documentation/devicetree/bindings/mfd/ac100.txt
> deleted file mode 100644
> index dff219f07493..000000000000
> --- a/Documentation/devicetree/bindings/mfd/ac100.txt
> +++ /dev/null
> @@ -1,50 +0,0 @@
> -X-Powers AC100 Codec/RTC IC Device Tree bindings
> -
> -AC100 is a audio codec and RTC subsystem combo IC. The 2 parts are
> -separated, including power supplies and interrupt lines, but share
> -a common register address space and host interface.
> -
> -Required properties:
> -- compatible: "x-powers,ac100"
> -- reg: The I2C slave address or RSB hardware address for the chip
> -- sub-nodes:
> -  - codec
> -    - compatible:		"x-powers,ac100-codec"
> -    - interrupts:		SoC NMI / GPIO interrupt connected to the
> -    				IRQ_AUDIO pin
> -    - #clock-cells:		Shall be 0
> -    - clock-output-names:	"4M_adda"
> -
> -    - see clock/clock-bindings.txt for common clock bindings
> -
> -  - rtc
> -    - compatible:		"x-powers,ac100-rtc"
> -    - clocks:			A phandle to the codec's "4M_adda" clock
> -    - #clock-cells:		Shall be 1
> -    - clock-output-names:	"cko1_rtc", "cko2_rtc", "cko3_rtc"
> -
> -    - see clock/clock-bindings.txt for common clock bindings
> -
> -Example:
> -
> -ac100: codec@e89 {
> -	compatible = "x-powers,ac100";
> -	reg = <0xe89>;
> -
> -	ac100_codec: codec {
> -		compatible = "x-powers,ac100-codec";
> -		interrupt-parent = <&r_pio>;
> -		interrupts = <0 9 IRQ_TYPE_LEVEL_LOW>; /* PL9 */
> -		#clock-cells = <0>;
> -		clock-output-names = "4M_adda";
> -	};
> -
> -	ac100_rtc: rtc {
> -		compatible = "x-powers,ac100-rtc";
> -		interrupt-parent = <&nmi_intc>;
> -		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> -		clocks = <&ac100_codec>;
> -		#clock-cells = <1>;
> -		clock-output-names = "cko1_rtc", "cko2_rtc", "cko3_rtc";
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
> new file mode 100644
> index 000000000000..6990765076b8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
> @@ -0,0 +1,113 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/mfd/x-powers,ac100.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: X-Powers AC100 Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +
> +properties:
> +  compatible:
> +    const: x-powers,ac100
> +
> +  reg:
> +    maxItems: 1
> +
> +  codec:
> +    type: object
> +
> +    properties:
> +      "#clock-cells":
> +        const: 0
> +
> +      compatible:
> +        const: x-powers,ac100-codec
> +
> +      interrupts:
> +        maxItems: 1
> +
> +      clock-output-names:
> +        description: >
> +          Name of the 4M_adda clock exposed by the codec

maxItems: 1

> +
> +    required:
> +      - "#clock-cells"
> +      - compatible
> +      - interrupts
> +      - clock-output-names
> +
> +    additionalProperties: false
> +
> +  rtc:
> +    type: object
> +
> +    properties:
> +      "#clock-cells":
> +        const: 1
> +
> +      compatible:
> +        const: x-powers,ac100-rtc
> +
> +      interrupts:
> +        maxItems: 1
> +
> +      clocks:
> +        description: >
> +           A phandle to the codec's "4M_adda" clock

maxItems: 1

> +
> +      clock-output-names:
> +        description: >
> +          Name of the cko1, cko2 and cko3 clocks exposed by the codec

maxItems: 3

> +
> +    required:
> +      - "#clock-cells"
> +      - compatible
> +      - interrupts
> +      - clocks
> +      - clock-output-names
> +
> +    additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - codec
> +  - rtc
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    rsb {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        codec@e89 {
> +            compatible = "x-powers,ac100";
> +            reg = <0xe89>;
> +
> +            ac100_codec: codec {
> +                compatible = "x-powers,ac100-codec";
> +                interrupt-parent = <&r_pio>;
> +                interrupts = <0 9 IRQ_TYPE_LEVEL_LOW>; /* PL9 */
> +                #clock-cells = <0>;
> +                clock-output-names = "4M_adda";
> +            };
> +
> +            ac100_rtc: rtc {
> +                compatible = "x-powers,ac100-rtc";
> +                interrupt-parent = <&nmi_intc>;
> +                interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +                clocks = <&ac100_codec>;
> +                #clock-cells = <1>;
> +                clock-output-names = "cko1_rtc", "cko2_rtc", "cko3_rtc";
> +            };
> +        };
> +    };
> +
> +...
> -- 
> 2.31.1
> 
> 
