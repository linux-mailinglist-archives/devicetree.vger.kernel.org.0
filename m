Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 920252C8704
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 15:44:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727019AbgK3Ond convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Mon, 30 Nov 2020 09:43:33 -0500
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:34395 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726906AbgK3Onc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 09:43:32 -0500
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 27B4620004;
        Mon, 30 Nov 2020 14:42:47 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Cc:     arm@kernel.org, Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH mvebu-dt64] arm64: dts: armada-3720-turris-mox: add 3W
 power capability to SFP cage
In-Reply-To: <20201116123303.7234-1-kabel@kernel.org>
References: <20201116123303.7234-1-kabel@kernel.org>
Date:   Mon, 30 Nov 2020 15:42:46 +0100
Message-ID: <87o8jej47t.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

> Add maximum-power-milliwatt = 3000 to SFP node of Turris MOX.
>
> Signed-off-by: Marek Behún <kabel@kernel.org>
> Fixes: 7109d817db2e ("arm64: dts: marvell: add DTS for Turris Mox")
> Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> index f3a678e0fd99..d032e290675f 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts
> @@ -102,6 +102,7 @@ sfp: sfp {
>  		mod-def0-gpio = <&moxtet_sfp 2 GPIO_ACTIVE_LOW>;
>  		tx-disable-gpio = <&moxtet_sfp 4 GPIO_ACTIVE_HIGH>;
>  		rate-select0-gpio = <&moxtet_sfp 5 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <3000>;
>  
>  		/* enabled by U-Boot if SFP module is present */
>  		status = "disabled";
> -- 
> 2.26.2
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
