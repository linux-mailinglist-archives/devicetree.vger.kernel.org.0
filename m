Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7B2A295A34
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 10:24:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2443783AbgJVIYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 04:24:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726045AbgJVIYe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 04:24:34 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03ADCC0613CE
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 01:24:34 -0700 (PDT)
Received: from [2a0a:edc0:0:900:6245:cbff:fea0:1793] (helo=kresse.office.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kVVtY-0003nF-FK; Thu, 22 Oct 2020 10:24:25 +0200
Message-ID: <4985eb0d018d488d93e427db27be9418057d9440.camel@pengutronix.de>
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dl-linux-imx <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Date:   Thu, 22 Oct 2020 10:24:23 +0200
In-Reply-To: <DB6PR0402MB27604614CB067AB6594221ED88050@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
         <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
         <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
         <AM0PR04MB4915BC0D047EBD63D4E4366587090@AM0PR04MB4915.eurprd04.prod.outlook.com>
         <18c98a86aaac86a5742d6f8c4c671ae522751dda.camel@pengutronix.de>
         <DB6PR0402MB27604614CB067AB6594221ED88050@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:6245:cbff:fea0:1793
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no autolearn_force=no
        version=3.4.2
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peng,

On Mi, 2020-10-14 at 01:23 +0000, Peng Fan wrote:
[...]
> > > > > 3. either 8MM, 8MN, or 8MP, the power domain design is different,
> > > > > I am not
> > > > sure if it is the good to add hundreds line of code in GPCv2 each
> > > > time
> > > > >   a new SOC is added.
> > > > 
> > > > I don't buy into this argument. We have lots of drivers in the Linux
> > > > kernel that require some changes for new SoC generations, that's
> > > > what Linux drivers are for. The complexity of the hardware doesn't
> > > > disappear just because you push some of the driver bits into TF-A,
> > > > you just handle the complexity at a different palce and IMHO that
> > > > the wrong place. The power domains have complex interactions with
> > > > other drivers in the Linux system, so debugging and deplyong fixes
> > > > is much easier when the power domain handling is fully done by a kernel
> > driver.
> > > Actually, due to the security requirement from other system solution
> > > provider, for example, Microsoft Azure Sphere, it has strict
> > > requirement for power domain to be controlled by secure subsystem(either
> > TF-A, TEE or dedicated secure domain controller).
> > > Same requirement for reset control, and system critical clock control.
> > 
> > Yes, I'm aware of those requirements, but to satisfy those you need a full
> > implementation of all those parts in the secure subsystem. Doing it just for the
> > power domains adds complexity for no gain, as you still won't be able to meet
> > all the requirements and frankly I don't think this is a realistic goal to achieve
> > with the current i.MX8M family of SoCs.
> 
> At least we are moving to that direction.

To me it seems like the current way (custom TF-A interface and
implementation) is one step in the right direction, but two steps
backwards in terms of complexity.

> > Meeting those requirements needs a fully system approach where the secure
> > subsystem parts are made sufficiently independent from the non- secure
> > parts on a hardware level, which I don't see on the i.MX8M SoC and hardware
> > design guide.
> 
> CSU could restrict the access permission.

While this is true, my argument is much broader and not only focused on
on-SoC peripherals. For example some of the power domains need
different voltages for specific performance states, which means you
need to communicate with a external PMIC or other voltage regulator,
which in turn means you need to set aside the necessary i2c bus and/or
GPIO banks required for this communication at system design time, so it
isn't shared between TF-A and the rich OS. I don't see this in any of
the i.MX8M designs.

> > > For NXP i.MX8M family, it is ok to implement in linux kernel, just a
> > > tradeoff to find out a place to hide the complexity ^_^.
> > > 
> > > BTW, for virtualization support, it is better to put the power domain
> > > in a central place to simplify the VM implementation.
> > 
> > Same as above. If you can make all the relevant bits (clock, reset,
> > power-domain, regulator) available via a virtualization friendly API, then I
> > would see a point in adding complexity for this abstraction. As long as this
> > added abstraction only solves a very tiny bit of the overall picture, I just don't
> > see the point in the added complexity and (from a Linux PoV) obfuscation.
> 
> Could we use SCMI for power domain, system critical clocks, smc watchdog
> and etc?

If you could demonstrate a working solution with all those pieces
hidden behind a standard SCMI interface, this would make for a much
more compelling story supporting the secure subsystem argument.

> Or we support two approaches, one is let Linux control everything, the other
> is using SCMI.
> 
> Thoughts?

I wouldn't be opposed to such a solution. If you can put all this
behind a standard SCMI interface, I guess we wouldn't need two
different SoC specific drivers for the same purpose, so we could easily
have a Linux full-control solution (i.e. this patchset) coexist with a
SCMI based implementation, possibly with just a slightly different base
SoC DT with all the power domains, clocks and other system level
control stuff behind SCMI.

What I'm strongly opposed to is having a custom TF-A interface and all
the added complexity for little to no gain in actual system security.

Regards,
Lucas

