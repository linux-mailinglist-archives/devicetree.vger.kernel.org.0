Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97080421AF9
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 02:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbhJEANP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 20:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbhJEANP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 20:13:15 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C72CC061745
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 17:11:25 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id C663125B;
        Tue,  5 Oct 2021 02:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1633392684;
        bh=2zCePWCbzdTq1N5atWYuAzi+lrFHg9m463Bwkwcqwyg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pKSkJlaFDzegWXzAkH9Mn/V7M2xUpga2SiJEtCOeQwr6yMwtKwHFXMfH0LexzifDP
         pCFGvbqPmtZ4TSAS1vUOgH6vuRSIscSKahQa3oMcCFJMChCH0En4g12K+9HDu9Eq3g
         EzvSrh5YIwlgDZ5tGUK5J9bCsAkYxb8CL+TBCwUc=
Date:   Tue, 5 Oct 2021 03:11:17 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH V4 1/2] dt-bindings: display: bridge: lvds-codec:
 Document LVDS data mapping select
Message-ID: <YVuYJVjCDxdwcHd1@pendragon.ideasonboard.com>
References: <20210727161357.8842-1-marex@denx.de>
 <YVuWWz+njDNy99sz@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YVuWWz+njDNy99sz@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 05, 2021 at 03:03:40AM +0300, Laurent Pinchart wrote:
> Hi Marek,
> 
> Thank you for the patch.
> 
> On Tue, Jul 27, 2021 at 06:13:56PM +0200, Marek Vasut wrote:
> > Decoder input LVDS format is a property of the decoder chip or even
> > its strapping. Add DT property data-mapping the same way lvds-panel
> > does, to define the LVDS data mapping.
> > 
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: devicetree@vger.kernel.org
> > To: dri-devel@lists.freedesktop.org
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

I think I have to retract this, see below :-(

> And all my apologies for the delay.
> 
> > ---
> > V2: - Use allOf
> >     - Move the data-mapping to endpoint
> > V3: - Rebase on V2 submitted a while ago, reinstate changelog
> >     - Drop the allOf and un-rebase on previous pclk patch
> > V4: - port@1, remove $ref: /schemas/graph.yaml#/properties/port and
> >       add $ref: /schemas/graph.yaml#/$defs/port-base
> > ---
> >  .../bindings/display/bridge/lvds-codec.yaml   | 33 ++++++++++++++++++-
> >  1 file changed, 32 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > index 304a1367faaa7..c0400c60f272a 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > @@ -55,11 +55,26 @@ properties:
> >            For LVDS decoders, port 0 is the LVDS input
> >  
> >        port@1:
> > -        $ref: /schemas/graph.yaml#/properties/port
> > +        $ref: /schemas/graph.yaml#/$defs/port-base
> >          description: |
> >            For LVDS encoders, port 1 is the LVDS output
> >            For LVDS decoders, port 1 is the parallel output
> >  
> > +        properties:
> > +          endpoint:
> > +            $ref: /schemas/media/video-interfaces.yaml#
> > +            unevaluatedProperties: false
> > +
> > +            properties:
> > +              data-mapping:
> > +                enum:
> > +                  - jeida-18
> > +                  - jeida-24
> > +                  - vesa-24
> > +                description: |
> > +                  The color signals mapping order. See details in
> > +                  Documentation/devicetree/bindings/display/panel/lvds.yaml
> > +

Shouldn't this be for port 0 ? For decoders, port 1 is the parallel
side, not the LVDS side.

With this fixed, you can retain the

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> >      required:
> >        - port@0
> >        - port@1
> > @@ -71,6 +86,22 @@ properties:
> >  
> >    power-supply: true
> >  
> > +if:
> > +  not:
> > +    properties:
> > +      compatible:
> > +        contains:
> > +          const: lvds-decoder
> > +then:
> > +  properties:
> > +    ports:
> > +      properties:
> > +        port@1:
> > +          properties:
> > +            endpoint:
> > +              properties:
> > +                data-mapping: false
> > +
> >  required:
> >    - compatible
> >    - ports

-- 
Regards,

Laurent Pinchart
