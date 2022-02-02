Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57DA84A7233
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 14:51:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344835AbiBBNvY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 08:51:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344749AbiBBNu7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 08:50:59 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09869C061401
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 05:50:59 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A83722F3;
        Wed,  2 Feb 2022 14:50:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1643809856;
        bh=/pW/bCpsCuM9HFlyP10vP2aSy54W8IPLVoi3zKVi3sY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=i09W/E9bQz2+U4xFAXnvQ/aYx4Yz2N4OgwVih1W58o8wBuB+kEc4L4Ih+gcvwUXUB
         sNH1oeSAHCNiDt0ashgHGB734nIzCIST/AT7bmHIClHo6BurXTpsqLiiwB4r+aNOpe
         sP9W+majhzt52TvXEIq5gbsUUdN8Y2PqLIAF+hxY=
Date:   Wed, 2 Feb 2022 15:50:34 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: panel: Introduce a panel-lvds binding
Message-ID: <YfqMKm72/Ra49F8r@pendragon.ideasonboard.com>
References: <20220111110635.804371-1-maxime@cerno.tech>
 <20220111110635.804371-2-maxime@cerno.tech>
 <Yd2Ahn3+FVv/Aks7@pendragon.ideasonboard.com>
 <20220127142215.fesipdslabur43sx@houat>
 <20220202094845.r7td65zxfo5uqg5x@houat>
 <Yfp9UhwWZbHpDjpL@pendragon.ideasonboard.com>
 <20220202131623.3vfbtuyeemzcxe4k@houat>
 <YfqFQRaeRwAlyyHV@pendragon.ideasonboard.com>
 <20220202134312.fmz2tkyqd3bzc67f@houat>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220202134312.fmz2tkyqd3bzc67f@houat>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 02, 2022 at 02:43:12PM +0100, Maxime Ripard wrote:
