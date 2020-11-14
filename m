Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F3102B3097
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 21:17:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726334AbgKNUQt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 15:16:49 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:55578 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726325AbgKNUQt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 15:16:49 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1ke1yP-0074po-V3; Sat, 14 Nov 2020 21:16:37 +0100
Date:   Sat, 14 Nov 2020 21:16:37 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek Behun <marek.behun@nic.cz>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114201637.GG1480543@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
 <20201114160409.19670-4-kabel@kernel.org>
 <20201114174928.5ab4f8ae@kernel.org>
 <20201114171639.GO1456319@lunn.ch>
 <20201114184221.1f74de86@kernel.org>
 <20201114184717.3018bff5@nic.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114184717.3018bff5@nic.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 06:47:17PM +0100, Marek Behun wrote:
> On Sat, 14 Nov 2020 18:42:21 +0100
> Marek Behún <kabel@kernel.org> wrote:
> 
> > Do you think we should just poll for interrupts with the PHY?

Yes.

> 
> Andrew, JFI, there are also SFP GPIOs connected to this expander. So
> interrupt will be generated on changes from those gpios as well. Is an
> interrupt storm seriosly probable here?

As far as i remember on the device i was using, all inputs are
interrupt sources. And all pins default as inputs, so you don't
accidentally drive the output against something else. So you need to
get the device properly configured before enabling its interrupt. And
i'm not too sure how that works with the GPIO framework where you
effectively have a collection of individual GPIOs. How do you know
they have all be configured, and it is safe to enable the interrupt
output? Do you have any pins floating? Those you are going to have to
configure as output. Plus is the interrupt output from the gpio
expander level triggered? If so you need to ensure the upstream
interrupt controller can do level. And Marvell SoCs often cannot.

The device i was working on i had trouble even getting it to boot
without dying. Polling the PHY and SFP was working O.K, so i gave
up. And i suggested the next revision of the board used an sx150x
which has much better interrupt support. That has worked well against
a Vybrid.

	   Andrew
