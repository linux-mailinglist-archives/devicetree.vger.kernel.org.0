Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3855F4C42BB
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 11:49:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239557AbiBYKuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 05:50:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233863AbiBYKuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 05:50:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D6F3235315
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 02:49:28 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNYAA-0001c6-I2; Fri, 25 Feb 2022 11:49:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNYA8-00082k-B5; Fri, 25 Feb 2022 11:49:24 +0100
Date:   Fri, 25 Feb 2022 11:49:24 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220225104924.GC19585@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:47:47 up 76 days, 19:33, 91 users,  load average: 0.18, 0.18,
 0.23
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

On Fri, Feb 25, 2022 at 01:26:14PM +0300, Dmitry Osipenko wrote:
> 25.02.2022 10:51, Sascha Hauer пишет:
> > The rk3568 HDMI has an additional clock that needs to be enabled for the
> > HDMI controller to work. The purpose of that clock is not clear. It is
> > named "hclk" in the downstream driver, so use the same name.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > 
> > Notes:
> >     Changes since v5:
> >     - Use devm_clk_get_optional rather than devm_clk_get
> > 
> >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > index fe4f9556239ac..c6c00e8779ab5 100644
> > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > @@ -76,6 +76,7 @@ struct rockchip_hdmi {
> >  	const struct rockchip_hdmi_chip_data *chip_data;
> >  	struct clk *ref_clk;
> >  	struct clk *grf_clk;
> > +	struct clk *hclk_clk;
> >  	struct dw_hdmi *hdmi;
> >  	struct regulator *avdd_0v9;
> >  	struct regulator *avdd_1v8;
> > @@ -229,6 +230,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
> >  		return PTR_ERR(hdmi->grf_clk);
> >  	}
> >  
> > +	hdmi->hclk_clk = devm_clk_get_optional(hdmi->dev, "hclk");
> > +	if (PTR_ERR(hdmi->hclk_clk) == -EPROBE_DEFER) {
> 
> Have you tried to investigate the hclk? I'm still thinking that's not
> only HDMI that needs this clock and then the hardware description
> doesn't look correct.

I am still not sure what you mean. Yes, it's not only the HDMI that
needs this clock. The VOP2 needs it as well and the driver handles that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
