Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7000D455895
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 11:06:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244589AbhKRKJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 05:09:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244392AbhKRKHk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 05:07:40 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12D58C0613B9
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 02:04:04 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mneGr-0005Hg-Fj; Thu, 18 Nov 2021 11:03:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mneGp-0003wj-3u; Thu, 18 Nov 2021 11:03:55 +0100
Date:   Thu, 18 Nov 2021 11:03:55 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc:     dri-devel@lists.freedesktop.org,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        =?utf-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Message-ID: <20211118100355.GO6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4310886.V3yF0ifEZO@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:01:35 up 273 days, 13:25, 149 users,  load average: 0.68, 0.41,
 0.41
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 18, 2021 at 10:26:29AM +0100, Heiko Stübner wrote:
> Hi Kever,
> 
> Am Donnerstag, 18. November 2021, 02:27:10 CET schrieb Kever Yang:
> > Hi Sascha Hauer,
> > 
> > On 2021/11/17 下午10:33, Sascha Hauer wrote:
> > > This series adds initial graphics support for the Rockchip RK356[68]
> > > SoCs.  Graphics support is based around the VOP2 controller which
> > > replaces the VOP controller found on earlier Rockchip SoCs. The driver
> > > has been tested with HDMI support included in this series and MIPI-DSI
> > > which is not included because it needs some more work. The driver is
> > > taken from the downstream Rockchip kernel
> > 
> > Yes, you do know this is from Rockchip kernel.
> > 
> > Could you point me out where is the information about original author  
> > in your commit?
> 
> The copyrights for added files seem to have stayed intact.
> For example the added rockchip_drm_vop2.c file in patch12
> does contain the copyright as
> 
> 	Copyright (c) 2020 Rockchip Electronics Co., Ltd.
> 	Author: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> We can of course debate if the commit-author should also be set to
> Andy or another Rockchip engineer, with Sascha adding a 
> "Co-developed-by" with his credentials.
> 
> That's probably a nice compromise, I guess.

The commit author was merely lost while copying the driver file into my git.
Changing it back to Andy is fine with me, I didn't mean to steal anyones
credits.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
