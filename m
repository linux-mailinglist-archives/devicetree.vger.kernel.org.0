Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 870AC33278
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 16:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729108AbfFCOnw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 10:43:52 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:56451 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728882AbfFCOnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 10:43:52 -0400
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr [92.137.69.152])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 76C5AC000B;
        Mon,  3 Jun 2019 14:43:42 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH] arm64: dts: marvell: Disable AP I2C on Armada-8040-DB
In-Reply-To: <20190521143749.488-1-miquel.raynal@bootlin.com>
References: <20190521143749.488-1-miquel.raynal@bootlin.com>
Date:   Mon, 03 Jun 2019 16:43:41 +0200
Message-ID: <87muiyk9uq.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel,

> From: Konstantin Porotchkin <kostap@marvell.com>
>
> While AP I2C bus was available to users in early revisions of the SoC,
> this is not the case anymore since eMMC was connected to the AP. Most
> users do not have access to this I2C bus so do not enable it in the
> board device tree.
>
> As there are three I2C buses enabled on this board, add an alias to be
> sure the two other buses keep their initial numbering.
>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> [<miquel.raynal@bootlin.com>: Reword commit message, add alias]
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-db.dts | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-db.dts b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> index 9f4f939ab65f..d6e9c014c2f9 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-db.dts
> @@ -27,6 +27,8 @@
>  		ethernet1 = &cp0_eth2;
>  		ethernet2 = &cp1_eth0;
>  		ethernet3 = &cp1_eth1;
> +		i2c1 = &cp0_i2c0;
> +		i2c2 = &cp1_i2c0;
>  	};
>  
>  	cp0_reg_usb3_0_vbus: cp0-usb3-0-vbus {
> @@ -72,11 +74,6 @@
>  	};
>  };
>  
> -&i2c0 {
> -	status = "okay";
> -	clock-frequency = <100000>;
> -};
> -
>  &spi0 {
>  	status = "okay";
>  
> -- 
> 2.19.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
