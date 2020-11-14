Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42CB22B30A9
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 21:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726203AbgKNUjo convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sat, 14 Nov 2020 15:39:44 -0500
Received: from lists.nic.cz ([217.31.204.67]:43522 "EHLO mail.nic.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726174AbgKNUjn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 15:39:43 -0500
Received: from localhost (unknown [IPv6:2a0e:b107:ae1:0:3e97:eff:fe61:c680])
        by mail.nic.cz (Postfix) with ESMTPSA id 7B097140A66;
        Sat, 14 Nov 2020 21:39:41 +0100 (CET)
Date:   Sat, 14 Nov 2020 21:39:39 +0100
From:   Marek Behun <marek.behun@nic.cz>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114213939.5b4e3e47@nic.cz>
In-Reply-To: <20201114201637.GG1480543@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
        <20201114160409.19670-4-kabel@kernel.org>
        <20201114174928.5ab4f8ae@kernel.org>
        <20201114171639.GO1456319@lunn.ch>
        <20201114184221.1f74de86@kernel.org>
        <20201114184717.3018bff5@nic.cz>
        <20201114201637.GG1480543@lunn.ch>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-100.0 required=5.9 tests=SHORTCIRCUIT,
        USER_IN_WELCOMELIST,USER_IN_WHITELIST shortcircuit=ham
        autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-Virus-Scanned: clamav-milter 0.102.2 at mail
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 21:16:37 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

> On Sat, Nov 14, 2020 at 06:47:17PM +0100, Marek Behun wrote:
> > On Sat, 14 Nov 2020 18:42:21 +0100
> > Marek Behún <kabel@kernel.org> wrote:
> >   
> > > Do you think we should just poll for interrupts with the PHY?  
> 
> Yes.
> 
> > 
> > Andrew, JFI, there are also SFP GPIOs connected to this expander. So
> > interrupt will be generated on changes from those gpios as well. Is an
> > interrupt storm seriosly probable here?  
> 
> As far as i remember on the device i was using, all inputs are
> interrupt sources. And all pins default as inputs, so you don't
> accidentally drive the output against something else. So you need to
> get the device properly configured before enabling its interrupt. And
> i'm not too sure how that works with the GPIO framework where you
> effectively have a collection of individual GPIOs. How do you know
> they have all be configured, and it is safe to enable the interrupt
> output? Do you have any pins floating? Those you are going to have to
> configure as output. Plus is the interrupt output from the gpio
> expander level triggered? If so you need to ensure the upstream
> interrupt controller can do level. And Marvell SoCs often cannot.
> 
> The device i was working on i had trouble even getting it to boot
> without dying. Polling the PHY and SFP was working O.K, so i gave
> up. And i suggested the next revision of the board used an sx150x
> which has much better interrupt support. That has worked well against
> a Vybrid.
> 
> 	   Andrew

Thanks, Andrew for this explanation.

What about when a interrupt pin from a Marvell PHY (level interrupt) is
connected directly to a gpio pin on Marvell SOC (edge only interrupt),
without any GPIO expander?
This is the case on Turris MOX, and in
drivers/pinctrl/mvebu/pinctrl-armada-37xx.c the function
armada_37xx_irq_set_type again supports only edge interrupts.
But in this case I think setting it to EDGE_FALLING should be okay,
should it not? This controller has a special register where interrupt
status is latched...

Marek
