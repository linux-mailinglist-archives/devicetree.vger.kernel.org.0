Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 936E742A026
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 10:43:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232440AbhJLIpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 04:45:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235228AbhJLIpa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 04:45:30 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF7EBC061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 01:43:28 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id A299FF1;
        Tue, 12 Oct 2021 10:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1634028205;
        bh=DghocipXHvP0NyLeaDEnD7TymmQkem6Rr3rSwUpNewo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kyT4O2si6/0pIZQXfPgjTOuA9DgGuevyfbivXAsFelznSFHJWI9KHJaLnJ09d5T1m
         qXAq2EXPeHtrzb7Q0CBdUecLpuOd6jioFKePvHAUZ7bsVgYpm61cvA+XNRJMbN0Gt+
         3WzqliXDgNPx1OL2r+f31x6y7fodec90GsNG3t2w=
Date:   Tue, 12 Oct 2021 11:43:12 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 4/4] drm/bridge: ti-sn65dsi83: Add vcc supply
 regulator support
Message-ID: <YWVKoDRdZJMshrW1@pendragon.ideasonboard.com>
References: <20211012064843.298104-1-alexander.stein@ew.tq-group.com>
 <20211012064843.298104-5-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211012064843.298104-5-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

Thank you for the patch.

On Tue, Oct 12, 2021 at 08:48:43AM +0200, Alexander Stein wrote:
> VCC needs to be enabled before releasing the enable GPIO.
> 
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 9072342566f3..a6b1fd71dfee 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -33,6 +33,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_graph.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_bridge.h>
> @@ -143,6 +144,7 @@ struct sn65dsi83 {
>  	struct mipi_dsi_device		*dsi;
>  	struct drm_bridge		*panel_bridge;
>  	struct gpio_desc		*enable_gpio;
> +	struct regulator		*vcc;
>  	int				dsi_lanes;
>  	bool				lvds_dual_link;
>  	bool				lvds_dual_link_even_odd_swap;
> @@ -647,6 +649,12 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>  
>  	ctx->panel_bridge = panel_bridge;
>  
> +	ctx->vcc = devm_regulator_get(dev, "vcc");
> +	if (IS_ERR(ctx->vcc))
> +		return dev_err_probe(dev, PTR_ERR(ctx->vcc),
> +				     "Failed to get supply 'vcc': %pe\n",
> +				     ctx->vcc);
> +
>  	return 0;
>  }
>  
> @@ -691,7 +699,11 @@ static int sn65dsi83_probe(struct i2c_client *client,
>  	ctx->bridge.of_node = dev->of_node;
>  	drm_bridge_add(&ctx->bridge);
>  
> -	return 0;
> +	ret = regulator_enable(ctx->vcc);
> +	if (ret)
> +		dev_err(dev, "Failed to enable vcc: %i\n", ret);

I think this should move to sn65dsi83_atomic_pre_enable() (and similarly
for regulator_disable()) as keeping the regulator enabled at all times
will cost power.

> +
> +	return ret;
>  }
>  
>  static int sn65dsi83_remove(struct i2c_client *client)
> @@ -702,6 +714,7 @@ static int sn65dsi83_remove(struct i2c_client *client)
>  	mipi_dsi_device_unregister(ctx->dsi);
>  	drm_bridge_remove(&ctx->bridge);
>  	of_node_put(ctx->host_node);
> +	regulator_disable(ctx->vcc);
>  
>  	return 0;
>  }

-- 
Regards,

Laurent Pinchart
