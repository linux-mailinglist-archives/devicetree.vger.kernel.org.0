Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42F18493C78
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 16:02:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355427AbiASPB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 10:01:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355430AbiASPB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 10:01:59 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6B9FC061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:01:58 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nACTA-0000Is-T4; Wed, 19 Jan 2022 16:01:52 +0100
Message-ID: <5ae0e63af752a8c66fe9a63ad582a76b250178f0.camel@pengutronix.de>
Subject: Re: [PATCH 0/9] i.MX8MP power-domains part 1 and GPU support
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Abel Vesa <abel.vesa@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Date:   Wed, 19 Jan 2022 16:01:52 +0100
In-Reply-To: <YegiVQAVIHmwolwj@abelvesa>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
         <YegiVQAVIHmwolwj@abelvesa>
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

Hi Abel,

Am Mittwoch, dem 19.01.2022 um 16:38 +0200 schrieb Abel Vesa:
> On 22-01-19 14:40:18, Lucas Stach wrote:
> > Hi all,
> > 
> > this series starts adding the power-domain control for the i.MX8MP
> > SoC. The GPCv2 support is complete (at least from going over the RM,
> > TF-A and experience with other i.MX8M* SoCs), but not all
> > power-domains are usable right now. Currently only the HSIO
> > (USB and PCIe) and GPU power domains are enabled.
> > 
> > Other power domains (MEDIA, VPU, HDMI, AUDIO) can be added when the
> > blk-ctrl driver support for those domains is ready, which is still
> > work in progress at the moment. As my priorities are shifting to
> > other things for a while, I wanted to push out the part that is
> > usable now and enables more functionality on the i.MX8MP.
> > 
> 
> Great effort! Thanks for working on this!
> 
> I started doing it myself a couple of months ago. I did the media and
> hdmi blk-ctrls. The audio blk-ctrl is the one that got me stuck since it
> has PLLs in it and they need to be part of the clock tree somehow.
> 
> Let me know if you want me to send the hdmi and media blk-ctrls.
> I'll try to rebase them on top of this patchset.

That would certainly be very helpful!

The HSIO one also has a PLL that can optionally be used as a reference
for the USB and PCIe PHYs. I think it should be doable to integrate
them in the clock tree. We need some additional smarts to save/restore
the clock state when the *MIX domain powers down/up.

Other than that I think we need to add a rule that those blk-ctrl
clocks can only be prepared/enabled when the power domain is already up
to avoid circling back into the clock framework via the GPC, but I
guess that's a reasonable rule for the peripheral drivers to adhere to.
Just always runtime resume the peripheral before enabling any clocks,
or possibly even just enable the clocks in the runtime resume callback
of the driver.

Regards,
Lucas

