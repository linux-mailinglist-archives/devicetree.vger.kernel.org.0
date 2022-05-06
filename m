Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88D4751D237
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 09:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243019AbiEFHa3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 03:30:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240161AbiEFHa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 03:30:28 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E67AD5C351
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 00:26:45 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nms6h-0003k7-Em; Fri, 06 May 2022 09:10:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nms6e-0001g4-87; Fri, 06 May 2022 09:10:28 +0200
Date:   Fri, 6 May 2022 09:10:28 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <20220506071028.GS4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <1911394.usQuhbGJ8B@diego>
 <20220505064131.GF4012@pengutronix.de>
 <2508329.Lt9SDvczpP@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2508329.Lt9SDvczpP@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:06:01 up 36 days, 19:35, 74 users,  load average: 0.40, 0.33,
 0.26
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

On Thu, May 05, 2022 at 09:23:03AM +0200, Heiko Stübner wrote:
> Am Donnerstag, 5. Mai 2022, 08:41:31 CEST schrieb Sascha Hauer:
> > On Thu, May 05, 2022 at 02:28:24AM +0200, Heiko Stübner wrote:
> > > Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> > > > The VOP2 is the display output controller on the RK3568. Add the node
> > > > for it to the dtsi file along with the required display-subsystem node
> > > > and the iommu node.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > Acked-by: Rob Herring <robh@kernel.org>
> > > > ---
> > > > +	vop: vop@fe040000 {
> > > > +		reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> > > > +		reg-names = "regs", "gamma_lut";
> > > 
> > > reg-names does not seem to be part of the dt-binding.
> > > Though now in the vop2-driver I see that the code uses that naming.
> > > 
> > > I guess we might want to just go the vop1-way by using numbered
> > > platform-resources via a follow-up patch and drop the regnames here?
> > 
> > Or we could document the reg-names properties in a follow-up patch.
> > Wouldn't that be better?
> 
> Also a possibility. Although that of course leads us into the naming
> bike-shed ;-) ... i.e. for reg-names I'd do "vop" + "gamme-lut" (dash instead
> of underscore) - instead of the ones used right now.

I also like dashes better than underscores and "vop" describes it better
than the generic "reg" name, so at least the two of us don't need to
dive deeper into the naming bike-shed ;)

> 
> While using numbered resources would keep the commonality between
> both vops

I like the named resources better, but I'll leave it up to you. You
decide, I'll create fixup patches in either direction.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
