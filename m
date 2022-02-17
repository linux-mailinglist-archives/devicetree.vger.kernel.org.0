Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D498D4BA3EA
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 16:01:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232552AbiBQPBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 10:01:03 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229513AbiBQPBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 10:01:00 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07D5023088F
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 07:00:44 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKiGx-0000GT-7s; Thu, 17 Feb 2022 16:00:43 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nKiGv-0005Rz-CG; Thu, 17 Feb 2022 16:00:41 +0100
Date:   Thu, 17 Feb 2022 16:00:41 +0100
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
Subject: Re: [PATCH v6 09/23] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220217150041.GS18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-10-s.hauer@pengutronix.de>
 <cd66c9da-15c2-54e1-8016-8d951926eaa2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cd66c9da-15c2-54e1-8016-8d951926eaa2@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:56:25 up 68 days, 23:42, 87 users,  load average: 0.46, 0.19,
 0.27
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

On Thu, Feb 17, 2022 at 03:35:08PM +0300, Dmitry Osipenko wrote:
> 17.02.2022 11:29, Sascha Hauer пишет:
> > The rk3568 HDMI has an additional clock that needs to be enabled for the
> > HDMI controller to work. The purpose of that clock is not clear. It is
> > named "hclk" in the downstream driver, so use the same name.
> 
> Have you checked that DSI works without the enabled hclk? I'd expect the
> whole VOP to be clock-gated.

No, I haven't checked that.

I am not sure where you aiming at. The HCLK_VOP is supplied to the vop2
as well and the vop2 driver also enables this clock. Still, when the
HDMI registers are accessed before the vop2 driver enables HCLK_VOP then
the system hangs, so the HDMI needs it also.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
