Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 649C74A3E79
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 09:10:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232392AbiAaIK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 03:10:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230124AbiAaIK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 03:10:56 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A758CC061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 00:10:55 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nERlt-0000AP-LD; Mon, 31 Jan 2022 09:10:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nERlq-00088n-LZ; Mon, 31 Jan 2022 09:10:42 +0100
Date:   Mon, 31 Jan 2022 09:10:42 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 24/27] clk: rk3568: drop CLK_SET_RATE_PARENT from
 dclk_vop*
Message-ID: <20220131081042.GW23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-25-s.hauer@pengutronix.de>
 <5329207.qDA9hNt6id@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5329207.qDA9hNt6id@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:44:20 up 51 days, 16:29, 51 users,  load average: 0.03, 0.05,
 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 29, 2022 at 06:48:13PM +0100, Heiko Stübner wrote:
> Am Mittwoch, 26. Januar 2022, 15:55:46 CET schrieb Sascha Hauer:
> > The pixel clocks dclk_vop[012] can be clocked from hpll, vpll, gpll or
> > cpll. gpll and cpll also drive many other clocks, so changing the
> > dclk_vop[012] clocks could change these other clocks as well. Drop
> > CLK_SET_RATE_PARENT to fix that. With this change the VOP2 driver can
> > only adjust the pixel clocks with the divider between the PLL and the
> > dclk_vop[012] which means the user may have to adjust the PLL clock to a
> > suitable rate using the assigned-clock-rate device tree property.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/clk/rockchip/clk-rk3568.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> > index 9d889fc46811..7687c62d1fa8 100644
> > --- a/drivers/clk/rockchip/clk-rk3568.c
> > +++ b/drivers/clk/rockchip/clk-rk3568.c
> > @@ -1044,13 +1044,13 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
> >  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
> >  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
> >  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> > -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> > +	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
> 
> hmm, I'm wondering about the use of having CLK_SET_RATE_NO_REPARENT here
> (and even adding it below).
> 
> Using SET_RATE_PARENT in the following patch for the hdmi-pll, should give
> us at least a suitable rate for the hdmi output, so the vop using that
> should already find a nice rate to use.
> 
> The normal system-PLLs don't normally don't change their rate at runtime,
> so I think we should liberate the dclks to select a PLL that best matches
> their target rate - so drop the CLK_SET_RATE_NO_REPARENT as well.
> 
> That way the DCLKs can change to another PLL source if that provides
> a rate nearer to their target.

The HDMI reference clock has the CLK_SET_RATE_PARENT flag set and we
need that to program the HPLL clock to suitable rates for the HDMI
output. Now any other display choosing HPLL as parent, because that
provides the best rate in that point of time, hangs on a PLL which
changes its rate whenever the resolution is changed on the HDMI output.

Changing parents on rate changes only works when all possible parents of
all the children involved have a constant rate. IMO allowing reparenting
on rate changes is a poorly chosen default because it's very unsafe. We
should rather have a CLK_SET_RATE_ALLOW_REPARENT flag.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
