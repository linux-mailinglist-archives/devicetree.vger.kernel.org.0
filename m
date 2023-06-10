Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3394872AEA6
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 22:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229464AbjFJUYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 16:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjFJUYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 16:24:12 -0400
X-Greylist: delayed 619 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 10 Jun 2023 13:24:11 PDT
Received: from mailrelay6-1.pub.mailoutpod2-cph3.one.com (mailrelay6-1.pub.mailoutpod2-cph3.one.com [46.30.211.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EB3A35BE
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 13:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=be6FcTyCK8ypmkrx62TPwHVjVnxpDN+BWdCTrOWPdqo=;
        b=IpAj9esHfYVzSX0KRm0cFFVkJy6O86keJTa24mx9gt5t6v3n+JrS1Q9DufsCjDjCeoW4egu6tTEQE
         tETuJCkiRthKkMQnsj1J5Dhdy/CS+7i9SbTGo6iCmXkPruF4nFAt+x+lDHBW1/01/IHJ9/DawL2KJs
         zHmlF9mcLIYOMZDm55Y8G7fb8FuF2b1C7L0tugK1KpAL4vLYGaaVyNXd8xs8lkz5lcfC2op3gqn38x
         7C24NcYNsBnpJ51QOzJvaBBelJmP8ojq4moX8mb7/P/1SXbvxuSF7wVe3mWNowDvo582MJONAj48Zh
         dIgMSjGpXY2rPFm9SvKoIwHvhq+ScHA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=be6FcTyCK8ypmkrx62TPwHVjVnxpDN+BWdCTrOWPdqo=;
        b=HyNjwtakEbfl+lS0CG8A4h+88ODvf2KVyNHmhxjVP6qFedsDPAjCardJbuPHxsSIObXm0AeNEDHwX
         uMAu0+RBw==
X-HalOne-ID: 92b083d3-07cc-11ee-bca9-6f01c1d0a443
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
        by mailrelay6 (Halon) with ESMTPSA
        id 92b083d3-07cc-11ee-bca9-6f01c1d0a443;
        Sat, 10 Jun 2023 20:22:53 +0000 (UTC)
Date:   Sat, 10 Jun 2023 22:22:51 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 6/7] drm/panel: sitronix-st7789v: Add EDT ET028013DMA
 panel support
Message-ID: <20230610202251.GF1041001@ravnborg.org>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
 <20230609145951.853533-7-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230609145951.853533-7-miquel.raynal@bootlin.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 09, 2023 at 04:59:50PM +0200, Miquel Raynal wrote:
> This panel from Emerging Display Technologies Corporation features an
> ST7789V2 panel inside which is almost identical to what the Sitronix
> panel driver supports.
> 
> In practice, the module physical size is specific, and experiments show
> that the display will malfunction if any of the following situation
> occurs:
> * Pixel clock is above 3MHz
> * Pixel clock is not inverted
> I could not properly identify the reasons behind these failures, scope
> captures show valid input signals.

The patch includes an additional change where the bus_flags are assigned
to the connector. At least tell why, or maybe split it out.
Other panels could learn to do the same - and I assume you did it
because it was required in the atmel_hlcd driver.

	Sam

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../gpu/drm/panel/panel-sitronix-st7789v.c    | 34 +++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> index 212bccc31804..7de192a3a8aa 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> @@ -30,7 +30,8 @@
>  #define ST7789V_RGBCTRL_RCM(n)			(((n) & 3) << 5)
>  #define ST7789V_RGBCTRL_VSYNC_HIGH		BIT(3)
>  #define ST7789V_RGBCTRL_HSYNC_HIGH		BIT(2)
> -#define ST7789V_RGBCTRL_PCLK_HIGH		BIT(1)
> +#define ST7789V_RGBCTRL_PCLK_FALLING		BIT(1)
> +#define ST7789V_RGBCTRL_PCLK_RISING		0
>  #define ST7789V_RGBCTRL_VBP(n)			((n) & 0x7f)
>  #define ST7789V_RGBCTRL_HBP(n)			((n) & 0x1f)
>  
> @@ -117,6 +118,7 @@ struct st7789v_panel_info {
>  	u16 width_mm;
>  	u16 height_mm;
>  	u32 bus_format;
> +	u32 bus_flags;
>  };
>  
>  struct st7789v {
> @@ -175,6 +177,18 @@ static const struct drm_display_mode default_mode = {
>  	.vtotal = 320 + 8 + 4 + 4,
>  };
>  
> +static const struct drm_display_mode slow_mode = {
> +	.clock = 3000,
> +	.hdisplay = 240,
> +	.hsync_start = 240 + 38,
> +	.hsync_end = 240 + 38 + 10,
> +	.htotal = 240 + 38 + 10 + 10,
> +	.vdisplay = 320,
> +	.vsync_start = 320 + 8,
> +	.vsync_end = 320 + 8 + 4,
> +	.vtotal = 320 + 8 + 4 + 4,
> +};
> +
>  static int st7789v_get_modes(struct drm_panel *panel,
>  			     struct drm_connector *connector)
>  {
> @@ -197,6 +211,7 @@ static int st7789v_get_modes(struct drm_panel *panel,
>  
>  	connector->display_info.width_mm = panel_info->width_mm;
>  	connector->display_info.height_mm = panel_info->height_mm;
> +	connector->display_info.bus_flags = panel_info->bus_flags;
>  	drm_display_info_set_bus_formats(&connector->display_info,
>  					 &panel_info->bus_format, 1);
>  
> @@ -206,8 +221,13 @@ static int st7789v_get_modes(struct drm_panel *panel,
>  static int st7789v_prepare(struct drm_panel *panel)
>  {
>  	struct st7789v *ctx = panel_to_st7789v(panel);
> +	const struct st7789v_panel_info *panel_info = ctx->panel_info;
> +	u8 pck = ST7789V_RGBCTRL_PCLK_FALLING;
>  	int ret;
>  
> +	if (panel_info->bus_flags & DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE)
> +		pck = ST7789V_RGBCTRL_PCLK_RISING;
> +
>  	ret = regulator_enable(ctx->power);
>  	if (ret)
>  		return ret;
> @@ -321,7 +341,7 @@ static int st7789v_prepare(struct drm_panel *panel)
>  					     ST7789V_RGBCTRL_RCM(2) |
>  					     ST7789V_RGBCTRL_VSYNC_HIGH |
>  					     ST7789V_RGBCTRL_HSYNC_HIGH |
> -					     ST7789V_RGBCTRL_PCLK_HIGH));
> +					     pck));
>  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_VBP(8)));
>  	ST7789V_TEST(ret, st7789v_write_data(ctx, ST7789V_RGBCTRL_HBP(20)));
>  
> @@ -422,14 +442,24 @@ static const struct st7789v_panel_info st7789v_info = {
>  	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
>  };
>  
> +static const struct st7789v_panel_info et028013dma_info = {
> +	.display_mode = &slow_mode,
> +	.width_mm = 43,
> +	.height_mm = 58,
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> +	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_POSEDGE,
> +};
> +
>  static const struct of_device_id st7789v_of_match[] = {
>  	{ .compatible = "sitronix,st7789v", .data = &st7789v_info },
> +	{ .compatible = "edt,et028013dma", .data = &et028013dma_info },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, st7789v_of_match);
>  
>  static const struct spi_device_id st7789v_ids[] = {
>  	{ "st7789v", },
> +	{ "et028013dma", },
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(spi, st7789v_ids);
> -- 
> 2.34.1
