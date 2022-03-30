Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC8F94EBAF0
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 08:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237873AbiC3GlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 02:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241593AbiC3GlQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 02:41:16 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 610E557157
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 23:39:30 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZRzE-0003Mk-RJ; Wed, 30 Mar 2022 08:39:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZRz7-0006t9-9S; Wed, 30 Mar 2022 08:39:13 +0200
Date:   Wed, 30 Mar 2022 08:39:13 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 20/23] drm/rockchip: Make VOP driver optional
Message-ID: <20220330063913.GW12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-21-s.hauer@pengutronix.de>
 <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:32:41 up 109 days, 15:18, 66 users,  load average: 0.11, 0.15,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Tue, Mar 29, 2022 at 07:56:27PM +0800, Andy Yan wrote:
> Hi Sascha:
> 
> On 3/28/22 23:11, Sascha Hauer wrote:
> > With upcoming VOP2 support VOP won't be the only choice anymore, so make
> > the VOP driver optional.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >   drivers/gpu/drm/rockchip/Kconfig            | 8 ++++++++
> >   drivers/gpu/drm/rockchip/Makefile           | 3 ++-
> >   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
> >   3 files changed, 11 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> > index fa5cfda4e90e3..7d22e2997a571 100644
> > --- a/drivers/gpu/drm/rockchip/Kconfig
> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > @@ -23,8 +23,16 @@ config DRM_ROCKCHIP
> >   if DRM_ROCKCHIP
> > +config ROCKCHIP_VOP
> > +	bool "Rockchip VOP driver"
> > +	default y
> > +	help
> > +	  This selects support for the VOP driver. You should enable it
> > +	  on all older SoCs up to RK3399.

That reminds me that I wanted to rephrase this. Will change in next
round.

> > +
> >   config ROCKCHIP_ANALOGIX_DP
> >   	bool "Rockchip specific extensions for Analogix DP driver"
> > +	depends on ROCKCHIP_VOP
> 
> 
> Aanlogix dp is also on vop2 base soc such as  rk356x and rk3588 .

I added the dependency because analogix_dp-rockchip.c calls
rockchip_drm_wait_vact_end() which is implemented in the VOP driver,
so this driver currenty can't work with the VOP2 driver and can't
be linked without the VOP driver being present.
I'll add a few words to the commit message.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
