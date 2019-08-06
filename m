Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 098D78340D
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731998AbfHFOfd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:35:33 -0400
Received: from foss.arm.com ([217.140.110.172]:34276 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731988AbfHFOfd (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 6 Aug 2019 10:35:33 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98ED5344;
        Tue,  6 Aug 2019 07:35:32 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68DA63F706;
        Tue,  6 Aug 2019 07:35:31 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Vasily Khoruzhick <anarsoul@gmail.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     "Jared D . McNeill" <jmcneill@NetBSD.org>,
        Harald Geyer <harald@ccbib.org>
References: <20190806140135.4739-1-anarsoul@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
Date:   Tue, 6 Aug 2019 15:35:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190806140135.4739-1-anarsoul@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> Looks like PMU in A64 is broken, it generates no interrupts at all and
> as result 'perf top' shows no events.

Does something like 'perf stat sleep 1' at least count cycles correctly? 
It could well just be that the interrupt numbers are wrong...

> Tested on Pine64-LTS.
> 
> Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> Cc: Harald Geyer <harald@ccbib.org>
> Cc: Jared D. McNeill <jmcneill@NetBSD.org>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
>   1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 9cc9bdde81ac..cd92f546c483 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -142,15 +142,6 @@
>   		clock-output-names = "ext-osc32k";
>   	};
>   
> -	pmu {
> -		compatible = "arm,cortex-a53-pmu";
> -		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;

Cross-referencing between some random DTs in the H6 BSP I happen to have 
to hand and the A64 User Manual, it looks a lot like someone just forgot 
to subtract 32 from these to satisfy the awkward GIC binding - that 
wants the SPI index rather than the actual interrupt source number, 
which implies these should probably be 120-123 rather than 152-155.

Robin.

> -		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> -	};
> -
>   	psci {
>   		compatible = "arm,psci-0.2";
>   		method = "smc";
> 
