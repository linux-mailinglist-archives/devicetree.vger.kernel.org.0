Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B0A92FAB83
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 21:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388277AbhARUbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 15:31:06 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:60292 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388985AbhARKkV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 05:40:21 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 592092BB;
        Mon, 18 Jan 2021 11:39:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610966367;
        bh=TKLjavu6pPNWiWATpjYQ9nSe4YBqURvP+wFcE4ajSBU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SrN/sOIk8axDB8p/bdwJS70mQ5MSAc8xS7MJGuzT/fR7OzaWnPog84RvXn2WlwO9b
         sTwxsezGt4QqRe1GEi5cM9bFnzKHH9eeIj1C0pIUuL7ThfWPuWWnEwUbZ1c68HfaAg
         vKqAKFMqsYCKQh3yLNg6lH6szeTraXJDLJs5ps48=
Date:   Mon, 18 Jan 2021 12:39:11 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro,gm7123
 compatible
Message-ID: <YAVlT1RKeymzDxoK@pendragon.ideasonboard.com>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-4-maxime@cerno.tech>
 <YAFBTt6MsFCy1Hkl@pendragon.ideasonboard.com>
 <20210118100321.ktbnfpsxka2icbaa@gilmour>
 <CAGb2v64o84POSVAHMeRkKrAtd7gPr6-4H133RfsjJAnfwQNSjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAGb2v64o84POSVAHMeRkKrAtd7gPr6-4H133RfsjJAnfwQNSjw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chen-Yu,

On Mon, Jan 18, 2021 at 06:22:15PM +0800, Chen-Yu Tsai wrote:
> On Mon, Jan 18, 2021 at 6:03 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > On Fri, Jan 15, 2021 at 09:16:30AM +0200, Laurent Pinchart wrote:
> > > On Thu, Jan 14, 2021 at 12:35:23PM +0100, Maxime Ripard wrote:
> > > > The corpro,gm7123 was in use in a DT but was never properly documented,
> > > > let's add it.
> > > >
> > > > Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > > > Cc: Sam Ravnborg <sam@ravnborg.org>
> > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > ---
> > > >  .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > > index 64e8a1c24b40..97ca07b56cbc 100644
> > > > --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> > > > @@ -22,6 +22,10 @@ properties:
> > > >                - ti,ths8134a
> > > >                - ti,ths8134b
> > > >            - const: ti,ths8134
> > > > +      - items:
> > > > +          - const: corpro,gm7123
> > > > +          - const: adi,adv7123
> > >
> > > Do we need adi,adv7123 ?
> >
> > I'm not sure: it looks like having both the adv7123 and the dumb-vga-dac
> > compatible was never an option, so we can also change the DT to have
> > corpro,gm7123, dumb-vga-dac
> 
> FYI I used the adi,adv7123 fallback because the gm7123 datasheet compares
> the two, with the gm7123 having lower standby current, but only limited to
> 3.3V power supply. Maximum resolution, conversion rate, and the range of
> output current are all the same. The package is the same as well. I
> believe the gm7123 is intended as a drop-in clone of the adv7123.

That's a good point. I don't mind either way.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-- 
Regards,

Laurent Pinchart
