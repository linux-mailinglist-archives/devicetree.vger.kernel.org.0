Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 380634A6243
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 18:22:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241456AbiBARWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 12:22:36 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:34753 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbiBARWf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 12:22:35 -0500
Received: by mail-ot1-f45.google.com with SMTP id b17-20020a9d4791000000b005a17fc2dfc1so16910791otf.1
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 09:22:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZXG/HpK5iimHhno4a4gmqcNT8xzbRL3eWb4JTlbIiWA=;
        b=ZoHwGcH1wy6csoo5xk7bj+kb9VIJJGT7Vnsqlp7RXMuDARrebULMali19TuLNDDPrn
         ant/fL//4d47lnxkBHP+v2dZR/rFHQ9sZ3xnC/wRwPWorkdi7uD8Ko/blbQoLxL02r2v
         jwQxhgB1US4EVBVKULDeJ3bkoGL3nL/oYwQEJhhE62PSix68LSVxylmh+vQeqZomNBuO
         faBMCxM+ol160s8b4EnHwhuV7vwwMjEq7SuI9pO2p8mpQyIIBXXX+dyxgJ1Z2AfnyBXz
         K/YaHx4qZ/0RfBJwjUeOGLeWcUT4T0aiEqDG7ALQD4n0coEceojAY88JL07IhGAmrzqy
         Aiuw==
X-Gm-Message-State: AOAM5335t2MpWuhqUh5W1ja2CrzGS1tUHQlFm4xfZIRCQp96aLUv7hxp
        boq+ncLVOboZyx95DYbDsQ==
X-Google-Smtp-Source: ABdhPJyUvXkJDpPdLDNVyZW0OTXgSkoXrPNkaXMM14hMv3h2yJGcl0URslitlIeJWL8iqgqI2BIobg==
X-Received: by 2002:a05:6830:1e11:: with SMTP id s17mr14458124otr.347.1643736155108;
        Tue, 01 Feb 2022 09:22:35 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id s64sm13024778oos.0.2022.02.01.09.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 09:22:34 -0800 (PST)
Received: (nullmailer pid 235445 invoked by uid 1000);
        Tue, 01 Feb 2022 17:22:33 -0000
Date:   Tue, 1 Feb 2022 11:22:33 -0600
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
Subject: Re: [PATCH 17/27] dt-bindings: display: rockchip: Add binding for
 VOP2
Message-ID: <YflsWTaUexj3u9Je@robh.at.kernel.org>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-18-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220126145549.617165-18-s.hauer@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 26, 2022 at 03:55:39PM +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Changes since v3:
> - drop redundant _vop suffix from clock names
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> new file mode 100644
> index 000000000000..572cfb307c20
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
> +      - const: aclk
> +      - const: hclk
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
> +    $ref: /schemas/graph.yaml#/properties/ports
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
> +      port@2:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output endpoint of VP2
> +

> +  assigned-clocks: true
> +
> +  assigned-clock-rates: true
> +
> +  assigned-clock-parents: true

You can drop these. They are implicitly allowed with 'clocks'.

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
