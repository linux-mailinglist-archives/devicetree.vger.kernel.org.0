Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0CF450C30C
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 01:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233473AbiDVWo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 18:44:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233916AbiDVWor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 18:44:47 -0400
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com (mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59EBD20F210
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 14:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=5psihodelspOkPgV0bRhG+/NT64DPkO0GhHpysa53SQ=;
        b=RnNkHR6S7UV/63wF6C1flUbhdNpVMcpqrWK0jU7nUJ4c+uqPYr3+2HbLN+4yuR49CHQ7PBYQI6IBJ
         4pEsTyCKhEuaZQGVpqYS3Ec9BrjZv+1+DHdLBQkLQXnmtADSya05nW4OZwmdkEN7gX7lqa5M8cV5oK
         N6Uekkv+dPJIjEDV+e4RfWlnxgt8JE8Tu2r5+Z/hUoWCFEzZHbIVWdmiCDwQgnXMNDPsKGrowWgyUZ
         zzlcQvGSAHhM2opS18lezsc41EKWlAzPmpR3SxwnWNIxuZdNKvKSwsf93UHh9+fVbRGlhN4XysSkc7
         e7RCTYT3bMtbVptDdTwLAPN0M7b8TBg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=5psihodelspOkPgV0bRhG+/NT64DPkO0GhHpysa53SQ=;
        b=iQ7OXPWFdQBf3oVLEvZjiumJ9xZlIuS55k6ZB/NhWFSKtuX+0uuI/uz9ZaRIJqrFdMUYbFDG0rB39
         +zbk9gWBw==
X-HalOne-Cookie: 8128e7c66d35dfffd85c19680931a80b60358633
X-HalOne-ID: d9d0f710-c268-11ec-a906-d0431ea8a290
Received: from mailproxy1.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
        id d9d0f710-c268-11ec-a906-d0431ea8a290;
        Fri, 22 Apr 2022 18:20:13 +0000 (UTC)
Date:   Fri, 22 Apr 2022 20:20:11 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, hs@denx.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/2] drm/panel: simple: Add Startek KD070WVFPA043-C069A
 panel support
Message-ID: <YmLx27U6WSvpvWry@ravnborg.org>
References: <20220420005625.990999-1-festevam@gmail.com>
 <20220420005625.990999-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420005625.990999-2-festevam@gmail.com>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE,URIBL_BLACK autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 19, 2022 at 09:56:25PM -0300, Fabio Estevam wrote:
> From: Heiko Schocher <hs@denx.de>
> 
> Add Startek KD070WVFPA043-C069A 7" TFT LCD panel support.
> 
> Signed-off-by: Heiko Schocher <hs@denx.de>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

> ---
>  drivers/gpu/drm/panel/panel-simple.c | 33 ++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index a34f4198a534..ca8cd017821d 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -3311,6 +3311,36 @@ static const struct panel_desc tsd_tst043015cmhx = {
>  	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
>  };
>  
> +static const struct display_timing startek_kd070wvfpa_mode = {
> +	.pixelclock = { 25200000, 27200000, 30500000 },
> +	.hactive = { 800, 800, 800 },
> +	.hfront_porch = { 19, 44, 115 },
> +	.hback_porch = { 5, 16, 101 },
> +	.hsync_len = { 1, 2, 100 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 5, 43, 67 },
> +	.vback_porch = { 5, 5, 67 },
> +	.vsync_len = { 1, 2, 66 },
> +};
> +
> +static const struct panel_desc startek_kd070wvfpa = {
> +	.timings = &startek_kd070wvfpa_mode,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 152,
> +		.height = 91,
> +	},
> +	.delay = {
> +		.prepare = 20,
> +		.enable = 200,
> +		.disable = 200,
> +	},
> +	.bus_flags = DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE,
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};

Please fix so order of startek_kd070wvfpa is the same order in
platform_of_match.

startek_kd070wvfpa is after tsd_tst043015cmhx above, but before
tsd_tst043015cmhx below.

	Sam

> +
>  static const struct drm_display_mode tfc_s9700rtwv43tr_01b_mode = {
>  	.clock = 30000,
>  	.hdisplay = 800,
> @@ -3990,6 +4020,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "starry,kr070pe2t",
>  		.data = &starry_kr070pe2t,
> +	}, {
> +		.compatible = "startek,kd070wvfpa",
> +		.data = &startek_kd070wvfpa,
>  	}, {
>  		.compatible = "team-source-display,tst043015cmhx",
>  		.data = &tsd_tst043015cmhx,
> -- 
> 2.25.1
