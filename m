Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 217984F3064
	for <lists+devicetree@lfdr.de>; Tue,  5 Apr 2022 14:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239801AbiDEJyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 05:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348909AbiDEJsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 05:48:45 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57878ECC69
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 02:37:09 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nbfcV-00089z-OS; Tue, 05 Apr 2022 11:37:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nbfcS-0005WI-5z; Tue, 05 Apr 2022 11:37:00 +0200
Date:   Tue, 5 Apr 2022 11:37:00 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220405093700.GQ4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:07:04 up 5 days, 21:36, 61 users,  load average: 0.05, 0.19, 0.16
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

On Sat, Apr 02, 2022 at 09:37:17AM +0800, Andy Yan wrote:
> Hi Sacha:
> 
> On 4/1/22 20:52, Sascha Hauer wrote:
> > -- 
> > >From cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00:00 2001
> > From: Sascha Hauer<s.hauer@pengutronix.de>
> > Date: Fri, 1 Apr 2022 14:48:49 +0200
> > Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
> > 
> > ---
> >   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 ++++++++++++++
> >   1 file changed, 14 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > index 7dba7b9b63dc6..1421bf2f133f1 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 *vop2)
> >   			}
> >   		}
> > +		if (vop2->data->soc_id == 3566) {
> > +			/*
> > +			 * On RK3566 these windows don't have an independent
> > +			 * framebuffer. They share the framebuffer with smart0,
> > +			 * esmart0 and cluster0 respectively.
> > +			 */
> > +			switch (win->data->phys_id) {
> > +			case ROCKCHIP_VOP2_SMART1:
> > +			case ROCKCHIP_VOP2_ESMART1:
> > +			case ROCKCHIP_VOP2_CLUSTER1:
> > +				continue;
> > +			}
> 
> 
> Think about this , there maybe other upcoming vop2 base soc, they may only
> have
> 
> mirror window Smart1 Esmart1, or Smart1, Esmart1, Esmart2, Cluster1.
> 
> I think this should add WIN_FEATURE at the platform description file
> rockchip_vop2_reg.c, then
> 
> check the FEATURE to decide whether the driver should give this window a
> special treatment.
> 
> this can make one code run for different soc with different platform
> description. or we should add
> 
> the same code logic for different soc again and again.

You mean like done in the downstream Kernel? Here indeed we have a
WIN_FEATURE_MIRROR flag added to the platform description. This is then
evaluated with:

static bool vop2_is_mirror_win(struct vop2_win *win)
{
        return soc_is_rk3566() && (win->feature & WIN_FEATURE_MIRROR);
}

So a flag is added and afterwards its evaluation is SoC specific. That
doesn't help at all and only obfuscates things.

Besides, experience shows that you can't predict a good abstraction for
future hardware revisions, the hardware guys are just too creative in
creating hardware that breaks existing abstractions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
