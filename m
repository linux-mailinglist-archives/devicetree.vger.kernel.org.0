Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 609EA2FAB85
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 21:32:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727449AbhARUbv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 15:31:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727430AbhARKjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 05:39:16 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ACE9C061757
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 02:38:35 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3B7492BB;
        Mon, 18 Jan 2021 11:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610966312;
        bh=VXRwC/dAiu/RZnKcmYvB3XoyahPJDI5/idI4zYba458=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=HSospHN9oLkAl+FhrqRug5X4ERYkQ3B7SPmZwj7LaWDAO21PFfnc/8vwbe32ht+j/
         NIXdZqcCQ7JuqSQ5jKCKzKYq9deHsqNwPLEElJ2X5gLSfIfrlhpwI4Lmwb77dN731Z
         QeZdbXABJ+aWOR4ngYR6MTHIqjyG8nqyzE14Zcl0=
Date:   Mon, 18 Jan 2021 12:38:16 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro,gm7123
 compatible
Message-ID: <YAVlGJFmM/yzgQeH@pendragon.ideasonboard.com>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-4-maxime@cerno.tech>
 <YAFBTt6MsFCy1Hkl@pendragon.ideasonboard.com>
 <20210118100321.ktbnfpsxka2icbaa@gilmour>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210118100321.ktbnfpsxka2icbaa@gilmour>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

On Mon, Jan 18, 2021 at 11:03:21AM +0100, Maxime Ripard wrote:
> On Fri, Jan 15, 2021 at 09:16:30AM +0200, Laurent Pinchart wrote:
> > On Thu, Jan 14, 2021 at 12:35:23PM +0100, Maxime Ripard wrote:
> > > The corpro,gm7123 was in use in a DT but was never properly documented,
> > > let's add it.
> > > 
> > > Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > index 64e8a1c24b40..97ca07b56cbc 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > @@ -22,6 +22,10 @@ properties:
> > >                - ti,ths8134a
> > >                - ti,ths8134b
> > >            - const: ti,ths8134
> > > +      - items:
> > > +          - const: corpro,gm7123
> > > +          - const: adi,adv7123
> > 
> > Do we need adi,adv7123 ?
> 
> I'm not sure: it looks like having both the adv7123 and the dumb-vga-dac
> compatible was never an option, so we can also change the DT to have
> corpro,gm7123, dumb-vga-dac
> 
> Would that work?

With that,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-- 
Regards,

Laurent Pinchart
