Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B6AB311998
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 04:14:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230342AbhBFDNn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 22:13:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231542AbhBFCuo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 21:50:44 -0500
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11AA7C08ECB5
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 14:52:40 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id 19so8653383qkh.3
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 14:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GhPgpT3NBO+QkJbZxrVAS55ucKal3+KBqLwxq+OgAt0=;
        b=MW50hGK34kylM6Qtwx2utlDqUfxzsM8kqvTZpuTwODOn+le8I+63pfIKRMxXNdgTBT
         GqK5JB/++lmfima6PC65aZaoViyxvUgwYCmCYcDaiT7CqkW/ZKwIKMBkSNTr7FRSEW/s
         C64kH/k0CoHyWK/POIfFX3492F91s5vcroi8RPPUJTCtg12yQb0xqmCh8ulIVBL11n9Q
         6KKkrVtDDmtp6GjImTs7d+LPpbjnVQ3nPrLxGg9lFWcEKMxR5Q656mmLCycsw3nNmQdQ
         uMdBXBQzBkGsrVhXzqBw6Tl9UaMi21sFFK5oDbSboAw/D+e8S/QzJw/qfBqaohuOqcdx
         /OMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GhPgpT3NBO+QkJbZxrVAS55ucKal3+KBqLwxq+OgAt0=;
        b=aRxxJTSQzHybPjMGzmTZu2F2qNbb19jLEuzjbsTikg94FV7QfBxCrAo9JTb6XnM4Dh
         zKvZksHFD8npoHHdTpZcNvlQC2BgDG8yaVpkaQ/5cFlx/b0Qc8C2DJ+fCI9yVOKALs4u
         /EPPBpAjMJzaBhF608mePYwFRMpODlwAv1IIfVsWrRK26Fm0Gm5LULd/F6y29SP+eL3U
         yd4oJsX9OgZM4oWGzA5358ne0sA1CPoM13kPTE9IjGAVUSnJ6/IyOzgbyhr5z5wlly00
         qfyzQOsUoaTcU6kcaUGfyS6/TiBFIHWRzQF1bXjR27lXwBi65NeVUxbtCjOIVBo/zxVJ
         7Imw==
X-Gm-Message-State: AOAM5315eAUNg3+RCbaShZN9XnBgY0HXwO5SW+NKhKWzMcyCQPSXQtjl
        nWme0Zeul+Kpj56wMkRJoFQZa0YlE+E=
X-Google-Smtp-Source: ABdhPJz82v0ApvHuc67UYOb1p2Ae7AZamNlvvCzGu8rbyFqXbKabfCNhmrDpsNAuk028tflkIr++Hg==
X-Received: by 2002:a05:620a:c0b:: with SMTP id l11mr6850350qki.370.1612565558653;
        Fri, 05 Feb 2021 14:52:38 -0800 (PST)
Received: from [192.168.1.201] (pool-108-51-35-162.washdc.fios.verizon.net. [108.51.35.162])
        by smtp.googlemail.com with ESMTPSA id b16sm5323333qtp.87.2021.02.05.14.52.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 14:52:38 -0800 (PST)
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
To:     Rob Herring <robh@kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>, devicetree@vger.kernel.org
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
 <20210205065827.577285-10-damien.lemoal@wdc.com>
 <20210205202505.GA3625674@robh.at.kernel.org>
