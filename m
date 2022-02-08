Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BAC64AD7EB
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 12:52:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356148AbiBHLv3 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 8 Feb 2022 06:51:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356935AbiBHLuO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 06:50:14 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F9D8C035417
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 03:41:15 -0800 (PST)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nHOrt-00014g-Pz; Tue, 08 Feb 2022 12:41:09 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 24/27] clk: rk3568: drop CLK_SET_RATE_PARENT from dclk_vop*
Date:   Tue, 08 Feb 2022 12:41:08 +0100
Message-ID: <2260638.yNqFStFpQL@diego>
In-Reply-To: <20220131081042.GW23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de> <5329207.qDA9hNt6id@diego> <20220131081042.GW23490@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, 31. Januar 2022, 09:10:42 CET schrieb Sascha Hauer:
> On Sat, Jan 29, 2022 at 06:48:13PM +0100, Heiko Stübner wrote:
> > Am Mittwoch, 26. Januar 2022, 15:55:46 CET schrieb Sascha Hauer:
> > > The pixel clocks dclk_vop[012] can be clocked from hpll, vpll, gpll or
> > > cpll. gpll and cpll also drive many other clocks, so changing the
> > > dclk_vop[012] clocks could change these other clocks as well. Drop
> > > CLK_SET_RATE_PARENT to fix that. With this change the VOP2 driver can
> > > only adjust the pixel clocks with the divider between the PLL and the
> > > dclk_vop[012] which means the user may have to adjust the PLL clock to a
> > > suitable rate using the assigned-clock-rate device tree property.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/clk/rockchip/clk-rk3568.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> > > index 9d889fc46811..7687c62d1fa8 100644
> > > --- a/drivers/clk/rockchip/clk-rk3568.c
> > > +++ b/drivers/clk/rockchip/clk-rk3568.c
> > > @@ -1044,13 +1044,13 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
> > >  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
> > >  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
> > >  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> > > -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> > > +	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_NO_REPARENT,
> > 
> > hmm, I'm wondering about the use of having CLK_SET_RATE_NO_REPARENT here
> > (and even adding it below).
> > 
> > Using SET_RATE_PARENT in the following patch for the hdmi-pll, should give
> > us at least a suitable rate for the hdmi output, so the vop using that
> > should already find a nice rate to use.
> > 
> > The normal system-PLLs don't normally don't change their rate at runtime,
> > so I think we should liberate the dclks to select a PLL that best matches
> > their target rate - so drop the CLK_SET_RATE_NO_REPARENT as well.
> > 
> > That way the DCLKs can change to another PLL source if that provides
> > a rate nearer to their target.
> 
> The HDMI reference clock has the CLK_SET_RATE_PARENT flag set and we
> need that to program the HPLL clock to suitable rates for the HDMI
> output. Now any other display choosing HPLL as parent, because that
> provides the best rate in that point of time, hangs on a PLL which
> changes its rate whenever the resolution is changed on the HDMI output.

Ah, right ... the hpll is in the parent list, that changes things as you said.
I somehow only noticed the regular PLLs that normally have a constant
rate. So never mind ;-)


Heiko


> Changing parents on rate changes only works when all possible parents of
> all the children involved have a constant rate. IMO allowing reparenting
> on rate changes is a poorly chosen default because it's very unsafe. We
> should rather have a CLK_SET_RATE_ALLOW_REPARENT flag.
> 
> Sascha
> 
> 




