Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15E6E611B72
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 22:12:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbiJ1UMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 16:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbiJ1UMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 16:12:48 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9EF133A0D
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:12:47 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29SKCb2g051071;
        Fri, 28 Oct 2022 15:12:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666987957;
        bh=dS6096uIVbd6Ad4dAE2AejyqmR16Bp3FaNel1ZQsUhQ=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=Gi3bxkTi2myOqdgBq+4yYq5LHX6ATf6oYPm8CHfvONta1n7TUpTI/N8qI0B+hMpCt
         gl3475q8eHSABpMg5mDS6klc5bXHkI3+R9eB/UeordP3J+nDadyeG90oGmzJCcTnxb
         bs7Ujx1SemF5cce+lj5uXvoPHD07+WiMrIDJ6l5g=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29SKCbMq120641
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 Oct 2022 15:12:37 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Fri, 28
 Oct 2022 15:12:37 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Fri, 28 Oct 2022 15:12:37 -0500
Received: from [10.250.135.52] (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29SKCW6t054889;
        Fri, 28 Oct 2022 15:12:34 -0500
Message-ID: <13fba52e-dcbb-310e-0c35-6fbe0cc9c551@ti.com>
Date:   Fri, 28 Oct 2022 23:12:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am62: Add general purpose timers
 for am62
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>
References: <20220914074224.44786-1-tony@atomide.com>
From:   Georgi Vlaev <g-vlaev@ti.com>
In-Reply-To: <20220914074224.44786-1-tony@atomide.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 9/14/22 10:42, Tony Lindgren wrote:
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
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer1: timer@2410000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2410000 0x00 0x400>;
> +		interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 37 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 37 2>;
> +		assigned-clock-parents = <&k3_clks 37 3>;
> +		power-domains = <&k3_pds 37 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer2: timer@2420000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2420000 0x00 0x400>;
> +		interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 38 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 38 2>;
> +		assigned-clock-parents = <&k3_clks 38 3>;
> +		power-domains = <&k3_pds 38 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer3: timer@2430000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2430000 0x00 0x400>;
> +		interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 39 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 39 2>;
> +		assigned-clock-parents = <&k3_clks 39 3>;
> +		power-domains = <&k3_pds 39 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer4: timer@2440000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2440000 0x00 0x400>;
> +		interrupts = <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 40 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 40 2>;
> +		assigned-clock-parents = <&k3_clks 40 3>;
> +		power-domains = <&k3_pds 40 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer5: timer@2450000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2450000 0x00 0x400>;
> +		interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 41 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 41 2>;
> +		assigned-clock-parents = <&k3_clks 41 3>;
> +		power-domains = <&k3_pds 41 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer6: timer@2460000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2460000 0x00 0x400>;
> +		interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 42 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 42 2>;
> +		assigned-clock-parents = <&k3_clks 42 3>;
> +		power-domains = <&k3_pds 42 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +	main_timer7: timer@2470000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x2470000 0x00 0x400>;
> +		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&k3_clks 43 2>;
> +		clock-names = "fck";
> +		assigned-clocks = <&k3_clks 43 2>;
> +		assigned-clock-parents = <&k3_clks 43 3>;
> +		power-domains = <&k3_pds 43 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +	};
> +
> +
>  	main_uart0: serial@2800000 {
>  		compatible = "ti,am64-uart", "ti,am654-uart";
>  		reg = <0x00 0x02800000 0x00 0x100>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-mcu.dtsi
> @@ -14,6 +14,51 @@ mcu_pmx0: pinctrl@4084000 {
>  		pinctrl-single,function-mask = <0xffffffff>;
>  	};
>  
> +	/*
> +	 * The MCU domain timer interrupts are routed only to the ESM module,
> +	 * and not currently available for Linux. The MCU domain timers are
> +	 * of limited use without interrupts, and likely reserved by the ESM.
> +	 */
> +	mcu_timer0: timer@4800000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x4800000 0x00 0x400>;
> +		clocks = <&k3_clks 35 2>;
> +		clock-names = "fck";
> +		power-domains = <&k3_pds 35 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +		status = "reserved";
> +	};
> +
> +	mcu_timer1: timer@4810000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x4810000 0x00 0x400>;
> +		clocks = <&k3_clks 48 2>;
> +		clock-names = "fck";
> +		power-domains = <&k3_pds 48 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +		status = "reserved";
> +	};
> +
> +	mcu_timer2: timer@4820000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x4820000 0x00 0x400>;
> +		clocks = <&k3_clks 49 2>;
> +		clock-names = "fck";
> +		power-domains = <&k3_pds 49 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +		status = "reserved";
> +	};
> +
> +	mcu_timer3: timer@4830000 {
> +		compatible = "ti,am654-timer";
> +		reg = <0x00 0x4830000 0x00 0x400>;
> +		clocks = <&k3_clks 50 2>;
> +		clock-names = "fck";
> +		power-domains = <&k3_pds 50 TI_SCI_PD_EXCLUSIVE>;
> +		ti,timer-pwm;
> +		status = "reserved";
> +	};
> +
>  	mcu_uart0: serial@4a00000 {
>  		compatible = "ti,am64-uart", "ti,am654-uart";
>  		reg = <0x00 0x04a00000 0x00 0x100>;

The "power-domains" property fix for the binding was merged recently.

Reviewed-by: Georgi Vlaev <g-vlaev@ti.com>

-- 
Regards,
Georgi
