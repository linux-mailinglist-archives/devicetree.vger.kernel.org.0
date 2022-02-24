Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1C924C2EA5
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 15:48:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235632AbiBXOru (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 09:47:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233056AbiBXOrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 09:47:49 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD65BB0E93
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 06:47:19 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNFOn-0002CG-Kv; Thu, 24 Feb 2022 15:47:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNFOk-0001ct-HF; Thu, 24 Feb 2022 15:47:14 +0100
Date:   Thu, 24 Feb 2022 15:47:14 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Message-ID: <20220224144714.GV9136@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-22-s.hauer@pengutronix.de>
 <b9b59c1d-5808-f348-62fb-257746df134d@collabora.com>
 <20220224074750.GR9136@pengutronix.de>
 <a6f2b4a8-b9f0-dd2b-2361-8ede766b8394@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a6f2b4a8-b9f0-dd2b-2361-8ede766b8394@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:38:31 up 75 days, 23:24, 89 users,  load average: 0.08, 0.12,
 0.17
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

On Thu, Feb 24, 2022 at 05:36:29PM +0300, Dmitry Osipenko wrote:
> On 2/24/22 10:47, Sascha Hauer wrote:
> > On Thu, Feb 17, 2022 at 04:24:29PM +0300, Dmitry Osipenko wrote:
> >> 17.02.2022 11:29, Sascha Hauer пишет:
> >>> @@ -28,6 +28,12 @@ config ROCKCHIP_VOP
> >>>  	  This selects support for the VOP driver. You should enable it
> >>>  	  on all older SoCs up to RK3399.
> >>>  
> >>> +config ROCKCHIP_VOP2
> >>> +	bool "Rockchip VOP2 driver"
> >>> +	help
> >>> +	  This selects support for the VOP2 driver. You should enable it
> >>> +	  on all newer SoCs beginning form RK3568.
> >>
> >> s/form/from/
> >>
> >> The ROCKCHIP_VOP option is "default y". Do you really want "default n"
> >> for the VOP2?
> > 
> > ROCKCHIP_VOP is only default y to keep the VOP driver enabled for
> > existing defconfig that were generated before the introduction of
> > that symbol.
> > We don't have this problem for VOP2, so no need to make it default y.
> 
> To me it will be more consistent of you'll have both defaulting to y,
> since both options are behind DRM_ROCKCHIP.

New drivers should not be enabled by default, at least that's what I
have been told before. The VOP driver is enabled by default for the
reasons explained. But yes, you are right, it's more consistent to have
the same default on both drivers. Personally I don't care much, for now
I just follow what Heiko suggests as he is the one who hopefully merges
these patches ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
