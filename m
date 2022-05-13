Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D27F526051
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 12:58:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379577AbiEMKm2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 06:42:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355554AbiEMKm0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 06:42:26 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id CCA7FFD35A
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 03:42:25 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3CA5143D;
        Fri, 13 May 2022 03:42:25 -0700 (PDT)
Received: from [192.168.99.12] (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECFD03F5A1;
        Fri, 13 May 2022 03:42:23 -0700 (PDT)
Message-ID: <909ceff3-d16f-89c7-9359-b6d02d5190fe@foss.arm.com>
Date:   Fri, 13 May 2022 11:42:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v2 11/11] dt-bindings: display: convert Arm Komeda to DT
 schema
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Will Deacon <will@kernel.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        dri-devel@lists.freedesktop.org,
        Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org
References: <20220506140533.3566431-1-andre.przywara@arm.com>
 <20220506140533.3566431-12-andre.przywara@arm.com>
From:   Carsten Haitzler <carsten.haitzler@foss.arm.com>
Organization: Arm Ltd.
In-Reply-To: <20220506140533.3566431-12-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-9.8 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

That seems sensible to me. It matches the kind of DT content I know 
works. It's certainly more detailed now.

On 5/6/22 15:05, Andre Przywara wrote:
> The Arm Komeda (aka Mali-D71) is a display controller that scans out a
> framebuffer and hands a signal to a digital encoder to generate a DVI
> or HDMI signal. It supports up to two pipelines, each frame can be
> composed of up to four layers.
> 
> Convert the existing DT binding to DT schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>   .../bindings/display/arm,komeda.txt           |  78 -----------
>   .../bindings/display/arm,komeda.yaml          | 130 ++++++++++++++++++
>   2 files changed, 130 insertions(+), 78 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/display/arm,komeda.txt
>   create mode 100644 Documentation/devicetree/bindings/display/arm,komeda.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/arm,komeda.txt b/Documentation/devicetree/bindings/display/arm,komeda.txt
> deleted file mode 100644
> index 8513695ee47fe..0000000000000
> --- a/Documentation/devicetree/bindings/display/arm,komeda.txt
> +++ /dev/null
> @@ -1,78 +0,0 @@
> -Device Tree bindings for Arm Komeda display driver
> -
> -Required properties:
> -- compatible: Should be "arm,mali-d71"
> -- reg: Physical base address and length of the registers in the system
> -- interrupts: the interrupt line number of the device in the system
> -- clocks: A list of phandle + clock-specifier pairs, one for each entry
> -    in 'clock-names'
> -- clock-names: A list of clock names. It should contain:
> -      - "aclk": for the main processor clock
> -- #address-cells: Must be 1
> -- #size-cells: Must be 0
> -- iommus: configure the stream id to IOMMU, Must be configured if want to
> -    enable iommu in display. for how to configure this node please reference
> -        devicetree/bindings/iommu/arm,smmu-v3.txt,
> -        devicetree/bindings/iommu/iommu.txt
> -
> -Required properties for sub-node: pipeline@nq
> -Each device contains one or two pipeline sub-nodes (at least one), each
> -pipeline node should provide properties:
> -- reg: Zero-indexed identifier for the pipeline
> -- clocks: A list of phandle + clock-specifier pairs, one for each entry
> -    in 'clock-names'
> -- clock-names: should contain:
> -      - "pxclk": pixel clock
> -
> -- port: each pipeline connect to an encoder input port. The connection is
> -    modeled using the OF graph bindings specified in
> -    Documentation/devicetree/bindings/graph.txt
> -
> -Optional properties:
> -  - memory-region: phandle to a node describing memory (see
> -    Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt)
> -    to be used for the framebuffer; if not present, the framebuffer may
> -    be located anywhere in memory.
> -
> -Example:
> -/ {
> -	...
> -
> -	dp0: display@c00000 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "arm,mali-d71";
> -		reg = <0xc00000 0x20000>;
> -		interrupts = <0 168 4>;
> -		clocks = <&dpu_aclk>;
> -		clock-names = "aclk";
> -		iommus = <&smmu 0>, <&smmu 1>, <&smmu 2>, <&smmu 3>,
> -			<&smmu 4>, <&smmu 5>, <&smmu 6>, <&smmu 7>,
> -			<&smmu 8>, <&smmu 9>;
> -
> -		dp0_pipe0: pipeline@0 {
> -			clocks = <&fpgaosc2>;
> -			clock-names = "pxclk";
> -			reg = <0>;
> -
> -			port {
> -				dp0_pipe0_out: endpoint {
> -					remote-endpoint = <&db_dvi0_in>;
> -				};
> -			};
> -		};
> -
> -		dp0_pipe1: pipeline@1 {
> -			clocks = <&fpgaosc2>;
> -			clock-names = "pxclk";
> -			reg = <1>;
> -
> -			port {
> -				dp0_pipe1_out: endpoint {
> -					remote-endpoint = <&db_dvi1_in>;
> -				};
> -			};
> -		};
> -	};
> -	...
> -};
> diff --git a/Documentation/devicetree/bindings/display/arm,komeda.yaml b/Documentation/devicetree/bindings/display/arm,komeda.yaml
> new file mode 100644
> index 0000000000000..9f4aade97f10a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/arm,komeda.yaml
> @@ -0,0 +1,130 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/arm,komeda.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Komeda display processor
> +
> +maintainers:
> +  - Liviu Dudau <Liviu.Dudau@arm.com>
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description:
> +  The Arm Mali D71 display processor supports up to two displays with up
> +  to a 4K resolution each. Each pipeline can be composed of up to four
> +  layers. It is typically connected to a digital display connector like HDMI.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: arm,mali-d32
> +          - const: arm,mali-d71
> +      - const: arm,mali-d71
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: aclk
> +
> +  clocks:
> +    maxItems: 1
> +    description: The main DPU processor clock
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  memory-region:
> +    maxItems: 1
> +    description:
> +      Phandle to a node describing memory to be used for the framebuffer.
> +      If not present, the framebuffer may be located anywhere in memory.
> +
> +  iommus:
> +    description:
> +      The stream IDs for each of the used pipelines, each four IDs for the
> +      four layers, plus one for the write-back stream.
> +    minItems: 5
> +    maxItems: 10
> +
> +patternProperties:
> +  '^pipeline@[01]$':
> +    type: object
> +    description:
> +      clocks
> +
> +    properties:
> +      reg:
> +        enum: [ 0, 1 ]
> +
> +      clock-names:
> +        const: pxclk
> +
> +      clocks:
> +        maxItems: 1
> +        description: The input reference for the pixel clock.
> +
> +      port:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +
> +additionalProperties: false
> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clock-names
> +  - clocks
> +  - pipeline@0
> +
> +examples:
> +  - |
> +    display@c00000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "arm,mali-d71";
> +        reg = <0xc00000 0x20000>;
> +        interrupts = <168>;
> +        clocks = <&dpu_aclk>;
> +        clock-names = "aclk";
> +        iommus = <&smmu 0>, <&smmu 1>, <&smmu 2>, <&smmu 3>,
> +                 <&smmu 8>,
> +                 <&smmu 4>, <&smmu 5>, <&smmu 6>, <&smmu 7>,
> +                 <&smmu 9>;
> +
> +        dp0_pipe0: pipeline@0 {
> +            clocks = <&fpgaosc2>;
> +            clock-names = "pxclk";
> +            reg = <0>;
> +
> +            port {
> +                dp0_pipe0_out: endpoint {
> +                    remote-endpoint = <&db_dvi0_in>;
> +                };
> +            };
> +        };
> +
> +        dp0_pipe1: pipeline@1 {
> +            clocks = <&fpgaosc2>;
> +            clock-names = "pxclk";
> +            reg = <1>;
> +
> +            port {
> +                dp0_pipe1_out: endpoint {
> +                    remote-endpoint = <&db_dvi1_in>;
> +                };
> +            };
> +        };
> +    };
> +...