> On Wed, Feb 02, 2022 at 03:21:05PM +0200, Laurent Pinchart wrote:
> > On Wed, Feb 02, 2022 at 02:16:23PM +0100, Maxime Ripard wrote:
> > > On Wed, Feb 02, 2022 at 02:47:14PM +0200, Laurent Pinchart wrote:
> > > > On Wed, Feb 02, 2022 at 10:48:45AM +0100, Maxime Ripard wrote:
> > > > > On Thu, Jan 27, 2022 at 03:22:15PM +0100, Maxime Ripard wrote:
> > > > > > On Tue, Jan 11, 2022 at 03:05:10PM +0200, Laurent Pinchart wrote:
> > > > > > > On Tue, Jan 11, 2022 at 12:06:35PM +0100, Maxime Ripard wrote:
> > > > > > > > Following the previous patch, let's introduce a generic panel-lvds
> > > > > > > > binding that documents the panels that don't have any particular
> > > > > > > > constraint documented.
> > > > > > > > 
> > > > > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > > > > > 
> > > > > > > > ---
> > > > > > > > 
> > > > > > > > Changes from v2:
> > > > > > > >   - Added a MAINTAINERS entry
> > > > > > > > 
> > > > > > > > Changes from v1:
> > > > > > > >   - Added missing compatible
> > > > > > > >   - Fixed lint
> > > > > > > > ---
> > > > > > > >  .../bindings/display/panel/panel-lvds.yaml    | 57 +++++++++++++++++++
> > > > > > > >  MAINTAINERS                                   |  1 +
> > > > > > > >  2 files changed, 58 insertions(+)
> > > > > > > >  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> > > > > > > > 
> > > > > > > > diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> > > > > > > > new file mode 100644
> > > > > > > > index 000000000000..fcc50db6a812
> > > > > > > > --- /dev/null
> > > > > > > > +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> > > > > > > > @@ -0,0 +1,57 @@
> > > > > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > > > > +%YAML 1.2
> > > > > > > > +---
> > > > > > > > +$id: http://devicetree.org/schemas/display/panel/panel-lvds.yaml#
> > > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > > +
> > > > > > > > +title: Generic LVDS Display Panel Device Tree Bindings
> > > > > > > > +
> > > > > > > > +maintainers:
> > > > > > > > +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > > > > > > +  - Thierry Reding <thierry.reding@gmail.com>
> > > > > > > > +
> > > > > > > > +allOf:
> > > > > > > > +  - $ref: panel-common.yaml#
> > > > > > > > +  - $ref: /schemas/display/lvds.yaml/#
> > > > > > > > +
> > > > > > > > +select:
> > > > > > > > +  properties:
> > > > > > > > +    compatible:
> > > > > > > > +      contains:
> > > > > > > > +        const: panel-lvds
> > > > > > > > +
> > > > > > > > +  not:
> > > > > > > > +    properties:
> > > > > > > > +      compatible:
> > > > > > > > +        contains:
> > > > > > > > +          enum:
> > > > > > > > +            - advantech,idk-1110wr
> > > > > > > > +            - advantech,idk-2121wr
> > > > > > > > +            - innolux,ee101ia-01d
> > > > > > > > +            - mitsubishi,aa104xd12
> > > > > > > > +            - mitsubishi,aa121td01
> > > > > > > > +            - sgd,gktw70sdae4se
> > > > > > > 
> > > > > > > I still don't like this :-( Couldn't we instead do
> > > > > > > 
> > > > > > > select:
> > > > > > >   properties:
> > > > > > >     compatible:
> > > > > > >       contains:
> > > > > > >         enum:
> > > > > > >           - auo,b101ew05
> > > > > > >           - tbs,a711-panel
> > > > > > > 
> > > > > > > ?
> > > > > > 
> > > > > > That works too, I'll send another version.
> > > > > 
> > > > > Actually, no, it doesn't work.
> > > > > 
> > > > > If we do this, if we were to have a panel that has panel-lvds but none
> > > > > of the other compatible (because of a typo, or downright invalid
> > > > > binding) we won't validate it and report any error.
> > > > > 
> > > > > I'll merge this version (together with the v4 version of patch 1)
> > > > 
> > > > I'm sorry but I *really* *really* dislike this. Having to list all other
> > > > compatible values in this file is a sign that something is wrong in the
> > > > validation infrastructure. People will forget to update it when adding
> > > > new bindings, and will get confused by the result. If I were a
> > > > maintainer for DT bindings I'd nack this.
> > > 
> > > The validation infrastructure is what it is, and we can't change that.
> > > Rewriting one from scratch isn't reasonable either. That being said, the
> > > *only* case where this has been a problem are the panels because there's
> > > so many pointless schemas which should really be a single schema.
> > > 
> > > That's the root cause.
> > > 
> > > I tried to merge all of them, but once again panels seem to be special,
> > > and it was shot down. So be it. But at the end of the day, there's not a
> > > lot of solutions to do what we are doing for every other case out there.
> > > 
> > > > If a DT has panel-lvds and no other compatible string, or invalid ones,
> > > > won't the validation report that the compatible isn't understood ? I
> > > > think that would be enough.
> > > 
> > > That's just worse. How would you not get confused if there's an error
> > > that the compatible isn't documented, you search for it, and it's
> > > actually documented there?
> > 
> > Is that any different than a binding that would have
> > 
> > properties:
> >   compatible:
> >     items:
> >       enum:
> >         - foo,bar
> >         - foo,baz
> >       const: foo,base
> > 
> > and a device tree that would set compatible = "foo,base"; ? This type of
> > binding is very common, and I haven't heard anyone complaining that the
> > resulting validation error is an issue.
> 
> That works indeed, but it's not what panel-lvds is doing. For some
> reason, instead of that enum, we need multiple schemas, one for each
> combination. And this is why we need that select clause, to work around
> that decision.

I get that, but unless I'm mistaken, you concern with

select:
  properties:
    compatible:
      contains:
        enum:
          - auo,b101ew05
          - tbs,a711-panel

is that it will result in skipping validation silently (until all nodes
are required to be validated) if a DT contains compatible =
"aou,b101ew05", "panel-lvds". Don't we also get the same problem with
compatible = "foo,bat", "foo,base" ? How do the two issues differ ?

-- 
Regards,

Laurent Pinchart
