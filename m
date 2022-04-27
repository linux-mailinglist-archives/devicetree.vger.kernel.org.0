Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C665F5122FD
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 21:41:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234833AbiD0TpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234931AbiD0Tox (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:44:53 -0400
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 583E656FA8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:39:04 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id 88-20020a9d0ee1000000b005d0ae4e126fso1764991otj.5
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:39:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=k2qu3IfO2BGyu9pXjoOmUHytDS0HPdlISOjfH5qkP1o=;
        b=pb/GFOEWAYwNvAyeF56aIWsN8onvFYEQ4if3p088KNFOuMGcbhwvwzc3l7dY/9I4v6
         sZeDKz8u6gCUnPalH9tBzR7SYf1PZZGGJoHW/H6fn66qS8CjYimLy6Z4Zqjm0Fh4hB/a
         C+AYIuPd5zK1afvkKK6nxdJNJeGdMd0JJ09qUStnT/oqiXiCRAxTDAUBUI/Vr10BBT13
         x2GvirARxD24OYOSZozVABJfI0uJFJp3UliMQ0S1QsvtAF2ElTcu8DI70NnHSJAKOdLt
         7IquZW0FffvCJi++fZWJ9HPAgY2Kq02TiotXX9RS1ZRwtgbfs7GPsx2wZrE8kNgTcoSz
         e7xg==
X-Gm-Message-State: AOAM5301e4s5wQ1XvxifsFfMvOJbxs6k6y4OzjbDG24JE0rjfwKAbqbd
        xXG8XhGPz/Hh+W6VZJ6Ntg==
X-Google-Smtp-Source: ABdhPJx+VTz86AeLcrTPD0c4dx4H5uFQNa2N6Nrs59vLUzxymOSynTGFHDPfu+o9rs+YUKaSIgYoFA==
X-Received: by 2002:a9d:6e83:0:b0:605:4a01:1d8c with SMTP id a3-20020a9d6e83000000b006054a011d8cmr10617915otr.174.1651088343607;
        Wed, 27 Apr 2022 12:39:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id e3-20020a9d6e03000000b0060553db58bbsm6273790otr.36.2022.04.27.12.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 12:39:03 -0700 (PDT)
Received: (nullmailer pid 538852 invoked by uid 1000);
        Wed, 27 Apr 2022 19:39:02 -0000
Date:   Wed, 27 Apr 2022 14:39:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 09/11] dt-bindings: display: convert Arm HDLCD to DT
 schema
Message-ID: <Ymmb1p6rAIDtpc/X@robh.at.kernel.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-10-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220427112528.4097815-10-andre.przywara@arm.com>
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

