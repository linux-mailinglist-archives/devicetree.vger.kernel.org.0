Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9059146ED47
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 17:39:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240091AbhLIQmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 11:42:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241240AbhLIQmy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 11:42:54 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B725C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 08:39:20 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2BA85501;
        Thu,  9 Dec 2021 17:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639067958;
        bh=k6CmCciVjfbhbekq8/he9ey/4J0m9COmTP6tTmZ51Yo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uEv7vOUwvO0TaiaGfPTwG9T/mQ6MPxVnM5TJTvTk5J2qevVamn7YEuNIwTJUZXmmg
         5uFiNw345UHL+TwKsT65ujlXIdl5/oANsRc4Asy3kciufv7ljLFba7KVQFc4RFgwhf
         0URtthnkiKyj6dqrk49LpGT3F2a8wWi7JNbgSyuA=
Date:   Thu, 9 Dec 2021 18:38:49 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 4/4] drm/bridge: ti-sn65dsi83: Add vcc supply
 regulator support
Message-ID: <YbIxGc8faqUQhUWP@pendragon.ideasonboard.com>
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
 <20211118091955.3009900-5-alexander.stein@ew.tq-group.com>
 <CAMty3ZCQ+JDvojX0QiLEJLSA=J+kzi9kY1QE+dzf35fgO3T4aQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAMty3ZCQ+JDvojX0QiLEJLSA=J+kzi9kY1QE+dzf35fgO3T4aQ@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

On Thu, Dec 09, 2021 at 12:34:49PM +0530, Jagan Teki wrote:
> On Thu, Nov 18, 2021 at 2:50 PM Alexander Stein wrote:
> >
> > VCC needs to be enabled before releasing the enable GPIO.
> >
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 19 +++++++++++++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > index 065610edc37a..54d18e82ed74 100644
> > --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > @@ -33,6 +33,7 @@
> >  #include <linux/of_device.h>
> >  #include <linux/of_graph.h>
> >  #include <linux/regmap.h>
> > +#include <linux/regulator/consumer.h>
> >
> >  #include <drm/drm_atomic_helper.h>
> >  #include <drm/drm_bridge.h>
> > @@ -143,6 +144,7 @@ struct sn65dsi83 {
> >         struct mipi_dsi_device          *dsi;
> >         struct drm_bridge               *panel_bridge;
> >         struct gpio_desc                *enable_gpio;
> > +       struct regulator                *vcc;
> >         int                             dsi_lanes;
> >         bool                            lvds_dual_link;
> >         bool                            lvds_dual_link_even_odd_swap;
> > @@ -337,6 +339,12 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
> >         u16 val;
> >         int ret;
> >
> > +       ret = regulator_enable(ctx->vcc);
> > +       if (ret) {
> > +               dev_err(ctx->dev, "Failed to enable vcc\n");
> > +               return;
> > +       }
> 
> Better check the vcc and enable it since it is an optional one.

Won't the regulator core create a dummy regulator if none is specified
in DT ?

-- 
Regards,

Laurent Pinchart
