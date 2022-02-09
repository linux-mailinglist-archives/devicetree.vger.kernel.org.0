Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32D2D4AEFAF
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 12:11:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbiBILKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 06:10:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230192AbiBILK3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 06:10:29 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA48E082706
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 02:06:22 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nHjpP-0008Rc-En; Wed, 09 Feb 2022 11:03:59 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v5 02/23] drm/rockchip: dw_hdmi: Do not leave clock enabled in error case
Date:   Wed, 09 Feb 2022 11:03:58 +0100
Message-ID: <2395553.0l50XtO9Ib@diego>
In-Reply-To: <20220209095350.2104049-3-s.hauer@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de> <20220209095350.2104049-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 9. Februar 2022, 10:53:29 CET schrieb Sascha Hauer:
> The driver returns an error when devm_phy_optional_get() fails leaving
> the previously enabled clock turned on. Change order and enable the
> clock only after the phy has been acquired.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

just a note for me, already applied to drm-misc-fixes:
https://cgit.freedesktop.org/drm/drm-misc/commit/?h=drm-misc-fixes&id=c0cfbb122275da1b726481de5a8cffeb24e6322b

> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> index 830bdd5e9b7c..8677c8271678 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -529,13 +529,6 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  		return ret;
>  	}
>  
> -	ret = clk_prepare_enable(hdmi->vpll_clk);
> -	if (ret) {
> -		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
> -			      ret);
> -		return ret;
> -	}
> -
>  	hdmi->phy = devm_phy_optional_get(dev, "hdmi");
>  	if (IS_ERR(hdmi->phy)) {
>  		ret = PTR_ERR(hdmi->phy);
> @@ -544,6 +537,13 @@ static int dw_hdmi_rockchip_bind(struct device *dev, struct device *master,
>  		return ret;
>  	}
>  
> +	ret = clk_prepare_enable(hdmi->vpll_clk);
> +	if (ret) {
> +		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
> +			      ret);
> +		return ret;
> +	}
> +
>  	drm_encoder_helper_add(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
>  	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
>  
> 




