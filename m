Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EE97C10FE93
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 14:22:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726074AbfLCNWx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 08:22:53 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:37172 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725957AbfLCNWw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 08:22:52 -0500
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4821D309;
        Tue,  3 Dec 2019 14:22:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1575379369;
        bh=JpHuU7B1YlnxGZyUy1Mq/44OB8mK0NSeVUkhBs9yFv8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=k6KAI49qneV2kbHO+NuPIV227baWlP9abEnvgQ1TzzUCku+zGWuLAwdkGex/2klEr
         mCtZJA5cQMOkEH/SXFYUN1pdo7MgJFu5m+6X4phmmj8OQhmY1nDBq+hTLMEJYhyItQ
         evRDBOPQaH9kt6rmF0355QUrZQNkvE25Uew5SONE=
Date:   Tue, 3 Dec 2019 15:22:41 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Boris Brezillon <boris.brezillon@collabora.com>
Cc:     dri-devel@lists.freedesktop.org,
        Lucas Stach <l.stach@pengutronix.de>,
        Chris Healy <cphealy@gmail.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        kernel@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
        Inki Dae <inki.dae@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robdclark@gmail.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 17/21] dt-bindings: display: bridge: lvds-transmitter:
 Add new props
Message-ID: <20191203132241.GQ4730@pendragon.ideasonboard.com>
References: <20191023154512.9762-1-boris.brezillon@collabora.com>
 <20191023154512.9762-18-boris.brezillon@collabora.com>
 <20191202171140.GR4929@pendragon.ideasonboard.com>
 <20191203133843.32cab43e@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191203133843.32cab43e@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Boris,

On Tue, Dec 03, 2019 at 01:38:43PM +0100, Boris Brezillon wrote:
> On Mon, 2 Dec 2019 19:11:40 +0200 Laurent Pinchart wrote:
> > On Wed, Oct 23, 2019 at 05:45:08PM +0200, Boris Brezillon wrote:
> > > Add the data-mapping property to describe the output bus format and
> > > the bus-width property to describe the input bus format.
> > > 
> > > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > > ---
> > > Changes in v3:
> > > * New patch
> > > ---
> > >  .../bindings/display/bridge/lvds-transmitter.txt    | 13 +++++++++++++  
> > 
> > Please note that lvds-transmitter has been renamed to lvds-codec and
> > converted to YAML as part of a pull request I've recently sent ([1]).
> > This patch will thus need to be rebased.
> 
> Let me know when it's been merged, I'll ask for a drm-next ->
> drm-misc-next backmerge.

I expect Dave to merge it when the merge window will close.

> > [1] https://patchwork.freedesktop.org/patch/342754/
> > 
> > >  1 file changed, 13 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-transmitter.txt b/Documentation/devicetree/bindings/display/bridge/lvds-transmitter.txt
> > > index 60091db5dfa5..7b43b6f20279 100644
> > > --- a/Documentation/devicetree/bindings/display/bridge/lvds-transmitter.txt
> > > +++ b/Documentation/devicetree/bindings/display/bridge/lvds-transmitter.txt
> > > @@ -36,6 +36,19 @@ graph bindings specified in Documentation/devicetree/bindings/graph.txt.
> > >  - Video port 0 for parallel input
> > >  - Video port 1 for LVDS output
> > >  
> > > +Optional port 0 node properties:
> > > +
> > > +- bus-width: number of data lines use to transmit the RGB data.
> > > +	     Can be 18 or 24.
> > > +
> > > +Optional port 1 node properties:
> > > +
> > > +- data-mapping: see Documentation/devicetree/bindings/display/panel/lvds.yaml
> > > +		for more details about this LVDS data-mapping property.
> > > +		Supported values:
> > > +		"jeida-18"
> > > +		"jeida-24"
> > > +		"vesa-24"
> > >  
> > >  Example
> > >  -------  

-- 
Regards,

Laurent Pinchart