On Wed, Apr 27, 2022 at 12:25:26PM +0100, Andre Przywara wrote:
> The Arm HDLCD is a display controller that scans out a framebuffer and
> hands a signal to a digital encoder to generate a DVI or HDMI signal.
> 
> Convert the existing DT binding to DT schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/display/arm,hdlcd.txt | 79 ----------------
>  .../bindings/display/arm,hdlcd.yaml           | 91 +++++++++++++++++++
>  2 files changed, 91 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/arm,hdlcd.txt
>  create mode 100644 Documentation/devicetree/bindings/display/arm,hdlcd.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/arm,hdlcd.txt b/Documentation/devicetree/bindings/display/arm,hdlcd.txt
> deleted file mode 100644
> index 78bc24296f3e4..0000000000000
> --- a/Documentation/devicetree/bindings/display/arm,hdlcd.txt
> +++ /dev/null
> @@ -1,79 +0,0 @@
> -ARM HDLCD
> -
> -This is a display controller found on several development platforms produced
> -by ARM Ltd and in more modern of its' Fast Models. The HDLCD is an RGB
> -streamer that reads the data from a framebuffer and sends it to a single
> -digital encoder (DVI or HDMI).
> -
> -Required properties:
> -  - compatible: "arm,hdlcd"
> -  - reg: Physical base address and length of the controller's registers.
> -  - interrupts: One interrupt used by the display controller to notify the
> -    interrupt controller when any of the interrupt sources programmed in
> -    the interrupt mask register have activated.
> -  - clocks: A list of phandle + clock-specifier pairs, one for each
> -    entry in 'clock-names'.
> -  - clock-names: A list of clock names. For HDLCD it should contain:
> -      - "pxlclk" for the clock feeding the output PLL of the controller.
> -
> -Required sub-nodes:
> -  - port: The HDLCD connection to an encoder chip. The connection is modeled
> -    using the OF graph bindings specified in
> -    Documentation/devicetree/bindings/graph.txt.
> -
> -Optional properties:
> -  - memory-region: phandle to a node describing memory (see
> -    Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt) to be
> -    used for the framebuffer; if not present, the framebuffer may be located
> -    anywhere in memory.
> -
> -
> -Example:
> -
> -/ {
> -	...
> -
> -	hdlcd@2b000000 {
> -		compatible = "arm,hdlcd";
> -		reg = <0 0x2b000000 0 0x1000>;
> -		interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&oscclk5>;
> -		clock-names = "pxlclk";
> -		port {
> -			hdlcd_output: endpoint@0 {
> -				remote-endpoint = <&hdmi_enc_input>;
> -			};
> -		};
> -	};
> -
> -	/* HDMI encoder on I2C bus */
> -	i2c@7ffa0000 {
> -		....
> -		hdmi-transmitter@70 {
> -			compatible = ".....";
> -			reg = <0x70>;
> -			port@0 {
> -				hdmi_enc_input: endpoint {
> -					remote-endpoint = <&hdlcd_output>;
> -				};
> -
> -				hdmi_enc_output: endpoint {
> -					remote-endpoint = <&hdmi_1_port>;
> -				};
> -			};
> -		};
> -
> -	};
> -
> -	hdmi1: connector@1 {
> -		compatible = "hdmi-connector";
> -		type = "a";
> -		port {
> -			hdmi_1_port: endpoint {
> -				remote-endpoint = <&hdmi_enc_output>;
> -			};
> -		};
> -	};
> -
> -	...
> -};
> diff --git a/Documentation/devicetree/bindings/display/arm,hdlcd.yaml b/Documentation/devicetree/bindings/display/arm,hdlcd.yaml
> new file mode 100644
> index 0000000000000..1fe8e07334152
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/arm,hdlcd.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/arm,hdlcd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm HDLCD display controller binding
> +
> +maintainers:
> +  - Liviu Dudau <Liviu.Dudau@arm.com>
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +description: |+
> +  The Arm HDLCD is a display controller found on several development platforms
> +  produced by ARM Ltd and in more modern of its Fast Models. The HDLCD is an
> +  RGB streamer that reads the data from a framebuffer and sends it to a single
> +  digital encoder (DVI or HDMI).
> +
> +properties:
> +  compatible:
> +    const: arm,hdlcd
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: pxlclk
> +
> +  clocks:
> +    maxItems: 1
> +    description: The input reference for the pixel clock.
> +
> +  memory-region:
> +    maxItems: 1
> +    description:
> +      Phandle to a node describing memory to be used for the framebuffer.
> +      If not present, the framebuffer may be located anywhere in memory.
> +
> +  iommus:
> +    maxItems: 1
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/$defs/port-base

If no custom properties in port or endpoint:

$ref: /schemas/graph.yaml#/properties/port

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
> +  - clocks
> +  - port
> +
> +examples:
> +  - |
> +    hdlcd@2b000000 {
> +            compatible = "arm,hdlcd";
> +            reg = <0x2b000000 0x1000>;
> +            interrupts = <0 85 4>;
> +            clocks = <&oscclk5>;
> +            clock-names = "pxlclk";
> +            port {
> +                    hdlcd_output: endpoint {
> +                            remote-endpoint = <&hdmi_enc_input>;
> +                    };
> +            };
> +    };
> +
> +    /* HDMI encoder on I2C bus */
> +    i2c {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            hdmi-transmitter@70 {
> +                    compatible = "nxp,tda998x";
> +                    reg = <0x70>;
> +                    port {
> +                            hdmi_enc_input: endpoint {
> +                                    remote-endpoint = <&hdlcd_output>;
> +                            };
> +                    };
> +            };
> +
> +    };
> +
> +...
> -- 
> 2.25.1
> 
> 
