Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FA43472D53
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 14:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231847AbhLMNb1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 08:31:27 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:51856 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbhLMNb1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 08:31:27 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 04DF451C;
        Mon, 13 Dec 2021 14:31:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639402286;
        bh=GtYssXbLXh3vObTlRVDq3HpW0Loe4tZDme5ot+DnxlA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=lbXLm253ugZmT76k0lj5XzO5j0ELXH3/ZCFYhyFsmDc5L2ONJgO3Uicd5WEiEDEUu
         Mls8K0Sw9PGurnvVeY7K4hrEf/OPM/SVhSRg7jW18aLVcxO89MiS6N23kwWsaa69Qz
         qWSALUSNcDeoxmnEPPfmMgeO/c7d+kH3dsFSYr54=
Date:   Mon, 13 Dec 2021 15:30:55 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH] drm: bridge: tc358764: Use drm panel_bridge API
Message-ID: <YbdLD7Bz/LC7La9w@pendragon.ideasonboard.com>
References: <20211213121929.3377752-1-jagan@amarulasolutions.com>
 <Ybc9KdVOb0bxknyQ@pendragon.ideasonboard.com>
 <CAMty3ZCd9a8PZMEO_MhF7x4v_HoL9Bk6T-YiaUxF2R-YXQXxvw@mail.gmail.com>
 <YbdAglrp5ZNMm2Vx@pendragon.ideasonboard.com>
 <CAMty3ZDiiK_LSqwY87RrZ5W6=gyxUXB8tyG5Zp5x_LJcZ-pRCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMty3ZDiiK_LSqwY87RrZ5W6=gyxUXB8tyG5Zp5x_LJcZ-pRCA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 13, 2021 at 06:27:37PM +0530, Jagan Teki wrote:
> On Mon, Dec 13, 2021 at 6:16 PM Laurent Pinchart wrote:
> > On Mon, Dec 13, 2021 at 06:09:23PM +0530, Jagan Teki wrote:
> > > On Mon, Dec 13, 2021 at 6:02 PM Laurent Pinchart wrote:
> > > > On Mon, Dec 13, 2021 at 05:49:29PM +0530, Jagan Teki wrote:
> > > > > Replace the manual panel handling code by a drm panel_bridge via
> > > > > devm_drm_of_get_bridge().
> > > > >
> > > > > Adding panel_bridge handling,
> > > > >
> > > > > - Drops drm_connector and related operations as drm_bridge_attach
> > > > >   creates connector during attachment.
> > > > >
> > > > > - Drops panel pointer and panel healpers.
> > > > >
> > > > > This simplifies the driver and allows all components in the display
> > > > > pipeline to be treated as bridges.
> > > > >
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > ---
> > > > >  drivers/gpu/drm/bridge/tc358764.c | 99 ++-----------------------------
> > > > >  1 file changed, 6 insertions(+), 93 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
> > > > > index c1e35bdf9232..28480bdc4287 100644
> > > > > --- a/drivers/gpu/drm/bridge/tc358764.c
> > > > > +++ b/drivers/gpu/drm/bridge/tc358764.c
> > > > > @@ -153,10 +153,9 @@ static const char * const tc358764_supplies[] = {
> > > > >  struct tc358764 {
> > > > >       struct device *dev;
> > > > >       struct drm_bridge bridge;
> > > > > -     struct drm_connector connector;
> > > > > +     struct drm_bridge *panel_bridge;
> > > >
> > > > s/panel_bridge/next_bridge/ as it may not be a panel.
> > >
> > > Sometime, I'm a strong believer of my own notation (I may be wrong)
> > > based on my understanding. This is downstream bridge and the only
> > > option it to connect is panel and panel in bridge terminology are
> > > treated as panel_bridge. This is the reason I have used panel_bridge.
> > > next_bridge notation will be used if the bridge connected to any
> > > downstream bridge, like we can use next_bridge notation in host bridge
> > > drivers as host bridge can be an option of connecting downstream
> > > bridge or panel.
> >
> > The downstream bridge doesn't have to be a DSI panel, it could be an
> > LVDS-to-DPI bridge for instance, or an LVDS-to-HDMI encoder.
> 
> Okay. What are use-cases where we can use panel_bridge?

The panel bridge wraps a drm_panel in a drm_bridge, which makes it
completely transparent for the other bridges in the chain whether their
output is connected to a panel or to something else. I would thus never
call a variable panel_bridge unless in the panel bridge driver itself.

-- 
Regards,

Laurent Pinchart
