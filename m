Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8E4446FD12
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 09:55:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238777AbhLJI7R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 03:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231728AbhLJI7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 03:59:17 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ED98C061746
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 00:55:42 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mvbgn-0000TC-1L; Fri, 10 Dec 2021 09:55:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mvbgm-0002Mi-En; Fri, 10 Dec 2021 09:55:36 +0100
Date:   Fri, 10 Dec 2021 09:55:36 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 17/18] drm: rockchip: Add VOP2 driver
Message-ID: <20211210085536.GC25513@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-18-s.hauer@pengutronix.de>
 <bd576949-a42b-9750-fe97-b9b567c7ea75@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bd576949-a42b-9750-fe97-b9b567c7ea75@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:51:38 up 295 days, 12:15, 150 users,  load average: 0.22, 0.19,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Johan,

On Wed, Dec 08, 2021 at 05:59:16PM +0100, Johan Jonker wrote:
> Hi,
> 
> On 12/8/21 4:12 PM, Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> > 
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> > 
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> > 
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> [..]
> 
> > +
> > +static const struct of_device_id vop2_dt_match[] = {
> > +	{
> > +		.compatible = "rockchip,rk3568-vop",
> > +		.data = &rk3568_vop
> > +	}, {
> 
> > +		.compatible = "rockchip,rk3568-vop",
> 
> Maybe use:
> .compatible = "rockchip,rk3566-vop",

Copy/Paste bug. Will fix.

> 
> > +		.data = &rk3566_vop
> > +	}, {
> > +	},
> 
> Maybe sort this list alphabetical based on compatible in case later more
> SoCs are added.
> 
> rk3566
> rk3568

Ok.

> 
> ===
> 
> The structure layout size above could be reduced for if we get more
> compatible strings additions.
> 
> Example vop1:
> 
> static const struct of_device_id vop_driver_dt_match[] = {
> 	{ .compatible = "rockchip,rk3036-vop",
> 	  .data = &rk3036_vop },
> 	{ .compatible = "rockchip,rk3126-vop",
> 	  .data = &rk3126_vop },
> 	{ .compatible = "rockchip,px30-vop-big",
> 	  .data = &px30_vop_big },
> 	{ .compatible = "rockchip,px30-vop-lit",
> 	  .data = &px30_vop_lit },
> 	{ .compatible = "rockchip,rk3066-vop",
> 	  .data = &rk3066_vop },
> 	{ .compatible = "rockchip,rk3188-vop",
> 	  .data = &rk3188_vop },
> 	{ .compatible = "rockchip,rk3288-vop",
> 	  .data = &rk3288_vop },
> 	{ .compatible = "rockchip,rk3368-vop",
> 	  .data = &rk3368_vop },
> 	{ .compatible = "rockchip,rk3366-vop",
> 	  .data = &rk3366_vop },
> 	{ .compatible = "rockchip,rk3399-vop-big",
> 	  .data = &rk3399_vop_big },
> 	{ .compatible = "rockchip,rk3399-vop-lit",
> 	  .data = &rk3399_vop_lit },
> 	{ .compatible = "rockchip,rk3228-vop",
> 	  .data = &rk3228_vop },
> 	{ .compatible = "rockchip,rk3328-vop",
> 	  .data = &rk3328_vop },
> 	{},

It's shorter, but ugly ;)
That's only my personal taste though, I don't care much.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
