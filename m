Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEA8E70A697
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 11:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbjETJJt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 05:09:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbjETJJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 05:09:47 -0400
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 770481A1
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 02:09:46 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4QNdFX4T55z9sR1;
        Sat, 20 May 2023 11:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1684573776;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BXSKerjU4xw7m5ToPnP6UGxpC7XVALb7/+FwRzcQBqo=;
        b=pv/ddeAx8WuSc00j6fZPhjzQ0itpv0C9LeeZqOCsahkQhY4XTUiJZBEm11Wkz5XuW0hkd+
        +tk/DDb6l7rV/SCZqRNlC4PILv18uMCBm/5Af698gbv3qWpTpRBKcff2T65TQi5r1gnn3h
        T1syGoo6mk0adMlpjQvFteCWx3mACUZq+JgeKmk8TqKrOYh1gT9LmfQeTOjDtaOI1ZC2bD
        1JxxX13y5pzmyegNc02k1eOyjmnYNM0KLv0x1iL8vpfNjtHYgfeuim9vtH/A9ExhCkzOY/
        KB4X4yCMyuJmGbDxLj5j/ZVyAcjzbTvQyx4+sdNQs7MSKMGC1IU3u34+1en1Uw==
Message-ID: <09d69b31-0abc-5731-df95-52f8a3260fc8@hauke-m.de>
Date:   Sat, 20 May 2023 11:09:33 +0200
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] ARM: dts: BCM5301X: Relicense Hauke's code to the GPL
 2.0+ / MIT
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230515151921.25021-1-zajec5@gmail.com>
From:   Hauke Mehrtens <hauke@hauke-m.de>
In-Reply-To: <20230515151921.25021-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 4QNdFX4T55z9sR1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/15/23 17:19, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Move code added by Hauke to the bcm-ns.dtsi which uses dual licensing.
> That syncs more Northstar code to be based on the same licensing schema.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Cc: Hauke Mehrtens <hauke@hauke-m.de>

Acked-by: Hauke Mehrtens <hauke@hauke-m.de>

