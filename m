Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2A094C6F32
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 15:19:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232414AbiB1OUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 09:20:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232248AbiB1OUH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 09:20:07 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFFD55E16F
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 06:19:27 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nOgs0-0003QR-H8; Mon, 28 Feb 2022 15:19:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nOgrx-0007op-S7; Mon, 28 Feb 2022 15:19:21 +0100
Date:   Mon, 28 Feb 2022 15:19:21 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Dmitry Osipenko <digetx@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220228141921.GN19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220225131154.GE19585@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:52:07 up 79 days, 22:37, 90 users,  load average: 0.15, 0.14,
 0.10
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

On Fri, Feb 25, 2022 at 02:11:54PM +0100, Sascha Hauer wrote:
> On Fri, Feb 25, 2022 at 12:41:23PM +0000, Robin Murphy wrote:
> > On 2022-02-25 11:10, Dmitry Osipenko wrote:
> > > 25.02.2022 13:49, Sascha Hauer пишет:
> > > > On Fri, Feb 25, 2022 at 01:26:14PM +0300, Dmitry Osipenko wrote:
> > > > > 25.02.2022 10:51, Sascha Hauer пишет:
> > > > > > The rk3568 HDMI has an additional clock that needs to be enabled for the
> > > > > > HDMI controller to work. The purpose of that clock is not clear. It is
> > > > > > named "hclk" in the downstream driver, so use the same name.
> > > > > > 
> > > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > > ---
> > > > > > 
> > > > > > Notes:
> > > > > >      Changes since v5:
> > > > > >      - Use devm_clk_get_optional rather than devm_clk_get
> > > > > > 
> > > > > >   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
> > > > > >   1 file changed, 16 insertions(+)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > > > > index fe4f9556239ac..c6c00e8779ab5 100644
> > > > > > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > > > > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > > > > > @@ -76,6 +76,7 @@ struct rockchip_hdmi {
> > > > > >   	const struct rockchip_hdmi_chip_data *chip_data;
> > > > > >   	struct clk *ref_clk;
> > > > > >   	struct clk *grf_clk;
> > > > > > +	struct clk *hclk_clk;
> > > > > >   	struct dw_hdmi *hdmi;
> > > > > >   	struct regulator *avdd_0v9;
> > > > > >   	struct regulator *avdd_1v8;
> > > > > > @@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
> > > > > >   		return PTR_ERR(hdmi->grf_clk);
> > > > > >   	}
> > > > > > +	hdmi->hclk_clk = devm_clk_get_optional(hdmi->dev, "hclk");
> > > > > > +	if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {
> > > > > 
> > > > > Have you tried to investigate the hclk? I'm still thinking that's not
> > > > > only HDMI that needs this clock and then the hardware description
> > > > > doesn't look correct.
> > > > 
> > > > I am still not sure what you mean. Yes, it's not only the HDMI that
> > > > needs this clock. The VOP2 needs it as well and the driver handles that.
> > > 
> > > I'm curious whether DSI/DP also need that clock to be enabled. If they
> > > do, then you aren't modeling h/w properly AFAICS.
> > 
> > Assuming nobody at Rockchip decided to make things needlessly inconsistent
> > with previous SoCs, HCLK_VOP should be the clock for the VOP's AHB slave
> > interface. Usually, if that affected anything other than accessing VOP
> > registers, indeed it would smell of something being wrong in the clock tree,
> > but in this case I'd also be suspicious of whether it might have ended up
> > clocking related GRF registers as well (either directly, or indirectly via
> > some gate that the clock driver hasn't modelled yet).
> 
> Ok, I am beginning to understand. I verified that hdmi, mipi and dp are
> hanging when HCLK_VOP is disabled by disabling that clock via sysfs
> using CLOCK_ALLOW_WRITE_DEBUGFS. When it's disabled then the registers
> of that units can't be accessed. However, when I disable HCLK_VOP by
> directly writing to the gate bit RK3568_CLKGATE_CON(20) then only
> accessing VOP registers hangs, the other units stay functional.
> So it seems it must be the parent clock which must be enabled. The
> parent clock is hclk_vo. This clock should be handled as part of the
> RK3568_PD_VO power domain:
> 
> 	power-domain@RK3568_PD_VO {
>                 reg = <RK3568_PD_VO>;
>                 clocks = <&cru HCLK_VO>,
>                          <&cru PCLK_VO>,
>                          <&cru ACLK_VOP_PRE>;
>                  pm_qos = <&qos_hdcp>,
>                           <&qos_vop_m0>,
>                           <&qos_vop_m1>;
>                  #power-domain-cells = <0>;
>         };

Forget this. The clocks in this node are only enabled during enabling or
disabling the power domain, they are disabled again immediately afterwards.

OK, I need HCLK_VO to access the HDMI registers. I verified that by
disabling HCLK_VO at register level (CRU_GATE_CON(20) BIT(1)). The
HDMI registers become inaccessible then. This means I'll replace
HCLK_VOP in the HDMI node with HCLK_VO. Does this sound sane?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
