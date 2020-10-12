Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D680428AE15
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 08:12:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727174AbgJLGMp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 02:12:45 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:47254 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727172AbgJLGMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 02:12:45 -0400
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id B816B2001F;
        Mon, 12 Oct 2020 08:12:39 +0200 (CEST)
Date:   Mon, 12 Oct 2020 08:12:38 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        daniel.vetter@intel.com, edmund.j.dea@intel.com
Subject: Re: [PATCH v9 1/5] dt-bindings: display: Add support for Intel
 KeemBay Display
Message-ID: <20201012061238.GB512501@ravnborg.org>
References: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
 <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com>
 <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dc12f5ea-60bc-8a09-9b93-a4472183adc4@baylibre.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=S433PrkP c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=QyXUC8HyAAAA:8 a=gEfo2CItAAAA:8
        a=fcpFeO9JvroVZpy7AW0A:9 a=CjuIK1q_8ugA:10 a=sptkURWiP4Gy88Gu7hUp:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Neil/Anitha.

On Fri, Oct 09, 2020 at 11:09:45AM +0200, Neil Armstrong wrote:
> Hi,
> 
> On 09/10/2020 03:03, Anitha Chrisanthus wrote:
> > This patch adds bindings for Intel KeemBay Display
> > 
> > v2: review changes from Rob Herring
> > 
> > Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> > ---
> >  .../bindings/display/intel,keembay-display.yaml    | 99 ++++++++++++++++++++++
> >  1 file changed, 99 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/intel,keembay-display.yaml b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> > new file mode 100644
> > index 0000000..a38493d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
> > @@ -0,0 +1,99 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
(GPL-2.0-only OR BSD-2-Clause) for new bindings please.

> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/intel,keembay-display.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Devicetree bindings for Intel Keem Bay display controller
> > +
> > +maintainers:
> > +  - Anitha Chrisanthus <anitha.chrisanthus@intel.com>
> > +  - Edmond J Dea <edmund.j.dea@intel.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: intel,kmb_display
> > +
> > +  reg:
> > +    items:
> > +      - description: Lcd registers range
> > +      - description: Mipi registers range
> 
> Looking at the registers, the MIPI transceiver seems to be a separate IP,
> same for D-PHY which should have a proper PHY driver instead of beeing handled
> here.

Looking at the register definitiosn and the code the split in a display
block and a bridge block looks reasonable.
The bridge block would include the MIPI<->DSI part which includes the
PHY and the Msscam parts too. The PHY is an integrated part of the
MIPI<->DSI IP so really not eligeble for a dedicated node in the DT.
Likewise the Msscam, whatevet that is, is integrated with the
MIPI<->DSI.

So all in all:
- One display DT Schema
- One bridge DT Schema
  The bridge DT Schema will then have an input port and an output port.


> 
> > +      - description: Msscam registers range
> 
> MSScam here seems to be a clock and reset controller for the LCD and MIPI IPs,
> thus should be handler out of DRM.
Reading the register definitions and the code it looks very integrated
so as I wrote above, no dedicated DT Schema should be needed here.

> 
> > +
> > +  reg-names:
> > +    items:
> > +      - const: lcd
> > +      - const: mipi
> > +      - const: msscam
> > +
> > +  clocks:
> > +    items:
> > +      - description: LCD controller clock
> > +      - description: Mipi DSI clock
> > +      - description: Mipi DSI econfig clock
> > +      - description: Mipi DSI config clock
> > +      - description: System clock or pll0 clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: clk_lcd
> > +      - const: clk_mipi
> > +      - const: clk_mipi_ecfg
> > +      - const: clk_mipi_cfg
> > +      - const: clk_pll0
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  encoder-slave:
> > +    description: bridge node entry for mipi to hdmi converter
This node should go, as we shall find the bridge using the ports.

> > +
> > +  port:
> > +    type: object
> > +    description: >
> > +          Port node with one endpoint connected to mipi to hdmi converter node.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> > +  - encoder-slave
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #define MOVISOC_KMB_MSS_AUX_LCD
> > +    #define MOVISOC_KMB_MSS_AUX_MIPI_TX0
> > +    #define MOVISOC_KMB_MSS_AUX_MIPI_ECFG
> > +    #define MOVISOC_KMB_MSS_AUX_MIPI_CFG
> > +    #define MOVISOC_KMB_A53_PLL_0_OUT_0
> > +    display@20900000 {
> > +      compatible = "intel,keembay-display";
> > +      reg = <0x20930000 0x3000>,
> > +            <0x20900000 0x4000>,
> > +            <0x20910000 0x30>;
> > +      reg-names = "lcd", "mipi", "msscam";
> > +      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> > +      clocks = <&scmi_clk MOVISOC_KMB_MSS_AUX_LCD>,
> > +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_TX0>,
> > +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_ECFG>,
> > +               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_CFG>,
> > +               <&scmi_clk MOVISOC_KMB_A53_PLL_0_OUT_0>;
> > +      clock-names = "clk_lcd", "clk_mipi", "clk_mipi_ecfg",
> > +                    "clk_mipi_cfg", "clk_pll0";
> > +
> > +      encoder-slave = <&adv7535>;
> > +
> > +      port {
> > +            dsi_output: endpoint {
> > +                remote-endpoint = <&adv7535_input>;
> > +            };
> > +      };
> > +    };
> > 
> 
> Anitha, Daniel, this keembay driver should be architectured like other ARM-like display
> controllers, with separate drivers for MIPI DSI bridge and msscam clock & reset controller.
OK, lets decide on the binding first, and then discuss the driver
afterwards.

	Sam
