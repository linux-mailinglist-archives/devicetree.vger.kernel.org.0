Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE134EBBBA
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 09:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbiC3HaS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 03:30:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243619AbiC3HaO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 03:30:14 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0506C1C5526
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:28:30 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZSki-0003G6-Vv; Wed, 30 Mar 2022 09:28:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZSkg-0001fL-SK; Wed, 30 Mar 2022 09:28:22 +0200
Date:   Wed, 30 Mar 2022 09:28:22 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220330072822.GX12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:22:59 up 109 days, 16:08, 77 users,  load average: 0.01, 0.07,
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

Hi Piotr,

On Tue, Mar 29, 2022 at 09:31:01AM +0200, Piotr Oniszczuk wrote:
> 
> 
> > Wiadomość napisana przez Sascha Hauer <s.hauer@pengutronix.de> w dniu 28.03.2022, o godz. 17:10:
> > 
> > 
> > Changes since v8:
> > - make hclk_vo a critical clock instead of enabling it in the hdmi driver
> > - Fix vop2_setup_layer_mixer(), reported by Andy Yan
> > - Limit planes possible_crtcs to actually existing crtcs
> > 
> > 
> 
> Sascha,
> 
> FYI:
> I was hoping v9 will fix green screen issue i see when video player wants to draw to nv12 capable drm plane.
> It look issue is still present :-(
> 
> You can easily reproduce with modetest utility:
> 
> modetest -P 43@67:1920x1080@NV12

This only sets the overlay, but how did you get something on the screen
initially?

I did with "modetest -s 69@67:1920x1080 -d" and with this it works as
expected, I can't reproduce any green screen issue here.

I found another problem though which might or might not be related with
your issue. I saw that the overlay is not exactly centered as it ought
to be. This goes down to wrong delay settings for the overlay, the
following patch fixes this.

Sascha

---------------------------------8<-------------------------------

From f9a92401344e8aa3203fca2236dd4a40cc8690f6 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Mar 2022 09:22:26 +0200
Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver

---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 69e9870d5f2dc..7dba7b9b63dc6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1979,10 +1979,10 @@ static void vop2_setup_dly_for_windows(struct vop2 *vop2)
 			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__ESMART1, dly);
 			break;
 		case ROCKCHIP_VOP2_SMART0:
-			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART1, dly);
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART0, dly);
 			break;
 		case ROCKCHIP_VOP2_SMART1:
-			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART0, dly);
+			sdly |= FIELD_PREP(RK3568_SMART_DLY_NUM__SMART1, dly);
 			break;
 		}
 	}
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
