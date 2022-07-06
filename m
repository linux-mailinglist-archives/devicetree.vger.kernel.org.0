Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3545695C1
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 01:22:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbiGFXWI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 19:22:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231197AbiGFXWH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 19:22:07 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8C5A2BB1B
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 16:22:06 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 266NLwr1083888;
        Wed, 6 Jul 2022 18:21:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1657149718;
        bh=t2pk8FbrIJKAk5qVLPHPSXiy+CdFvEgOcDkvsX6jmrI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=HtZITyqUHb5dkWDPWW5yMI33ID6FwG3UZ/O0PhghGTynPXoPjs2sEiJfHeS4ABkz+
         81s8REKbPRshfFJZZEaTeuUFOwX3Sk2eHxKAh3CKpSuRwafRPix9TOh6Pivp0iglVH
         dTJVQl+SKYdfNQiqZ3ZNLn6E0ZUqkNmo+qZuz6i0=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 266NLw8D039633
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 6 Jul 2022 18:21:58 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 6
 Jul 2022 18:21:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 6 Jul 2022 18:21:57 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 266NLv6Z011994;
        Wed, 6 Jul 2022 18:21:57 -0500
Date:   Wed, 6 Jul 2022 18:21:57 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tony Lindgren <tony@atomide.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am65: Add general purpose timers
 for am65
Message-ID: <20220706232157.thvbsr6emvyy6i5o@resend>
References: <20220407104725.41755-1-tony@atomide.com>
 <20220407104725.41755-2-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220407104725.41755-2-tony@atomide.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13:47-20220407, Tony Lindgren wrote:
> There are 12 general purpose timers on am65 that can be used for things
> like PWM using pwm-omap-dmtimer driver. There are also additional four
> timers in the MCU domain do not have interrupts routable for Linux and
> are likely reserved by the software for the ESM module.
> 
> Compared to am64, the timer clocks are different on am65. And the MCU
> timers are at a different IO address. Then j72 adds more timers compared
> to am65 with a total of 30 timers. And the j72 clocks are different.
> 
> To avoid duplication for dtsi files, eventually we may want to consider
> adding timer specific shared dtsi files with the timer clocks mapped
> using SoC specific files in include/dt-bindings/clock. But let's get
> am65 timers usable first.
> 
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> Signed-off-by: Nishanth Menon <nm@ti.com>
> Link: https://lore.kernel.org/r/20220407104725.41755-2-tony@atomide.com
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 108 +++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  |  41 +++++++++
>  2 files changed, 149 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -271,6 +271,114 @@ main_spi4: spi@2140000 {
>  		#size-cells = <0>;
>  	};
>  
> +	main_timer0: timer@2400000 {
> +		compatible = "ti,am6-timer";
> +		reg = <0x00 0x2400000 0x00 0x400>;
> +		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 23 12>;
> +		clock-names = "fck";
> +		ti,timer-pwm;
> +	};

Tony,
Lets hold this back one more window.. ti,am6-timer should come
in the next rc1, but I still dont see this yet in next-20220706, So, i am
going to have to skip this window at least.
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
