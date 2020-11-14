Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C435C2B3081
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 21:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726112AbgKNUC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 15:02:58 -0500
Received: from asavdk4.altibox.net ([109.247.116.15]:58630 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726146AbgKNUC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Nov 2020 15:02:57 -0500
Received: from ravnborg.org (unknown [188.228.123.71])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 9F7B08054C;
        Sat, 14 Nov 2020 21:02:52 +0100 (CET)
Date:   Sat, 14 Nov 2020 21:02:51 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Sean Paul <sean@poorly.run>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] dt-bindings: display: mcde: Convert to YAML schema
Message-ID: <20201114200251.GD3900471@ravnborg.org>
References: <20201111130754.2283993-1-linus.walleij@linaro.org>
 <20201111205857.GB3013948@ravnborg.org>
 <CACRpkdaUZMNQn7bvmPKP+kbqsW66HrS0RTDkUjrAW15EEf+8EA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdaUZMNQn7bvmPKP+kbqsW66HrS0RTDkUjrAW15EEf+8EA@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VafZwmh9 c=1 sm=1 tr=0
        a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
        a=kj9zAlcOel0A:10 a=7gkXJVJtAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
        a=1O0MGL_9nWPLu35SrL0A:9 a=CjuIK1q_8ugA:10 a=E9Po1WZjFZOl8hwRPBS3:22
        a=AjGcO6oz07-iQ99wixmX:22 a=cvBusfyB2V15izCimMoJ:22
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 12, 2020 at 01:19:34PM +0100, Linus Walleij wrote:
> On Wed, Nov 11, 2020 at 9:59 PM Sam Ravnborg <sam@ravnborg.org> wrote:
> > On Wed, Nov 11, 2020 at 02:07:54PM +0100, Linus Walleij wrote:
> 
> > > -- clocks: an array of the MCDE clocks in this strict order:
> > > -  MCDECLK (main MCDE clock), LCDCLK (LCD clock), PLLDSI
> > > -  (HDMI clock), DSI0ESCLK (DSI0 energy save clock),
> >
> > > -  DSI1ESCLK (DSI1 energy save clock), DSI2ESCLK (DSI2 energy
> > > -  save clock)
> >
> > I did not find these two clocks in the binding below.
> 
> The old bindings are wrong. These clocks belong on the DSI
> host adapters, so they are in this part of the binding:

Please include this info in the changelog to avoid confusing others.

> 
> +      clocks:
> +        description: phandles to the high speed and low power (energy
> save) clocks
> +          the high speed clock is not present on the third (dsi2) block, so it
> +          should only have the "lp" clock
> +        minItems: 1
> +        maxItems: 2
> +
> +      clock-names:
> +        oneOf:
> +          - items:
> +              - const: hs
> +              - const: lp
> +          - items:
> +              - const: lp
> 
> All device trees have these in the right place, we just didn't notice that
> the bindings were wrong exactly because we weren't using
> formal YAML syntax. Now the strictness of this parser makes me
> fix my bugs...
> 
> > > +  port:
> > > +    type: object
> > > +    description:
> > > +      A DPI port node with endpoint definitions as defined in
> > > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> > > +
> > > +  "#address-cells":
> > > +    const: 1
> > > +
> > > +  "#size-cells":
> > > +    const: 1
> > > +
> > > +  ranges: true
> >
> > This is a transition from .txt to DT Schema so OK with this sub-node.
> > But otherwise the dsi node should have been linked using graph nodes.
> > So OK - just thinking out loud.
> 
> Actually when I introduced the MCDE DSI last year at first I used port
> and graphs:
> https://lore.kernel.org/dri-devel/20190207083647.20615-3-linus.walleij@linaro.org/
> Then Rob asked "why?":
> https://lore.kernel.org/dri-devel/20190225223124.GA29057@bogus/
> And then I removed it, as having a panel directly under a
> DSI host is fine.
OK, thanks for the explanation.

> 
> > > +patternProperties:
> > > +  "^dsi@[0-9a-f]+$":
> > > +    description: subnodes for the three DSI host adapters
> > > +    type: object
> > > +    allOf:
> > > +      - $ref: dsi-controller.yaml#
> (...)
> > The dsi nodes needs the #address-cells and #size-cells - at least if a
> > panel node is specified.
> 
> This is specified in the referenced schema dsi-controller.yaml.
> 
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - clock-names
> > > +  - epod-supply
> > > +  - vana-supply
> > > +
> > > +additionalProperties: true
> >
> > Why are additional properties allowed here?
> 
> It's because the SoC peripherals have things like pin control
> (currently handled by a quirk in the YAML validator I think) and
> resets is something else I will likely add at some point, and then
> this would result in warnings unless I lock-step changes in the
> schema and DTS files.
> 
> I *can* disallow this if you insist.
Add reset now as an optional property and you are covered.
The HW does not change, and this describes the HW and not the drivers.

	Sam
