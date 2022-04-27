Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9D1F5122FE
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 21:43:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234784AbiD0TqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:46:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234757AbiD0TqB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:46:01 -0400
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C35005DA7C
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:40:01 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id l9-20020a056830268900b006054381dd35so1775312otu.4
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:40:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=YRHQEOJeHVUsYJGN9JmtRj/2XBLbMF4FdtpgDTrkOZ0=;
        b=Ateg7kHVIFYj0MzxGRinPUE2gcEdPSTH/NBRJLS15mo1CNXxZpYkXsLmuOEHO20EkJ
         zVAuLJBLxnRHYD12SWEmLYK9ld2Ej+Tb59ROxVR2ZVLkJT0Wl4PDf/vX6i0lvc90fj7i
         d0EhOU/jRZQ0wB08T4DJz/WKork+5BjwwL5NIsVSpLS4W4tqxWXEb9q+npdcLERISSeU
         LIfcpGLJFEdSh15m9dqBqQdG2l0DQ9rHfoE+E1kWqXqHo60LO9HQYhnXrp9vnY0tL8tZ
         nw3szb5rWzNmGI/alccc2FjfA1pSWE5Lmo1GXUlNfCvPUTj25GX7+imLTBqeNynIhmV6
         TKBA==
X-Gm-Message-State: AOAM530Z40K/HSc7+vR6olrXb9X7FVl7fpF9hEIxibMppswaeozh2g9p
        uUr5MikoRAUdFOIUl+YJEQaee2iZhg==
X-Google-Smtp-Source: ABdhPJz2nIDxQYxPCZrHWl4bG6O9R4+laMYXSYYRQjgfy1UrgvWcjQixnE/Tv8wlogmcJRgM1QR9Cg==
X-Received: by 2002:a05:6830:12d2:b0:605:e67e:edc5 with SMTP id a18-20020a05683012d200b00605e67eedc5mr304412otq.326.1651088400977;
        Wed, 27 Apr 2022 12:40:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 30-20020a9d0ba1000000b005e95b29b95dsm6132541oth.5.2022.04.27.12.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 12:40:00 -0700 (PDT)
Received: (nullmailer pid 540132 invoked by uid 1000);
        Wed, 27 Apr 2022 19:39:59 -0000
Date:   Wed, 27 Apr 2022 14:39:59 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Brian Starkey <brian.starkey@arm.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 10/11] dt-bindings: display: convert Arm Mali-DP to DT
 schema
