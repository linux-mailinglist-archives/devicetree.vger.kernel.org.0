Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10605423A6D
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 11:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237689AbhJFJUD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 05:20:03 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:59780 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbhJFJUC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 05:20:02 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id EB96D581;
        Wed,  6 Oct 2021 11:18:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1633511889;
        bh=fiqfKG3L64cLbvZPgvkNgc3NgIfZmZNwqaQfxP1++RI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=M/ZQF4EVasXl3FfunmAQjsb3ZEDP/evlezDsGT6WXjIw5H+5/Rhmpxp5tqu9qj6YG
         1XTbwlh4I7OF3zlq8jvkZBBjBXf6CRrl2wi8cOrmuabdGct7m4TDuEFQ1+1QFrmJqE
         6XErY8d9g0RNYlt/NwNALmP50YtBxrWKv/EGQt8M=
Date:   Wed, 6 Oct 2021 12:18:00 +0300
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
Subject: Re: [PATCH 3/3] drm/bridge: ti-sn65dsi8: Make enable GPIO optional
Message-ID: <YV1pyAq8CeiTO7hD@pendragon.ideasonboard.com>
References: <20211006074713.1094396-1-alexander.stein@ew.tq-group.com>
 <20211006074713.1094396-3-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211006074713.1094396-3-alexander.stein@ew.tq-group.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

Thank you for the patch.

On Wed, Oct 06, 2021 at 09:47:13AM +0200, Alexander Stein wrote:
> The enable signal may not be controllable by the kernel. Make it
> optional.
> This is a similar to commit bbda1704fc15 ("drm/bridge: ti-sn65dsi86: Make
> enable GPIO optional")
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> index 5fab0fabcd15..101da29ba698 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -679,7 +679,7 @@ static int sn65dsi83_probe(struct i2c_client *client,
>  		model = id->driver_data;
>  	}
>  
> -	ctx->enable_gpio = devm_gpiod_get(ctx->dev, "enable", GPIOD_OUT_LOW);
> +	ctx->enable_gpio = devm_gpiod_get_optional(ctx->dev, "enable", GPIOD_OUT_LOW);

You can wrap this line as

	ctx->enable_gpio = devm_gpiod_get_optional(ctx->dev, "enable",
						   GPIOD_OUT_LOW);

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Corresponding DT bindings changes are needed, I've sent a patch in this
mail thread.

>  	if (IS_ERR(ctx->enable_gpio))
>  		return PTR_ERR(ctx->enable_gpio);
>  

-- 
Regards,

Laurent Pinchart
