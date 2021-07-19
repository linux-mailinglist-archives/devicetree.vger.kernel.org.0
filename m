Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3BA83CE7AC
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 19:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346391AbhGSQal (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 12:30:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347349AbhGSQ1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 12:27:19 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D36C061766
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 09:35:15 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m5WZC-0008Bs-Ny; Mon, 19 Jul 2021 18:56:30 +0200
Message-ID: <74d097cc384572ddd2128f9abb7ea1b6ecf3327e.camel@pengutronix.de>
Subject: Re: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dl-linux-imx <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Date:   Mon, 19 Jul 2021 18:56:29 +0200
In-Reply-To: <DB6PR0402MB27606BA0D35BD1EDA022AE2188E19@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
         <DB6PR0402MB27606BA0D35BD1EDA022AE2188E19@DB6PR0402MB2760.eurprd04.prod.outlook.com>
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

Hi Peng,

Am Montag, dem 19.07.2021 um 12:53 +0000 schrieb Peng Fan:
> Hi Lucas,
> 
> > Subject: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver
> 
> Thanks for your work on this. I'll give a look and test tomorrow.
> 
> > 
> > Hi all,
> > 
> > over the last few days I've taken on the job to give the blk-ctrl driver initially
> > worked on by Peng Fan another spin. What I've come up with now looks quite
> > a bit different, as the power sequencing shared between the blk-ctrls and the
> > GPC is not really feasible to model with a strict hierarchy of power domains.
> > In my design the blk-ctrl driver is the instance driving the sequence for those
> > power domains where a blk-ctrl is part of the picture.
> > 
> > For those that aren't familiar with the power domain architecture on the
> > i.MX8M*, here's a short overview, to hopefully make it easier to review this
> > series. The i.MX8M* reuses the GPCv2 (General Power Controller)IP block,
> > already known from the i.MX7. On the i.MX7 all power domains were
> > independent and all the reset and bus isolation sequencing was handled in
> > hardware by the GPC. Software only needed to request power up/down for
> > the domain and things mostly happened behind the scenes. On i.MX8M*
> > things got more complex, as there are now nested power domains and
> > coupling of the data busses is handled by AMBA domain bridges (ADB), which
> > aren't sequenced by the GPC hardware, but have handshake requests/acks
> > wired up to a register in the GPC that needs to be handled by software. Due
> > to hardware issues some of the reset sequencing also needs to be handled by
> > software, as the GPC isn't always able to properly trigger the SRC reset for the
> > peripherals inside the power domains.
> > 
> > Generally with all those nested domains there exists a outer *MIX (e.g.
> > VPUMIX, DISPMIX) domain that contains the ADB and the BLK_CTRL.
> > Handshake with the ADB can only happen after the *MIX domain is powered
> > up and some domain specific initialization in the BLK_CTRL is done. The ADB
> > is connected to a bus clock from CCM that needs to be enabled for the ADB to
> > work. Also there might be additional resets and clock gates for the ADB in the
> > BLK_CTRL MMIO region, which is also only accessible after the *MIX domain
> > is powered up.
> > Some peripherals are directly located in the *MIX domain, but others are
> > placed in inner domains located in the *MIX domain. In order to power up
> > those nested domains the *MIX domain must already be powered up and the
> > ADB handshake must be finished. Reset is handled via the BLK_CTRL, instead
> > of the SRC, which contains resets and clock gates for the peripherals.
> > The general flow for those inner domains is:
> > 1. Assert reset and ungate clocks in BLK_CTRL to allow reset to propagate 2.
> > Request power up at the GPC 3. Deassert reset
> > 
> > Failing to meet the ADB handshake and/or reset sequencing requirements will
> > generally lead to system hangs (not necessarily at the point where the
> > sequence is violated). The blk-ctrl driver as implemented hides this behind
> > virtual power domains. Peripherals don't need to care whether they are
> > located directly inside the *MIX domain or in a nested domain, they all just
> > use the power domains exposed by the BLK_CTRL driver, which handles the
> > sequencing requiments internally.
> > 
> > Currently this series implements both the VPU and DISP blk-ctrls for the
> > i.MX8MM SoC, but I'm quite confident that the design is sound and can be
> > trivially extended for the other i.MX8M* SoCs. On my personal TODO list is
> > the conversion of the i.MX8MQ VPU blk-ctrl to the new model, which should
> > finally allow us to drive the G1 and G2 VPUs independently. After that I'm
> > going to look at the i.MX8MP, 
> 
> Would you take 8MP before 8MQ? 8MP is more popular.
> If you not mind, I could post my local 8MP GPC part based on your patchset.
> Anyway my local 8MP blk-ctl will be dropped.

The 8MQ VPU conversion should be pretty trivial, now that I've worked
out the overall structure of the blk-ctrl driver. I'm also aware of
multiple people in the community waiting for this part to land, as it's
blocking Hantro G2 support on i.MX8MQ upstream, so I'm going to stick
to this order. While there is a lot interest in 8MP, there aren't that
many people that even have the hardware yet, while the 8MQ is in pretty
widespread use.

I also have some 8MP GPC work bitrotting in a branch, which I planned
to revive. If you already have something ready, I'm happy to skip that
and review your patches instead.

> 
> as this is a current focus of my work and has
> > even more blk-ctrl instances. But before moving on to those, I would like to
> > gather some feedback and testing on this series.
> > 
> > I will also provide a branch with those patches and the WIP VPU and display
> > patches I used to test this. But that will have to wait for next week, as it's
> > getting pretty late here.
> 
> Do you have a public branch now?

This series (with fixes for the reported issues already squashed in)
can be found here:
https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains

Additional patches to enable MIPI DSI display and one VPU can be found
here:
https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains-testing

Please note that the display patches do not reflect the current status
of the upstream discussions, it's just my known-good stack at the
moment. I'm providing those patches just for contextual reference and
to allow people to see my test setup. I've worked on a custom i.MX8MM
board, so the bits to hook this up for the EVK board are missing. I am
not seeking feedback on any of the display/vpu patches at the moment.

Regards,
Lucas


