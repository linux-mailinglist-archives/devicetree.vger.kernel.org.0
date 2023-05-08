Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A8C06F9DE1
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 04:53:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229960AbjEHCxw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 22:53:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjEHCxv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 22:53:51 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28C5F7695
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 19:53:50 -0700 (PDT)
Received: from pendragon.ideasonboard.com (softbank126090219015.bbtec.net [126.90.219.15])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3ACEE814;
        Mon,  8 May 2023 04:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1683514423;
        bh=iGtO7cKe7wk0DTrfb+kcVh4w2/ypkRoH2JSoMdxlca8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pkdu9fxvWf0fPHRHWESuGsXPbX+uPRE2RTQjQC+JGSDZilIeYi3Q9RlyqQmqKIpsD
         UL0VdWsOie4iQGB1B/bEXgPYihRDVlS91gMC36xjkOYwpaFElz7pjdLE7r3l1LdNGH
         OZ4eLBN8e3wVrSzKCx8MZa5tqhhBlxdHIYRbyOCU=
Date:   Mon, 8 May 2023 05:54:01 +0300
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
Subject: Re: [PATCH 3/3] drm/bridge: display-connector: handle hdmi-pwr supply
Message-ID: <20230508025401.GR23514@pendragon.ideasonboard.com>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
 <20230507201218.2339014-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230507201218.2339014-4-dmitry.baryshkov@linaro.org>
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

On Sun, May 07, 2023 at 11:12:18PM +0300, Dmitry Baryshkov wrote:
> On some devices the 5V pin of the HDMI connector and/or the ESD
> protection logic is powered on by a separate regulator. Instead of
> declaring this regulator as always-on, make hdmi-connector support the
> additional hdmi-pwr supply.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/bridge/display-connector.c | 37 +++++++++++++++++-----
>  1 file changed, 29 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
> index 0d94e6edea50..037ba2eb5a2f 100644
> --- a/drivers/gpu/drm/bridge/display-connector.c
> +++ b/drivers/gpu/drm/bridge/display-connector.c
> @@ -337,18 +337,12 @@ static int display_connector_probe(struct platform_device *pdev)
>  				return ret;
>  			}
>  		}
> -
> -		if (conn->connector_pwr) {
> -			ret = regulator_enable(conn->connector_pwr);
> -			if (ret) {
> -				dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
> -				return ret;
> -			}
> -		}
>  	}
>  
>  	/* enable DDC */
>  	if (type == DRM_MODE_CONNECTOR_HDMIA) {
> +		int ret;
> +
>  		conn->ddc_en = devm_gpiod_get_optional(&pdev->dev, "ddc-en",
>  						       GPIOD_OUT_HIGH);
>  
> @@ -356,6 +350,33 @@ static int display_connector_probe(struct platform_device *pdev)
>  			dev_err(&pdev->dev, "Couldn't get ddc-en gpio\n");
>  			return PTR_ERR(conn->ddc_en);
>  		}
> +
> +		conn->connector_pwr = devm_regulator_get_optional(&pdev->dev, "hdmi-pwr");
> +
> +		if (IS_ERR(conn->connector_pwr)) {
> +			ret = PTR_ERR(conn->connector_pwr);
> +
> +			switch (ret) {
> +			case -ENODEV:
> +				conn->connector_pwr = NULL;
> +				break;
> +
> +			case -EPROBE_DEFER:
> +				return -EPROBE_DEFER;
> +
> +			default:
> +				dev_err(&pdev->dev, "failed to get HDMI PWR regulator: %d\n", ret);
> +				return ret;
> +			}
> +		}
> +	}

Please share this logic with the DP code. You can move it to a separate
function for instance, that would take the regulator name as a
parameter.

> +
> +	if (conn->connector_pwr) {
> +		ret = regulator_enable(conn->connector_pwr);
> +		if (ret) {
> +			dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
> +			return ret;
> +		}
>  	}
>  
>  	conn->bridge.funcs = &display_connector_bridge_funcs;

-- 
Regards,

Laurent Pinchart
