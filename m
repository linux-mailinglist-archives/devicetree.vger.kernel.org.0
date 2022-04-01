Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E224EFA15
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:46:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236273AbiDASsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235316AbiDASsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:48:42 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C240220B10
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:46:52 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 267B92F7;
        Fri,  1 Apr 2022 20:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648838811;
        bh=mNlNcLyaRH4wYjkRuqWtBfrIo+KP8oglcyP0u3JFtA8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=feXQA+ztvtVcO7RLNlg4/T56zl1EIR0l3mbiWfphxCjlFKG2//PNFY4f7dSByd9TL
         tDmXmn+mAp6Idb7FqXB1v0j4oOpuvF+fkt3dnpQnZj/Lpho4gxEtl/iy9nYxmsKDSS
         yJCDfcU2fy4qO9Gf1UqvsfzAG65wSKKNfNNI7ILE=
Date:   Fri, 1 Apr 2022 21:46:48 +0300
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
Subject: Re: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in
 of_get_drm_panel_display_mode()
Message-ID: <YkdImJRIRkaqeGDl@pendragon.ideasonboard.com>
References: <20220401163755.302548-1-marex@denx.de>
 <20220401163755.302548-2-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220401163755.302548-2-marex@denx.de>
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

On Fri, Apr 01, 2022 at 06:37:54PM +0200, Marek Vasut wrote:
> Make the width-mm/height-mm panel properties mandatory in
> of_get_drm_panel_display_mode(), print error message and
> return -ve in case these DT properties are not present.
> This is needed to correctly report panel dimensions.

Can we guarantee this won't cause a regression ?

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
> ---
>  drivers/gpu/drm/drm_modes.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
> index 3f819c7a021b..45dc2d5c3ea6 100644
> --- a/drivers/gpu/drm/drm_modes.c
> +++ b/drivers/gpu/drm/drm_modes.c
> @@ -761,12 +761,16 @@ int of_get_drm_panel_display_mode(struct device_node *np,
>  		drm_bus_flags_from_videomode(&vm, bus_flags);
>  
>  	ret = of_property_read_u32(np, "width-mm", &width_mm);
> -	if (ret && ret != -EINVAL)
> +	if (ret < 0) {
> +		pr_err("%pOF: invalid or missing width-mm DT property\n", np);
>  		return ret;
> +	}
>  
>  	ret = of_property_read_u32(np, "height-mm", &height_mm);
> -	if (ret && ret != -EINVAL)
> +	if (ret < 0) {
> +		pr_err("%pOF: invalid or missing height-mm DT property\n", np);
>  		return ret;
> +	}
>  
>  	dmode->width_mm = width_mm;
>  	dmode->height_mm = height_mm;

-- 
Regards,

Laurent Pinchart