Message-ID: <YmmcD66wjghkWXx3@robh.at.kernel.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-11-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427112528.4097815-11-andre.przywara@arm.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 12:25:27PM +0100, Andre Przywara wrote:
> The Arm Mali Display Processor (DP) 5xx/6xx is a series of IP that scans
> out a framebuffer and hands the pixels over to a digital signal encoder.
> It supports multiple layers, scaling and rotation.
> 
> Convert the existing DT binding to DT schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/display/arm,malidp.txt           |  68 ----------
>  .../bindings/display/arm,malidp.yaml          | 117 ++++++++++++++++++
>  2 files changed, 117 insertions(+), 68 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/arm,malidp.txt
>  create mode 100644 Documentation/devicetree/bindings/display/arm,malidp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/arm,malidp.txt b/Documentation/devicetree/bindings/display/arm,malidp.txt
> deleted file mode 100644
> index 7a97a2b48c2a2..0000000000000
> --- a/Documentation/devicetree/bindings/display/arm,malidp.txt
> +++ /dev/null
> @@ -1,68 +0,0 @@
> -ARM Mali-DP
> -
> -The following bindings apply to a family of Display Processors sold as
> -licensable IP by ARM Ltd. The bindings describe the Mali DP500, DP550 and
> -DP650 processors that offer multiple composition layers, support for
> -rotation and scaling output.
> -
> -Required properties:
> -  - compatible: should be one of
> -	"arm,mali-dp500"
> -	"arm,mali-dp550"
> -	"arm,mali-dp650"
> -    depending on the particular implementation present in the hardware
> -  - reg: Physical base address and size of the block of registers used by
> -    the processor.
> -  - interrupts: Interrupt list, as defined in ../interrupt-controller/interrupts.txt,
> -    interrupt client nodes.
> -  - interrupt-names: name of the engine inside the processor that will
> -    use the corresponding interrupt. Should be one of "DE" or "SE".
> -  - clocks: A list of phandle + clock-specifier pairs, one for each entry
> -    in 'clock-names'
> -  - clock-names: A list of clock names. It should contain:
> -      - "pclk": for the APB interface clock
> -      - "aclk": for the AXI interface clock
> -      - "mclk": for the main processor clock
> -      - "pxlclk": for the pixel clock feeding the output PLL of the processor.
> -  - arm,malidp-output-port-lines: Array of u8 values describing the number
> -    of output lines per channel (R, G and B).
> -
> -Required sub-nodes:
> -  - port: The Mali DP connection to an encoder input port. The connection
> -    is modelled using the OF graph bindings specified in
> -    Documentation/devicetree/bindings/graph.txt
> -
> -Optional properties:
> -  - memory-region: phandle to a node describing memory (see
> -    Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt)
> -    to be used for the framebuffer; if not present, the framebuffer may
> -    be located anywhere in memory.
> -  - arm,malidp-arqos-high-level: integer of u32 value describing the ARQoS
> -    levels of DP500's QoS signaling.
> -
> -
> -Example:
> -
> -/ {
> -	...
> -
> -	dp0: malidp@6f200000 {
> -		compatible = "arm,mali-dp650";
> -		reg = <0 0x6f200000 0 0x20000>;
> -		memory-region = <&display_reserved>;
> -		interrupts = <0 168 IRQ_TYPE_LEVEL_HIGH>,
> -			     <0 168 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-names = "DE", "SE";
> -		clocks = <&oscclk2>, <&fpgaosc0>, <&fpgaosc1>, <&fpgaosc1>;
> -		clock-names = "pxlclk", "mclk", "aclk", "pclk";
> -		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
> -		arm,malidp-arqos-high-level = <0xd000d000>;
> -		port {
> -			dp0_output: endpoint {
> -				remote-endpoint = <&tda998x_2_input>;
> -			};
> -		};
> -	};
> -
> -	...
> -};
> diff --git a/Documentation/devicetree/bindings/display/arm,malidp.yaml b/Documentation/devicetree/bindings/display/arm,malidp.yaml
> new file mode 100644
> index 0000000000000..86b636662f803
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/arm,malidp.yaml
> @@ -0,0 +1,117 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/arm,malidp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Mali Display Processor (Mali-DP) binding
> +
> +maintainers:
> +  - Liviu Dudau <Liviu.Dudau@arm.com>
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description: |+
> +  The following bindings apply to a family of Display Processors sold as
> +  licensable IP by ARM Ltd. The bindings describe the Mali DP500, DP550 and
> +  DP650 processors that offer multiple composition layers, support for
> +  rotation and scaling output.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - arm,mali-dp500
> +      - arm,mali-dp550
> +      - arm,mali-dp650
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description:
> +          The interrupt used by the Display Engine (DE). Can be shared with
> +          the interrupt for the Scaling Engine (SE), but it will have to be
> +          listed individually.
> +      - description:
> +          The interrupt used by the Scaling Engine (SE). Can be shared with
> +          the interrupt for the Display Engine (DE), but it will have to be
> +          listed individually.
> +
> +  interrupt-names:
> +    items:
> +      - const: DE
> +      - const: SE
> +
> +  clock-names:
> +    items:
> +      - const: pxlclk
> +      - const: mclk
> +      - const: aclk
> +      - const: pclk
> +
> +  clocks:
> +    items:
> +      - description: the pixel clock feeding the output PLL of the processor
> +      - description: the main processor clock
> +      - description: the AXI interface clock
> +      - description: the APB interface clock
> +
> +  memory-region:
> +    maxItems: 1
> +    description:
> +      Phandle to a node describing memory to be used for the framebuffer.
> +      If not present, the framebuffer may be located anywhere in memory.
> +
> +  arm,malidp-output-port-lines:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description:
> +      Number of output lines/bits for each colour channel.
> +    items:
> +      - description: number of output lines for the red channel (R)
> +      - description: number of output lines for the green channel (G)
> +      - description: number of output lines for the blue channel (B)
> +
> +  arm,malidp-arqos-high-level:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      integer describing the ARQoS levels of DP500's QoS signaling
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base

/properties/port

> +    unevaluatedProperties: false
> +    description:
> +      Output endpoint of the controller, connecting the LCD panel signals.
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +  - clocks
> +  - clock-names
> +  - port
> +  - arm,malidp-output-port-lines
> +
> +examples:
> +  - |
> +    dp0: malidp@6f200000 {
> +            compatible = "arm,mali-dp650";
> +            reg = <0x6f200000 0x20000>;
> +            memory-region = <&display_reserved>;
> +            interrupts = <168>, <168>;
> +            interrupt-names = "DE", "SE";
> +            clocks = <&oscclk2>, <&fpgaosc0>, <&fpgaosc1>, <&fpgaosc1>;
> +            clock-names = "pxlclk", "mclk", "aclk", "pclk";
> +            arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
> +            arm,malidp-arqos-high-level = <0xd000d000>;
> +
> +            port {
> +                    dp0_output: endpoint {
> +                            remote-endpoint = <&tda998x_2_input>;
> +                    };
> +            };
> +    };
> +
> +...
> -- 
> 2.25.1
> 
> 
