Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DAA66F9DDD
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 04:51:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229814AbjEHCvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 22:51:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjEHCvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 22:51:11 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFC935FC0
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 19:51:08 -0700 (PDT)
Received: from pendragon.ideasonboard.com (softbank126090219015.bbtec.net [126.90.219.15])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 45E5E814;
        Mon,  8 May 2023 04:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1683514261;
        bh=ZhuJ29aZv60+w90rySi90/rQ2dYJYfEe/RLa1/gUzIQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QLBgZWUj/E76WqwQITzOEEw0Ch1u7EGfKutIWCpGV95tmvPsdxUuBYKLnYMv9nq/8
         NSOZAEQac2pBVKvnnP/CUxysDR5bMEtA/OxhXCFDjliKY/K9O0snBwjdad3TZtOLdn
         jRYyi+e6LBdp2o3M38axsDarGC/n+6PIBlAxU5TQ=
Date:   Mon, 8 May 2023 05:51:18 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/bridge: display-connector: rename dp_pwr to
 connector_pwr
Message-ID: <20230508025118.GQ23514@pendragon.ideasonboard.com>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230507201218.2339014-3-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

Thank you for the patch.

On Sun, May 07, 2023 at 11:12:17PM +0300, Dmitry Baryshkov wrote:
> In preparation to adding support for the hdmi_pwr supply, rename dp_pwr
> structure field to the generic connector_pwr.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/bridge/display-connector.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
> index 9a12449ad7b8..0d94e6edea50 100644
> --- a/drivers/gpu/drm/bridge/display-connector.c
> +++ b/drivers/gpu/drm/bridge/display-connector.c
> @@ -24,7 +24,7 @@ struct display_connector {
>  	struct gpio_desc	*hpd_gpio;
>  	int			hpd_irq;
>  
> -	struct regulator	*dp_pwr;
> +	struct regulator	*connector_pwr;

This makes sense, but I would shorten the name to just "pwr", "power" or
"supply". The field is part of the display_connector structure, so it
implicitly refers to the connector.

With or without that change,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

>  	struct gpio_desc	*ddc_en;
>  };
>  
> @@ -319,14 +319,14 @@ static int display_connector_probe(struct platform_device *pdev)
>  	if (type == DRM_MODE_CONNECTOR_DisplayPort) {
>  		int ret;
>  
> -		conn->dp_pwr = devm_regulator_get_optional(&pdev->dev, "dp-pwr");
> +		conn->connector_pwr = devm_regulator_get_optional(&pdev->dev, "dp-pwr");
>  
> -		if (IS_ERR(conn->dp_pwr)) {
> -			ret = PTR_ERR(conn->dp_pwr);
> +		if (IS_ERR(conn->connector_pwr)) {
> +			ret = PTR_ERR(conn->connector_pwr);
>  
>  			switch (ret) {
>  			case -ENODEV:
> -				conn->dp_pwr = NULL;
> +				conn->connector_pwr = NULL;
>  				break;
>  
>  			case -EPROBE_DEFER:
> @@ -338,8 +338,8 @@ static int display_connector_probe(struct platform_device *pdev)
>  			}
>  		}
>  
> -		if (conn->dp_pwr) {
> -			ret = regulator_enable(conn->dp_pwr);
> +		if (conn->connector_pwr) {
> +			ret = regulator_enable(conn->connector_pwr);
>  			if (ret) {
>  				dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
>  				return ret;
> @@ -389,8 +389,8 @@ static int display_connector_remove(struct platform_device *pdev)
>  	if (conn->ddc_en)
>  		gpiod_set_value(conn->ddc_en, 0);
>  
> -	if (conn->dp_pwr)
> -		regulator_disable(conn->dp_pwr);
> +	if (conn->connector_pwr)
> +		regulator_disable(conn->connector_pwr);
>  
>  	drm_bridge_remove(&conn->bridge);
>  

-- 
Regards,

Laurent Pinchart
