Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BADD5BB6DA
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 09:03:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229505AbiIQHDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 03:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbiIQHDA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 03:03:00 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 247382D1DB
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 00:02:59 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28H72id5110573;
        Sat, 17 Sep 2022 02:02:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1663398164;
        bh=Cct0YlwFArM1tnneO4GYnC+a8BAU8ztIJEAQseK/cpA=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=ILccVyy2zKMm8XPSz+4JQ6ZyHoNsuorE/T1KJMXcxw9cSksWNd2veup13CC0ZqfzZ
         64Yn0Nmz1dArPisYtuzkzhpqkm16me5BwSl23L38LIvaNOGQfzN/8jTLy1mY62M7G0
         6mI9IkZzYrechORCFHG7UYQinf7teXLWHJp2dlaQ=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28H72iDr053882
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 17 Sep 2022 02:02:44 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 17
 Sep 2022 02:02:44 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 17 Sep 2022 02:02:44 -0500
Received: from [10.250.233.53] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 28H72eXP119485;
        Sat, 17 Sep 2022 02:02:41 -0500
Message-ID: <5ac6eddb-d77c-113b-d4eb-9b04108e073c@ti.com>
Date:   Sat, 17 Sep 2022 12:32:40 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am62: Add general purpose timers
 for am62
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>
References: <20220914074224.44786-1-tony@atomide.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
In-Reply-To: <20220914074224.44786-1-tony@atomide.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14/09/22 1:12 pm, Tony Lindgren wrote:
> There are 8 general purpose timers on am65 that can be used for things
> like PWM using pwm-omap-dmtimer driver. There are also additional four
> timers in the MCU domain that do not have interrupts routable for Linux.
> 
> We configure the timers with the 25 MHz input clock by default as the
> 32.768 kHz clock may not be wired on the device. We leave the MCU domain
> timers clock mux unconfigured, and mark the MCU domain timers reserved.
> The MCU domain timers are likely reserved by the software for the ESM
> module.
> 
> Compared to am65, the timers on am62 do not have a dedicated IO mux for
> the timers. On am62, the timers have different interrupts, clocks and
> power domains compared to am65, and the MCU timers are at a different
> IO address.
> 
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 97 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi  | 45 +++++++++++
>  2 files changed, 142 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -186,6 +186,103 @@ main_pmx0: pinctrl@f4000 {
>  		pinctrl-single,function-mask = <0xffffffff>;
>  	};
>  
> +	main_timer0: timer@2400000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2400000 0x00 0x400>;
> +		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 36 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 36 2>;
> +		assigned-clock-parents = <&k3_clks 36 3>;
> +		power-domains = <&k3_pds 36 TI_SCI_PD_EXCLUSIVE>;

I end up with

make dtbs_check

+/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4800000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
+/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4810000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
+/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4820000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'
+/workdir/arch/arm64/boot/dts/ti/k3-am625-sk.dtb: timer@4830000: 'power-domains' does not match any of the regexes: 'pinctrl-[0-9]+'

Looks like schema does not describe power-domains :(

[...]

Regards
Vignesh
