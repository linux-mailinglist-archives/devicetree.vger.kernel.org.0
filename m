Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05F2C2B2E79
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:36:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726884AbgKNQgh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:36:37 -0500
Received: from vps0.lunn.ch ([185.16.172.187]:55238 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726265AbgKNQgh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:36:37 -0500
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
        (envelope-from <andrew@lunn.ch>)
        id 1kdyXP-0072tB-Fs; Sat, 14 Nov 2020 17:36:31 +0100
Date:   Sat, 14 Nov 2020 17:36:31 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201114163631.GC1480543@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
 <20201114160409.19670-5-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201114160409.19670-5-kabel@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 05:04:07PM +0100, Marek Behún wrote:
> Turris Omnia has a SFP cage that, together with WAN PHY is connected to
> eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
> it disabled. Until phylink has support for such multiplexor we will
> leave it to U-Boot to enable SFP and disable WAN PHY at boot time
> depending on whether a SFP module is present.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia")

Same comment for the fixes, especially since this is disabled by
default.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
