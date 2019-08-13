Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB5298B997
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 15:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728511AbfHMNJt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 09:09:49 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:57320 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727311AbfHMNJs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 09:09:48 -0400
Received: from pendragon.ideasonboard.com (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 356452B2;
        Tue, 13 Aug 2019 15:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1565701786;
        bh=QYHmqFs2TTOoZVXKNm0ZlqOIRnSvZEPCKRYSJNgUsdk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rXBlLmILFa5H++fneGurs6ZDZqY5uS58kfgoZEdLVHKsl+zaC4sNm62B0QXEdz57g
         2r5LwKcxRt9oWaTXkwlCAqdae+0CCYaPV9xpXbO+csV34IWFiWDGkQai+CG5jBPZqS
         /69s7+vnu73d1G97/mAiLO6FcsDKLLfeKmQRLAYw=
Date:   Tue, 13 Aug 2019 16:09:43 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/9] dt-bindings: display: panel: Add bindings for NEC
 NL8048HL11 panel
Message-ID: <20190813130943.GF5009@pendragon.ideasonboard.com>
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
 <20190810231048.1921-4-laurent.pinchart@ideasonboard.com>
 <CAL_Jsq+NO+s1Wz5AYKzVqC=ki0mHtK8dr3namdt82DvnDebeyw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+NO+s1Wz5AYKzVqC=ki0mHtK8dr3namdt82DvnDebeyw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, Aug 12, 2019 at 01:18:39PM -0600, Rob Herring wrote:
> On Sat, Aug 10, 2019 at 5:10 PM Laurent Pinchart wrote:
> >
> > The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB
> > parallel data interface and an SPI control interface.
> >
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> > Changes since v1:
> >
> > - Convert to YAML
> > ---
> >  .../display/panel/nec,nl8048hl11.yaml         | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> > new file mode 100644
> > index 000000000000..cc3d40975828
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/nec,nl8048hl11.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NEC NL8048HL11 4.1" WVGA TFT LCD panel
> > +
> > +description:
> > +  The NEC NL8048HL11 is a 4.1" WVGA TFT LCD panel with a 24-bit RGB parallel
> > +  data interface and an SPI control interface.
> > +
> > +maintainers:
> > +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: nec,nl8048hl11
> > +
> > +  label: true
> > +  reset-gpios: true
> > +  port: true
> > +
> > +required:
> > +  - compatible
> > +  - reset-gpios
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> 
> Your example will fail on 'make dt_binding_check'...

I wasn't aware of this. I've now read writing-schema.md and will make
sure to submit bindings that pass the checks. I'll address the issues
your pointed out below for the next version.

> > +  - |
> > +    lcd_panel: panel {
> 
> SPI devices have to have a minimal SPI controller parent. Primarily
> just #size-cells and #address-cells are needed.
> 
> 'reg' is missing here too.
> 
> > +      compatible = "nec,nl8048hl11";
> > +      spi-max-frequency = <10000000>;
> 
> This needs to be listed in properties ideally with some constraints.
> 
> > +
> > +      reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;
> 
> And GPIO_ACTIVE_LOW. You have to add includes you need.
> 
> > +
> > +      port {
> > +        lcd_in: endpoint {
> > +          remote-endpoint = <&dpi_out>;
> > +        };
> > +      };
> > +    };
> > +
> > +...

-- 
Regards,

Laurent Pinchart
