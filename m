Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C08131082E1
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2019 11:33:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726090AbfKXKdt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Nov 2019 05:33:49 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:36230 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725980AbfKXKdt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Nov 2019 05:33:49 -0500
Received: from pendragon.ideasonboard.com (fs96f9c64d.tkyc509.ap.nuro.jp [150.249.198.77])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6905CA38;
        Sun, 24 Nov 2019 11:33:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1574591625;
        bh=JAen5KY9QtgvxDAu76QWGldJFE1TANJQX3EL1Y6ZCvk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SD4jNazALgqsHBlUULF1tCU1EgRMCd+LAzhoEB/fBgt/WLRMXye6kQVXWNegO+dYS
         kEpQBI1llobSb8P48PSKpOZMvMma4lIhoOfdZj8JzR/0/qXSyx+ne1KQEXax5GZEoC
         BsnBXXGL8j8ZT9Km1KRTW8JCoTEjWDaieOrU6MGU=
Date:   Sun, 24 Nov 2019 12:33:35 +0200
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
Subject: Re: [PATCH v3 05/21] drm/bridge: Introduce
 drm_bridge_chain_get_next_bridge()
Message-ID: <20191124103335.GF4727@pendragon.ideasonboard.com>
References: <20191023154512.9762-1-boris.brezillon@collabora.com>
 <20191023154512.9762-6-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20191023154512.9762-6-boris.brezillon@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Boris,

Thank you for the patch.

