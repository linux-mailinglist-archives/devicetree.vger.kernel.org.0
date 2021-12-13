Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43C5D472C8A
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:46:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236937AbhLMMq2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:46:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236947AbhLMMq0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:46:26 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00622C06173F
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:46:25 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 686ED51C;
        Mon, 13 Dec 2021 13:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639399584;
        bh=KQ96B45i/lTzOLGHI2+lyZPA4AlUEiN3tJ2ESzgxXkM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=L+59lYvgup1i+KDk+cBy5Dv/jQ5rkWxgnbyVDZpNEZgDSHrSIMw71nZckXJ5HzdYh
         MRJnWStw7dZM94Ow9PsILkLmjVDTI09C5CcD4JoiCQFB/8ona1zKAMDARkLZDYnujk
         P56QuNdkiIj8df0mVtvMy+n5RAZf7LCxoG1ZH6Dw=
Date:   Mon, 13 Dec 2021 14:45:54 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH] drm: bridge: tc358764: Use drm panel_bridge API
Message-ID: <YbdAglrp5ZNMm2Vx@pendragon.ideasonboard.com>
References: <20211213121929.3377752-1-jagan@amarulasolutions.com>
 <Ybc9KdVOb0bxknyQ@pendragon.ideasonboard.com>
 <CAMty3ZCd9a8PZMEO_MhF7x4v_HoL9Bk6T-YiaUxF2R-YXQXxvw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMty3ZCd9a8PZMEO_MhF7x4v_HoL9Bk6T-YiaUxF2R-YXQXxvw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 13, 2021 at 06:09:23PM +0530, Jagan Teki wrote:
> Hi Laurent,
> 
> On Mon, Dec 13, 2021 at 6:02 PM Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Jagan,
> >
> > Thank you for the patch.
> >
> > On Mon, Dec 13, 2021 at 05:49:29PM +0530, Jagan Teki wrote:
> > > Replace the manual panel handling code by a drm panel_bridge via
> > > devm_drm_of_get_bridge().
> > >
> > > Adding panel_bridge handling,
> > >
> > > - Drops drm_connector and related operations as drm_bridge_attach
> > >   creates connector during attachment.
> > >
> > > - Drops panel pointer and panel healpers.
> > >
> > > This simplifies the driver and allows all components in the display
> > > pipeline to be treated as bridges.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  drivers/gpu/drm/bridge/tc358764.c | 99 ++-----------------------------
> > >  1 file changed, 6 insertions(+), 93 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
> > > index c1e35bdf9232..28480bdc4287 100644
> > > --- a/drivers/gpu/drm/bridge/tc358764.c
> > > +++ b/drivers/gpu/drm/bridge/tc358764.c
> > > @@ -153,10 +153,9 @@ static const char * const tc358764_supplies[] = {
> > >  struct tc358764 {
> > >       struct device *dev;
> > >       struct drm_bridge bridge;
> > > -     struct drm_connector connector;
> > > +     struct drm_bridge *panel_bridge;
> >
> > s/panel_bridge/next_bridge/ as it may not be a panel.
> 
> Sometime, I'm a strong believer of my own notation (I may be wrong)
> based on my understanding. This is downstream bridge and the only
> option it to connect is panel and panel in bridge terminology are
> treated as panel_bridge. This is the reason I have used panel_bridge.
> next_bridge notation will be used if the bridge connected to any
> downstream bridge, like we can use next_bridge notation in host bridge
> drivers as host bridge can be an option of connecting downstream
> bridge or panel.

The downstream bridge doesn't have to be a DSI panel, it could be an
LVDS-to-DPI bridge for instance, or an LVDS-to-HDMI encoder.

> This is what I understood so-far with DRM bridges. May be you can
> correct if I'm wrong.
> 
> > >       struct regulator_bulk_data supplies[ARRAY_SIZE(tc358764_supplies)];
> > >       struct gpio_desc *gpio_reset;
> > > -     struct drm_panel *panel;
> >
> > Are there #includes that you can drop ?
> 
> I think, yes. I will update it in v2.

-- 
Regards,

Laurent Pinchart
