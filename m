Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 188D14549B5
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 16:16:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232713AbhKQPT1 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 17 Nov 2021 10:19:27 -0500
Received: from gloria.sntech.de ([185.11.138.130]:60726 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233092AbhKQPT1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 10:19:27 -0500
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mnMfh-0004un-MX; Wed, 17 Nov 2021 16:16:25 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 11/12] drm/rockchip: Make VOP driver optional
Date:   Wed, 17 Nov 2021 16:16:24 +0100
Message-ID: <2763206.1bNW4tK36S@diego>
In-Reply-To: <20211117145054.GL6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <15744316.EhFUcUTHNY@diego> <20211117145054.GL6556@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 17. November 2021, 15:50:54 CET schrieb Sascha Hauer:
> On Wed, Nov 17, 2021 at 03:40:26PM +0100, Heiko Stübner wrote:
> > Am Mittwoch, 17. November 2021, 15:33:46 CET schrieb Sascha Hauer:
> > > With upcoming VOP2 support VOP won't be the only choice anymore, so make
> > > the VOP driver optional.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/configs/multi_v7_defconfig         | 1 +
> > >  arch/arm64/configs/defconfig                | 1 +
> > >  drivers/gpu/drm/rockchip/Kconfig            | 7 +++++++
> > >  drivers/gpu/drm/rockchip/Makefile           | 3 ++-
> > >  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
> > >  5 files changed, 12 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> > > index c951aeed2138c..fc123e8f3e2f9 100644
> > > --- a/arch/arm/configs/multi_v7_defconfig
> > > +++ b/arch/arm/configs/multi_v7_defconfig
> > > @@ -667,6 +667,7 @@ CONFIG_DRM_EXYNOS_DPI=y
> > >  CONFIG_DRM_EXYNOS_DSI=y
> > >  CONFIG_DRM_EXYNOS_HDMI=y
> > >  CONFIG_DRM_ROCKCHIP=m
> > > +CONFIG_ROCKCHIP_VOP=y
> > >  CONFIG_ROCKCHIP_ANALOGIX_DP=y
> > >  CONFIG_ROCKCHIP_DW_HDMI=y
> > >  CONFIG_ROCKCHIP_DW_MIPI_DSI=y
> > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > index f2e2b9bdd7024..a623386473dc9 100644
> > > --- a/arch/arm64/configs/defconfig
> > > +++ b/arch/arm64/configs/defconfig
> > > @@ -682,6 +682,7 @@ CONFIG_DRM_EXYNOS_DSI=y
> > >  CONFIG_DRM_EXYNOS_HDMI=y
> > >  CONFIG_DRM_EXYNOS_MIC=y
> > >  CONFIG_DRM_ROCKCHIP=m
> > > +CONFIG_ROCKCHIP_VOP=y
> > >  CONFIG_ROCKCHIP_ANALOGIX_DP=y
> > >  CONFIG_ROCKCHIP_CDN_DP=y
> > >  CONFIG_ROCKCHIP_DW_HDMI=y
> > > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> > > index 9f1ecefc39332..a1c4158259099 100644
> > > --- a/drivers/gpu/drm/rockchip/Kconfig
> > > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > > @@ -21,8 +21,15 @@ config DRM_ROCKCHIP
> > >  
> > >  if DRM_ROCKCHIP
> > >  
> > > +config ROCKCHIP_VOP
> > > +	bool "Rockchip VOP driver"
> > 
> > would this benefit from a default-y ?
> > For builds reusing preexisting .configs.
> 
> I enabled CONFIG_ROCKCHIP_VOP for all configs in the tree that enable
> CONFIG_DRM_ROCKCHIP, so defconfig users shouldn't see any surprises.
> That won't help users of custom configs of course.
> 
> I don't know what's preferred in such cases, I can change to default-y
> if you like.

default-y would keep the behaviour identical for all existing configs I
guess and right now vop(1) is still the most used variant and will stay
that way for a while longer, so I guess my preference would be for going
that route - also so that we don't drown in "my display stopped working"
during 5.17 ;-)


Heiko


