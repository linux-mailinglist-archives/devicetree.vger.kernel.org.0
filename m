Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 177AA47C18E
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 15:33:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235543AbhLUOd6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 09:33:58 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:42953 "EHLO
        mail-qt1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234548AbhLUOd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 09:33:57 -0500
Received: by mail-qt1-f173.google.com with SMTP id z9so12981387qtj.9
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 06:33:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aG0eQSYEAQyUQnUa/FOediZKLelTefKQEp1kjVjva0Q=;
        b=mcupiB28/MGbau7TukxRxNC3AX2aCQpqA/BzhbqNUuYnSh/R1dfJcu0ZTPlKLv9XfJ
         jS+glNBKjlqYn/kZL7JW4A5FSYjVshWXjry/jzH1MJGgnulg0dUImyzjfiWOM6RHnKd4
         3l23tAmQp3kjqxigNRRzi4kBZ4+qpCRuzMd9disLP3AWi2rYRhPyGz4Ikj8qMhIssNld
         3uPh3EYgo7g5WK799pZ1+/Ssi3Mmo83jTViIcXHk7nTZz1nzsOgdMfhK4nx8hi6ckh87
         PQpGvTTh6CX4WSfOWbWp/pdvhKR743zSq/H7SBtlSXItTETJLlwaLATnxUf0xdFx7372
         e9Yg==
X-Gm-Message-State: AOAM533THp21rZD7Yp5EZQkAoIHyGrP38CmMNcRSHz4ywrhPTqhp5Idg
        RSjtiOU9gjAqcb+1P/MQEg==
X-Google-Smtp-Source: ABdhPJyhD7RbfWBFdjUBHLOnbPdtwHYSuCv8eC8x8hzMQ5P20a0gpm948kDAcVu1xWxBrU68uTKkVw==
X-Received: by 2002:a05:622a:50a:: with SMTP id l10mr2374912qtx.491.1640097237052;
        Tue, 21 Dec 2021 06:33:57 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id j20sm14725579qko.117.2021.12.21.06.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 06:33:55 -0800 (PST)
Received: (nullmailer pid 1362097 invoked by uid 1000);
        Tue, 21 Dec 2021 14:33:51 -0000
Date:   Tue, 21 Dec 2021 10:33:51 -0400
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 11/22] dt-bindings: display: rockchip: Add binding for
 VOP2
Message-ID: <YcHlzzuvxMGpPaRa@robh.at.kernel.org>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-12-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211220110630.3521121-12-s.hauer@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 20, 2021 at 12:06:19PM +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> new file mode 100644
> index 0000000000000..df14d5aa85c85
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC display controller (VOP2)
> +
> +description:
> +  VOP2 (Video Output Processor v2) is the display controller for the Rockchip
> +  series of SoCs which transfers the image data from a video memory
> +  buffer to an external LCD interface.
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3566-vop
> +      - rockchip,rk3568-vop
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description:
> +          Must contain one entry corresponding to the base address and length
> +          of the register space.
> +      - description:
> +          Can optionally contain a second entry corresponding to
> +          the CRTC gamma LUT address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The VOP interrupt is shared by several interrupt sources, such as
> +      frame start (VSYNC), line flag and other status interrupts.
> +
> +  clocks:
> +    items:
> +      - description: Clock for ddr buffer transfer.
> +      - description: Clock for the ahb bus to R/W the phy regs.
> +      - description: Pixel clock for video port 0.
> +      - description: Pixel clock for video port 1.
> +      - description: Pixel clock for video port 2.
> +
> +  clock-names:
> +    items:
> +      - const: aclk_vop
> +      - const: hclk_vop

_vop is redundant.

> +      - const: dclk_vp0
> +      - const: dclk_vp1
> +      - const: dclk_vp2
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to GRF regs used for misc control
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/port

s/port/ports/

> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP0
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP1
> +
> +      port@:

port@2

> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP2
> +

> +  assigned-clocks: true
> +
> +  assigned-clock-rates: true
> +
> +  assigned-clock-parents: true

These are automatically added.

> +
> +  iommus:
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
> +  - clock-names
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +        #include <dt-bindings/clock/rk3568-cru.h>
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        #include <dt-bindings/power/rk3568-power.h>
> +        bus {
> +            #address-cells = <2>;
> +            #size-cells = <2>;
> +            vop: vop@fe040000 {
> +                compatible = "rockchip,rk3568-vop";
> +                reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +                interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +                clocks = <&cru ACLK_VOP>,
> +                         <&cru HCLK_VOP>,
> +                         <&cru DCLK_VOP0>,
> +                         <&cru DCLK_VOP1>,
> +                         <&cru DCLK_VOP2>;
> +                clock-names = "aclk_vop",
> +                              "hclk_vop",
> +                              "dclk_vp0",
> +                              "dclk_vp1",
> +                              "dclk_vp2";
> +                power-domains = <&power RK3568_PD_VO>;
> +                iommus = <&vop_mmu>;
> +                vop_out: ports {
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +                    vp0: port@0 {
> +                        reg = <0>;
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +                    };
> +                    vp1: port@1 {
> +                        reg = <1>;
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +                    };
> +                    vp2: port@2 {
> +                        reg = <2>;
> +                        #address-cells = <1>;
> +                        #size-cells = <0>;
> +                    };
> +                };
> +            };
> +        };
> -- 
> 2.30.2
> 
> 
