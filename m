Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCFDA2C8273
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 11:44:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728360AbgK3KoY convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 30 Nov 2020 05:44:24 -0500
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:46023 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726928AbgK3KoX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 05:44:23 -0500
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 13421C0007;
        Mon, 30 Nov 2020 10:43:40 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Cc:     arm@kernel.org, Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v3 0/7] Turris Omnia device-tree changes
In-Reply-To: <20201115135923.11523-1-kabel@kernel.org>
References: <20201115135923.11523-1-kabel@kernel.org>
Date:   Mon, 30 Nov 2020 11:43:40 +0100
Message-ID: <87blffjfab.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Marek,

> Hi Gregory,
>
> v3 of series with changes for Turris Omnia device tree.

I applied the full series on mvebu/dt

Thanks,

Gregory


>
> Changes since v2 (mostly thanks to Andreas):
> - fixed typo in 2/7
> - updated comment in 4/7 (describing current SFP cage binding status)
> - changed commit message in 4/7 a little bit
> - changed LED_FUNCTION_DEBUG to LED_FUNCTION_INDICATOR in 5/7
> - updated comment about LED controller in 5/7
> - added 7/7 which removes 2 unneeded status = "okay"
>
> Changes since v1:
> - added patch which adds description for switch interrupt
> - removed patch adding ethernet-phy interrupt: the PHY interrupt is
>   asserted by level low, but the GPIO expander driver supports only
>   edge rising/falling, and even then it may not be correct when an
>   interrupt storm occurs. So keep polling the PHY
> - added Andrew's Reviewed-by tags
>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andreas Färber <afaerber@suse.de>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
>
> Marek Behún (7):
>   ARM: dts: turris-omnia: enable HW buffer management
>   ARM: dts: turris-omnia: add comphy handle to eth2
>   ARM: dts: turris-omnia: describe switch interrupt
>   ARM: dts: turris-omnia: add SFP node
>   ARM: dts: turris-omnia: add LED controller node
>   ARM: dts: turris-omnia: update ethernet-phy node and handle name
>   ARM: dts: turris-omnia: remove unneeded status = "okay" properties
>
>  arch/arm/boot/dts/armada-385-turris-omnia.dts | 178 +++++++++++++++++-
>  1 file changed, 170 insertions(+), 8 deletions(-)
>
> -- 
> 2.26.2
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
