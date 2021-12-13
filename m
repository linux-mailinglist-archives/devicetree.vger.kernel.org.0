Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF18A472C52
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:32:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233028AbhLMMcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:32:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbhLMMcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:32:11 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AC7DC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:32:10 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 94BA751C;
        Mon, 13 Dec 2021 13:32:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639398727;
        bh=xQ03FOJqcYuXMsXooM1iWEONBgogJ/EIPPCBSpZcQVo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=P1ESmKVEcmkDu3eAWXXnutLPnbZRAMfEWMl7yYCeswz1R3V8ggXFFNKaECWdHD0MY
         W2+qgiiXmQQ9ug7H0Oc0/QbZJpWqGA/RBsqEXbAjDkzDf9JRMuN6UEdKXa2X0hMUP2
         OWDFOWW2qCSSZ3EZ78qPa/mC7xbmRsD69UrDa/AA=
Date:   Mon, 13 Dec 2021 14:31:37 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH] drm: bridge: tc358764: Use drm panel_bridge API
Message-ID: <Ybc9KdVOb0bxknyQ@pendragon.ideasonboard.com>
References: <20211213121929.3377752-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211213121929.3377752-1-jagan@amarulasolutions.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

Thank you for the patch.

On Mon, Dec 13, 2021 at 05:49:29PM +0530, Jagan Teki wrote:
> Replace the manual panel handling code by a drm panel_bridge via
> devm_drm_of_get_bridge().
> 
> Adding panel_bridge handling,
> 
> - Drops drm_connector and related operations as drm_bridge_attach
>   creates connector during attachment.
> 
> - Drops panel pointer and panel healpers.
> 
> This simplifies the driver and allows all components in the display
> pipeline to be treated as bridges.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  drivers/gpu/drm/bridge/tc358764.c | 99 ++-----------------------------
>  1 file changed, 6 insertions(+), 93 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
> index c1e35bdf9232..28480bdc4287 100644
> --- a/drivers/gpu/drm/bridge/tc358764.c
> +++ b/drivers/gpu/drm/bridge/tc358764.c
> @@ -153,10 +153,9 @@ static const char * const tc358764_supplies[] = {
>  struct tc358764 {
>  	struct device *dev;
>  	struct drm_bridge bridge;
> -	struct drm_connector connector;
> +	struct drm_bridge *panel_bridge;

s/panel_bridge/next_bridge/ as it may not be a panel.

>  	struct regulator_bulk_data supplies[ARRAY_SIZE(tc358764_supplies)];
>  	struct gpio_desc *gpio_reset;
> -	struct drm_panel *panel;

Are there #includes that you can drop ?

>  	int error;
>  };
>  
> @@ -210,12 +209,6 @@ static inline struct tc358764 *bridge_to_tc358764(struct drm_bridge *bridge)
>  	return container_of(bridge, struct tc358764, bridge);
>  }
>  
> -static inline
> -struct tc358764 *connector_to_tc358764(struct drm_connector *connector)
> -{
> -	return container_of(connector, struct tc358764, connector);
> -}
> -
>  static int tc358764_init(struct tc358764 *ctx)
>  {
>  	u32 v = 0;
> @@ -278,43 +271,11 @@ static void tc358764_reset(struct tc358764 *ctx)
>  	usleep_range(1000, 2000);
>  }
>  
> -static int tc358764_get_modes(struct drm_connector *connector)
> -{
> -	struct tc358764 *ctx = connector_to_tc358764(connector);
> -
> -	return drm_panel_get_modes(ctx->panel, connector);
> -}
> -
> -static const
> -struct drm_connector_helper_funcs tc358764_connector_helper_funcs = {
> -	.get_modes = tc358764_get_modes,
> -};
> -
> -static const struct drm_connector_funcs tc358764_connector_funcs = {
> -	.fill_modes = drm_helper_probe_single_connector_modes,
> -	.destroy = drm_connector_cleanup,
> -	.reset = drm_atomic_helper_connector_reset,
> -	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> -	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> -};
> -
> -static void tc358764_disable(struct drm_bridge *bridge)
> -{
> -	struct tc358764 *ctx = bridge_to_tc358764(bridge);
> -	int ret = drm_panel_disable(bridge_to_tc358764(bridge)->panel);
> -
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error disabling panel (%d)\n", ret);
> -}
> -
>  static void tc358764_post_disable(struct drm_bridge *bridge)
>  {
>  	struct tc358764 *ctx = bridge_to_tc358764(bridge);
>  	int ret;
>  
> -	ret = drm_panel_unprepare(ctx->panel);
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error unpreparing panel (%d)\n", ret);
>  	tc358764_reset(ctx);
>  	usleep_range(10000, 15000);
>  	ret = regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> @@ -335,72 +296,25 @@ static void tc358764_pre_enable(struct drm_bridge *bridge)
>  	ret = tc358764_init(ctx);
>  	if (ret < 0)
>  		dev_err(ctx->dev, "error initializing bridge (%d)\n", ret);
> -	ret = drm_panel_prepare(ctx->panel);
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error preparing panel (%d)\n", ret);
> -}
> -
> -static void tc358764_enable(struct drm_bridge *bridge)
> -{
> -	struct tc358764 *ctx = bridge_to_tc358764(bridge);
> -	int ret = drm_panel_enable(ctx->panel);
> -
> -	if (ret < 0)
> -		dev_err(ctx->dev, "error enabling panel (%d)\n", ret);
>  }
>  
>  static int tc358764_attach(struct drm_bridge *bridge,
>  			   enum drm_bridge_attach_flags flags)
> -{
> -	struct tc358764 *ctx = bridge_to_tc358764(bridge);
> -	struct drm_device *drm = bridge->dev;
> -	int ret;
> -
> -	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) {
> -		DRM_ERROR("Fix bridge driver to make connector optional!");
> -		return -EINVAL;
> -	}
> -
> -	ctx->connector.polled = DRM_CONNECTOR_POLL_HPD;
> -	ret = drm_connector_init(drm, &ctx->connector,
> -				 &tc358764_connector_funcs,
> -				 DRM_MODE_CONNECTOR_LVDS);
> -	if (ret) {
> -		DRM_ERROR("Failed to initialize connector\n");
> -		return ret;
> -	}
> -
> -	drm_connector_helper_add(&ctx->connector,
> -				 &tc358764_connector_helper_funcs);
> -	drm_connector_attach_encoder(&ctx->connector, bridge->encoder);
> -	ctx->connector.funcs->reset(&ctx->connector);
> -	drm_connector_register(&ctx->connector);
> -
> -	return 0;
> -}
> -
> -static void tc358764_detach(struct drm_bridge *bridge)
>  {
>  	struct tc358764 *ctx = bridge_to_tc358764(bridge);
>  
> -	drm_connector_unregister(&ctx->connector);
> -	ctx->panel = NULL;
> -	drm_connector_put(&ctx->connector);
> +	return drm_bridge_attach(bridge->encoder, ctx->panel_bridge, bridge, flags);
>  }
>  
>  static const struct drm_bridge_funcs tc358764_bridge_funcs = {
> -	.disable = tc358764_disable,
>  	.post_disable = tc358764_post_disable,
> -	.enable = tc358764_enable,
>  	.pre_enable = tc358764_pre_enable,
>  	.attach = tc358764_attach,
> -	.detach = tc358764_detach,
>  };
>  
>  static int tc358764_parse_dt(struct tc358764 *ctx)
>  {
>  	struct device *dev = ctx->dev;
> -	int ret;
>  
>  	ctx->gpio_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
>  	if (IS_ERR(ctx->gpio_reset)) {
> @@ -408,12 +322,11 @@ static int tc358764_parse_dt(struct tc358764 *ctx)
>  		return PTR_ERR(ctx->gpio_reset);
>  	}
>  
> -	ret = drm_of_find_panel_or_bridge(ctx->dev->of_node, 1, 0, &ctx->panel,
> -					  NULL);
> -	if (ret && ret != -EPROBE_DEFER)
> -		dev_err(dev, "cannot find panel (%d)\n", ret);
> +	ctx->panel_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> +	if (IS_ERR(ctx->panel_bridge))
> +		return PTR_ERR(ctx->panel_bridge);
>  
> -	return ret;
> +	return 0;
>  }
>  
>  static int tc358764_configure_regulators(struct tc358764 *ctx)

-- 
Regards,

Laurent Pinchart
