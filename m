Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37FE828D39F
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 20:26:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731171AbgJMS0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 14:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731157AbgJMS0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 14:26:23 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1D6EC0613D0
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 11:26:23 -0700 (PDT)
Received: from [2a0a:edc0:0:900:6245:cbff:fea0:1793] (helo=kresse.office.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kSOzx-0002sJ-67; Tue, 13 Oct 2020 20:26:12 +0200
Message-ID: <18c98a86aaac86a5742d6f8c4c671ae522751dda.camel@pengutronix.de>
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Jacky Bai <ping.bai@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
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
Date:   Tue, 13 Oct 2020 20:26:07 +0200
In-Reply-To: <AM0PR04MB4915BC0D047EBD63D4E4366587090@AM0PR04MB4915.eurprd04.prod.outlook.com>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
         <AM0PR04MB4915267F67FFEA311E9B79F087080@AM0PR04MB4915.eurprd04.prod.outlook.com>
         <5287bbc0ede98dd3fc0022f2062148275dafa05c.camel@pengutronix.de>
         <AM0PR04MB4915BC0D047EBD63D4E4366587090@AM0PR04MB4915.eurprd04.prod.outlook.com>
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
        SPF_HELO_NONE,SPF_SOFTFAIL,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sa, 2020-10-10 at 02:16 +0000, Jacky Bai wrote:
> > -----Original Message-----
> > From: Lucas Stach [mailto:l.stach@pengutronix.de]
> > Sent: Friday, October 9, 2020 7:12 PM
> > To: Jacky Bai <ping.bai@nxp.com>; Shawn Guo <shawnguo@kernel.org>; Rob
> > Herring <robh+dt@kernel.org>
> > Cc: dl-linux-imx <linux-imx@nxp.com>; Fabio Estevam
> > <festevam@gmail.com>; Frieder Schrempf <frieder.schrempf@kontron.de>;
> > Marek Vasut <marex@denx.de>; linux-arm-kernel@lists.infradead.org;
> > devicetree@vger.kernel.org; kernel@pengutronix.de;
> > patchwork-lst@pengutronix.de
> > Subject: Re: [PATCH 00/11] i.MX8MM power domain support
> > 
> > Hi Jacky,
> > 
> > On Fr, 2020-10-09 at 03:00 +0000, Jacky Bai wrote:
> > > > -----Original Message-----
> > > > From: Lucas Stach [mailto:l.stach@pengutronix.de]
> > > > Sent: Wednesday, September 30, 2020 11:50 PM
> > > > To: Shawn Guo <shawnguo@kernel.org>; Rob Herring
> > > > <robh+dt@kernel.org>
> > > > Cc: dl-linux-imx <linux-imx@nxp.com>; Fabio Estevam
> > > > <festevam@gmail.com>; Frieder Schrempf
> > > > <frieder.schrempf@kontron.de>; Marek Vasut <marex@denx.de>;
> > > > linux-arm-kernel@lists.infradead.org;
> > > > devicetree@vger.kernel.org; kernel@pengutronix.de;
> > > > patchwork-lst@pengutronix.de
> > > > Subject: [PATCH 00/11] i.MX8MM power domain support
> > > > 
> > > > Hi all,
> > > > 
> > > > this adds power domain support for the i.MX8MM to the existing GPCv2
> > driver.
> > > > It is not complete yet, as it is still missing the VPU and display
> > > > power domains, as those require support for the BLK_CTL regions of
> > > > the VPUMIX and DISPLAYMIX domains. A Linux driver for those regions
> > > > on the i.MX8MP is currently under development and we plan to use
> > > > this as a template for the i.MX8MM when the dust has settled. The
> > > > changes in this series have been made with this in mind, so once the
> > > > BLK_CTL driver exists it should be a matter of hooking things
> > > > together via DT, with no further changes required on the GPCv2 driver side
> > (famous last words).
> > > > Special thanks to Marek Vasut who helped with testing and debugging
> > > > of early versions of this code.
> > > > 
> > > 
> > > Lucas,
> > > 
> > > thanks for working on this, but I think current support for 8MM can NOT 100%
> > work due to HW limitation.
> > > Maybe, we need further discussion before moving forward, otherwise, we
> > > will meet awkward situation when NXP doing LTS upgrade. Below are some
> > info shared.
> > > 1. The GPU & VPU related power domains need to do special handling due
> > to HW limitation, can refer to the power domain sequence
> > >   In NXP release.
> > 
> > For the GPU this driver already does the same thing as the TF-A based
> > implementation by driving the GPU2D and GPU3D domains together and
> > triggering the SRC reset.
> > 
> > For the VPU I expect that we can do all the necessary syncing with a proper
> > VPU BLK_CTL driver.
> > 
> 
> Ok, thanks. I saw the reset handling in this patchset.
> 
> > > 2. another reason that we do power domain control in TF-A in NXP release is
> > that MAIN NOC power domain can only be controlled by
> > >   TF-A, and before MAIN NOC power domain, we need to check other
> > MIXs' power status. If other power domain is controlled by linux side,
> > >   It is not easy to cross world status sync.
> > 
> > This is a valid concern and I want to learn more about this. When do you turn
> > off MAIN NOC power in the TF-A? Is it just system suspend? If so I think it's a
> > valid requirement for the kernel driver to shut down all the peripheral power
> > domains before entering system suspend.
> > 
> 
> The main NOC will be off just in system suspend case. Main NoC on/off is controlled by
> GPC HW slot method. As all the MIXs with ADB400 bridge are connected on the main NoC,
> we must make sure that all these ADB400 port in power down status when main NoC power off
> in system suspend, otherwise system will hang when resume. Previously, all the MIX power domain
> is controlled by TF-A, then TF-A knows the status of each MIX, if any MIX is on, we will skip the NOC
> power down setting.

And that just means the SoC doesn't enter the desired low-power state
when going into suspend, right? I think it would be much easier and
less error prone to just mandate that all peripheral power domains must
be powered down before trying to enter system suspend.

Is there any use-case where you would legitimately want to enter a high
power suspend state with some of ther peripheral power domains still
active?

> > > 3. either 8MM, 8MN, or 8MP, the power domain design is different, I am not
> > sure if it is the good to add hundreds line of code in GPCv2 each time
> > >   a new SOC is added.
> > 
> > I don't buy into this argument. We have lots of drivers in the Linux kernel that
> > require some changes for new SoC generations, that's what Linux drivers are
> > for. The complexity of the hardware doesn't disappear just because you push
> > some of the driver bits into TF-A, you just handle the complexity at a different
> > palce and IMHO that the wrong place. The power domains have complex
> > interactions with other drivers in the Linux system, so debugging and
> > deplyong fixes is much easier when the power domain handling is fully done
> > by a kernel driver.
> 
> Actually, due to the security requirement from other system solution provider,
> for example, Microsoft Azure Sphere, it has strict requirement for power domain
> to be controlled by secure subsystem(either TF-A, TEE or dedicated secure domain controller).
> Same requirement for reset control, and system critical clock control.

Yes, I'm aware of those requirements, but to satisfy those you need a
full implementation of all those parts in the secure subsystem. Doing
it just for the power domains adds complexity for no gain, as you still
won't be able to meet all the requirements and frankly I don't think
this is a realistic goal to achieve with the current i.MX8M family of
SoCs. 

Meeting those requirements needs a fully system approach where the
secure subsystem parts are made sufficiently independent from the non-
secure parts on a hardware level, which I don't see on the i.MX8M SoC
and hardware design guide.

> For NXP i.MX8M family, it is ok to implement in linux kernel, just a tradeoff to find out a place
> to hide the complexity ^_^.
> 
> BTW, for virtualization support, it is better to put the power domain in a central place to simplify
> the VM implementation.

Same as above. If you can make all the relevant bits (clock, reset,
power-domain, regulator) available via a virtualization friendly API,
then I would see a point in adding complexity for this abstraction. As
long as this added abstraction only solves a very tiny bit of the
overall picture, I just don't see the point in the added complexity and
(from a Linux PoV) obfuscation.

Regards,
Lucas

> BR
> Jacky Bai
> 
> > Regards,
> > Lucas
> > 
> > > BR
> > > Jacky Bai
> > > 
> > > > Regards,
> > > > Lucas
> > > > 
> > > > Lucas Stach (11):
> > > >   soc: imx: gpcv2: move to more ideomatic error handling in probe
> > > >   soc: imx: gpcv2: move domain mapping to domain driver probe
> > > >   soc: imx: gpcv2: split power up and power down sequence control
> > > >   soc: imx: gpcv2: wait for ADB400 handshake
> > > >   soc: imx: gpcv2: add runtime PM support for power-domains
> > > >   soc: imx: gpcv2: allow domains without power-sequence control
> > > >   soc: imx: gpcv2: add support for optional resets
> > > >   dt-bindings: add defines for i.MX8MM power domains
> > > >   soc: imx: gpcv2: add support for i.MX8MM power domains
> > > >   arm64: dts: imx8mm: add GPC node and power domains
> > > >   arm64: dts: imx8mm: put USB controllers into power-domains
> > > > 
> > > >  .../bindings/power/fsl,imx-gpcv2.yaml         |   8 +
> > > >  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  59 +++
> > > >  drivers/soc/imx/gpcv2.c                       | 501
> > > > +++++++++++++++---
> > > >  include/dt-bindings/power/imx8mm-power.h      |  22 +
> > > >  4 files changed, 516 insertions(+), 74 deletions(-)  create mode
> > > > 100644 include/dt-bindings/power/imx8mm-power.h
> > > > 
> > > > --
> > > > 2.20.1

