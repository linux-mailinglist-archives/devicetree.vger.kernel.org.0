Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D1504BDC95
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:42:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354784AbiBUKdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 05:33:40 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345600AbiBUKdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 05:33:23 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0710B36E30
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 01:53:45 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nM5Nx-0007Rt-Vf; Mon, 21 Feb 2022 10:53:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nM5Nu-0006XB-4c; Mon, 21 Feb 2022 10:53:34 +0100
Date:   Mon, 21 Feb 2022 10:53:34 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Frank Wunderlich <frank-w@public-files.de>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v6 17/23] arm64: dts: rockchip: rk356x: Add HDMI nodes
Message-ID: <20220221095334.GC18637@pengutronix.de>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-18-s.hauer@pengutronix.de>
 <trinity-1fb35fb4-c954-46bc-ae87-02d5df121a01-1645433668183@3c-app-gmx-bs60>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <trinity-1fb35fb4-c954-46bc-ae87-02d5df121a01-1645433668183@3c-app-gmx-bs60>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:52:17 up 72 days, 18:37, 85 users,  load average: 0.08, 0.21,
 0.25
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

On Mon, Feb 21, 2022 at 09:54:28AM +0100, Frank Wunderlich wrote:
> Hi
> 
> > Gesendet: Donnerstag, 17. Februar 2022 um 09:29 Uhr
> > Von: "Sascha Hauer" <s.hauer@pengutronix.de>
> 
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -10,7 +10,6 @@
> >  #include <dt-bindings/pinctrl/rockchip.h>
> >  #include <dt-bindings/power/rk3568-power.h>
> >  #include <dt-bindings/soc/rockchip,boot-mode.h>
> > -#include <dt-bindings/soc/rockchip,vop2.h>
> 
> why dropping this after adding in part 16?
> 
> >  #include <dt-bindings/thermal/thermal.h>
> 
> it looks like you moved this to board includes...imho this should stay
> in the rk356x.dtsi, because compilation will fail if a board without
> the vop2 (and missing the include) is derived from rk356x.dtsi.

I dropped adding the include from Patch 16. The include is not needed by
rk356x.dtsi. When a board without vop2 support is added then it won't
need the include either.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
