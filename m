Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5B864203C9
	for <lists+devicetree@lfdr.de>; Sun,  3 Oct 2021 21:44:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231346AbhJCTqe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 15:46:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231321AbhJCTqd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 15:46:33 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8365C0613EC
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 12:44:45 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mX7PT-000701-UG; Sun, 03 Oct 2021 21:44:32 +0200
Message-ID: <aff038a7710618d21a48c8d79f0317e69b6cbb33.camel@pengutronix.de>
Subject: Re: [PATCH v4 14/18] arm64: dts: imx8mm: add GPC node
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Date:   Sun, 03 Oct 2021 21:44:28 +0200
In-Reply-To: <CAJ+vNU2MY9GYgEE9zgFHRKeyoc2a7G0AU9yu5xrbU2wO9Cx3DQ@mail.gmail.com>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
         <20210910202640.980366-15-l.stach@pengutronix.de>
         <CAJ+vNU2F6RLK3mT5mws0X+EOgsF_+N0JC20ZNWEQtdj_cY9KHg@mail.gmail.com>
         <b4c51d93b2837666f44ea4a0e2b1fdb60ceaae15.camel@pengutronix.de>
         <CAJ+vNU3rK=4y3wj_WCSdBozUZK1P=vmhowtgBZcW9OW-+N-LGA@mail.gmail.com>
         <CAJ+vNU1VKyZzkyeah1QtxA1y_Oswmgs4qWE87ZRU9++DqQSveA@mail.gmail.com>
         <21bef8f0351a8a6c65e38f7ba80b98b34aec7b73.camel@pengutronix.de>
         <CAJ+vNU3Qt3BCLLUjHaFdeq7L-A_Re2r=__10Mg_vLFA=6U02Cw@mail.gmail.com>
         <fde6a0f40aa3ba41b054bcbc4c50a05e77a431cd.camel@pengutronix.de>
         <CAJ+vNU2MY9GYgEE9zgFHRKeyoc2a7G0AU9yu5xrbU2wO9Cx3DQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Sonntag, dem 03.10.2021 um 10:17 -0700 schrieb Tim Harvey:
