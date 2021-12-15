Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECA9C475DA6
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:39:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244713AbhLOQiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:38:03 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:33397 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231316AbhLOQiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 11:38:03 -0500
Received: by mail-oi1-f171.google.com with SMTP id q25so32551333oiw.0
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:38:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pyzDEpSOQgdCiOSbwrSV+3W9QMVtWPI913uVY3KbW+g=;
        b=vcMHS5Sfuii6RnTm1npXgl702ri796zI9Sn6FMubAjKbAl0yBqKmvwkInNr4fzM5rZ
         Hhrw3r4f7tOC26hlYokyHTP50+GCVIx+a+z6KY8c/It9hAAR7Gdak/9yrVUy7LszlycK
         RXaiIZdpbCDpYX/51DHLMkasxgXbF4Mfi/njtwAtflRo7GjXwXN/h/ywR+/hUSUw9+fY
         pJ102WjpQJN7QKAJ8tpd/Ar1KF7CIOkapwhdt659RfrW7hHuVPnY7leFM1w52v3yuF7N
         im9sKxLWAu1QUXeQJ1iLOQxc/MWhmBafk0CSuNs8GTDNjZXpCMpeyjlaoD2wTf5RZVk+
         3Cag==
X-Gm-Message-State: AOAM532RJXxQ98YvTdtHzPcKnD7oCmznh83FQp+tkUk/PNr16y8Ks9GA
        nx3KgN2Zh4TZiqkinHXMCv4119dI9Q==
X-Google-Smtp-Source: ABdhPJwchxUpomWZ84XMD8NECADxpL1WphGhTrDCmu+5xiuED9HghkfnDdHWfY06xUvJVQI/VrKNBA==
X-Received: by 2002:aca:581:: with SMTP id 123mr574137oif.13.1639586282530;
        Wed, 15 Dec 2021 08:38:02 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id h1sm537374oog.26.2021.12.15.08.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 08:38:01 -0800 (PST)
Received: (nullmailer pid 1441302 invoked by uid 1000);
        Wed, 15 Dec 2021 16:38:01 -0000
Date:   Wed, 15 Dec 2021 10:38:01 -0600
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
Subject: Re: [PATCH 10/18] dt-bindings: display: rockchip: Add binding for
 VOP2
Message-ID: <YboZ6aXQXZ/WReB1@robh.at.kernel.org>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-11-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208151230.3695378-11-s.hauer@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 08, 2021 at 04:12:22PM +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 118 ++++++++++++++++++
>  1 file changed, 118 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> new file mode 100644
> index 0000000000000..6533c4ae4ec3a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -0,0 +1,118 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings.

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
> +      - const: dclk_vp0
> +      - const: dclk_vp1
> +      - const: dclk_vp2
> +
> +  port:
> +    $ref: /schemas/graph.yaml#/properties/port

Please describe what the port represents.

> +
> +  assigned-clocks:
> +    maxItems: 2
> +
> +  assigned-clock-rates:
> +    maxItems: 2
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
> +  - port
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
> +                vop_out: port {
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +                    vp0_out_dsi0: endpoint@0 {
> +                        reg = <0>;
> +                        remote-endpoint = <&dsi0_in_vp0>;
> +                    };
> +                    vp0_out_hdmi: endpoint@1 {
> +                        reg = <1>;
> +                        remote-endpoint = <&hdmi0_in_vp0>;
> +                    };
> +                };
> +            };
> +        };
> -- 
> 2.30.2
> 
> 
