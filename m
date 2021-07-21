Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 582A43D0DEF
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 13:43:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237716AbhGUK6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 06:58:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239327AbhGUKlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 06:41:22 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 414D1C0613E2
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 04:21:54 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m6AIP-0002rf-G8; Wed, 21 Jul 2021 13:21:49 +0200
Message-ID: <051a67a12fed5e7d6c2ec8946fb00170cf5ec41f.camel@pengutronix.de>
Subject: Re: [PATCH 00/17] i.MX8MM GPC improvements and BLK_CTRL driver
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Marek Vasut <marex@denx.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        Adam Ford <aford173@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Date:   Wed, 21 Jul 2021 13:21:47 +0200
In-Reply-To: <74d097cc384572ddd2128f9abb7ea1b6ecf3327e.camel@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
         <DB6PR0402MB27606BA0D35BD1EDA022AE2188E19@DB6PR0402MB2760.eurprd04.prod.outlook.com>
         <74d097cc384572ddd2128f9abb7ea1b6ecf3327e.camel@pengutronix.de>
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

Am Montag, dem 19.07.2021 um 18:56 +0200 schrieb Lucas Stach:
> Hi Peng,
> > > 
[...]
> > > I will also provide a branch with those patches and the WIP VPU and display
> > > patches I used to test this. But that will have to wait for next week, as it's
> > > getting pretty late here.
> > 
> > Do you have a public branch now?
> 
> This series (with fixes for the reported issues already squashed in)
> can be found here:
> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains
> 
> Additional patches to enable MIPI DSI display and one VPU can be found
> here:
> https://git.pengutronix.de/cgit/lst/linux/log/?h=imx8m-power-domains-testing
> 
> Please note that the display patches do not reflect the current status
> of the upstream discussions, it's just my known-good stack at the
> moment. I'm providing those patches just for contextual reference and
> to allow people to see my test setup. I've worked on a custom i.MX8MM
> board, so the bits to hook this up for the EVK board are missing. I am
> not seeking feedback on any of the display/vpu patches at the moment.
> 
And just a heads-up in case anyone is testing this series right now:
I've found some issues with suspend-resume and I'm working on them
right now. I'll send a v2 shortly and will also update those public
branches.

Regards,
Lucas

