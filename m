Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3ACD04BA164
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 14:37:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240954AbiBQNhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 08:37:46 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234678AbiBQNhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 08:37:45 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A72B159284
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 05:37:31 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKgyP-00031E-SV; Thu, 17 Feb 2022 14:37:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKgyN-0000Wu-5O; Thu, 17 Feb 2022 14:37:27 +0100
Date:   Thu, 17 Feb 2022 14:37:27 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 02/23] drm/rockchip: dw_hdmi: rename vpll clock to
 reference clock
Message-ID: <20220217133727.GQ18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-3-s.hauer@pengutronix.de>
 <0fa21d91-b15f-8049-d776-8c6e9e9334b2@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0fa21d91-b15f-8049-d776-8c6e9e9334b2@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:27:28 up 68 days, 22:13, 86 users,  load average: 0.20, 0.15,
 0.16
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

On Thu, Feb 17, 2022 at 04:20:15PM +0300, Dmitry Osipenko wrote:
> 17.02.2022 11:29, Sascha Hauer пишет:
> > +	hdmi->ref_clk = devm_clk_get(hdmi->dev, "ref");
> > +	if (PTR_ERR(hdmi->ref_clk) == -ENOENT)
> > +		hdmi->ref_clk = devm_clk_get(hdmi->dev, "vpll");
> > +
> > +	if (PTR_ERR(hdmi->ref_clk) == -ENOENT) {
> > +		hdmi->ref_clk = NULL;
> 
> I missed in v5 that devm_clk_get_optional() could be used here. But this
> doesn't worth the v7 by itself.

I looked into it and came to the conclusion that I can't use devm_clk_get_optional
for the "ref" clk because then I couldn't do the if (PTR_ERR(hdmi->ref_clk) == -ENOENT)
part.

Looking at it again I could do:

	hdmi->ref_clk = devm_clk_get_optional(hdmi->dev, "ref");
	if (!hdmi->ref_clk))
		hdmi->ref_clk = devm_clk_get_optional(hdmi->dev, "vpll");

I'll change that should I have to resend.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