> ---
>   arch/arm/boot/dts/bcm-ns.dtsi   | 90 +++++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/bcm5301x.dtsi | 85 -------------------------------
>   2 files changed, 90 insertions(+), 85 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-ns.dtsi b/arch/arm/boot/dts/bcm-ns.dtsi
> index cc977bbc142b..58c30e3a142f 100644
> --- a/arch/arm/boot/dts/bcm-ns.dtsi
> +++ b/arch/arm/boot/dts/bcm-ns.dtsi
> @@ -1,4 +1,7 @@
>   // SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright 2013-2014 Hauke Mehrtens <hauke@hauke-m.de>
> + */
>   
>   #include <dt-bindings/clock/bcm-nsp.h>
>   #include <dt-bindings/gpio/gpio.h>
> @@ -7,6 +10,81 @@
>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>   
>   / {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	chipcommon-a-bus@18000000 {
> +		compatible = "simple-bus";
> +		ranges = <0x00000000 0x18000000 0x00001000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		uart0: serial@300 {
> +			compatible = "ns16550";
> +			reg = <0x0300 0x100>;
> +			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&iprocslow>;
> +			status = "disabled";
> +		};
> +
> +		uart1: serial@400 {
> +			compatible = "ns16550";
> +			reg = <0x0400 0x100>;
> +			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&iprocslow>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinmux_uart1>;
> +			status = "disabled";
> +		};
> +	};
> +
> +	mpcore-bus@19000000 {
> +		compatible = "simple-bus";
> +		ranges = <0x00000000 0x19000000 0x00023000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		scu@20000 {
> +			compatible = "arm,cortex-a9-scu";
> +			reg = <0x20000 0x100>;
> +		};
> +
> +		timer@20200 {
> +			compatible = "arm,cortex-a9-global-timer";
> +			reg = <0x20200 0x100>;
> +			interrupts = <GIC_PPI 11 IRQ_TYPE_EDGE_RISING>;
> +			clocks = <&periph_clk>;
> +		};
> +
> +		timer@20600 {
> +			compatible = "arm,cortex-a9-twd-timer";
> +			reg = <0x20600 0x20>;
> +			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
> +						  IRQ_TYPE_EDGE_RISING)>;
> +			clocks = <&periph_clk>;
> +		};
> +
> +		gic: interrupt-controller@21000 {
> +			compatible = "arm,cortex-a9-gic";
> +			#interrupt-cells = <3>;
> +			#address-cells = <0>;
> +			interrupt-controller;
> +			reg = <0x21000 0x1000>,
> +			      <0x20100 0x100>;
> +		};
> +
> +		L2: cache-controller@22000 {
> +			compatible = "arm,pl310-cache";
> +			reg = <0x22000 0x1000>;
> +			cache-unified;
> +			arm,shared-override;
> +			prefetch-data = <1>;
> +			prefetch-instr = <1>;
> +			cache-level = <2>;
> +		};
> +	};
> +
>   	axi@18000000 {
>   		compatible = "brcm,bus-axi";
>   		reg = <0x18000000 0x1000>;
> @@ -216,6 +294,18 @@ thermal: thermal@2c0 {
>   		};
>   	};
>   
> +	nand_controller: nand-controller@18028000 {
> +		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
> +		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
> +		reg-names = "nand", "iproc-idm", "iproc-ext";
> +		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		brcm,nand-has-wp;
> +	};
> +
>   	thermal-zones {
>   		cpu_thermal: cpu-thermal {
>   			polling-delay-passive = <0>;
> diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
> index bc36edc24510..d6c31ead0398 100644
> --- a/arch/arm/boot/dts/bcm5301x.dtsi
> +++ b/arch/arm/boot/dts/bcm5301x.dtsi
> @@ -11,41 +11,7 @@
>   #include "bcm-ns.dtsi"
>   
>   / {
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	interrupt-parent = <&gic>;
> -
> -	chipcommon-a-bus@18000000 {
> -		compatible = "simple-bus";
> -		ranges = <0x00000000 0x18000000 0x00001000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -
> -		uart0: serial@300 {
> -			compatible = "ns16550";
> -			reg = <0x0300 0x100>;
> -			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&iprocslow>;
> -			status = "disabled";
> -		};
> -
> -		uart1: serial@400 {
> -			compatible = "ns16550";
> -			reg = <0x0400 0x100>;
> -			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&iprocslow>;
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&pinmux_uart1>;
> -			status = "disabled";
> -		};
> -	};
> -
>   	mpcore-bus@19000000 {
> -		compatible = "simple-bus";
> -		ranges = <0x00000000 0x19000000 0x00023000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -
>   		a9pll: arm_clk@0 {
>   			#clock-cells = <0>;
>   			compatible = "brcm,nsp-armpll";
> @@ -53,26 +19,6 @@ a9pll: arm_clk@0 {
>   			reg = <0x00000 0x1000>;
>   		};
>   
> -		scu@20000 {
> -			compatible = "arm,cortex-a9-scu";
> -			reg = <0x20000 0x100>;
> -		};
> -
> -		timer@20200 {
> -			compatible = "arm,cortex-a9-global-timer";
> -			reg = <0x20200 0x100>;
> -			interrupts = <GIC_PPI 11 IRQ_TYPE_EDGE_RISING>;
> -			clocks = <&periph_clk>;
> -		};
> -
> -		timer@20600 {
> -			compatible = "arm,cortex-a9-twd-timer";
> -			reg = <0x20600 0x20>;
> -			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
> -						  IRQ_TYPE_EDGE_RISING)>;
> -			clocks = <&periph_clk>;
> -		};
> -
>   		watchdog@20620 {
>   			compatible = "arm,cortex-a9-twd-wdt";
>   			reg = <0x20620 0x20>;
> @@ -80,25 +26,6 @@ watchdog@20620 {
>   						  IRQ_TYPE_EDGE_RISING)>;
>   			clocks = <&periph_clk>;
>   		};
> -
> -		gic: interrupt-controller@21000 {
> -			compatible = "arm,cortex-a9-gic";
> -			#interrupt-cells = <3>;
> -			#address-cells = <0>;
> -			interrupt-controller;
> -			reg = <0x21000 0x1000>,
> -			      <0x20100 0x100>;
> -		};
> -
> -		L2: cache-controller@22000 {
> -			compatible = "arm,pl310-cache";
> -			reg = <0x22000 0x1000>;
> -			cache-unified;
> -			arm,shared-override;
> -			prefetch-data = <1>;
> -			prefetch-instr = <1>;
> -			cache-level = <2>;
> -		};
>   	};
>   
>   	pmu {
> @@ -301,18 +228,6 @@ genpll: clock-controller@140 {
>   		};
>   	};
>   
> -	nand_controller: nand-controller@18028000 {
> -		compatible = "brcm,nand-iproc", "brcm,brcmnand-v6.1", "brcm,brcmnand";
> -		reg = <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028f00 0x20>;
> -		reg-names = "nand", "iproc-idm", "iproc-ext";
> -		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> -
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		brcm,nand-has-wp;
> -	};
> -
>   	spi@18029200 {
>   		compatible = "brcm,spi-nsp-qspi", "brcm,spi-bcm-qspi";
>   		reg = <0x18029200 0x184>,

