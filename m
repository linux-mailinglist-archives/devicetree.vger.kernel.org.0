Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0116E116F15
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2019 15:38:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727566AbfLIOiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Dec 2019 09:38:15 -0500
Received: from relay4-d.mail.gandi.net ([217.70.183.196]:45731 "EHLO
        relay4-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727268AbfLIOiP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Dec 2019 09:38:15 -0500
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr [90.65.102.129])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 3DFECE0012;
        Mon,  9 Dec 2019 14:38:11 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Russell King <rmk+kernel@armlinux.org.uk>,
        Vladimir Vid <vladimir.vid@sartura.hr>
Cc:     Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: uDPU: remove i2c-fast-mode
In-Reply-To: <E1iVvuv-0002sk-Sw@rmk-PC.armlinux.org.uk>
References: <E1iVvuv-0002sk-Sw@rmk-PC.armlinux.org.uk>
Date:   Mon, 09 Dec 2019 15:38:10 +0100
Message-ID: <87lfrlh8dp.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Russell King <rmk+kernel@armlinux.org.uk> writes:

> The I2C bus violates the timing specifications when run in fast mode
> on the uDPU, so switch to 100kHz mode.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> index e31813a4f972..2ac1d9ae1e25 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
> @@ -119,12 +119,14 @@
>  	status = "okay";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c1_pins>;
> +	/delete-property/mrvl,i2c-fast-mode;
>  };
>  
>  &i2c1 {
>  	status = "okay";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2_pins>;
> +	/delete-property/mrvl,i2c-fast-mode;
>  
>  	lm75@48 {
>  		status = "okay";
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
