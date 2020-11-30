Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 701FA2C86FF
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 15:42:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726258AbgK3Olz convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 30 Nov 2020 09:41:55 -0500
Received: from relay11.mail.gandi.net ([217.70.178.231]:46905 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbgK3Oly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 09:41:54 -0500
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 3AA73100010;
        Mon, 30 Nov 2020 14:41:13 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Cc:     arm@kernel.org, Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: update
 ethernet-phy handle name
In-Reply-To: <20201114204253.8573-1-kabel@kernel.org>
References: <20201114204253.8573-1-kabel@kernel.org>
Date:   Mon, 30 Nov 2020 15:41:12 +0100
Message-ID: <87r1oaj4af.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

> Use property name `phy-handle` instead of the deprecated `phy` to
> connect eth2 to the PHY.
>
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: 7109d817db2e ("arm64: dts: marvell: add DTS for Turris Mox")
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> index f3a678e0fd99..bf76ebe46379 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> @@ -146,7 +146,7 @@ &eth0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&rgmii_pins>;
>  	phy-mode = "rgmii-id";
> -	phy = <&phy1>;
> +	phy-handle = <&phy1>;
>  	status = "okay";
>  };
>  
> -- 
> 2.26.2
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
