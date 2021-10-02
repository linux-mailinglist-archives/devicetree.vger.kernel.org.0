Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3939841F8F2
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 03:07:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231768AbhJBBJZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 21:09:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230255AbhJBBJZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 21:09:25 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34F24C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 18:07:40 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mWTV0-0007xY-1p; Sat, 02 Oct 2021 03:07:34 +0200
Message-ID: <763dff4c948a5c435dc4d51224e825071c0a3cd6.camel@pengutronix.de>
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
Date:   Sat, 02 Oct 2021 03:07:31 +0200
In-Reply-To: <5b5609e9-cbba-79be-218c-0dd508e26ecf@collabora.com>
References: <20210910202640.980366-1-l.stach@pengutronix.de>
         <20210910202640.980366-11-l.stach@pengutronix.de>
         <5b5609e9-cbba-79be-218c-0dd508e26ecf@collabora.com>
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

Am Dienstag, dem 14.09.2021 um 17:46 +0200 schrieb Benjamin Gaignard:
> Le 10/09/2021 à 22:26, Lucas Stach a écrit :
> > This adds a driver for the blk-ctrl blocks found in the i.MX8M* line of
> > SoCs. The blk-ctrl is a top-level peripheral located in the various *MIX
> > power domains and interacts with the GPC power controller to provide the
> > peripherals in the power domain access to the NoC and ensures that those
> > peripherals are properly reset when their respective power domain is
> > brought back to life.
> > 
> > Software needs to do different things to make the bus handshake happen
> > after the GPC *MIX domain is powered up and before it is powered down.
> > As the requirements are quite different between the various blk-ctrls
> > there is a callback function provided to hook in the proper sequence.
> > 
> > The peripheral domains are quite uniform, they handle the soft clock
> > enables and resets in the blk-ctrl address space and sequencing with the
> > upstream GPC power domains.
> 
> Hi Lucas,
> 
> I have tried to use your patches for IMX8MQ but it seems that the hardware
> have different architecture.
> On IMX8MQ there is only one VPU domain for G1 and G2 and that doesn't match
> with your implementation where it is needed to have "bus" and devices power domain.
>  From what I experiment in current IMX8MQ implementation of blk-ctrl (inside VPU driver)
> enabling the 3 clocks (bus, G1, G2) is needed to reset the VPUs.
> 
> Do you think you can update your design to take care of these hardware variations ?

The clocking/reset of the blk-ctrl and ADB in the i.MX8MQ VPU power
domain is really a bit strange, as the ADB reset is tied to the VPU
resets and the clk-ctrl seem to require all 3 VPU clocks, instead of
only the bus clock as in newer designs. However I was able to make it
work with the existing blk-ctrl driver design.

My current WIP patches (only tested with the G1 core so far) on top of
the v5 of the series I just sent out can be found here:
https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8mq-vpu-blk-ctrl

Hope this helps.

Regards,
Lucas

