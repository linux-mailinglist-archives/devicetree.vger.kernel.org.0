Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D290352FEE
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 21:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236372AbhDBTtH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Apr 2021 15:49:07 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:38913 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbhDBTtG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Apr 2021 15:49:06 -0400
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id C169940002;
        Fri,  2 Apr 2021 19:49:00 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: clearfog-gt-8k: Add DT for fan control
In-Reply-To: <20210309151925.GG1463@shell.armlinux.org.uk>
References: <20210309151925.GG1463@shell.armlinux.org.uk>
Date:   Fri, 02 Apr 2021 21:49:00 +0200
Message-ID: <87mtugcvrn.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Russell,

> Hi,
>
> This patch series adds the DT descriptions to control a PWM fan on the
> SolidRun Clearfog GT8k platform.
>
>  .../dts/marvell/armada-8040-clearfog-gt-8k.dts     | 127 +++++++++++++++++++++
>  1 file changed, 127 insertions(+)
>

Applied on mvebu/dt64

Thanks,

Gregory


> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
