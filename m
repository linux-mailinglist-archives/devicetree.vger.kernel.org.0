Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F4DF611B7A
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 22:19:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiJ1UTr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 16:19:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiJ1UTq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 16:19:46 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 979DB19C23
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 13:19:44 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29SKJcdK078421;
        Fri, 28 Oct 2022 15:19:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666988378;
        bh=QbTS87/zUE8Lvzn57MwnUDAFi6q1mfhG7tpfYG4DR8I=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=iaTn7KUcwB7yShJiL87FXduA7Hxaw6aCpN2BfaQ293XBLjN5RvCYM+GV3xm0Q03/e
         3sjhxVtrbYbxaWhr+00ge4JJRVEMvyKfabViDg5XzdjkxdSHzRgSa4IQo6eonf5L3F
         oQTbCQUZT3ae3+xnOwdxy3K8qw9r9bdpN8zRPXi8=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29SKJcGF123872
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 Oct 2022 15:19:38 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Fri, 28
 Oct 2022 15:19:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Fri, 28 Oct 2022 15:19:38 -0500
Received: from [10.250.135.52] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29SKJXLM107420;
        Fri, 28 Oct 2022 15:19:34 -0500
Message-ID: <fbd9755c-6a06-9fc0-5e11-50a0bb8aa33f@ti.com>
Date:   Fri, 28 Oct 2022 23:19:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-am625-sk: Use pwm-led instead of
 gpio-led
Content-Language: en-US
To:     Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Keerthy <j-keerthy@ti.com>
References: <20220914074224.44786-1-tony@atomide.com>
 <20220914074224.44786-2-tony@atomide.com>
From:   Georgi Vlaev <g-vlaev@ti.com>
In-Reply-To: <20220914074224.44786-2-tony@atomide.com>
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
> On am625, pad c17 can be used either in gpio mode or pwm mode to control
> the connected led. Let's change to use pwm-led for additional brighness
> control.
> 
> The pwm controller is dmtimer7 for pad C17. We configure it for 128 Hz
> rate (1000000000 / 7812500) similar to what has been done elsewhere for
> pwm-leds.
> 
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am625-sk.dts | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> --- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> +++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
> @@ -131,18 +131,25 @@ vdd_sd_dv: regulator-4 {
>  	};
>  
>  	leds {
> -		compatible = "gpio-leds";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&usr_led_pins_default>;
> +		compatible = "pwm-leds";
>  
>  		led-0 {
>  			label = "am62-sk:green:heartbeat";
> -			gpios = <&main_gpio1 49 GPIO_ACTIVE_HIGH>;
> +			pwms = <&main_pwm7 0 7812500 0>;
> +			max-brightness = <255>;
>  			linux,default-trigger = "heartbeat";
>  			function = LED_FUNCTION_HEARTBEAT;
>  			default-state = "off";
>  		};
>  	};
> +
> +	main_pwm7: dmtimer-main-pwm-7 {
> +		pinctrl-0 = <&usr_led_pins_default>;
> +		pinctrl-names = "default";
> +		compatible = "ti,omap-dmtimer-pwm";
> +		#pwm-cells = <3>;
> +		ti,timers = <&main_timer7>;
> +	};
>  };
>  
>  &main_pmx0 {
> @@ -203,7 +210,7 @@ AM62X_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
>  
>  	usr_led_pins_default: usr-led-pins-default {
>  		pinctrl-single,pins = <
> -			AM62X_IOPAD(0x244, PIN_OUTPUT, 7) /* (C17) MMC1_SDWP.GPIO1_49 */
> +			AM62X_IOPAD(0x244, PIN_OUTPUT, 2) /* (C17) MMC1_SDWP.TIMER_IO7 */
>  		>;
>  	};
>  

Looking good on SK-AM625 E3. 

Just for a reference, I also checked the PWM output for TIMER_IO2 (C15) and TIMER_IO3 (E15).

Tested-by: Georgi Vlaev <g-vlaev@ti.com>

-- 
Regards,
Georgi
