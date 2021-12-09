Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2366F46ED46
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 17:38:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241171AbhLIQmE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 11:42:04 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:39646 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241244AbhLIQmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 11:42:03 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id C2CEB501;
        Thu,  9 Dec 2021 17:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639067909;
        bh=3Mxsi+WW5Zpuvl3ENZtcA5oQXgRkwpop2sTOz0mMFWA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Px+1KY2eYvkEXP1a7b7q99oGsXpoezQC2Q+yZDzaWTe2TZbFBrF3k78kti3zS8eIY
         coi12OxSRPad2ULKNvJLq38crfmH09oIj81hc4WTh4D43HVMVmqNn7t5i40UAze210
         syqms//Fdn/Pr19GOKxVQNfgVzPhfLTC/2+GmWJA=
Date:   Thu, 9 Dec 2021 18:37:59 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 4/4] drm/bridge: ti-sn65dsi83: Add vcc supply
 regulator support
Message-ID: <YbIw56OtJQuLA+9t@pendragon.ideasonboard.com>
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
 <20211118091955.3009900-5-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211118091955.3009900-5-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

Thank you for the patch.

On Thu, Nov 18, 2021 at 10:19:55AM +0100, Alexander Stein wrote:
> VCC needs to be enabled before releasing the enable GPIO.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 065610edc37a..54d18e82ed74 100644
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
> @@ -337,6 +339,12 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
>  	u16 val;
>  	int ret;
>  
> +	ret = regulator_enable(ctx->vcc);
> +	if (ret) {
> +		dev_err(ctx->dev, "Failed to enable vcc\n");

I'd print the error code here as you do so in
sn65dsi83_atomic_disable().

> +		return;
> +	}
> +
>  	/* Deassert reset */
>  	gpiod_set_value(ctx->enable_gpio, 1);
>  	usleep_range(1000, 1100);
> @@ -486,11 +494,16 @@ static void sn65dsi83_atomic_disable(struct drm_bridge *bridge,
>  				     struct drm_bridge_state *old_bridge_state)
>  {
>  	struct sn65dsi83 *ctx = bridge_to_sn65dsi83(bridge);
> +	int ret;
>  
>  	/* Put the chip in reset, pull EN line low, and assure 10ms reset low timing. */
>  	gpiod_set_value(ctx->enable_gpio, 0);
>  	usleep_range(10000, 11000);
>  
> +	ret = regulator_disable(ctx->vcc);
> +	if (ret)
> +		dev_err(ctx->dev, "Failed to disable vcc: %i\n", ret);

I wish printf didn't have identical %i and %d specifiers :-)

> +
>  	regcache_mark_dirty(ctx->regmap);
>  }
>  
> @@ -599,6 +612,12 @@ static int sn65dsi83_parse_dt(struct sn65dsi83 *ctx, enum sn65dsi83_model model)
>  
>  	ctx->panel_bridge = panel_bridge;
>  
> +	ctx->vcc = devm_regulator_get(dev, "vcc");
> +	if (IS_ERR(ctx->vcc))
> +		return dev_err_probe(dev, PTR_ERR(ctx->vcc),
> +				     "Failed to get supply 'vcc': %pe\n",
> +				     ERR_PTR(ret));

This doesn't seem right, ret doesn't contain any useful error code at
this point.

		return dev_err_probe(dev, PTR_ERR(ctx->vcc),
				     "Failed to get supply 'vcc'\n");

should be enough, as dev_err_probe() adds the error to the message
internally.

With those small fixes,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +
>  	return 0;
>  }
>  

-- 
Regards,

Laurent Pinchart
