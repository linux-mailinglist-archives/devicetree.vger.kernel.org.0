Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C8EC42BBBD
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 11:36:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239162AbhJMJin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Oct 2021 05:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239124AbhJMJim (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Oct 2021 05:38:42 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF974C061570
        for <devicetree@vger.kernel.org>; Wed, 13 Oct 2021 02:36:39 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 689EF291;
        Wed, 13 Oct 2021 11:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1634117795;
        bh=9EqCMeif7UNH+xWm896GqIXZOfGp3Rdm2hHQebpKHZQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=M9ZDt+v6jdhFAdnGZx6e1RqVJlYF0txVAL1rRmMmMMLJRxucr2BNg42YRgnJaKkKG
         cLKg7tQEdQ9vXLfpXylk9aDT/69Sl0dFYymnam0d+IBS3bvX8yin6MrbJTCx95xFEq
         SVFs24+lnRuHsdd5Vavmaw/nPLpAhYfzEdfS5H5k=
Date:   Wed, 13 Oct 2021 12:36:21 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Alexander Stein <Alexander.Stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: (EXT) Re: [PATCH v2 4/4] drm/bridge: ti-sn65dsi83: Add vcc
 supply regulator support
Message-ID: <YWaolcNcwUQs6ez/@pendragon.ideasonboard.com>
References: <kcEE.wBDDeOkQQ0CwJna1+1hciA.AJExnRDA1wE@vtuxmail01.tq-net.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <kcEE.wBDDeOkQQ0CwJna1+1hciA.AJExnRDA1wE@vtuxmail01.tq-net.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On Wed, Oct 13, 2021 at 08:59:22AM +0000, Alexander Stein wrote:
> On Tue, Oct 12, 2021 at 10:43 +0200, Laurent Pinchart wrote:
> > On Tue, Oct 12, 2021 at 08:48:43AM +0200, Alexander Stein wrote:
> > > VCC needs to be enabled before releasing the enable GPIO.
> > > 
> > > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > >  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 15 ++++++++++++++-
> > >  1 file changed, 14 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > index 9072342566f3..a6b1fd71dfee 100644
> > > --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > @@ -33,6 +33,7 @@
> > >  #include <linux/of_device.h>
> > >  #include <linux/of_graph.h>
> > >  #include <linux/regmap.h>
> > > +#include <linux/regulator/consumer.h>
> > >  
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_bridge.h>
> > > @@ -143,6 +144,7 @@ struct sn65dsi83 {
> > >  	struct mipi_dsi_device		*dsi;
> > >  	struct drm_bridge		*panel_bridge;
> > >  	struct gpio_desc		*enable_gpio;
> > > +	struct regulator		*vcc;
> > >  	int				dsi_lanes;
> > >  	bool				lvds_dual_link;
> > >  	bool				lvds_dual_link_even_odd_swap;
> > > @@ -647,6 +649,12 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx,
> > enum sn65dsi83_model model)
> > >  
> > >  	ctx->panel_bridge = panel_bridge;
> > >  
> > > +	ctx->vcc = devm_regulator_get(dev, "vcc");
> > > +	if (IS_ERR(ctx->vcc))
> > > +		return dev_err_probe(dev, PTR_ERR(ctx->vcc),
> > > +				     "Failed to get supply 'vcc': %pe\n",
> > > +				     ctx->vcc);
> > > +
> > >  	return 0;
> > >  }
> > >  
> > > @@ -691,7 +699,11 @@ static int sn65dsi83_probe(struct i2c_client *client,
> > >  	ctx->bridge.of_node = dev->of_node;
> > >  	drm_bridge_add(&ctx->bridge);
> > >  
> > > -	return 0;
> > > +	ret = regulator_enable(ctx->vcc);
> > > +	if (ret)
> > > +		dev_err(dev, "Failed to enable vcc: %i\n", ret);
> > 
> > I think this should move to sn65dsi83_atomic_pre_enable() (and similarly
> > for regulator_disable()) as keeping the regulator enabled at all times
> > will cost power.
> 
> I get your idea. The thing is that unless 1V8 is provided the bridge is not
> even accessible on I2C. So any access to sn65dsi83.regmap without the vcc
> regulator enabled will fail. AFAICS this is not an issue right now, as regmap
> is only used in sn65dsi83_atomic_enable(), sn65dsi83_atomic_disable() and
> sn65dsi83_atomic_pre_enable(), so your sugestion would work, but I'm
> hestitating a bit. The driver then has to ensure all regmap uses are done
> only when vcc is enabled.

Correct, and that's the usual pattern, drivers need to call
pm_runtime_get_sync() before accessing registers. For all you know, even
if the power to the bridge is on, the I2C controller it is connected to
could be suspended.

-- 
Regards,

Laurent Pinchart
