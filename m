Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1A0E472ADB
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 12:08:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232909AbhLMLIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 06:08:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231629AbhLMLIb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 06:08:31 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7846C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 03:08:30 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mwjBv-0002cG-6X; Mon, 13 Dec 2021 12:08:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mwjBr-0006po-V0; Mon, 13 Dec 2021 12:08:19 +0100
Date:   Mon, 13 Dec 2021 12:08:19 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 07/18] dt-bindings: display: rockchip: dw-hdmi: Allow
 "ref" as clock name
Message-ID: <20211213110819.GB6003@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-8-s.hauer@pengutronix.de>
 <3032544.f5MXlUzpl7@phil>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3032544.f5MXlUzpl7@phil>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:07:30 up 2 days, 19:53, 56 users,  load average: 0.19, 0.24, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 12, 2021 at 11:09:24PM +0100, Heiko Stuebner wrote:
> Am Mittwoch, 8. Dezember 2021, 16:12:19 CET schrieb Sascha Hauer:
> > "vpll" is a misnomer. A clock input to a device should be named after
> > the usage in the device, not after the clock that drives it. On the
> > rk3568 the same clock is driven by the HPLL.
> > To fix that, this patch renames the vpll clock to ref clock.  The clock
> > name "vpll" is left for compatibility to old device trees.
> 
> Can't we just say that the binding only takes the "ref" name, but
> the code still allows "vpll".
> 
> I think I remember Rob suggesting something similar in the past.
> 
> I don't think that we need to keep the binding(-validation)
> compatible with old devicetrees, but the kernel itself should stay
> compatible.

Sounds reasonable. I'll also add a patch changing the in-tree users next
round.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
