Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79B9E2B2ED3
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 18:17:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726146AbgKNRQn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 12:16:43 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:55308 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726121AbgKNRQn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 12:16:43 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kdzAF-0073BR-Ig; Sat, 14 Nov 2020 18:16:39 +0100
Date:   Sat, 14 Nov 2020 18:16:39 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114171639.GO1456319@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
 <20201114160409.19670-4-kabel@kernel.org>
 <20201114174928.5ab4f8ae@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114174928.5ab4f8ae@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 05:49:28PM +0100, Marek Behún wrote:
> On Sat, 14 Nov 2020 17:04:06 +0100
> Marek Behún <kabel@kernel.org> wrote:
> 
> > +		interrupt-parent = <&pcawan>;
> > +		interrupt = <7 IRQ_TYPE_LEVEL_LOW>;
> 
> Also we need to use IRQ_TYPE_EDGE_FALLING. The gpio-pca953x driver does
> not support IRQ_TYPE_LEVEL_LOW...

Please check the datasheet for the PHY. I expect you will find it is
level triggering, not edge. So you can miss interrupts, and have the
wrong state.

I've also had bad experiences with pca953x and interrupt storms. I
hope you are using one with the extended registers including the
interrupt mask.

	  Andrew
