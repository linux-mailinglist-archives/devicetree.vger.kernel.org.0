Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9693E445A
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:01:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234949AbhHILBz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:01:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234948AbhHILBz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 07:01:55 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41AA1C0613D3
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 04:01:35 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mD328-0003RL-TW; Mon, 09 Aug 2021 13:01:28 +0200
Message-ID: <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Mon, 09 Aug 2021 13:01:27 +0200
In-Reply-To: <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
         <20210721204703.1424034-1-l.stach@pengutronix.de>
         <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
         <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de>
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

Am Donnerstag, dem 05.08.2021 um 20:56 +0200 schrieb Frieder Schrempf:
> On 05.08.21 12:18, Frieder Schrempf wrote:
> > On 21.07.21 22:46, Lucas Stach wrote:
> > > Hi all,
> > > 
> > > second revision of the GPC improvements and BLK_CTRL driver to make use
> > > of all the power-domains on the i.MX8MM. I'm not going to repeat the full
> > > blurb from the v1 cover letter here, but if you are not familiar with
> > > i.MX8MM power domains, it may be worth a read.
> > > 
> > > This 2nd revision fixes the DT bindings to be valid yaml, some small
> > > failure path issues and most importantly the interaction with system
> > > suspend/resume. With the previous version some of the power domains
> > > would not come up correctly after a suspend/resume cycle.
> > > 
> > > Updated testing git trees here, disclaimer still applies:
> > > https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains
> > > https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains-testing
> > 
> > I finally did some tests on my side using USB, GPU and DSI (no PCIe, VPU, CSI so far) and the results are promising. Thanks for the effort!
> > 
> > I will try to run some more automated suspend/resume and reboot test cycles over the weekend and report the results here afterwards.
> > 
> 
> Unfortunately I got some results sooner than I had hoped. I set up a simple loop to suspend/resume every few seconds and on the first run it took around 2-3 hours for the device to lock up on resume. On the second run it took less than half an hour. I had glmark2-es2-drm running in the background, but it looks like it crashed at some point before the lockup occurred.
> 
> Of course this could also be unrelated and caused by some peripheral driver or something but the first suspicion is definitely the power domains.
> 
> If you have any suggestions for which debug options to enable or where to add some printks, please let me know. If I do another run I would like to make sure that the resulting logs are helpful for debugging.
> 
> And I would appreciate if someone else could try to reproduce this problem on his/her side. I use this simple script for testing:
> 
> #!/bin/sh
> 
> glmark2-es2-drm &
> 
> while true;
> do
>     echo +10 > /sys/class/rtc/rtc0/wakealarm
>     echo mem > /sys/power/state
>     sleep 5
> done;

Hm, that's unfortunate.

I'm back from a two week vacation, but it looks like I won't have much
time available to look into this issue soon. It would be very helpful
if you could try to pinpoint the hang a bit more.  If you can reproduce
the hang with no_console_suspend you might be able to extract a bit
more info in which stage the hang happens (suspend, resume, TF-A, etc.)
If the hang is in the kernel you might be able to add some prints to
the suspend/resume paths to be able to track down the exact point of
the hang.

I'm happy to look into the issue once it's better known where to look,
but I fear that I won't have time to do the above investigation myself
short term. Frieder, is this something you could help with over the
next few days?

Regards,
Lucas

