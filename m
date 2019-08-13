Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D09238AEEB
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 07:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbfHMFrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 01:47:42 -0400
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:41187 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725781AbfHMFrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 01:47:42 -0400
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (Authenticated sender: maxime.ripard@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1381A20003;
        Tue, 13 Aug 2019 05:47:38 +0000 (UTC)
Date:   Tue, 13 Aug 2019 07:47:38 +0200
From:   Maxime Ripard <maxime.ripard@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller
 to a schema
Message-ID: <20190813054738.ge2jdu6qn2vaoasd@flea>
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
 <20190723132658.5068-2-maxime.ripard@bootlin.com>
 <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, Jul 23, 2019 at 10:32:41AM -0600, Rob Herring wrote:
> On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The Allwinner SoCs have an interrupt controller called NMI supported in
> > Linux, with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
> >  .../allwinner,sunxi-nmi.txt                   | 29 -------
> >  2 files changed, 83 insertions(+), 29 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > new file mode 100644
> > index 000000000000..cb8077b0c8dd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > @@ -0,0 +1,83 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - allwinner,sun6i-a31-r-intc
> > +          - allwinner,sun7i-a20-sc-nmi
> > +          - allwinner,sun9i-a80-sc-nmi
>
> This should have all the possible compatibles in case all are not
> listed.

I'm sorry, but I'm not sure I understood what you meant here :/

>
> > +
> > +          # Deprecated
> > +          - allwinner,sun6i-a31-sc-nmi
>
> I know we already did things this way before, but perhaps this should
> be listed below with the 'deprecated' property. The tools can include
> it in select, but then remove it from compatible property.

Can we have more than just one of the choice for an enum?

In this particular case, since we have oneOf it's not really too much
of an issue, but there's a significant amount of users of enum for the
compatibles.

Thanks!
Maxime

> > +
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  "#interrupt-cells":
> > +    const: 2
> > +    description:
> > +      The first cell is the IRQ number, the second cell the trigger
> > +      type as defined in interrupt.txt in this directory.
> > +
> > +  compatible:
> > +    oneOf:
> > +      - const: allwinner,sun6i-a31-r-intc
> > +      - const: allwinner,sun7i-a20-sc-nmi
> > +      - items:
> > +        - const: allwinner,sun8i-a83t-r-intc
> > +        - const: allwinner,sun6i-a31-r-intc
> > +      - const: allwinner,sun9i-a80-sc-nmi
> > +      - items:
> > +        - const: allwinner,sun50i-a64-r-intc
> > +        - const: allwinner,sun6i-a31-r-intc
> > +      - items:
> > +        - const: allwinner,sun50i-h6-r-intc
> > +        - const: allwinner,sun6i-a31-r-intc
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  interrupt-controller: true
> > +
> > +required:
> > +  - "#interrupt-cells"
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupt-controller
> > +
> > +# FIXME: We should set it, but it would report all the generic
> > +# properties as additional properties.
> > +# additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    interrupt-controller@1c00030 {
> > +        compatible = "allwinner,sun7i-a20-sc-nmi";
> > +        interrupt-controller;
> > +        #interrupt-cells = <2>;
> > +        reg = <0x01c00030 0x0c>;
> > +        interrupt-parent = <&gic>;
> > +        interrupts = <0 0 4>;
> > +    };
> > +
> > +...

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
