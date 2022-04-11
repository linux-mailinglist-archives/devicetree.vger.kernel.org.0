Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82E454FBBED
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 14:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230290AbiDKMXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 08:23:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346104AbiDKMWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 08:22:54 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0686542A0D
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 05:20:38 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1ndt1s-0004DP-Bg; Mon, 11 Apr 2022 14:20:24 +0200
Message-ID: <f2fc68f6c2034546009c96658da0e63f191978d1.camel@pengutronix.de>
Subject: Re: [PATCH v0 07/10] phy: freescale: add Samsung HDMI PHY
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Date:   Mon, 11 Apr 2022 14:20:22 +0200
In-Reply-To: <20220411115922.luv2gyutdecvsxa3@houat>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
         <20220406160123.1272911-8-l.stach@pengutronix.de>
         <20220411115922.luv2gyutdecvsxa3@houat>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
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

Hi Maxime,

Am Montag, dem 11.04.2022 um 13:59 +0200 schrieb Maxime Ripard:
> Hi Lucas,
> 
> On Wed, Apr 06, 2022 at 06:01:20PM +0200, Lucas Stach wrote:
> > +static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
> > +					 unsigned long parent_rate)
> > +{
> > +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> > +
> > +	if (!phy->cur_cfg)
> > +		return 0;
> > +
> > +	return phy->cur_cfg->clk_rate;
> > +}
> 
> This means that the clock will return 0 at initialization, which will
> throw the rate accounting in the CCF off.
> 
> Returning 0 here isn't valid. Surely that phy has a default
> configuration at boot that you could use to initialize a rate?
> 
> See https://lore.kernel.org/linux-clk/20220408091037.2041955-1-maxime@cerno.tech/

Thanks for the hint. I don't know the full history of this and surely I
can use the register reset defaults to initialize the clock rate, but
it still seems odd. A powered down clock generator, like the PLL in
this PHY, is not actually putting out a clock at any rate, so 0 for the
rate seems natural, so it's kind of a bad pitfall if the CCF can't deal
with that.

Regards,
Lucas

