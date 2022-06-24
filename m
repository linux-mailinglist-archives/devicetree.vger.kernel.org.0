Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28E9E55A232
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 21:56:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231419AbiFXTzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 15:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbiFXTzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 15:55:02 -0400
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com (mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 564B68288A
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 12:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=fFH1rzKaL0Dkml2PgMJpcpxYa5SvbbT/XBFKaTsmoVU=;
        b=dPM4baGFWJmCklVsVLd0z5ixiMe2DRlWPNC33CUDEEKs0pxhCaeE3CCvvrneNRw/gJcZhOuKcqSN2
         ryYt0P6tEtP1kA54BOpnXrrqQ/6qZjUH9GitW6R8UP/m58RqBKy1VCbvWSBUvaUmxFNxcBiRV/gxFl
         CJdpzywrEi2zUMrralMaZcaFsTTGtG+P1rGUZj8RvUPubBDgX5J3W3InkutBsnt0AapGmUxkKELuX0
         1Nx3nU8I5gyMvPsO5I8g2K12bCZtV7BfYPekc84stklfTti+2xEgvNL9ApKo9V+DkxlG1uRVohFiWY
         0snFH9olmcU6NdfcGkP1kvA8mG1R+Sg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=fFH1rzKaL0Dkml2PgMJpcpxYa5SvbbT/XBFKaTsmoVU=;
        b=y85KJl9BjWr/xQ3YZSqrhbQ76R+7Sc7S8wBlUvVHrqxHyS1IU0M82Nb3gTv13NJWwV4LzY1AaGxtj
         HuJSUiJBQ==
X-HalOne-Cookie: 298b65dc2eaecc3462e00c4ae0f5020d4b3cb813
X-HalOne-ID: 870a78e6-f3f7-11ec-a916-d0431ea8a290
Received: from mailproxy2.cst.dirpod3-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
        id 870a78e6-f3f7-11ec-a916-d0431ea8a290;
        Fri, 24 Jun 2022 19:54:59 +0000 (UTC)
Date:   Fri, 24 Jun 2022 21:54:57 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Bastian Krause <bst@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org, kernel@pengutronix.de,
        devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Yannick Fertre <yannick.fertre@st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 2/2] drm/panel: simple: add AM-800600P5TMQW-TB8H
Message-ID: <YrYWkdqZG1sazr2N@ravnborg.org>
References: <20220610111511.1421067-1-bst@pengutronix.de>
 <20220610111511.1421067-2-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220610111511.1421067-2-bst@pengutronix.de>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLACK autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bastian,

On Fri, Jun 10, 2022 at 01:15:11PM +0200, Bastian Krause wrote:
> Add support for the Ampire AM-800600P5TMQW-TB8H 800x600 panel. Data
> sheet is currently not publicly available, unfortunately.
> 
> Signed-off-by: Bastian Krause <bst@pengutronix.de>

Applied to drm-misc (drm-misc-next).
When applying I fixed up the compatible to match the binding.
You may need to fix your DT files if they used the old compatible.
The one from the binding had a dash like similar panels, so that is
the one I picked.
See below for the fix-up.

	Sam

> ---
>  drivers/gpu/drm/panel/panel-simple.c | 33 ++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 4a2e580a2f7b7..3a61873dd887c 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -778,6 +778,36 @@ static const struct panel_desc ampire_am800480r3tmqwa1h = {
>  	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
>  };
>  
> +static const struct display_timing ampire_am800600p5tmqw_tb8h_timing = {
> +	.pixelclock = { 34500000, 39600000, 50400000 },
> +	.hactive = { 800, 800, 800 },
> +	.hfront_porch = { 12, 112, 312 },
> +	.hback_porch = { 87, 87, 48 },
> +	.hsync_len = { 1, 1, 40 },
> +	.vactive = { 600, 600, 600 },
> +	.vfront_porch = { 1, 21, 61 },
> +	.vback_porch = { 38, 38, 19 },
> +	.vsync_len = { 1, 1, 20 },
> +	.flags = DISPLAY_FLAGS_HSYNC_LOW | DISPLAY_FLAGS_VSYNC_LOW |
> +		DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +		DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc ampire_am800600p5tmqwtb8h = {
> +	.timings = &ampire_am800600p5tmqw_tb8h_timing,
> +	.num_timings = 1,
> +	.bpc = 6,
> +	.size = {
> +		.width = 162,
> +		.height = 122,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH |
> +		DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE |
> +		DRM_BUS_FLAG_SYNC_SAMPLE_NEGEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>  static const struct display_timing santek_st0700i5y_rbslw_f_timing = {
>  	.pixelclock = { 26400000, 33300000, 46800000 },
>  	.hactive = { 800, 800, 800 },
> @@ -3754,6 +3784,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "ampire,am800480r3tmqwa1h",
>  		.data = &ampire_am800480r3tmqwa1h,
> +	}, {
> +		.compatible = "ampire,am800600p5tmqwtb8h",
was changed to
> +		.compatible = "ampire,am800600p5tmqw-tb8h",
> +		.data = &ampire_am800600p5tmqwtb8h,
>  	}, {
>  		.compatible = "arm,rtsm-display",
>  		.data = &arm_rtsm,
> -- 
> 2.30.2
> 
