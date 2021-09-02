Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2D03FEC1B
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 12:26:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233818AbhIBK1C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 06:27:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233714AbhIBK1B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 06:27:01 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C15DC061575
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 03:26:03 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mLjuw-0003GN-TI; Thu, 02 Sep 2021 12:25:58 +0200
Message-ID: <2bc3ef1160e00e01b57abea7c2e1f9dadcea5cee.camel@pengutronix.de>
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Frieder Schrempf <frieder.schrempf@kontron.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Date:   Thu, 02 Sep 2021 12:25:57 +0200
In-Reply-To: <0e91cb27-7b89-fded-45b9-7d963adee581@kontron.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
         <20210721204703.1424034-1-l.stach@pengutronix.de>
         <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
         <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
         <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
         <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
         <0e91cb27-7b89-fded-45b9-7d963adee581@kontron.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Frieder,

Am Mittwoch, dem 01.09.2021 um 12:03 +0200 schrieb Frieder Schrempf:
[...]
> > > 
> > > > 
> > > > And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:
> > > > 
> > > > #!/bin/sh
> > > > 
> > > > glmark2-es2-drm &
> > > > 
> > > > while true;
> > > > do
> > > >     echo +10 > /sys/class/rtc/rtc0/wakealarm
> > > >     echo mem > /sys/power/state
> > > >     sleep 5
> > > > done;
> > > 
> > > Hm, that's unfortunate.
> > > 
> > > I'm back from a two week vacation, but it looks like I won't have much
> > > time available to look into this issue soon. It would be very helpful
> > > if you could try to pinpoint the hang a bit more.  If you can reproduce
> > > the hang with no_console_suspend you might be able to extract a bit
> > > more info in which stage the hang happens (suspend, resume, TF-A, etc.)
> > > If the hang is in the kernel you might be able to add some prints to
> > > the suspend/resume paths to be able to track down the exact point of
> > > the hang.
> > > 
> > > I'm happy to look into the issue once it's better known where to look,
> > > but I fear that I won't have time to do the above investigation myself
> > > short term. Frieder, is this something you could help with over the
> > > next few days?
> > 
> > I will see if I can find some time to track down the issue at least a little bit more. But I imagine it could get quite tedious if it takes up to several hours to reproduce the issue and I don't have much time to spare.
> > 
> > @Peng, @Adam and everyone else: Any chance you could setup a similar test and try to reproduce this?
> > 
> > On the other hand reboot cycle testing didn't show any lockup problems over more than 24 hours, so it seems like the issue is limited to resume.
> 
> I ran a few more suspend/resume cycles and watched the log. The first
> 2.5 hours nothing noteworthy happened, except that glmark2 crashed again
> at some point.
> 
> Then suddenly the following lines were printed while suspending:
> 
>   imx-pgc imx-pgc-domain.6: failed to command PGC
>   PM: dpm_run_callback(): platform_pm_suspend+0x0/0x78 returns -110
>   imx8m-blk-ctrl 38330000.blk-ctrl: PM: failed to suspend: error -110
>   PM: Some devices failed to suspend, or early wake event detected
> 
> After that, the suspending continues to fail with the following on each try:
> 
>   PM: dpm_run_callback(): platform_pm_suspend+0x0/0x78 returns -22
>   imx8m-blk-ctrl 38330000.blk-ctrl: PM: failed to suspend: error -22
>   PM: Some devices failed to suspend, or early wake event detected
> 
> So far I didn't run into a lockup again with this test, but I will
> continue trying to reproduce it and retrieve more information.

If you run into this "failed to command PGC" state again, I would be
very interested in the GPC state there. You should be able to dump the
full register state from the GPC regmap in debugfs.

Regards,
Lucas