From:   Sean Anderson <seanga2@gmail.com>
Message-ID: <52dc2537-7668-4409-f35b-bfddfd09059b@gmail.com>
Date:   Fri, 5 Feb 2021 17:52:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20210205202505.GA3625674@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/5/21 3:25 PM, Rob Herring wrote:
> On Fri, Feb 05, 2021 at 03:58:20PM +0900, Damien Le Moal wrote:
>> Update the Canaan Kendryte K210 base device tree k210.dtsi to define
>> all peripherals of the SoC, their clocks and reset lines. The device
>> tree file k210.dts is renamed to k210_generic.dts and becomes the
>> default value selection of the SOC_CANAAN_K210_DTB_BUILTIN_SOURCE
>> configuration option. No device beside the serial console is defined by
>> this device tree. This makes this generic device tree suitable for use
>> with a builtin initramfs with all known K210 based boards.
>>
>> These changes result in the K210_CLK_ACLK clock ID to be unused and
>> removed from the dt-bindings k210-clk.h header file.
>>
>> Most updates to the k210.dtsi file come from Sean Anderson's work on
>> U-Boot support for the K210.
>>
>> Cc: Rob Herring <robh@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>> ---
>>   arch/riscv/Kconfig.socs                     |   2 +-
>>   arch/riscv/boot/dts/canaan/k210.dts         |  23 -
>>   arch/riscv/boot/dts/canaan/k210.dtsi        | 535 +++++++++++++++++++-
>>   arch/riscv/boot/dts/canaan/k210_generic.dts |  46 ++
>>   include/dt-bindings/clock/k210-clk.h        |   1 -
>>   5 files changed, 554 insertions(+), 53 deletions(-)
>>   delete mode 100644 arch/riscv/boot/dts/canaan/k210.dts
>>   create mode 100644 arch/riscv/boot/dts/canaan/k210_generic.dts
>>
>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
>> index 6402746c68f3..7efcece8896c 100644
>> --- a/arch/riscv/Kconfig.socs
>> +++ b/arch/riscv/Kconfig.socs
>> @@ -51,7 +51,7 @@ config SOC_CANAAN_K210_DTB_SOURCE
>>   	string "Source file for the Canaan Kendryte K210 builtin DTB"
>>   	depends on SOC_CANAAN
>>   	depends on SOC_CANAAN_K210_DTB_BUILTIN
>> -	default "k210"
>> +	default "k210_generic"
>>   	help
>>   	  Base name (without suffix, relative to arch/riscv/boot/dts/canaan)
>>   	  for the DTS file that will be used to produce the DTB linked into the
>> diff --git a/arch/riscv/boot/dts/canaan/k210.dts b/arch/riscv/boot/dts/canaan/k210.dts
>> deleted file mode 100644
>> index 0d1f28fce6b2..000000000000
>> --- a/arch/riscv/boot/dts/canaan/k210.dts
>> +++ /dev/null
>> @@ -1,23 +0,0 @@
>> -// SPDX-License-Identifier: GPL-2.0+
>> -/*
>> - * Copyright (C) 2020 Western Digital Corporation or its affiliates.
>> - */
>> -
>> -/dts-v1/;
>> -
>> -#include "k210.dtsi"
>> -
>> -/ {
>> -	model = "Kendryte K210 generic";
>> -	compatible = "kendryte,k210";
>> -
>> -	chosen {
>> -		bootargs = "earlycon console=ttySIF0";
>> -		stdout-path = "serial0";
>> -	};
>> -};
>> -
>> -&uarths0 {
>> -	status = "okay";
>> -};
>> -
>> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
>> index 354b263195a3..63c1f4c98d6c 100644
>> --- a/arch/riscv/boot/dts/canaan/k210.dtsi
>> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi
>> @@ -1,9 +1,11 @@
>>   // SPDX-License-Identifier: GPL-2.0+
>>   /*
>> - * Copyright (C) 2019 Sean Anderson <seanga2@gmail.com>
>> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
>>    * Copyright (C) 2020 Western Digital Corporation or its affiliates.
>>    */
>>   #include <dt-bindings/clock/k210-clk.h>
>> +#include <dt-bindings/pinctrl/k210-fpioa.h>
>> +#include <dt-bindings/reset/k210-rst.h>
>>   
>>   / {
>>   	/*
>> @@ -12,14 +14,33 @@ / {
>>   	 */
>>   	#address-cells = <1>;
>>   	#size-cells = <1>;
>> -	compatible = "kendryte,k210";
>> +	compatible = "canaan,kendryte-k210";
>>   
>>   	aliases {
>> +		cpu0 = &cpu0;
>> +		cpu1 = &cpu1;
>> +		dma0 = &dmac0;
>> +		gpio0 = &gpio0;
>> +		gpio1 = &gpio1_0;
>> +		i2c0 = &i2c0;
>> +		i2c1 = &i2c1;
>> +		i2c2 = &i2c2;
>> +		pinctrl0 = &fpioa;
>>   		serial0 = &uarths0;
>> +		serial1 = &uart1;
>> +		serial2 = &uart2;
>> +		serial3 = &uart3;
>> +		spi0 = &spi0;
>> +		spi1 = &spi1;
>> +		spi2 = &spi2;
>> +		spi3 = &spi3;
>> +		timer0 = &timer0;
>> +		timer1 = &timer1;
>> +		timer2 = &timer2;
> 
> Don't add random aliases. Really, only the serialN ones should be here.
> cpu, dma, pinctrl, timer are definitely non-standard.


All of these except for cpu and dma are already found in the kernel.
They were primarily added for U-Boot.

> 
>>   	};
>>   
>>   	/*
>> -	 * The K210 has an sv39 MMU following the priviledge specification v1.9.
>> +	 * The K210 has an sv39 MMU following the privileged specification v1.9.
>>   	 * Since this is a non-ratified draft specification, the kernel does not
>>   	 * support it and the K210 support enabled only for the !MMU case.
>>   	 * Be consistent with this by setting the CPUs MMU type to "none".
>> @@ -30,14 +51,14 @@ cpus {
>>   		timebase-frequency = <7800000>;
>>   		cpu0: cpu@0 {
>>   			device_type = "cpu";
>> +			compatible = "canaan,k210", "riscv";
>>   			reg = <0>;
>> -			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
>>   			riscv,isa = "rv64imafdc";
>> -			mmu-type = "none";
>> -			i-cache-size = <0x8000>;
>> +			mmu-type = "riscv,none";
>>   			i-cache-block-size = <64>;
>> -			d-cache-size = <0x8000>;
>> +			i-cache-size = <0x8000>;
>>   			d-cache-block-size = <64>;
>> +			d-cache-size = <0x8000>;
>>   			cpu0_intc: interrupt-controller {
>>   				#interrupt-cells = <1>;
>>   				interrupt-controller;
>> @@ -46,14 +67,14 @@ cpu0_intc: interrupt-controller {
>>   		};
>>   		cpu1: cpu@1 {
>>   			device_type = "cpu";
>> +			compatible = "canaan,k210", "riscv";
>>   			reg = <1>;
>> -			compatible = "kendryte,k210", "sifive,rocket0", "riscv";
>>   			riscv,isa = "rv64imafdc";
>> -			mmu-type = "none";
>> -			i-cache-size = <0x8000>;
>> +			mmu-type = "riscv,none";
>>   			i-cache-block-size = <64>;
>> -			d-cache-size = <0x8000>;
>> +			i-cache-size = <0x8000>;
>>   			d-cache-block-size = <64>;
>> +			d-cache-size = <0x8000>;
>>   			cpu1_intc: interrupt-controller {
>>   				#interrupt-cells = <1>;
>>   				interrupt-controller;
>> @@ -64,10 +85,15 @@ cpu1_intc: interrupt-controller {
>>   
>>   	sram: memory@80000000 {
>>   		device_type = "memory";
>> +		compatible = "canaan,k210-sram";
>>   		reg = <0x80000000 0x400000>,
>>   		      <0x80400000 0x200000>,
>>   		      <0x80600000 0x200000>;
>>   		reg-names = "sram0", "sram1", "aisram";
>> +		clocks = <&sysclk K210_CLK_SRAM0>,
>> +			 <&sysclk K210_CLK_SRAM1>,
>> +			 <&sysclk K210_CLK_AI>;
>> +		clock-names = "sram0", "sram1", "aisram";
>>   	};
>>   
>>   	clocks {
>> @@ -81,40 +107,493 @@ in0: oscillator {
>>   	soc {
>>   		#address-cells = <1>;
>>   		#size-cells = <1>;
>> -		compatible = "kendryte,k210-soc", "simple-bus";
>> +		compatible = "simple-bus";
>>   		ranges;
>>   		interrupt-parent = <&plic0>;
>>   
>> -		sysctl: sysctl@50440000 {
>> -			compatible = "kendryte,k210-sysctl", "simple-mfd";
>> -			reg = <0x50440000 0x1000>;
>> -			#clock-cells = <1>;
>> +		debug0: debug@0 {
>> +			compatible = "canaan,k210-debug", "riscv,debug";
> 
> Not documented.

On 1/14/21 7:06 PM, Sean Anderson wrote:
> Here it's because "riscv,debug" doesn't exist. This is the "debug"
> device as described in the debug spec. AFAIK Linux never needs to
> configure this device. It could probably be removed. 

No objections here.

> 
>> +			reg = <0x0 0x1000>;
>> +			status = "disabled";
>> +		};
>> +
>> +		rom0: nvmem@1000 {
>> +			reg = <0x1000 0x1000>;
>> +			read-only;
>> +			status = "disabled";
>>   		};
>>   
>>   		clint0: clint@2000000 {
> 
> interrupt-controller@...

Yes, this should be changed.

> 
>> -			#interrupt-cells = <1>;
>> -			compatible = "riscv,clint0";
>> +			compatible = "canaan,k210-clint", "sifive,clint0";
>>   			reg = <0x2000000 0xC000>;
>> -			interrupts-extended =  <&cpu0_intc 3 &cpu0_intc 7
>> -						&cpu1_intc 3 &cpu1_intc 7>;
>> +			interrupts-extended = <&cpu0_intc 3 &cpu0_intc 7
>> +					      &cpu1_intc 3 &cpu1_intc 7>;
>>   		};
>>   
>> -		plic0: interrupt-controller@c000000 {
>> +		plic0: interrupt-controller@C000000 {
> 
> No, lowercase hex in unit-addresses was correct.

Do you have any authoritative source for this? When I was creating this
tree, I didn't see anything about what case the addresses should be in
(and a quick grep for lower-case in Documentation/devicetree doesn't
have any relevant results).

> 
>>   			#interrupt-cells = <1>;
>> -			interrupt-controller;
>> -			compatible = "kendryte,k210-plic0", "riscv,plic0";
>> +			#address-cells = <0>;
>> +			compatible = "canaan,k210-plic", "sifive,plic-1.0.0";
>>   			reg = <0xC000000 0x4000000>;
>> -			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
>> -					      <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
>> +			interrupt-controller;
>> +			interrupts-extended = <&cpu0_intc 11 &cpu1_intc 11>;
>>   			riscv,ndev = <65>;
>> -			riscv,max-priority = <7>;
>>   		};
>>   
>>   		uarths0: serial@38000000 {
>> -			compatible = "kendryte,k210-uarths", "sifive,uart0";
>> +			compatible = "canaan,k210-uarths", "sifive,uart0";
>>   			reg = <0x38000000 0x1000>;
>>   			interrupts = <33>;
>> -			clocks = <&sysctl K210_CLK_CPU>;
>> +			clocks = <&sysclk K210_CLK_CPU>;
>> +			status = "disabled";
>> +		};
>> +
>> +		gpio0: gpio-controller@38001000 {
>> +			#interrupt-cells = <2>;
>> +			#gpio-cells = <2>;
>> +			compatible = "canaan,k210-gpiohs", "sifive,gpio0";
>> +			reg = <0x38001000 0x1000>;
>> +			interrupt-controller;
>> +			interrupts = <34 35 36 37 38 39 40 41
>> +				      42 43 44 45 46 47 48 49
>> +				      50 51 52 53 54 55 56 57
>> +				      58 59 60 61 62 63 64 65>;
>> +			gpio-controller;
>> +			ngpios = <32>;
>> +			status = "disabled";
>> +		};
>> +
>> +		kpu0: kpu@40800000 {
>> +			compatible = "canaan,k210-kpu";
>> +			reg = <0x40800000 0xc00000>;
>> +			interrupts = <25>;
>> +			clocks = <&sysclk K210_CLK_AI>;
>> +			status = "disabled";
>> +		};
>> +
>> +		fft0: fft@42000000 {
>> +			compatible = "canaan,k210-fft";
>> +			reg = <0x42000000 0x400000>;
>> +			interrupts = <26>;
>> +			clocks = <&sysclk K210_CLK_FFT>;
>> +			resets = <&sysrst K210_RST_FFT>;
>> +			status = "disabled";
>> +		};
>> +
>> +		dmac0: dma-controller@50000000 {
>> +			compatible = "snps,axi-dma-1.01a";
>> +			reg = <0x50000000 0x1000>;
>> +			interrupts = <27 28 29 30 31 32>;
>> +			clocks = <&sysclk K210_CLK_DMA>, <&sysclk K210_CLK_DMA>;
>> +			clock-names = "core-clk", "cfgr-clk";
>> +			resets = <&sysrst K210_RST_DMA>;
>> +			dma-channels = <6>;
>> +			snps,dma-masters = <2>;
>> +			snps,priority = <0 1 2 3 4 5>;
>> +			snps,data-width = <5>;
>> +			snps,block-size = <0x200000 0x200000 0x200000
>> +					   0x200000 0x200000 0x200000>;
>> +			snps,axi-max-burst-len = <256>;
>> +			status = "disabled";
>> +		};
>> +
>> +		apb0: bus@50200000 {
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			compatible = "simple-pm-bus";
>> +			ranges;
>> +			clocks = <&sysclk K210_CLK_APB0>;
>> +
>> +			gpio1: gpio@50200000 {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				compatible = "snps,dw-apb-gpio";
>> +				reg = <0x50200000 0x80>;
>> +				clocks = <&sysclk K210_CLK_APB0>,
>> +					 <&sysclk K210_CLK_GPIO>;
>> +				clock-names = "bus", "db";
>> +				resets = <&sysrst K210_RST_GPIO>;
>> +				status = "disabled";
>> +
>> +				gpio1_0: gpio-port@0 {
>> +					#gpio-cells = <2>;
>> +					#interrupt-cells = <2>;
>> +					compatible = "snps,dw-apb-gpio-port";
>> +					reg = <0>;
>> +					interrupt-controller;
>> +					interrupts = <23>;
>> +					gpio-controller;
>> +					ngpios = <8>;
>> +				};
>> +			};
>> +
>> +			uart1: serial@50210000 {
>> +				compatible = "snps,dw-apb-uart";
>> +				reg = <0x50210000 0x100>;
>> +				interrupts = <11>;
>> +				clocks = <&sysclk K210_CLK_UART1>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "baudclk", "apb_pclk";
>> +				resets = <&sysrst K210_RST_UART1>;
>> +				reg-io-width = <4>;
>> +				reg-shift = <2>;
>> +				dcd-override;
>> +				dsr-override;
>> +				cts-override;
>> +				ri-override;
>> +				status = "disabled";
>> +			};
>> +
>> +			uart2: serial@50220000 {
>> +				compatible = "snps,dw-apb-uart";
>> +				reg = <0x50220000 0x100>;
>> +				interrupts = <12>;
>> +				clocks = <&sysclk K210_CLK_UART2>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "baudclk", "apb_pclk";
>> +				resets = <&sysrst K210_RST_UART2>;
>> +				reg-io-width = <4>;
>> +				reg-shift = <2>;
>> +				dcd-override;
>> +				dsr-override;
>> +				cts-override;
>> +				ri-override;
>> +				status = "disabled";
>> +			};
>> +
>> +			uart3: serial@50230000 {
>> +				compatible = "snps,dw-apb-uart";
>> +				reg = <0x50230000 0x100>;
>> +				interrupts = <13>;
>> +				clocks = <&sysclk K210_CLK_UART3>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "baudclk", "apb_pclk";
>> +				resets = <&sysrst K210_RST_UART3>;
>> +				reg-io-width = <4>;
>> +				reg-shift = <2>;
>> +				dcd-override;
>> +				dsr-override;
>> +				cts-override;
>> +				ri-override;
>> +				status = "disabled";
>> +			};
>> +
>> +			spi2: spi@50240000 {
>> +				compatible = "canaan,k210-spi";
>> +				spi-slave;
>> +				reg = <0x50240000 0x100>;
>> +				interrupts = <3>;
>> +				clocks = <&sysclk K210_CLK_SPI2>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "ssi_clk", "pclk";
>> +				resets = <&sysrst K210_RST_SPI2>;
>> +				spi-max-frequency = <25000000>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2s0: i2s@50250000 {
>> +				compatible = "snps,designware-i2s";
>> +				reg = <0x50250000 0x200>;
>> +				interrupts = <5>;
>> +				clocks = <&sysclk K210_CLK_I2S0>;
>> +				clock-names = "i2sclk";
>> +				resets = <&sysrst K210_RST_I2S0>;
>> +				status = "disabled";
>> +			};
>> +
>> +			apu0: sound@520250200 {
>> +				compatible = "canaan,k210-apu";
>> +				reg = <0x50250200 0x200>;
> 
> The unit-address and 'reg' value don't match.

Good catch. The unit address should be 50250200.

> 
>> +				status = "disabled";
>> +			};
>> +
>> +			i2s1: i2s@50260000 {
>> +				compatible = "snps,designware-i2s";
>> +				reg = <0x50260000 0x200>;
>> +				interrupts = <6>;
>> +				clocks = <&sysclk K210_CLK_I2S1>;
>> +				clock-names = "i2sclk";
>> +				resets = <&sysrst K210_RST_I2S1>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2s2: i2s@50270000 {
>> +				compatible = "snps,designware-i2s";
>> +				reg = <0x50270000 0x200>;
>> +				interrupts = <7>;
>> +				clocks = <&sysclk K210_CLK_I2S2>;
>> +				clock-names = "i2sclk";
>> +				resets = <&sysrst K210_RST_I2S2>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2c0: i2c@50280000 {
>> +				compatible = "snps,designware-i2c";
>> +				reg = <0x50280000 0x100>;
>> +				interrupts = <8>;
>> +				clocks = <&sysclk K210_CLK_I2C0>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "ref", "pclk";
>> +				resets = <&sysrst K210_RST_I2C0>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2c1: i2c@50290000 {
>> +				compatible = "snps,designware-i2c";
>> +				reg = <0x50290000 0x100>;
>> +				interrupts = <9>;
>> +				clocks = <&sysclk K210_CLK_I2C1>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "ref", "pclk";
>> +				resets = <&sysrst K210_RST_I2C1>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2c2: i2c@502A0000 {
> 
> Again, lowercase hex.
> 
>> +				compatible = "snps,designware-i2c";
>> +				reg = <0x502A0000 0x100>;
>> +				interrupts = <10>;
>> +				clocks = <&sysclk K210_CLK_I2C2>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "ref", "pclk";
>> +				resets = <&sysrst K210_RST_I2C2>;
>> +				status = "disabled";
>> +			};
>> +
>> +			fpioa: pinmux@502B0000 {
>> +				compatible = "canaan,k210-fpioa";
>> +				reg = <0x502B0000 0x100>;
>> +				clocks = <&sysclk K210_CLK_FPIOA>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "ref", "pclk";
>> +				resets = <&sysrst K210_RST_FPIOA>;
>> +				canaan,k210-sysctl-power = <&sysctl 108>;
>> +				status = "disabled";
>> +			};
>> +
>> +			sha256: sha256@502C0000 {
>> +				compatible = "canaan,k210-sha256";
>> +				reg = <0x502C0000 0x100>;
>> +				clocks = <&sysclk K210_CLK_SHA>;
>> +				resets = <&sysrst K210_RST_SHA>;
>> +				status = "disabled";
>> +			};
>> +
>> +			timer0: timer@502D0000 {
>> +				compatible = "snps,dw-apb-timer";
>> +				reg = <0x502D0000 0x100>;
>> +				interrupts = <14 15>;
>> +				clocks = <&sysclk K210_CLK_TIMER0>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "timer", "pclk";
>> +				resets = <&sysrst K210_RST_TIMER0>;
>> +				status = "disabled";
>> +			};
>> +
>> +			timer1: timer@502E0000 {
>> +				compatible = "snps,dw-apb-timer";
>> +				reg = <0x502E0000 0x100>;
>> +				interrupts = <16 17>;
>> +				clocks = <&sysclk K210_CLK_TIMER1>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "timer", "pclk";
>> +				resets = <&sysrst K210_RST_TIMER1>;
>> +				status = "disabled";
>> +			};
>> +
>> +			timer2: timer@502F0000 {
>> +				compatible = "snps,dw-apb-timer";
>> +				reg = <0x502F0000 0x100>;
>> +				interrupts = <18 19>;
>> +				clocks = <&sysclk K210_CLK_TIMER2>,
>> +					 <&sysclk K210_CLK_APB0>;
>> +				clock-names = "timer", "pclk";
>> +				resets = <&sysrst K210_RST_TIMER2>;
>> +				status = "disabled";
>> +			};
>> +		};
>> +
>> +		apb1: bus@50400000 {
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			compatible = "simple-pm-bus";
>> +			ranges;
>> +			clocks = <&sysclk K210_CLK_APB1>;
>> +
>> +			wdt0: watchdog@50400000 {
>> +				compatible = "snps,dw-wdt";
>> +				reg = <0x50400000 0x100>;
>> +				interrupts = <21>;
>> +				clocks = <&sysclk K210_CLK_WDT0>,
>> +					 <&sysclk K210_CLK_APB1>;
>> +				clock-names = "tclk", "pclk";
>> +				resets = <&sysrst K210_RST_WDT0>;
>> +				status = "disabled";
>> +			};
>> +
>> +			wdt1: watchdog@50410000 {
>> +				compatible = "snps,dw-wdt";
>> +				reg = <0x50410000 0x100>;
>> +				interrupts = <22>;
>> +				clocks = <&sysclk K210_CLK_WDT1>,
>> +					 <&sysclk K210_CLK_APB1>;
>> +				clock-names = "tclk", "pclk";
>> +				resets = <&sysrst K210_RST_WDT1>;
>> +				status = "disabled";
>> +			};
>> +
>> +			otp0: nvmem@50420000 {
>> +				#address-cells = <1>;
>> +				#size-cells = <1>;
>> +				compatible = "canaan,k210-otp";
>> +				reg = <0x50420000 0x100>,
>> +				      <0x88000000 0x20000>;
>> +				reg-names = "reg", "mem";
>> +				clocks = <&sysclk K210_CLK_ROM>;
>> +				resets = <&sysrst K210_RST_ROM>;
>> +				read-only;
>> +				status = "disabled";
> 
> Your disabled nodes seem a bit excessive. A device should really only be
> disabled if it's a board level decision to use or not. I'd assume the
> OTP is always there and usable.

It's disabled because there is no driver for it (yet). Though see below
for the reasoning behind this.

>> +
>> +				/* Bootloader */
>> +				firmware@00000 {
> 
> Drop leading 0s.
> 
> Is this memory mapped? If so, you are missing 'ranges' in the parent to
> make it translateable.

Yes, there should be ranges.

Though I am not sure that the ROM is controllable from this OTP...

Perhaps it should be its own node.

> 
>> +					reg = <0x00000 0xC200>;
>> +				};
>> +
>> +				/*
>> +				 * config string as described in RISC-V
>> +				 * privileged spec 1.9
>> +				 */
>> +				config-1-9@1c000 {
>> +					reg = <0x1C000 0x1000>;
>> +				};
>> +
>> +				/*
>> +				 * Device tree containing only registers,
>> +				 * interrupts, and cpus
>> +				 */
>> +				fdt@1d000 {
>> +					reg = <0x1D000 0x2000>;
>> +				};
>> +
>> +				/* CPU/ROM credits */
>> +				credits@1f000 {
>> +					reg = <0x1F000 0x1000>;
>> +				};
>> +			};
>> +
>> +			dvp0: camera@50430000 {
>> +				compatible = "canaan,k210-dvp";
> 
> No documented. Seems to be several of them.

Correct. At some point there may be drivers. But there is no
authoritative information (memory map, list of registers, list of
interrupts) outside of source code for this board.

> 
>> +				reg = <0x50430000 0x100>;
>> +				interrupts = <24>;
>> +				clocks = <&sysclk K210_CLK_DVP>;
>> +				resets = <&sysrst K210_RST_DVP>;
>> +				canaan,k210-misc-offset = <&sysctl 84>;
>> +				status = "disabled";
>> +			};
>> +
>> +			sysctl: syscon@50440000 {
>> +				compatible = "canaan,k210-sysctl",
>> +					     "syscon", "simple-mfd";
>> +				reg = <0x50440000 0x100>;
>> +				clocks = <&sysclk K210_CLK_APB1>;
>> +				clock-names = "pclk";
>> +
>> +				sysclk: clock-controller {
>> +					#clock-cells = <1>;
>> +					compatible = "canaan,k210-clk";
>> +					clocks = <&in0>;
>> +				};
>> +
>> +				sysrst: reset-controller {
>> +					compatible = "canaan,k210-rst";
>> +					#reset-cells = <1>;
>> +				};
>> +
>> +				reboot: syscon-reboot {
>> +					compatible = "syscon-reboot";
>> +					regmap = <&sysctl>;
>> +					offset = <48>;
>> +					mask = <1>;
>> +					value = <1>;
>> +				};
>> +			};
>> +
>> +			aes0: aes@50450000 {
>> +				compatible = "canaan,k210-aes";
>> +				reg = <0x50450000 0x100>;
>> +				clocks = <&sysclk K210_CLK_AES>;
>> +				resets = <&sysrst K210_RST_AES>;
>> +				status = "disabled";
>> +			};
>> +
>> +			rtc: rtc@50460000 {
>> +				compatible = "canaan,k210-rtc";
>> +				reg = <0x50460000 0x100>;
>> +				clocks = <&in0>;
>> +				resets = <&sysrst K210_RST_RTC>;
>> +				interrupts = <20>;
>> +				status = "disabled";
>> +			};
>> +		};
>> +
>> +		apb2: bus@52000000 {
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			compatible = "simple-pm-bus";
>> +			ranges;
>> +			clocks = <&sysclk K210_CLK_APB2>;
>> +
>> +			spi0: spi@52000000 {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				compatible = "canaan,k210-spi";
>> +				reg = <0x52000000 0x100>;
>> +				interrupts = <1>;
>> +				clocks = <&sysclk K210_CLK_SPI0>,
>> +					 <&sysclk K210_CLK_APB2>;
>> +				clock-names = "ssi_clk", "pclk";
>> +				resets = <&sysrst K210_RST_SPI0>;
>> +				reset-names = "spi";
>> +				spi-max-frequency = <25000000>;
>> +				num-cs = <4>;
>> +				reg-io-width = <4>;
>> +				status = "disabled";
>> +			};
>> +
>> +			spi1: spi@53000000 {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				compatible = "canaan,k210-spi";
>> +				reg = <0x53000000 0x100>;
>> +				interrupts = <2>;
>> +				clocks = <&sysclk K210_CLK_SPI1>,
>> +					 <&sysclk K210_CLK_APB2>;
>> +				clock-names = "ssi_clk", "pclk";
>> +				resets = <&sysrst K210_RST_SPI1>;
>> +				reset-names = "spi";
>> +				spi-max-frequency = <25000000>;
>> +				num-cs = <4>;
>> +				reg-io-width = <4>;
>> +				status = "disabled";
>> +			};
>> +
>> +			spi3: spi@54000000 {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				compatible = "snps,dwc-ssi-1.01a";
>> +				reg = <0x54000000 0x200>;
>> +				interrupts = <4>;
>> +				clocks = <&sysclk K210_CLK_SPI3>,
>> +					 <&sysclk K210_CLK_APB2>;
>> +				clock-names = "ssi_clk", "pclk";
>> +				resets = <&sysrst K210_RST_SPI3>;
>> +				reset-names = "spi";
>> +				/* Could possibly go up to 200 MHz */
>> +				spi-max-frequency = <100000000>;
>> +				num-cs = <4>;
>> +				reg-io-width = <4>;
>> +				status = "disabled";
>> +			};
>>   		};
>>   	};
>>   };
>> diff --git a/arch/riscv/boot/dts/canaan/k210_generic.dts b/arch/riscv/boot/dts/canaan/k210_generic.dts
>> new file mode 100644
>> index 000000000000..396c8ca4d24d
>> --- /dev/null
>> +++ b/arch/riscv/boot/dts/canaan/k210_generic.dts
>> @@ -0,0 +1,46 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
>> + * Copyright (C) 2020 Western Digital Corporation or its affiliates.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "k210.dtsi"
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +
>> +/ {
>> +	model = "Kendryte K210 generic";
>> +	compatible = "canaan,kendryte-k210";
>> +
>> +	chosen {
>> +		bootargs = "earlycon console=ttySIF0";
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +};
>> +
>> +&fpioa {
>> +	pinctrl-0 = <&jtag_pins>;
>> +	pinctrl-names = "default";
>> +	status = "okay";
>> +
>> +	jtag_pins: jtag-pinmux {
>> +		pinmux = <K210_FPIOA(0, K210_PCF_JTAG_TCLK)>,
>> +			 <K210_FPIOA(1, K210_PCF_JTAG_TDI)>,
>> +			 <K210_FPIOA(2, K210_PCF_JTAG_TMS)>,
>> +			 <K210_FPIOA(3, K210_PCF_JTAG_TDO)>;
>> +	};
>> +
>> +	uarths_pins: uarths-pinmux {
>> +		pinmux = <K210_FPIOA(4, K210_PCF_UARTHS_RX)>,
>> +			 <K210_FPIOA(5, K210_PCF_UARTHS_TX)>;
>> +	};
>> +};
>> +
>> +&uarths0 {
>> +	pinctrl-0 = <&uarths_pins>;
>> +	pinctrl-names = "default";
>> +	status = "okay";
>> +};
>> diff --git a/include/dt-bindings/clock/k210-clk.h b/include/dt-bindings/clock/k210-clk.h
>> index a48176ad3c23..b2de702cbf75 100644
>> --- a/include/dt-bindings/clock/k210-clk.h
>> +++ b/include/dt-bindings/clock/k210-clk.h
>> @@ -9,7 +9,6 @@
>>   /*
>>    * Kendryte K210 SoC clock identifiers (arbitrary values).
>>    */
>> -#define K210_CLK_ACLK	0
>>   #define K210_CLK_CPU	0
>>   #define K210_CLK_SRAM0	1
>>   #define K210_CLK_SRAM1	2
>> -- 
>> 2.29.2
>>

