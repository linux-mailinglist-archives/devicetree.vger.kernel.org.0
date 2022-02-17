Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED084BA40C
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 16:13:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242337AbiBQPNS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 10:13:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:42218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241782AbiBQPNS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 10:13:18 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 477F612CC04
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:13:03 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKiSr-0001t9-Hc; Thu, 17 Feb 2022 16:13:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKiSp-000720-G6; Thu, 17 Feb 2022 16:12:59 +0100
Date:   Thu, 17 Feb 2022 16:12:59 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Douglas Anderson <dianders@chromium.org>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Yakir Yang <ykk@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 13/23] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Message-ID: <20220217151259.GT18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-14-s.hauer@pengutronix.de>
 <f5abe6aa-473a-a00d-2bc5-b8a1d0560d1f@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f5abe6aa-473a-a00d-2bc5-b8a1d0560d1f@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:04:18 up 68 days, 23:49, 87 users,  load average: 0.37, 0.42,
 0.35
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

On Thu, Feb 17, 2022 at 05:00:37PM +0300, Dmitry Osipenko wrote:
> 17.02.2022 11:29, Sascha Hauer пишет:
> > From: Douglas Anderson <dianders@chromium.org>
> > 
> > Jitter was improved by lowering the MPLL bandwidth to account for high
> > frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
> > lowered only enough to get us a comfortable margin.  We believe that
> > lowering the bandwidth like this is safe given sufficient testing.
> 
> There are no device-trees that use "rockchip,rk3288-cru", AFAICS..

What do you mean? In my tree I have:

arch/arm/boot/dts/rk3288.dtsi:863:              compatible = "rockchip,rk3288-cru";
drivers/clk/rockchip/clk-rk3288.c:985:CLK_OF_DECLARE(rk3288_cru, "rockchip,rk3288-cru", rk3288_clk_init);

> 
> Was this change tested on a non-RK3288 devices?

Yes, on a rk3568 ;)

The patch has been posted back in 2015 and was added to the Rockchip
downstream kernel in 2016. I don't know how thoroughly Rockchip tests
their kernels, but I assume the patch wouldn't be there if it caused
any problems.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
