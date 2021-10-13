Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 874AE42BBC7
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 11:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238942AbhJMJkG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 05:40:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237836AbhJMJkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 05:40:06 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F31AC061570
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 02:38:03 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 85ABF291;
        Wed, 13 Oct 2021 11:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1634117881;
        bh=HD/eg9/BLQa2IhZm34NN/3Op2QH9skwkY5+JYv60cuU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Sr4wXtE9ZExL0sB6+JNnjr4BVGpKVY+yWegOX08vOqX9cEmFokKVM5VZRZzuMyjHY
         I8xeocDSwB3ItqzjDOlWfnrfcMfSUF0ZMaXzBX13aFlJ7RPA5t5LDLn80S9W766qoj
         +ogMzwXRG8Qm5HEBFkpX/I/gMNMjp2M55dtTDgQE=
Date:   Wed, 13 Oct 2021 12:37:47 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 3/4] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc
 supply bindings
Message-ID: <YWao69+QEK8Fhi/x@pendragon.ideasonboard.com>
References: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
 <20211012064843.298104-4-alexander.stein@ew.tq-group.com>
 <20211013074722.7y7ug3eri4euknza@gilmour>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211013074722.7y7ug3eri4euknza@gilmour>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Wed, Oct 13, 2021 at 09:47:22AM +0200, Maxime Ripard wrote:
> On Tue, Oct 12, 2021 at 08:48:42AM +0200, Alexander Stein wrote:
> > Add a VCC regulator which needs to be enabled before the EN pin is
> > released.
> > 
> > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml     | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > index a5779bf17849..49ace6f312d5 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > @@ -32,6 +32,9 @@ properties:
> >      maxItems: 1
> >      description: GPIO specifier for bridge_en pin (active high).
> >  
> > +  vcc-supply:
> > +    description: A 1.8V power supply (see regulator/regulator.yaml).
> > +
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> >  
> > @@ -93,6 +96,7 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > +  - vcc-supply
> 
> This isn't a backward-compatible change. All the previous users of that
> binding will now require a vcc-supply property even though it was
> working fine for them before.
> 
> You handle that nicely in the code, but you can't make that new property
> required.

We can't make it required in the driver, but can't we make it required
in the bindings ? This indicates that all new DTs need to set the
property. We also need to mass-patch the in-tree DTs to avoid validation
failures, but apart from that, I don't see any issue.

-- 
Regards,

Laurent Pinchart
