Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB64028560E
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 03:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726197AbgJGBMr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 21:12:47 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39176 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725996AbgJGBMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 21:12:47 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id EB78E1452;
        Wed,  7 Oct 2020 03:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602033165;
        bh=jRURnSu96LT/+1J86jK0DIV6fv3wymFYEQQ07cchJ7c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=wZAJ29Jmm4SNnkJaxJuhRJAto67u9hf7z75RB1W/RB+NM83XoK56yiUb+Iggk13ng
         a6dzS2LRVDXF0HyKMSm2ZCN0egTmdp125TaNgIKWVGjuIauqhEzUV4t76iiqIpn+C6
         5mes/DUVzjGZ/BzBD/9OAtgRyziW4NARkA7E+ybc=
Date:   Wed, 7 Oct 2020 04:12:03 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Stefan Agner <stefan@agner.ch>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/8] dt-bindings: display: mxsfb: Add and fix compatible
 strings
Message-ID: <20201007011203.GA30985@pendragon.ideasonboard.com>
References: <20200813012910.13576-1-laurent.pinchart@ideasonboard.com>
 <20200813012910.13576-3-laurent.pinchart@ideasonboard.com>
 <c9e8e63c2ac1e1ecfd8e664e2605b81f@agner.ch>
 <20200823232603.GO6002@pendragon.ideasonboard.com>
 <58ad6bef353ee25e5c548c0d950f7e46@agner.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <58ad6bef353ee25e5c548c0d950f7e46@agner.ch>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

On Mon, Aug 24, 2020 at 04:19:23PM +0200, Stefan Agner wrote:
> On 2020-08-24 01:26, Laurent Pinchart wrote:
> > On Fri, Aug 21, 2020 at 04:53:56PM +0200, Stefan Agner wrote:
> >> On 2020-08-13 03:29, Laurent Pinchart wrote:
> >> > Additional compatible strings have been added in DT source for the
> >> > i.MX6SL, i.MX6SLL, i.MX6UL and i.MX7D without updating the bindings.
> >> > Most of the upstream DT sources use the fsl,imx28-lcdif compatible
> >> > string, which mostly predates the realization that the LCDIF in the
> >> > i.MX6 and newer SoCs have extra features compared to the i.MX28.
> >>
> >> Agreed, we should add fsl,imx6sx-lcdif for those devices.
> >>
> >> But shouldn't we also keep fsl,imx28-lcdif? From what I can tell, the
> >> devices can be driven by a driver only supporting fsl,imx28-lcdif
> >> semantics, right?
> > 
> > Isn't it kept by this patch ?
> > 
> >> > Update the bindings to add the missing compatible strings, with the
> >> > correct fallback values. This fails to validate some of the upstream DT
> >> > sources. Instead of adding the incorrect compatible fallback to the
> >> > binding, the sources should be updated separately.
> >> >
> >> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >> > ---
> >> >  .../devicetree/bindings/display/mxsfb.yaml     | 18 +++++++++++++-----
> >> >  1 file changed, 13 insertions(+), 5 deletions(-)
> >> >
> >> > diff --git a/Documentation/devicetree/bindings/display/mxsfb.yaml
> >> > b/Documentation/devicetree/bindings/display/mxsfb.yaml
> >> > index 202381ec5bb7..ec6533b1d4a3 100644
> >> > --- a/Documentation/devicetree/bindings/display/mxsfb.yaml
> >> > +++ b/Documentation/devicetree/bindings/display/mxsfb.yaml
> >> > @@ -15,11 +15,19 @@ description: |
> >> >
> >> >  properties:
> >> >    compatible:
> >> > -    enum:
> >> > -      - fsl,imx23-lcdif
> >> > -      - fsl,imx28-lcdif
> >> > -      - fsl,imx6sx-lcdif
> >> > -      - fsl,imx8mq-lcdif
> >> > +    oneOf:
> >> > +      - enum:
> >> > +          - fsl,imx23-lcdif
> >> > +          - fsl,imx28-lcdif
> > 
> > Here -----------------^
> > 
> > The binding now support any of "fsl,imx23-lcdif", "fsl,imx28-lcdif" or
> > "fsl,imx6sx-lcdif" alone, or "fsl,imx6sx-lcdif" with another
> > device-specific compatible string. The driver supports the three base
> > compatible strings, for V3, V4 and V6 of the IP core.
> 
> The binding yes, but I mean the device descriptions in the device tree.
> 
> Since the device can be driven by a older kernel which only knows about
> the fsl,imx28-lcdif compatible string, we could keep that compatible.

I don't think we need to care about forward-compatibility. If one
updates the device tree, it's expected that the kernel should be updated
accordingly. The bindings should in my opinion document the current
recommended device tree properties, drivers have to ensure backward
compatibility with older DT, but the other way around shouldn't be
required.

> From what I can tell, we can add both safely, e.g.
> 
> compatible = "fsl,imx6sx-lcdif", "fsl,imx28-lcdif"
> 
> From how I read the description this now replaces "fsl,imx28-lcdif" with
> "fsl,imx6sx-lcdif" for the devices supporting the additional features,
> e.g.:
> 
> --- a/arch/arm/boot/dts/imx6sl.dtsi
> +++ b/arch/arm/boot/dts/imx6sl.dtsi
> @@ -769,7 +769,7 @@ epdc: epdc@20f4000 {
>              };
>  
>              lcdif: lcdif@20f8000 {
> -                compatible = "fsl,imx6sl-lcdif", "fsl,imx28-lcdif";
> +                compatible = "fsl,imx6sl-lcdif", "fsl,imx6sx-lcdif";
>                  reg = <0x020f8000 0x4000>;
>                  interrupts = <0 39 IRQ_TYPE_LEVEL_HIGH>;
>                  clocks = <&clks IMX6SL_CLK_LCDIF_PIX>,
> 
> >> > +          - fsl,imx6sx-lcdif
> >> > +      - items:
> >> > +        - enum:
> >> > +          - fsl,imx6sl-lcdif
> >> > +          - fsl,imx6sll-lcdif
> >> > +          - fsl,imx6ul-lcdif
> >> > +          - fsl,imx7d-lcdif
> >> > +          - fsl,imx8mq-lcdif
> >> > +        - const: fsl,imx6sx-lcdif
> >> >
> >> >    reg:
> >> >      maxItems: 1

-- 
Regards,

Laurent Pinchart
