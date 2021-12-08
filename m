Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DDA846D8EB
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 17:51:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230509AbhLHQzW convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 8 Dec 2021 11:55:22 -0500
Received: from gloria.sntech.de ([185.11.138.130]:41500 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229735AbhLHQzW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 11:55:22 -0500
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mv0AS-0000IK-JA; Wed, 08 Dec 2021 17:51:44 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 18/18] [HACK, RFC] clk: rk3568: do not divide dclk_vop0
Date:   Wed, 08 Dec 2021 17:51:43 +0100
Message-ID: <10508489.WJHl9KOmCk@diego>
In-Reply-To: <20211208151230.3695378-19-s.hauer@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de> <20211208151230.3695378-19-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sascha,

Am Mittwoch, 8. Dezember 2021, 16:12:30 CET schrieb Sascha Hauer:
> On the rk3568 we have this (simplified) situation:
> 
>  .--------.     .-----.    .---------.
> -| hpll   |--.--| /n  |----|dclk_vop0|-
>  `--------´  |  `-----´    `---------´
>              |  .-----.    .---------.
>              `--| /m  |----|dclk_vop1|-
>              |  `-----´    `---------´
>              |             .---------.
>              `-------------|hdmi_ref |-
>                            `---------´
> 
> hpll is the PLL that drives the HDMI reference clock and the pixel
> clocks for the different CRTCs (dclk_vop0/1). Between the pixel clocks
> and the hpll there are programmable dividers whereas the HDMI reference
> clock is directly connected to the hpll.
> 
> For the HDMI output to work the pixel clock must be the same as the HDMI
> reference clock, hence the dividers must be programmed to 1. Normally a
> rate change on dclk_vop0/1 propagates through to the hpll and the clock
> framework picks a suitable combination of hpll and divider settings. by
> accident it picks a divider setting of 1 for the standard 1080p case,
> but other divider settings for most other resolutions leaving the HDMI
> port non working.
> 
> This patch is not a solution, it merely puts the finger in the wound. We
> leave out the divider for the composite clock for dclk_vop0 which then
> leaves the divider at the bootloader default setting of 1. I assume
> the divider is disturbing only for the HDMI case, but needed for other
> outputs. Any thoughts how this can be handled?

I'm not even sure if/how the common clock framework keeps track of
diverging wishes to parent-rates :-) .

But I do see two direct issues in the _existing_ code.

dclk_vop0/1 uses CLK_SET_RATE_PARENT so is allowed to change
the rates of its parent clock(s).

Its parent clocks are not only hpll but can also be vpll, gpll and cpll.
So this can cause even more mayhem, if the ccf for example decides
to select the gpll and then change its rate,which may result in a lot
of peripherals getting their rates changed under them ;-) .

On the other hand I see in the clock driver that hdmi-ref is not allowed
to change its parent rate, so can only select between hpll and hpll_ph0
(1/2 the rate?).

So I guess, one way could be:
- add CLK_SET_RATE_PARENT to the hdmi-ref clock
- drop CLK_SET_RATE_PARENT from the dclks
- make sure hdmi-clock is set before the dclk


Heiko


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/clk/rockchip/clk-rk3568.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 69a9e8069a486..2d04d8253ca22 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1038,8 +1038,8 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
>  			RK3568_CLKGATE_CON(20), 8, GFLAGS),
>  	GATE(HCLK_VOP, "hclk_vop", "hclk_vo", 0,
>  			RK3568_CLKGATE_CON(20), 9, GFLAGS),
> -	COMPOSITE(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> -			RK3568_CLKSEL_CON(39), 10, 2, MFLAGS, 0, 8, DFLAGS,
> +	COMPOSITE_NODIV(DCLK_VOP0, "dclk_vop0", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +			RK3568_CLKSEL_CON(39), 10, 2, MFLAGS,
>  			RK3568_CLKGATE_CON(20), 10, GFLAGS),
>  	COMPOSITE(DCLK_VOP1, "dclk_vop1", hpll_vpll_gpll_cpll_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
>  			RK3568_CLKSEL_CON(40), 10, 2, MFLAGS, 0, 8, DFLAGS,
> 




