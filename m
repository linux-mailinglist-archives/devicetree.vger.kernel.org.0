Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E10F2B2E76
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:35:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726356AbgKNQep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:34:45 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:55226 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726265AbgKNQep (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:34:45 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kdyVb-0072sF-SR; Sat, 14 Nov 2020 17:34:39 +0100
Date:   Sat, 14 Nov 2020 17:34:39 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114163439.GB1480543@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
 <20201114160409.19670-4-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114160409.19670-4-kabel@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 05:04:06PM +0100, Marek Behún wrote:
> Describe ethernet-phy interrupt for Turris Omnia so that the PHY does
> not need to be polled. We also need to describe the PCA9538 as an
> interrupt controller.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")

I'm not sure the fixes is justified. This is an optimisation, not a
fix.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
