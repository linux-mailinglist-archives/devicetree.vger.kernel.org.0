Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04CCD4D7D76
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 09:18:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236555AbiCNITv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 04:19:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234599AbiCNITu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 04:19:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DDD6BCAD
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 01:18:40 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nTfuY-0006Cj-85; Mon, 14 Mar 2022 09:18:38 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nTfuV-0003SL-13; Mon, 14 Mar 2022 09:18:35 +0100
Date:   Mon, 14 Mar 2022 09:18:35 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc:     "elaine.zhang" <zhangqing@rock-chips.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v8 09/24] drm/rockchip: dw_hdmi: Add support for niu clk
Message-ID: <20220314081834.GK405@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-10-s.hauer@pengutronix.de>
 <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4712e128-8a14-e361-0819-911dc3453372@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:38:20 up 93 days, 16:23, 80 users,  load average: 0.80, 0.40,
 0.19
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

On Sun, Mar 13, 2022 at 12:07:56AM +0300, Dmitry Osipenko wrote:
> On 3/11/22 11:33, Sascha Hauer wrote:
> > The rk3568 HDMI has an additional clock that needs to be enabled for the
> > HDMI controller to work. This clock is not needed for the HDMI
> > controller itself, but to make the SoC internal bus logic work. From the
> > reference manual:
> > 
> >> 2.8.6 NIU Clock gating reliance
> >>
> >> A part of niu clocks have a dependence on another niu clock in order to
> >> sharing the internal bus. When these clocks are in use, another niu
> >> clock must be opened, and cannot be gated.  These clocks and the special
> >> clock on which they are relied are as following:
> >>
> >> Clocks which have dependency     The clock which can not be gated
> >> -----------------------------------------------------------------
> >> ...
> >> pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
> >> ...
> > The clock framework does not support turning on a clock whenever another
> > clock is turned on, so this patch adds support for the dependent clock
> > to the HDMI driver. We call it "NIU", which is for "Native Interface
> > Unit"
> 
> This still doesn't make sense to me. You're saying that "pclk_vo_niu,
> hclk_vo_s_niu" depend on "hclk_vo_niu", but HDMI doesn't use pclk_vo, it
> uses pclk_hdmi.

pclk_hdmi_host is a child clock of pclk_vo:

     aclk_vo                  2        2        0   300000000          0     0  50000         Y
        aclk_hdcp             0        0        0   300000000          0     0  50000         N
        pclk_vo               2        3        0    75000000          0     0  50000         Y
           pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
           pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
           pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
           pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
           pclk_hdcp          0        0        0    75000000          0     0  50000         N
        hclk_vo               2        5        0   150000000          0     0  50000         Y
           hclk_hdcp          0        0        0   150000000          0     0  50000         N
           hclk_vop           0        2        0   150000000          0     0  50000         N

Sascha

> I don't see how these "niu" clocks are related to HDMI
> from your description. The pclk_vo should remain being disabled for HDMI.
> 
> I already said before that the datasheet suggests that hclk_vo needs to
> be enabled in order to ungate the AHB part of the VO module, which is
> needed for CPU accesses. Elain, could you please confirm this or clarify
> more about why hclk_vo needs to be enabled for HDMI?
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
