Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 34A1D49BED
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 10:20:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726359AbfFRIUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 04:20:48 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:55359 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725963AbfFRIUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 04:20:48 -0400
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr [92.137.69.152])
        (Authenticated sender: gregory.clement@bootlin.com)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 7D1D140006;
        Tue, 18 Jun 2019 08:20:42 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Jason Cooper <jason@lakedaemon.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Subject: Re: [PATCH] arm64: dts: marvell: add missing #interrupt-cells property
In-Reply-To: <20190618081706.GD23549@piout.net>
References: <E1hcsxH-0007Vv-0l@rmk-PC.armlinux.org.uk> <20190618081706.GD23549@piout.net>
Date:   Tue, 18 Jun 2019 10:20:39 +0200
Message-ID: <87pnnbnw2w.fsf@FE-laptop>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Russell,

> On 17/06/2019 15:49:55+0100, Russell King wrote:
>> The GPIO interrupt controllers are missing their required
>> #interrupt-cells property, which prevents GPIO interrupts being
>> specified in DT.
>> 
>> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Applied on mvebu/dt64

Thanks,

Gregory

>
>> ---
>>  arch/arm64/boot/dts/marvell/armada-cp110.dtsi | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
>> index 4d6e4a097f72..f71afb1de18f 100644
>> --- a/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
>> +++ b/arch/arm64/boot/dts/marvell/armada-cp110.dtsi
>> @@ -238,6 +238,7 @@
>>  					<85 IRQ_TYPE_LEVEL_HIGH>,
>>  					<84 IRQ_TYPE_LEVEL_HIGH>,
>>  					<83 IRQ_TYPE_LEVEL_HIGH>;
>> +				#interrupt-cells = <2>;
>>  				status = "disabled";
>>  			};
>>  
>> @@ -253,6 +254,7 @@
>>  					<81 IRQ_TYPE_LEVEL_HIGH>,
>>  					<80 IRQ_TYPE_LEVEL_HIGH>,
>>  					<79 IRQ_TYPE_LEVEL_HIGH>;
>> +				#interrupt-cells = <2>;
>>  				status = "disabled";
>>  			};
>>  		};
>> -- 
>> 2.7.4
>> 
>> 
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>
> -- 
> Alexandre Belloni, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
