Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF08B4ED983
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 14:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234944AbiCaMUw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 08:20:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234029AbiCaMUv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 08:20:51 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 436DB57169
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 05:19:04 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZtlW-0000gs-Ff; Thu, 31 Mar 2022 14:19:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nZtlV-0008D1-0u; Thu, 31 Mar 2022 14:19:01 +0200
Date:   Thu, 31 Mar 2022 14:19:01 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>, kernel@pengutronix.de,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220331121900.GG4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:17:51 up 1 day, 47 min, 51 users,  load average: 0.11, 0.15, 0.14
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

On Thu, Mar 31, 2022 at 08:13:09PM +0800, Andy Yan wrote:
> Hi Piotr:
> 
> On 3/31/22 03:20, Sascha Hauer wrote:
> > On Wed, Mar 30, 2022 at 04:52:22PM +0200, Piotr Oniszczuk wrote:
> > > 
> > > > Wiadomość napisana przez Sascha Hauer <s.hauer@pengutronix.de> w dniu 30.03.2022, o godz. 12:20:
> > > > 
> > > > Does it change anything if you do a "modetest -s 69@67:1920x1080" before
> > > > starting the app? Or if you run "modetest -P 43@67:1920x1080@NV12"
> > > > before starting the app? Or other combinations thereof?
> > > So i tried following combinations
> > > 
> > > -boot
> > > -modetest -s 69@67:1920x1080 -> ok
> > > -modetest -P 43@67:1920x1080@NV12 -> green screen
> > I have no idea what is going on here. There same commands work for me.
> > You could provide me your kernel config and upstream commitish you are
> > working on, maybe that gets me closer to your setup.
> 
> 
> It's a little strange, I can't reproduce this issue neither.
> 
> But I have problem with this two step command sequence.
> 
> step 1:  modetest -s 69@67:1920x1080 -> ok
> 
> step 2:  modetest -P 43@67:1920x1080@NV12,
> 
> I got the failed message:  "failed to enable plane: Permission denied"
> 
> Because the drm core will stop step2 by drm_ioctrl_permit as
> DRM_IOCTL_SETPLANE need a master,
> 
> but the current master is the modetest run by step1.
>

[...]

> 
> So how you two got step two run success?

You have to stop the first modetest by hitting return. Alternatively you
could pass the -d option to the first modetest.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
