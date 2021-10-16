Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D011A42FFBF
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 04:35:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239497AbhJPCh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 22:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232812AbhJPCh1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 22:37:27 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AA96C061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 19:35:20 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6F1C2268;
        Sat, 16 Oct 2021 04:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1634351715;
        bh=qmEWaNZCtCsZSyUPiD37QiO9uelHPu/2B4woZrQNZVg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kQHuzA4ciWLj+4gTxijnub7Q8WA2OBxJ8zgGOjjhdirKDc3MYcG+qiRxEBnI2Xv5l
         VFwzGhL8MDXgtXrRGAjS53Fnj19yhu80ZkFgItI/VhAz+c3NkGuB8kIenvR2Jv6sai
         TB9Z+hA4+kgX1pM7P5fBipUgSANhPcW2OdHvLKfw=
Date:   Sat, 16 Oct 2021 05:34:59 +0300
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
Message-ID: <YWo6U1juhMsHnQYU@pendragon.ideasonboard.com>
References: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
 <20211012064843.298104-4-alexander.stein@ew.tq-group.com>
 <20211013074722.7y7ug3eri4euknza@gilmour>
 <YWao69+QEK8Fhi/x@pendragon.ideasonboard.com>
 <20211014074110.ym6mzugde2m5ak22@gilmour>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211014074110.ym6mzugde2m5ak22@gilmour>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Thu, Oct 14, 2021 at 09:41:10AM +0200, Maxime Ripard wrote:
> On Wed, Oct 13, 2021 at 12:37:47PM +0300, Laurent Pinchart wrote:
> > On Wed, Oct 13, 2021 at 09:47:22AM +0200, Maxime Ripard wrote:
> > > On Tue, Oct 12, 2021 at 08:48:42AM +0200, Alexander Stein wrote:
> > > > Add a VCC regulator which needs to be enabled before the EN pin is
> > > > released.
> > > > 
> > > > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > > ---
> > > >  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml     | 5 +++++
> > > >  1 file changed, 5 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > > > index a5779bf17849..49ace6f312d5 100644
> > > > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > > > @@ -32,6 +32,9 @@ properties:
> > > >      maxItems: 1
> > > >      description: GPIO specifier for bridge_en pin (active high).
> > > >  
> > > > +  vcc-supply:
> > > > +    description: A 1.8V power supply (see regulator/regulator.yaml).
> > > > +
> > > >    ports:
> > > >      $ref: /schemas/graph.yaml#/properties/ports
> > > >  
> > > > @@ -93,6 +96,7 @@ properties:
> > > >  required:
> > > >    - compatible
> > > >    - reg
> > > > +  - vcc-supply
> > > 
> > > This isn't a backward-compatible change. All the previous users of that
> > > binding will now require a vcc-supply property even though it was
> > > working fine for them before.
> > > 
> > > You handle that nicely in the code, but you can't make that new property
> > > required.
> > 
> > We can't make it required in the driver, but can't we make it required
> > in the bindings ? This indicates that all new DTs need to set the
> > property. We also need to mass-patch the in-tree DTs to avoid validation
> > failures, but apart from that, I don't see any issue.
> 
> I guess we'd need to clarify what the schemas are here for.
> 
> We've been using them for two things: define the bindings, and make
> sure that the users of a binding actually follow it.
> 
> The second part makes it very tempting to also cram "and make sure they
> follow our best practices" in there. We never had the discussion about
> whether that's ok or not, and I think the schemas syntax falls a bit
> short there since I don't think we can make the difference between a
> warning and an error that would make it work.
> 
> However, if we're talking about the binding itself, then no, you can't
> introduce a new property.

I assume you mean "a new required property" here.

> Since it was acceptable in the past, it still needs to be acceptable
> going forward.

I think that's a matter of definition. The way I see it (but I could be
mistaken), we're essentially versioning DT bindings without actually
saying so, with the latest version being the visible one, and drivers
having to preserve backward compatibility with new versions. We could
also see it in different ways of course. What's important is in my
opinion to make sure that new DTs will do the right thing, and if we
don't make this property required, we can't check that. DT authors
wouldn't know if the property is optional due to backward compatibility
only but highly recommended, or really optional.

-- 
Regards,

Laurent Pinchart
