Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FDFF2582F1
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 22:44:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726537AbgHaUoC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 16:44:02 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:46512 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726102AbgHaUoB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 16:44:01 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id DBFBC277;
        Mon, 31 Aug 2020 22:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1598906639;
        bh=GWc1kc2ZYMRzT4RklTX/9TamGTAXwPTp8ETTg6O8suA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OhB1coHrSP/iW/x30PtlAPrlM5c0tj8EdwS5afCTsmXePE0nLEQ8cuBmfnewcJRPq
         NCn8Cw+vH8QuW0vmE+cH29aC5aT51ly/JqlYzr6YuXx9J95YZZrfMY+NYaVaLyN5v2
         BA9iZ9lLrt1VPlIMprAdpgVyQn8kTNOfltTG7fW4=
Date:   Mon, 31 Aug 2020 23:43:37 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/4] drm/sun4i: tcon: Support the LVDS Dual-Link on
 the A20
Message-ID: <20200831204337.GW16155@pendragon.ideasonboard.com>
References: <cover.7029eefe5c5350920f91d4cd4cbc061466752f3c.1596101672.git-series.maxime@cerno.tech>
 <100f5fe3391366e9bbc76ebec1edbf8c0aeb715a.1596101672.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <100f5fe3391366e9bbc76ebec1edbf8c0aeb715a.1596101672.git-series.maxime@cerno.tech>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

Thank you for the patch.

On Thu, Jul 30, 2020 at 11:35:03AM +0200, Maxime Ripard wrote:
> The A20 can use its second TCON as the secondary LVDS link in a dual-link
> setup, with the TCON0 being the main link. Extend a bit the parsing code to
> leverage the DRM dual-link code, register only the LVDS output on the
> primary TCON, and add the needed bits to setup the TCON properly.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 36 +++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/sun4i/sun4i_tcon.h |  4 +++-
>  2 files changed, 40 insertions(+)
> 
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index d03ad75f9900..ed2abf6eb18b 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -487,6 +487,9 @@ static void sun4i_tcon0_mode_set_lvds(struct sun4i_tcon *tcon,
>  	else
>  		reg |= SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL;
>  
> +	if (tcon->lvds_dual_link)
> +		reg |= SUN4I_TCON0_LVDS_IF_DUAL_LINK;
> +
>  	if (sun4i_tcon_get_pixel_depth(encoder) == 24)
>  		reg |= SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS;
>  	else
> @@ -896,6 +899,16 @@ static int sun4i_tcon_register_panel(struct drm_device *drm,
>  		return sun4i_rgb_init(drm, tcon);
>  
>  	/*
> +	 * Only the TCON0 will be relevant for the LVDS output, so if
> +	 * our ID is something else, let's prevent our TCON from
> +	 * registering its own LVDS output
> +	 */
> +	if (tcon->id) {
> +		dev_info(dev, "Secondary TCON, disabling panel output");

This may worry the user unnecessarily. I'd make it a debug message, or
drop it completely, and like reword it a bit as pointed out by Chen-Yu.

> +		return 0;
> +	}
> +
> +	/*
>  	 * This can only be made optional since we've had DT
>  	 * nodes without the LVDS reset properties.
>  	 *
> @@ -941,6 +954,28 @@ static int sun4i_tcon_register_panel(struct drm_device *drm,
>  		return -ENODEV;
>  	}
>  
> +	/*
> +	 * If we don't have a second TCON, we will never be able to do
> +	 * dual-link LVDS, so we don't have much more to do.
> +	 */
> +	companion = of_parse_phandle(dev->of_node, "allwinner,lvds-companion", 0);

Should there be a patch to add this property to the DT bindings ?

> +	if (!companion)
> +		return 0;
> +
> +	/*
> +	 * Let's do a sanity check on the dual-link setup to make sure
> +	 * everything is properly described.
> +	 */
> +	ret = drm_of_lvds_get_dual_link_pixel_order(dev->of_node, 1, 0,
> +						    companion, 1, 0);
> +	if (ret < 0) {
> +		dev_err(dev, "Invalid Dual-Link Configuration.\n");
> +		return ret;
> +	}
> +
> +	dev_info(dev, "Primary TCON, enabling LVDS Dual-Link");
> +	tcon->lvds_dual_link = true;
> +
>  	return sun4i_lvds_init(drm, tcon);
>  }
>  
> @@ -1500,6 +1535,7 @@ static const struct sun4i_tcon_quirks sun7i_a20_tcon0_quirks = {
>  };
>  
>  static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
> +	.supports_lvds		= true,

Should this be split to a separate patch, or at least mentioned in the
commit message ?

>  	.has_channel_0		= true,
>  	.has_channel_1		= true,
>  	.dclk_min_div		= 4,
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> index cfbf4e6c1679..51c4e09cdd13 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> @@ -98,6 +98,7 @@
>  
>  #define SUN4I_TCON0_LVDS_IF_REG			0x84
>  #define SUN4I_TCON0_LVDS_IF_EN				BIT(31)
> +#define SUN4I_TCON0_LVDS_IF_DUAL_LINK			BIT(30)
>  #define SUN4I_TCON0_LVDS_IF_BITWIDTH_MASK		BIT(26)
>  #define SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS		(1 << 26)
>  #define SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS		(0 << 26)
> @@ -274,6 +275,9 @@ struct sun4i_tcon {
>  	/* Associated crtc */
>  	struct sun4i_crtc		*crtc;
>  
> +	/* Is the LVDS link a dual-channel link? */
> +	bool				lvds_dual_link;
> +
>  	int				id;
>  
>  	/* TCON list management */

-- 
Regards,

Laurent Pinchart
