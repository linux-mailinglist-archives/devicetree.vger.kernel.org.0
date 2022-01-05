Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63220485257
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 13:20:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236547AbiAEMU4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 07:20:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229997AbiAEMUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 07:20:50 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D947C061761
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 04:20:50 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1n55HZ-00071u-Gu; Wed, 05 Jan 2022 13:20:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1n55HT-0001C5-Eu; Wed, 05 Jan 2022 13:20:39 +0100
Date:   Wed, 5 Jan 2022 13:20:39 +0100
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
        Peter Geis <pgwipeout@gmail.com>,
        Kever Yang <Kever.yang@rock-chips.com>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Message-ID: <20220105122039.GU6003@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-23-s.hauer@pengutronix.de>
 <a0942adc-52c1-811e-0de6-d0616266ce2d@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a0942adc-52c1-811e-0de6-d0616266ce2d@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:31:47 up 25 days, 20:17, 82 users,  load average: 1.24, 1.20,
 1.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Tue, Jan 04, 2022 at 07:07:23PM +0800, Andy Yan wrote:
> 
> 
> I thinks we should be very carefully about switch to regmap.
> 
> Most of the registers are take effect by frame sync(that is you write the
> config done bit and when vsync interrupt come),
> 
> Not only windows register, but also the SYS_CTRL, post processor(VP0/1/2), 
> OVERLAY, hdr and so on.

That's why I marked these as nonvolatile, so that reading the registers
comes from the cache. I may have missed some registers, these could be
added when needed.

> > +	ret = vop2_win_init(vop2);
> > +	if (ret)
> > +		return ret;
> Do you have a count about how much time the function vop2_win_init cost ?

No. Why does that matter?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
