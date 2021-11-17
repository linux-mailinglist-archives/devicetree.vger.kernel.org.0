Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6803454904
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:40:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238055AbhKQOnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:43:33 -0500
Received: from gloria.sntech.de ([185.11.138.130]:60288 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236665AbhKQOnc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 09:43:32 -0500
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mnM6t-0004he-Gm; Wed, 17 Nov 2021 15:40:27 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 11/12] drm/rockchip: Make VOP driver optional
Date:   Wed, 17 Nov 2021 15:40:26 +0100
Message-ID: <15744316.EhFUcUTHNY@diego>
In-Reply-To: <20211117143347.314294-12-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <20211117143347.314294-12-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 17. November 2021, 15:33:46 CET schrieb Sascha Hauer:
> With upcoming VOP2 support VOP won't be the only choice anymore, so make
> the VOP driver optional.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/configs/multi_v7_defconfig         | 1 +
>  arch/arm64/configs/defconfig                | 1 +
>  drivers/gpu/drm/rockchip/Kconfig            | 7 +++++++
>  drivers/gpu/drm/rockchip/Makefile           | 3 ++-
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
>  5 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index c951aeed2138c..fc123e8f3e2f9 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -667,6 +667,7 @@ CONFIG_DRM_EXYNOS_DPI=y
>  CONFIG_DRM_EXYNOS_DSI=y
>  CONFIG_DRM_EXYNOS_HDMI=y
>  CONFIG_DRM_ROCKCHIP=m
> +CONFIG_ROCKCHIP_VOP=y
>  CONFIG_ROCKCHIP_ANALOGIX_DP=y
>  CONFIG_ROCKCHIP_DW_HDMI=y
>  CONFIG_ROCKCHIP_DW_MIPI_DSI=y
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index f2e2b9bdd7024..a623386473dc9 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -682,6 +682,7 @@ CONFIG_DRM_EXYNOS_DSI=y
>  CONFIG_DRM_EXYNOS_HDMI=y
>  CONFIG_DRM_EXYNOS_MIC=y
>  CONFIG_DRM_ROCKCHIP=m
> +CONFIG_ROCKCHIP_VOP=y
>  CONFIG_ROCKCHIP_ANALOGIX_DP=y
>  CONFIG_ROCKCHIP_CDN_DP=y
>  CONFIG_ROCKCHIP_DW_HDMI=y
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 9f1ecefc39332..a1c4158259099 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -21,8 +21,15 @@ config DRM_ROCKCHIP
>  
>  if DRM_ROCKCHIP
>  
> +config ROCKCHIP_VOP
> +	bool "Rockchip VOP driver"

would this benefit from a default-y ?
For builds reusing preexisting .configs.


Heiko

> +	help
> +	  This selects support for the VOP driver. You should enable it
> +	  on all older SoCs up to RK3399.
> +
>  config ROCKCHIP_ANALOGIX_DP
>  	bool "Rockchip specific extensions for Analogix DP driver"
> +	depends on ROCKCHIP_VOP
>  	help
>  	  This selects support for Rockchip SoC specific extensions
>  	  for the Analogix Core DP driver. If you want to enable DP
> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> index 17a9e7eb2130d..cd6e7bb5ce9c5 100644
> --- a/drivers/gpu/drm/rockchip/Makefile
> +++ b/drivers/gpu/drm/rockchip/Makefile
> @@ -4,9 +4,10 @@
>  # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
>  
>  rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
> -		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
> +		rockchip_drm_gem.o
>  rockchipdrm-$(CONFIG_DRM_FBDEV_EMULATION) += rockchip_drm_fbdev.o
>  
> +rockchipdrm-$(CONFIG_ROCKCHIP_VOP) += rockchip_drm_vop.o rockchip_vop_reg.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
>  rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index e4ebe60b3cc1a..64fa5fd62c01a 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -473,7 +473,7 @@ static int __init rockchip_drm_init(void)
>  	int ret;
>  
>  	num_rockchip_sub_drivers = 0;
> -	ADD_ROCKCHIP_SUB_DRIVER(vop_platform_driver, CONFIG_DRM_ROCKCHIP);
> +	ADD_ROCKCHIP_SUB_DRIVER(vop_platform_driver, CONFIG_ROCKCHIP_VOP);
>  	ADD_ROCKCHIP_SUB_DRIVER(rockchip_lvds_driver,
>  				CONFIG_ROCKCHIP_LVDS);
>  	ADD_ROCKCHIP_SUB_DRIVER(rockchip_dp_driver,
> 




