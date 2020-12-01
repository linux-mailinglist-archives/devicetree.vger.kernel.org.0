Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 905302C97DA
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 08:12:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727096AbgLAHK6 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 1 Dec 2020 02:10:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725859AbgLAHK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 02:10:58 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A86C0613D2
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 23:10:17 -0800 (PST)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ore@pengutronix.de>)
        id 1kjznf-0000Bz-1A; Tue, 01 Dec 2020 08:10:11 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <ore@pengutronix.de>)
        id 1kjzne-0006Fw-G9; Tue, 01 Dec 2020 08:10:10 +0100
Date:   Tue, 1 Dec 2020 08:10:10 +0100
From:   Oleksij Rempel <o.rempel@pengutronix.de>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        David Jander <david@protonic.nl>
Subject: Re: [PATCH v1 2/2] ARM: dts: add Protonic MVT board
Message-ID: <20201201071010.e6joif4aoxdy23xg@pengutronix.de>
References: <20201130131406.10925-1-o.rempel@pengutronix.de>
 <20201130131406.10925-2-o.rempel@pengutronix.de>
 <CAOMZO5DM8aToy_PRrY2cW5zbZf0xjfN9H4PrYTy+9Mq0NRii7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8BIT
In-Reply-To: <CAOMZO5DM8aToy_PRrY2cW5zbZf0xjfN9H4PrYTy+9Mq0NRii7w@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:05:44 up 381 days, 22:24, 51 users,  load average: 0.09, 0.06,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 30, 2020 at 10:22:38AM -0300, Fabio Estevam wrote:
> Hi Oleksij,
> 
> On Mon, Nov 30, 2020 at 10:14 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> 
> > +&ecspi1 {
> > +       cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
> 
> Shouldn't this be GPIO_ACTIVE_LOW instead?

ACK, it was fixed up by this code:
https://elixir.bootlin.com/linux/v5.10-rc6/source/drivers/gpio/gpiolib-of.c#L210

So, it was still working.

Thank you! I'll fix it.

Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
