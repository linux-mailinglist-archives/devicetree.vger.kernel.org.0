Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76B781EFE61
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2020 19:00:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726531AbgFERAH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jun 2020 13:00:07 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:44000 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726192AbgFERAH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jun 2020 13:00:07 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id 9357A2002F;
        Fri,  5 Jun 2020 19:00:03 +0200 (CEST)
Date:   Fri, 5 Jun 2020 19:00:02 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        =?iso-8859-1?Q?S=F8ren?= Andersen <san@skov.dk>,
        Thierry Reding <thierry.reding@gmail.com>,
        Ville =?iso-8859-1?Q?Syrj=E4l=E4?= 
        <ville.syrjala@linux.intel.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v1 2/6] drm: panel-simple: add Seiko 70WVW2T 7" simple
 panel
Message-ID: <20200605170002.GC207594@ravnborg.org>
References: <20200601083309.712606-1-sam@ravnborg.org>
 <20200601083309.712606-3-sam@ravnborg.org>
 <CAD=FV=VSyODjtVtEe6H46U6xNraD2LUUi+xt8cxraaqXom=64g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD=FV=VSyODjtVtEe6H46U6xNraD2LUUi+xt8cxraaqXom=64g@mail.gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=edQTgYMH c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=8nJEP1OIZ-IA:10 a=7gkXJVJtAAAA:8 a=pGLkceISAAAA:8
        a=aPMyHXCWJWEOWkbedn4A:9 a=wPNLvfGTeEIA:10 a=E9Po1WZjFZOl8hwRPBS3:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Doug.

On Mon, Jun 01, 2020 at 05:31:06PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, Jun 1, 2020 at 1:33 AM Sam Ravnborg <sam@ravnborg.org> wrote:
> >
> > The Seiko 70WVW2T is a discontinued product, but may be used somewhere.
> > Tested on a proprietary product.
> >
> > Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Søren Andersen <san@skov.dk>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > ---
> >  drivers/gpu/drm/panel/panel-simple.c | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> > index b067f66cea0e..8624bb80108c 100644
> > --- a/drivers/gpu/drm/panel/panel-simple.c
> > +++ b/drivers/gpu/drm/panel/panel-simple.c
> > @@ -3194,6 +3194,31 @@ static const struct panel_desc shelly_sca07010_bfn_lnn = {
> >         .bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> >  };
> >
> > +static const struct drm_display_mode sii_70wvw2t_mode = {
> > +       .clock = 33000,
> > +       .hdisplay = 800,
> > +       .hsync_start = 800 + 256,
> > +       .hsync_end = 800 + 256 + 0,
> > +       .htotal = 800 + 256 + 0 + 0,
> > +       .vdisplay = 480,
> > +       .vsync_start = 480 + 0,
> > +       .vsync_end = 480 + 0 + 0,
> > +       .vtotal = 480 + 0 + 0 + 45,
> 
> Important to have a "vrefresh"?
> 
> 
> > +       .flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> > +};
> > +
> > +static const struct panel_desc sii_70wvw2t = {
> > +       .modes = &sii_70wvw2t_mode,
> > +       .num_modes = 1,
> 
> Do we want "bpc = 6"?
> 
> 
> > +       .size = {
> > +               .width = 152,
> > +               .height = 91,
> > +       },
> > +       .bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> 
> Should this be a 666 format?  Random internet-found data sheet says
> 262K colors...

Thanks for catching this!
You are indeed right, this is MEDIA_BUS_FMT_RGB666_1X18 and only bpc = 6.
My bad excuse is that other displays for the same HW is RGB888 and bpc = 8.

Will fix and repost.

	Sam

