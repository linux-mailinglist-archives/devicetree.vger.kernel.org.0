Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85A6F4EFA28
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:50:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244608AbiDASvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:51:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233785AbiDASvt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:51:49 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E9D134661
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:50:00 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9CF072F7;
        Fri,  1 Apr 2022 20:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648838998;
        bh=QY1TllLAVyjYuESIhQkEahZ1N+amExQqInuVbGhDYQg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=p6V5J2jdAcj9Q5bYxkybypKGpUpEEExdAJpt9+tqYtTjNrID/OQL743BWhWLnbNNo
         h6TkzypVnwnXhHJkqYnFDtMPVY+rLrSnrXll1kkUjUJqvo/tHCavFMokzqMFwH9MTX
         ArY44XwjWcaYLaT2fv/cvamZoDIew0v3xHPFzxVA=
Date:   Fri, 1 Apr 2022 21:49:56 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [RFC][PATCH 3/3] drm/panel: lvds: Drop duplicate
 width-mm/height-mm check
Message-ID: <YkdJVMizZ5mvmPSn@pendragon.ideasonboard.com>
References: <20220401163755.302548-1-marex@denx.de>
 <20220401163755.302548-3-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220401163755.302548-3-marex@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Fri, Apr 01, 2022 at 06:37:55PM +0200, Marek Vasut wrote:
> The of_get_drm_panel_display_mode() now does check for
> presence of width-mm/height-mm DT properties, drop the
> duplicate check here.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Noralf Trønnes <noralf@tronnes.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

assuming patches 1/3 and 2/3 get accepted.

> ---
>  drivers/gpu/drm/panel/panel-lvds.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-lvds.c b/drivers/gpu/drm/panel/panel-lvds.c
> index eca067e78579..f11252fb00fe 100644
> --- a/drivers/gpu/drm/panel/panel-lvds.c
> +++ b/drivers/gpu/drm/panel/panel-lvds.c
> @@ -128,18 +128,6 @@ static int panel_lvds_parse_dt(struct panel_lvds *lvds)
>  		return ret;
>  	}
>  
> -	if (lvds->dmode.width_mm == 0) {
> -		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
> -			np, "width-mm");
> -		return -ENODEV;
> -	}
> -
> -	if (lvds->dmode.height_mm == 0) {
> -		dev_err(lvds->dev, "%pOF: invalid or missing %s DT property\n",
> -			np, "height-mm");
> -		return -ENODEV;
> -	}
> -
>  	of_property_read_string(np, "label", &lvds->label);
>  
>  	ret = drm_of_lvds_get_data_mapping(np);

-- 
Regards,

Laurent Pinchart
