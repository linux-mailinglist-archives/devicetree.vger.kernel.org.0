Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9844A286302
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 18:02:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728912AbgJGQCf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 12:02:35 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:44827 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728454AbgJGQCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 12:02:35 -0400
Received: by mail-oi1-f195.google.com with SMTP id x62so2936807oix.11
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 09:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QN6qh59qG42Kq9JjP8pNGfSZAvFCNq3X7CnGqx+yDSo=;
        b=XDWqypxbZ57AWo/FgsWfVMp7A9ZEAyAnITV3brQxVlQIyFGH9qQBuXuLaDlau+yFHE
         IPraIKWG+YdSPGd1KzIPcsxlpqpgvN2LA+wOtSVzq/3KvyRQl2vK21G9S9H34J/O22f9
         w9AWjaKX0XkgObG3M9sE2zMtE7lg4exfUUWhTtyXA74gXSPsp9f6js3lU6Qjidhvzjrg
         +vzsLXskaHcrm58G5GtOaGWxqy73tdLiPhvYgTWzur20t2LqSQk5ob6XYynAovWcYYdi
         /h3FojR0L4sCznuLnvH49Mo3U/qjfnYo5bnYc9vQffWYL0yu/wkB10GnzOsUAZO7Nt/+
         8ffQ==
X-Gm-Message-State: AOAM5307invHf34m/W1nyUdgMgCK8ndB2jm1+8CvHLN1fzN6/ku5T57v
        BPc16St5jCzknkCiurB8uQ==
X-Google-Smtp-Source: ABdhPJyuaLUxVZizfTnOZE9GdpOW00ZyuvMQGMKExsoAA2XA1kskDCIpbbBsiz1JxNDAk8IZtr1zqg==
X-Received: by 2002:aca:40f:: with SMTP id 15mr2265809oie.44.1602086554103;
        Wed, 07 Oct 2020 09:02:34 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id f26sm1868971otq.50.2020.10.07.09.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2020 09:02:33 -0700 (PDT)
Received: (nullmailer pid 300604 invoked by uid 1000);
        Wed, 07 Oct 2020 16:02:32 -0000
Date:   Wed, 7 Oct 2020 11:02:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, Stefan Agner <stefan@agner.ch>,
        Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/7] dt-bindings: display: mxsfb: Convert binding to
 YAML
Message-ID: <20201007160232.GA299241@bogus>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
 <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
 <20201007160020.GA292355@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201007160020.GA292355@bogus>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 07, 2020 at 11:00:20AM -0500, Rob Herring wrote:
> On Wed, Oct 07, 2020 at 04:24:32AM +0300, Laurent Pinchart wrote:
> > Convert the mxsfb binding to YAML. The deprecated binding is dropped, as
> > neither the DT sources nor the driver support it anymore. The converted
> > binding is named fsl,lcdif.yaml to match the usual bindings naming
> > scheme.
> > 
> > The compatible strings are messy, and DT sources use different kinds of
> > combination of documented and undocumented values. Keep it simple for
> > now, and update the example to make it valid. Aligning the binding with
> > the existing DT sources will be performed separately.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > --
> > Changes since v1:
> > 
> > - Drop unneeded quotes in string
> > - Replace minItems with maxItems in conditional check
> > - Add blank line before ...
> > - Squash the rename in this commit
> > ---
> >  .../bindings/display/fsl,lcdif.yaml           | 116 ++++++++++++++++++
> >  .../devicetree/bindings/display/mxsfb.txt     |  87 -------------
> >  MAINTAINERS                                   |   2 +-
> >  3 files changed, 117 insertions(+), 88 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/display/mxsfb.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > new file mode 100644
> > index 000000000000..063bb8c58114
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > @@ -0,0 +1,116 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Freescale/NXP i.MX LCD Interface (LCDIF)
> > +
> > +maintainers:
> > +  - Marek Vasut <marex@denx.de>
> > +  - Stefan Agner <stefan@agner.ch>
> > +
> > +description: |
> > +  (e)LCDIF display controller found in the Freescale/NXP i.MX SoCs.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx23-lcdif
> > +      - fsl,imx28-lcdif
> > +      - fsl,imx6sx-lcdif
> > +      - fsl,imx8mq-lcdif
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Pixel clock
> > +      - description: Bus clock
> > +      - description: Display AXI clock
> > +    minItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: pix
> > +      - const: axi
> > +      - const: disp_axi
> > +    minItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  port:
> > +    description: The LCDIF output port
> > +    type: object
> > +
> > +    properties:
> > +      endpoint:
> 
> What happened on the graph binding schema work? I started a meta-schema 
> for it BTW.
> 
> You can drop all the endpoint parts. With that,

NM, I see in patch 3 you need it.

> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> > +        type: object
> > +
> > +        properties:
> > +          remote-endpoint:
> > +            $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +        required:
> > +          - remote-endpoint
> > +
> > +        additionalProperties: false
> > +
> > +    additionalProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - interrupts
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: fsl,imx6sx-lcdif
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 2
> > +          maxItems: 3
> > +        clock-names:
> > +          minItems: 2
> > +          maxItems: 3
> > +      required:
> > +        - clock-names
> > +    else:
> > +      properties:
> > +        clocks:
> > +          maxItems: 1
> > +        clock-names:
> > +          maxItems: 1
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/imx6sx-clock.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +
> > +    display-controller@2220000 {
> > +        compatible = "fsl,imx6sx-lcdif";
> > +        reg = <0x02220000 0x4000>;
> > +        interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
> > +                 <&clks IMX6SX_CLK_LCDIF_APB>,
> > +                 <&clks IMX6SX_CLK_DISPLAY_AXI>;
> > +        clock-names = "pix", "axi", "disp_axi";
> > +
> > +        port {
> > +            endpoint {
> > +                remote-endpoint = <&panel_in>;
> > +            };
> > +        };
> > +    };
> > +
> > +...
> > diff --git a/Documentation/devicetree/bindings/display/mxsfb.txt b/Documentation/devicetree/bindings/display/mxsfb.txt
> > deleted file mode 100644
> > index c985871c46b3..000000000000
> > --- a/Documentation/devicetree/bindings/display/mxsfb.txt
> > +++ /dev/null
> > @@ -1,87 +0,0 @@
> > -* Freescale MXS LCD Interface (LCDIF)
> > -
> > -New bindings:
> > -=============
> > -Required properties:
> > -- compatible:	Should be "fsl,imx23-lcdif" for i.MX23.
> > -		Should be "fsl,imx28-lcdif" for i.MX28.
> > -		Should be "fsl,imx6sx-lcdif" for i.MX6SX.
> > -		Should be "fsl,imx8mq-lcdif" for i.MX8MQ.
> > -- reg:		Address and length of the register set for LCDIF
> > -- interrupts:	Should contain LCDIF interrupt
> > -- clocks:	A list of phandle + clock-specifier pairs, one for each
> > -		entry in 'clock-names'.
> > -- clock-names:	A list of clock names. For MXSFB it should contain:
> > -    - "pix" for the LCDIF block clock
> > -    - (MX6SX-only) "axi", "disp_axi" for the bus interface clock
> > -
> > -Required sub-nodes:
> > -  - port: The connection to an encoder chip.
> > -
> > -Example:
> > -
> > -	lcdif1: display-controller@2220000 {
> > -		compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif";
> > -		reg = <0x02220000 0x4000>;
> > -		interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
> > -		clocks = <&clks IMX6SX_CLK_LCDIF1_PIX>,
> > -			 <&clks IMX6SX_CLK_LCDIF_APB>,
> > -			 <&clks IMX6SX_CLK_DISPLAY_AXI>;
> > -		clock-names = "pix", "axi", "disp_axi";
> > -
> > -		port {
> > -			parallel_out: endpoint {
> > -				remote-endpoint = <&panel_in_parallel>;
> > -			};
> > -		};
> > -	};
> > -
> > -Deprecated bindings:
> > -====================
> > -Required properties:
> > -- compatible:	Should be "fsl,imx23-lcdif" for i.MX23.
> > -		Should be "fsl,imx28-lcdif" for i.MX28.
> > -- reg:		Address and length of the register set for LCDIF
> > -- interrupts:	Should contain LCDIF interrupts
> > -- display:	phandle to display node (see below for details)
> > -
> > -* display node
> > -
> > -Required properties:
> > -- bits-per-pixel:	<16> for RGB565, <32> for RGB888/666.
> > -- bus-width:		number of data lines.  Could be <8>, <16>, <18> or <24>.
> > -
> > -Required sub-node:
> > -- display-timings:	Refer to binding doc display-timing.txt for details.
> > -
> > -Examples:
> > -
> > -lcdif@80030000 {
> > -	compatible = "fsl,imx28-lcdif";
> > -	reg = <0x80030000 2000>;
> > -	interrupts = <38 86>;
> > -
> > -	display: display {
> > -		bits-per-pixel = <32>;
> > -		bus-width = <24>;
> > -
> > -		display-timings {
> > -			native-mode = <&timing0>;
> > -			timing0: timing0 {
> > -				clock-frequency = <33500000>;
> > -				hactive = <800>;
> > -				vactive = <480>;
> > -				hfront-porch = <164>;
> > -				hback-porch = <89>;
> > -				hsync-len = <10>;
> > -				vback-porch = <23>;
> > -				vfront-porch = <10>;
> > -				vsync-len = <10>;
> > -				hsync-active = <0>;
> > -				vsync-active = <0>;
> > -				de-active = <1>;
> > -				pixelclk-active = <0>;
> > -			};
> > -		};
> > -	};
> > -};
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index f0dd1f01703a..87e20680c104 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -11910,7 +11910,7 @@ M:	Stefan Agner <stefan@agner.ch>
> >  L:	dri-devel@lists.freedesktop.org
> >  S:	Supported
> >  T:	git git://anongit.freedesktop.org/drm/drm-misc
> > -F:	Documentation/devicetree/bindings/display/mxsfb.txt
> > +F:	Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> >  F:	drivers/gpu/drm/mxsfb/
> >  
> >  MYLEX DAC960 PCI RAID Controller
> > -- 
> > Regards,
> > 
> > Laurent Pinchart
> > 