On Wed, Oct 23, 2019 at 05:44:56PM +0200, Boris Brezillon wrote:
> And use it in drivers accessing the bridge->next field directly.
> This is part of our attempt to make the bridge chain a double-linked list
> based on the generic list helpers.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
> Changes in v3:
> * Inline drm_bridge_chain_get_next_bridge() (Suggested by Laurent)
> 
> Changes in v2:
> * Kill the last/first helpers (they're not really needed)
> * Drop the !bridge || !bridge->encoder test
> ---
>  drivers/gpu/drm/exynos/exynos_drm_dsi.c |  3 ++-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c     |  6 ++++--
>  drivers/gpu/drm/omapdrm/omap_drv.c      |  4 ++--
>  drivers/gpu/drm/omapdrm/omap_encoder.c  |  3 ++-
>  drivers/gpu/drm/vc4/vc4_dsi.c           |  4 +++-
>  include/drm/drm_bridge.h                | 13 +++++++++++++
>  6 files changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/exynos/exynos_drm_dsi.c b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> index 3915f50b005e..005c67894b78 100644
> --- a/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> +++ b/drivers/gpu/drm/exynos/exynos_drm_dsi.c
> @@ -1593,9 +1593,10 @@ static int exynos_dsi_host_detach(struct mipi_dsi_host *host,
>  				  struct mipi_dsi_device *device)
>  {
>  	struct exynos_dsi *dsi = host_to_dsi(host);
> -	struct drm_bridge *out_bridge = dsi->bridge.next;
>  	struct drm_device *drm = dsi->encoder.dev;
> +	struct drm_bridge *out_bridge;
>  
> +	out_bridge = drm_bridge_chain_get_next_bridge(&dsi->bridge);

You may want to store this in the exynos_dsi structure in the previous
patch where you rework this driver.

>  	if (dsi->panel) {
>  		mutex_lock(&drm->mode_config.mutex);
>  		exynos_dsi_disable(&dsi->bridge);
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index ea68b5adccbe..cfaa5aab8876 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -1238,16 +1238,18 @@ static int mtk_hdmi_conn_mode_valid(struct drm_connector *conn,
>  				    struct drm_display_mode *mode)
>  {
>  	struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);
> +	struct drm_bridge *next_bridge;
>  
>  	dev_dbg(hdmi->dev, "xres=%d, yres=%d, refresh=%d, intl=%d clock=%d\n",
>  		mode->hdisplay, mode->vdisplay, mode->vrefresh,
>  		!!(mode->flags & DRM_MODE_FLAG_INTERLACE), mode->clock * 1000);
>  
> -	if (hdmi->bridge.next) {
> +	next_bridge = drm_bridge_chain_get_next_bridge(&hdmi->bridge);
> +	if (next_bridge) {
>  		struct drm_display_mode adjusted_mode;
>  
>  		drm_mode_copy(&adjusted_mode, mode);
> -		if (!drm_bridge_chain_mode_fixup(hdmi->bridge.next, mode,
> +		if (!drm_bridge_chain_mode_fixup(next_bridge, mode,
>  						 &adjusted_mode))
>  			return MODE_BAD;
>  	}
> diff --git a/drivers/gpu/drm/omapdrm/omap_drv.c b/drivers/gpu/drm/omapdrm/omap_drv.c
> index b3e22c890c51..865164fe28dc 100644
> --- a/drivers/gpu/drm/omapdrm/omap_drv.c
> +++ b/drivers/gpu/drm/omapdrm/omap_drv.c
> @@ -217,8 +217,8 @@ static int omap_display_id(struct omap_dss_device *output)
>  	} else if (output->bridge) {
>  		struct drm_bridge *bridge = output->bridge;
>  
> -		while (bridge->next)
> -			bridge = bridge->next;
> +		while (drm_bridge_chain_get_next_bridge(bridge))
> +			bridge = drm_bridge_chain_get_next_bridge(bridge);
>  
>  		node = bridge->of_node;
>  	} else if (output->panel) {
> diff --git a/drivers/gpu/drm/omapdrm/omap_encoder.c b/drivers/gpu/drm/omapdrm/omap_encoder.c
> index 24bbe9f2a32e..8ca54081997e 100644
> --- a/drivers/gpu/drm/omapdrm/omap_encoder.c
> +++ b/drivers/gpu/drm/omapdrm/omap_encoder.c
> @@ -126,7 +126,8 @@ static void omap_encoder_mode_set(struct drm_encoder *encoder,
>  	for (dssdev = output; dssdev; dssdev = dssdev->next)
>  		omap_encoder_update_videomode_flags(&vm, dssdev->bus_flags);
>  
> -	for (bridge = output->bridge; bridge; bridge = bridge->next) {
> +	for (bridge = output->bridge; bridge;
> +	     bridge = drm_bridge_chain_get_next_bridge(bridge)) {

A for_each_bridge() macro would be nice (in a separate patch). It could
be used in omap_drv.c above too.

>  		if (!bridge->timings)
>  			continue;
>  
> diff --git a/drivers/gpu/drm/vc4/vc4_dsi.c b/drivers/gpu/drm/vc4/vc4_dsi.c
> index 49f8a313e759..49c47185aff0 100644
> --- a/drivers/gpu/drm/vc4/vc4_dsi.c
> +++ b/drivers/gpu/drm/vc4/vc4_dsi.c
> @@ -1644,8 +1644,10 @@ static void vc4_dsi_unbind(struct device *dev, struct device *master,
>  	struct drm_device *drm = dev_get_drvdata(master);
>  	struct vc4_dev *vc4 = to_vc4_dev(drm);
>  	struct vc4_dsi *dsi = dev_get_drvdata(dev);
> +	struct drm_bridge *bridge;
>  
> -	if (dsi->bridge.next)
> +	bridge = drm_bridge_chain_get_next_bridge(&dsi->bridge);
> +	if (bridge)
>  		pm_runtime_disable(dev);
>  
>  	vc4_dsi_encoder_destroy(dsi->encoder);
> diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
> index 726435baf4ad..8aeba83fcf31 100644
> --- a/include/drm/drm_bridge.h
> +++ b/include/drm/drm_bridge.h
> @@ -409,6 +409,19 @@ struct drm_bridge *of_drm_find_bridge(struct device_node *np);
>  int drm_bridge_attach(struct drm_encoder *encoder, struct drm_bridge *bridge,
>  		      struct drm_bridge *previous);
>  
> +/**
> + * drm_bridge_chain_get_next_bridge() - Get the next bridge in the chain
> + * @bridge: bridge object
> + *
> + * RETURNS:
> + * the next bridge in the chain, or NULL if @bridge is the last.

Maybe "the next bridge in the chain after @bridge, ..." ?

> + */
> +static inline struct drm_bridge *
> +drm_bridge_chain_get_next_bridge(struct drm_bridge *bridge)

Technically speaking this doesn't operate on a chain but on a bridge, so
I'd name is drm_bridge_get_next_bridge(). I will not insist to the way
of nacking the series for this, so with the rename, but also without,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +{
> +	return bridge->next;
> +}
> +
>  bool drm_bridge_chain_mode_fixup(struct drm_bridge *bridge,
>  				 const struct drm_display_mode *mode,
>  				 struct drm_display_mode *adjusted_mode);

-- 
Regards,

Laurent Pinchart
