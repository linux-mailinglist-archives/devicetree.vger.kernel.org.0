Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22662422308
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 12:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233574AbhJEKFw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 06:05:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233365AbhJEKFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 06:05:43 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6759AC06161C
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 03:03:50 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mXhIW-0008GK-2d; Tue, 05 Oct 2021 12:03:44 +0200
Message-ID: <6ceb10cf4ada49992979418cb626049fa639d473.camel@pengutronix.de>
Subject: Re: [PATCH v4 10/18] soc: imx: add i.MX8M blk-ctrl driver
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Date:   Tue, 05 Oct 2021 12:03:41 +0200
In-Reply-To: <24568eb4-11d5-1fd7-e111-382b41cdb4da@collabora.com>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
         <20210910202640.980366-11-l.stach@pengutronix.de>
         <5b5609e9-cbba-79be-218c-0dd508e26ecf@collabora.com>
         <763dff4c948a5c435dc4d51224e825071c0a3cd6.camel@pengutronix.de>
         <24568eb4-11d5-1fd7-e111-382b41cdb4da@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Benjamin,

Am Montag, dem 04.10.2021 um 16:27 +0200 schrieb Benjamin Gaignard:
> Le 02/10/2021 à 03:07, Lucas Stach a écrit :
> > Hi Benjamin,
> > 
> > Am Dienstag, dem 14.09.2021 um 17:46 +0200 schrieb Benjamin Gaignard:
> > > Le 10/09/2021 à 22:26, Lucas Stach a écrit :
> > > > This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of
> > > > SoCs. The blk-ctrl is a top-level peripheral located in the various *MIX
> > > > power domains and interacts with the GPC power controller to provide the
> > > > peripherals in the power domain access to the NoC and ensures that those
> > > > peripherals are properly reset when their respective power domain is
> > > > brought back to life.
> > > > 
> > > > Software needs to do different things to make the bus handshake happen
> > > > after the GPC *MIX domain is powered up and before it is powered down.
> > > > As the requirements are quite different between the various blk-ctrls
> > > > there is a callback function provided to hook in the proper sequence.
> > > > 
> > > > The peripheral domains are quite uniform, they handle the soft clock
> > > > enables and resets in the blk-ctrl address space and sequencing with the
> > > > upstream GPC power domains.
> > > Hi Lucas,
> > > 
> > > I have tried to use your patches for IMX8MQ but it seems that the hardware
> > > have different architecture.
> > > On IMX8MQ there is only one VPU domain for G1 and G2 and that doesn't match
> > > with your implementation where it is needed to have "bus" and devices power domain.
> > >   From what I experiment in current IMX8MQ implementation of blk-ctrl (inside VPU driver)
> > > enabling the 3 clocks (bus, G1, G2) is needed to reset the VPUs.
> > > 
> > > Do you think you can update your design to take care of these hardware variations ?
> > The clocking/reset of the blk-ctrl and ADB in the i.MX8MQ VPU power
> > domain is really a bit strange, as the ADB reset is tied to the VPU
> > resets and the clk-ctrl seem to require all 3 VPU clocks, instead of
> > only the bus clock as in newer designs. However I was able to make it
> > work with the existing blk-ctrl driver design.
> > 
> > My current WIP patches (only tested with the G1 core so far) on top of
> > the v5 of the series I just sent out can be found here:
> > https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8mq-vpu-blk-ctrl
> > 
> > Hope this helps.
> 
> Hi Lucas,
> 
> I have been able to test your branch on my iMX8MQ.
> I confirm that G1 is working fine, I able to decode H264 files.
> 
> I wasn't able to make G2 works, I think it is coming from the reset sequence
> done before each frame decoding in G2 driver.
> I have change imx8mq_runtime_resume() and  imx8m_vpu_reset()
> to call pm_runtime_put() and pm_runtime_get() to perform a reset like.

I think you need to use the _sync variants of those functions to make
sure the domain is going through the reset state. However that seems
like a pretty heavy-weight thing to do if the decoder really requires a
reset before each frame. Excuse my ignorance about the G2 block, but
this sounds like a quite odd requirement. Is this to work around some
hardware erratum?

If we really need to reset the G2 before each frame, I think it would
be best to also expose a reset controller from the blk-ctrl driver, to
allow the G2 driver to do a light-weight reset, instead of doing this
runtime PM transition.

Regards,
Lucas

> Without that G2 hangs when decoding the first frame.
> 
> One G1 it seems that doing a reset before each frame decoding is not needed.
> 
> On DT I had to assignee G1 and G2 on the both nodes to avoid a warning at probe time.
> assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,
> 					  <&clk IMX8MQ_CLK_VPU_G2>,
> 					  <&clk IMX8MQ_VPU_PLL_BYPASS>;
> 			assigned-clock-parents = <&clk IMX8MQ_VPU_PLL_OUT>,
> 						 <&clk IMX8MQ_VPU_PLL_OUT>,
> 						 <&clk IMX8MQ_VPU_PLL>;
> 			assigned-clock-rates = <600000000>, <300000000>, <0>;
> 
> I also set G2 clock at 300Mhz as specify in the TRM.
> Even with all this G2 doesn't fire interrupts.
> 
> Benjamin
> 
> > 
> > Regards,
> > Lucas
> > 