> On Sat, Oct 2, 2021 at 5:51 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> > 
> > Hi Tim,
> > 
> > Am Freitag, dem 01.10.2021 um 19:43 -0700 schrieb Tim Harvey:
> > > > > > > 
> > [...]
> > > > > > > > Lucas,
> > > > > > > > 
> > > > > > > > I've been using your 'i.MX8MM GPC improvements and BLK_CTRL driver'
> > > > > > > > series for imx8mm-venice* and imx8mn-venice* boards. Thank you for
> > > > > > > > this work and I hope to see it merged soon!
> > > > > > > > 
> > > > > > > > I have found that on the imx8mm-venice-gw7901 board which does not use
> > > > > > > > MIPI and thus does not connect VDD_MIPI_1P8, VDD_MIPI_1P2,
> > > > > > > > VDD_MIPI_0P9, MIPI_VREG_CAP pins on the IMX8MM hangs with this
> > > > > > > > particular patch. If I comment out the pgc_mipi domain and subsequent
> > > > > > > > disp_blk_ctrl node from a later patch it resolves the hang. Is this
> > > > > > > > behavior expected and what would your recommendation be to work around
> > > > > > > > it?
> > > > > > > 
> > > > > > > No, this isn't expected. If there are no active devices in the MIPI
> > > > > > > domain, the power domain should not be touched, as we treat all of them
> > > > > > > as disabled initially. If we don't touch the domain I would expect that
> > > > > > > the power supply not being present shouldn't be an issue.
> > > > > > > 
> > > > > > > Can you check if something in your system causes this power domain to
> > > > > > > be powered up? Easiest way is probably to sprinkle a
> > > > > > > printk("%s\n, genpd->name) in both imx8m_blk_ctrl_power_on() and
> > > > > > > imx_gpc_power_on().
> > > > > > > 
> > > > > > 
> > > > > > Lucas,
> > > > > > 
> > > > > > Here's what I see before I hang (debug print on both power on/off
> > > > > > followed by a msleep(1000) to make sure I see it before I hang):
> > > > > > [    0.518319] imx_pgc_power_up hsiomix
> > > > > > [    0.624031] imx_pgc_power_down hsiomix
> > > > > > [    0.731879] imx_pgc_power_up hsiomix
> > > > > > [    0.839906] imx_pgc_power_down hsiomix
> > > > > > [    0.947875] imx_pgc_power_up hsiomix
> > > > > > [    1.055859] imx_pgc_power_down hsiomix
> > > > > > [    1.057296] imx_pgc_power_up gpumix
> > > > > > [    1.167884] imx_pgc_power_down gpumix
> > > > > > [    0.518513] imx_pgc_power_up hsiomix
> > > > > > [    0.519933] imx_pgc_power_up gpumix
> > > > > > 
> > > > > 
> > > > > The board also has IMX8MM VDD_GPU pins not connected so it makes sense
> > > > > that we hang here I suppose. Yet if I add the folloiwng to
> > > > > imx8mm-venice-gw7901.dts it still tries to enable them and hangs:
> > > > > &gpu_2d {
> > > > >         status = "disabled";
> > > > > };
> > > > > 
> > > > > &gpu_3d {
> > > > >         status = "disabled";
> > > > > };
> > > > > 
> > > > > &vpu_blk_ctrl {
> > > > >         status = "disabled";
> > > > > };
> > > > 
> > > > The pgc_gpu is a "active" consumer of the pgc_gpumix domain while the
> > > > driver gets probed, so the driver core will power up the gpumix domain
> > > > for a moment during kernel init. To avoid this you must at least set
> > > > the status of the pgc_gpu node to disabled.
> > > > 
> > > 
> > > I've tried that and it doesn't work either.
> > > 
> > > &gpu_2d {
> > >         status = "disabled";
> > > };
> > > 
> > > &gpu_3d {
> > >         status = "disabled";
> > > };
> > > 
> > > &vpu_blk_ctrl {
> > >         status = "disabled";
> > > };
> > > 
> > > &pgc_gpumix {
> > >         status = "disabled";
> > > };
> > > 
> > > &pgc_gpu {
> > >         status = "disabled";
> > > };
> > > 
> > > The interesting thing is that the first patch that causes this is
> > > 'arm64: dts: imx8mm: add GPC node' which just adds the gpc node and is
> > > before the addition of the other nodes. Therefore these are being
> > > enabled by default regardless of the above nodes being disabled (or
> > > not even added yet to imx8mm.dtsi).
> > 
> > My bad, I didn't think about the fact that the power domain devices are
> > not instantiated via the common OF populate code. For the status
> > property to work as expected the GPCv2 code needs to check this
> > property. I've just sent a patch to make this happen. Can you give it
> > another try with your DT changes and this patch applied?
> > 
> 
> Yes, this makes sense and resolves it with only disabling pgc_gpumix in my dts.
> 
> I believe it is fine for me to not specifically disable gpu_2d and
> gpu_3d as they are not enabled by default in imx8mm.dtsi and I don't
> believe that will change and I don't 'currently' need to disable
> disp_blk_ctrl or pgc_mipi but wondering if I should as the MIPI rails
> are not hooked up either? (ie will something added in the future try
> to use them?)
> 
I think it would be better to disable the GPU devices in your DT. They
don't have a status property and thus are enabled by default. They
won't probe without the power domain being available, but it will cause
those devices to stay in probe deferred state forever, which may
confuse some users. So I guess it would be good style to disable the
GPU nodes.

One consequence of disabling the MIPI power domain is that the disp-
blk-ctrl driver won't probe anymore, as it needs all the referenced
power domains to be available. Do you think this might be an issue? Is
there a valid system configuration where you would use devices from
from the display power domain, but not the MIPI domain? If that's a
valid case we might need to make this configuration possible in the
disp-blk-ctrl driver.

> What needs to be done to get this series merged? I suppose it's too
> late to get it into 5.13?

5.13? Way too late, even the 5.15 merge window is long closed. The
series is almost completely reviewed and the DT bindings are also good
to go. So if no one happens to run into any real showstopper, Shawn may
be willing to pick up the series and stage it for the 5.16 merge
window.

Regards,
Lucas

