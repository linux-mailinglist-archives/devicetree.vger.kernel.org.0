Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1716F3D5093
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 01:07:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbhGYW06 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sun, 25 Jul 2021 18:26:58 -0400
Received: from aposti.net ([89.234.176.197]:46332 "EHLO aposti.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229547AbhGYW05 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 25 Jul 2021 18:26:57 -0400
Date:   Mon, 26 Jul 2021 00:07:17 +0100
From:   Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v3 3/3] drm/panel-simple: add Gopher 2b LCD panel
To:     Artjom Vejsel <akawolf0@gmail.com>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <5KPTWQ.8BMLSDUPJDH71@crapouillou.net>
In-Reply-To: <20210725221527.1771892-4-akawolf0@gmail.com>
References: <20210725221527.1771892-1-akawolf0@gmail.com>
        <20210725221527.1771892-4-akawolf0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Le lun., juil. 26 2021 at 01:15:27 +0300, Artjom Vejsel 
<akawolf0@gmail.com> a écrit :
> The Gopher 2b LCD panel is used in Gopher 2b handhelds.
> It's simple panel with NewVision NV3047 driver, but SPI lines are not 
> connected.
> It has no specific name, since it's unique to that handhelds.
> lot name at AliExpress: 4.3 inch 40PIN TFT LCD Screen COG NV3047 
> Drive IC 480(RGB)*272 No Touch 24Bit RGB Interface
> 
> Signed-off-by: Artjom Vejsel <akawolf0@gmail.com>

Reviewed-by: Paul Cercueil <paul@crapouillou.net>

Cheers,
-Paul

> ---
>  drivers/gpu/drm/panel/panel-simple.c | 43 
> ++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c 
> b/drivers/gpu/drm/panel/panel-simple.c
> index 9b286bd4444f..6b69c0c70814 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3563,6 +3563,46 @@ static const struct panel_desc qd43003c0_40 = {
>  	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
>  };
> 
> +static const struct drm_display_mode 
> qishenglong_gopher2b_lcd_panel_modes[] = {
> +	{ /* 60 Hz */
> +		.clock = 10800,
> +		.hdisplay = 480,
> +		.hsync_start = 480 + 77,
> +		.hsync_end = 480 + 77 + 41,
> +		.htotal = 480 + 77 + 41 + 2,
> +		.vdisplay = 272,
> +		.vsync_start = 272 + 16,
> +		.vsync_end = 272 + 16 + 10,
> +		.vtotal = 272 + 16 + 10 + 2,
> +		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> +	},
> +	{ /* 50 Hz */
> +		.clock = 10800,
> +		.hdisplay = 480,
> +		.hsync_start = 480 + 17,
> +		.hsync_end = 480 + 17 + 41,
> +		.htotal = 480 + 17 + 41 + 2,
> +		.vdisplay = 272,
> +		.vsync_start = 272 + 116,
> +		.vsync_end = 272 + 116 + 10,
> +		.vtotal = 272 + 116 + 10 + 2,
> +		.flags = DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> +	},
> +};
> +
> +static const struct panel_desc qishenglong_gopher2b_lcd_panel = {
> +	.modes = qishenglong_gopher2b_lcd_panel_modes,
> +	.num_modes = ARRAY_SIZE(qishenglong_gopher2b_lcd_panel_modes),
> +	.bpc = 8,
> +	.size = {
> +		.width = 95,
> +		.height = 54,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | 
> DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>  static const struct display_timing rocktech_rk070er9427_timing = {
>  	.pixelclock = { 26400000, 33300000, 46800000 },
>  	.hactive = { 800, 800, 800 },
> @@ -4651,6 +4691,9 @@ static const struct of_device_id 
> platform_of_match[] = {
>  	}, {
>  		.compatible = "qiaodian,qd43003c0-40",
>  		.data = &qd43003c0_40,
> +	}, {
> +		.compatible = "qishenglong,gopher2b-lcd-panel",
> +		.data = &qishenglong_gopher2b_lcd_panel,
>  	}, {
>  		.compatible = "rocktech,rk070er9427",
>  		.data = &rocktech_rk070er9427,
> --
> 2.32.0
> 


