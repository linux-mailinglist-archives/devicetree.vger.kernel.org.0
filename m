Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CE5B77CE94
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 16:57:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237791AbjHOO5U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 10:57:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237625AbjHOO4t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 10:56:49 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 866ECE74
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 07:56:47 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5234b80e9b6so7492681a12.2
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 07:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692111406; x=1692716206;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ucoWbG5U8E9ME3s6tNLFrdCoIoFnCvpaCx6K+3pahaY=;
        b=uMg16r1lMejtfezZnbjii5p868Reh8MuLUWNMYVUHmsTgQAOdTHxy+//MTgtor0u7C
         czYC8yOYfKOFXF8ZRSzL3RfPmUyXDT2zHsZqB5PJrYDjcKFsyh/zegIxkVtxolbAOaJf
         9zDD6BBxIb3t+R8kSmHQcy8aDxHDQ8PouYy8KfQ6WS2q4UEbo8MOOXDtL4DedEHLlqej
         EIC+CqDzIozVg4zL0Mhfh68UySJ/IzvDdxHxlFICeUWXxDereUBHSm0rFES0X/OXDp73
         o4dMlPVj+APvpsItz3/MjR7VesTuv0JQkgUkXA/GDv0Gj6Di4vM6o6En4fxWZf4cRZic
         rRvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692111406; x=1692716206;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ucoWbG5U8E9ME3s6tNLFrdCoIoFnCvpaCx6K+3pahaY=;
        b=XcYXGJvsEctG1mO7YmPKkvW6H9Gy+z1p3OidBsZQlxqwPv+rxzoMrN4pQV2dOubmvp
         MC6pNE6CcaNgv3sJo+rOvSRICUmihXcNSnggqh/ML6rJUFay8MAqv+lOJXxR6HjlQc2O
         q3jFT9jCH9jbEqx5kOqvXkPySlbEdlWyUQ+jPZcbdLMV6waPcnj7kyjHTDSEOr6slXDx
         ySt0k4syQfro+8BEzAZsiZ4vMC2wv8sQr0ly+m0DJqFueHdoS6g/u+qbtMLy2Ep6ke8M
         BTmleP1XE29zJOgeMggmRDnkCNpNwJuynWmmVxXzcvdFlfq/VPS1uOuEvSAkPWqNxtDx
         fZyg==
X-Gm-Message-State: AOJu0YzvzLMzQCbvRJnip6v/My+gRzNmbfGPVAYJt8FHmZzpjp78fAdG
        gvSi0LURQXyO5rhCerquFiI0mw==
X-Google-Smtp-Source: AGHT+IEnneIYaHiWvY3Ue7PwdIsnmt/2fGSuywUZs7h4sJQ1kY2VnK7tvtSXEJ69aipWlY5XVKqVFw==
X-Received: by 2002:a17:907:7886:b0:99b:eeae:23d0 with SMTP id ku6-20020a170907788600b0099beeae23d0mr9590371ejc.12.1692111405992;
        Tue, 15 Aug 2023 07:56:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id pg16-20020a170907205000b009929ab17be0sm7019708ejb.162.2023.08.15.07.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 07:56:45 -0700 (PDT)
Message-ID: <175ab37b-2b01-bd67-cfbc-914efc810a7f@linaro.org>
Date:   Tue, 15 Aug 2023 16:56:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 5/7] LoongArch: dts: DeviceTree for Loongson-2K1000
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1692088166.git.zhoubinbin@loongson.cn>
 <dcd87b8934c9b9869ffb24b3c904905587dcaa42.1692088166.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dcd87b8934c9b9869ffb24b3c904905587dcaa42.1692088166.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 10:51, Binbin Zhou wrote:
> Add DeviceTree file for Loongson-2K1000 processor, which integrates two
> 64-bit dual emission superscalar LA264 processor cores.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  arch/loongarch/boot/dts/Makefile              |   3 +-
>  .../boot/dts/loongson-2k1000-ref.dts          | 217 +++++++++++
>  arch/loongarch/boot/dts/loongson-2k1000.dtsi  | 345 ++++++++++++++++++
>  3 files changed, 564 insertions(+), 1 deletion(-)
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k1000-ref.dts
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k1000.dtsi
> 
> diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
> index aa0b21d73d4e..dc0782315bed 100644
> --- a/arch/loongarch/boot/dts/Makefile
> +++ b/arch/loongarch/boot/dts/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> -dtb-$(CONFIG_MACH_LOONGSON64)	= loongson-2k0500-ref.dtb
> +dtb-$(CONFIG_MACH_LOONGSON64)	= loongson-2k0500-ref.dtb \
> +				  loongson-2k1000-ref.dtb
>  
>  obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
> diff --git a/arch/loongarch/boot/dts/loongson-2k1000-ref.dts b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
> new file mode 100644
> index 000000000000..950a2df4e33f
> --- /dev/null
> +++ b/arch/loongarch/boot/dts/loongson-2k1000-ref.dts
> @@ -0,0 +1,217 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Loongson Technology Corporation Limited
> + */
> +
> +/dts-v1/;
> +
> +#include "loongson-2k1000.dtsi"
> +
> +/ {
> +	compatible = "loongson,ls2k1000-ref", "loongson,ls2k1000";
> +	model = "Loongson-2K1000 Reference Board";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +		bootargs = "earlycon";
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "loongson,la264";
> +			device_type = "cpu";
> +			reg= <0x0>;
> +			clocks = <&clk LOONGSON2_NODE_CLK>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			compatible = "loongson,la264";
> +			device_type = "cpu";
> +			reg = <0x1>;
> +			clocks = <&clk LOONGSON2_NODE_CLK>;
> +		};
> +	};
> +
> +	memory@200000 {
> +		device_type = "memory";
> +		reg = <0x0 0x200000 0x0 0x6e00000>,
> +		      <0x0 0x08000000 0x0 0x7000000>,
> +		      <0x0 0x90000000 0x1 0xe0000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0x0 0x2000000>;
> +			linux,cma-default;
> +		};
> +	};
> +
> +	i2c-gpio-0 {
> +		compatible = "i2c-gpio";
> +		scl-gpios = <&gpio0 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		sda-gpios = <&gpio0 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		i2c-gpio,delay-us = <5>;        /* ~100 kHz */
> +		status = "disabled";

Disabled node in board, without comment providing a reason, is useless.
Drop the node or fix the status.

> +	};
> +
> +	i2c-gpio-1 {
> +		compatible = "i2c-gpio";
> +		scl-gpios = <&gpio0 33 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		sda-gpios = <&gpio0 32 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		i2c-gpio,delay-us = <5>;        /* ~100 kHz */
> +		status = "disabled";

Ditto

> +	};
> +};
> +
> +&gmac0 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii";
> +	phy-handle = <&phy0>;
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";

compatible is always the first property.

> +		phy0: ethernet-phy@0 {
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +&gmac1 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii";
> +	phy-handle = <&phy1>;
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "snps,dwmac-mdio";

compatible is always the first property.

> +		phy1: ethernet-phy@1 {
> +			reg = <16>;
> +		};
> +	};
> +};

...

> +};
> diff --git a/arch/loongarch/boot/dts/loongson-2k1000.dtsi b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
> new file mode 100644
> index 000000000000..fc3bb6368a5e
> --- /dev/null
> +++ b/arch/loongarch/boot/dts/loongson-2k1000.dtsi
> @@ -0,0 +1,345 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Loongson Technology Corporation Limited
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/clock/loongson,ls2k-clk.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	ref_100m: clock-ref-100m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +		clock-output-names = "ref_100m";
> +	};
> +
> +	cpuintc: interrupt-controller {
> +		compatible = "loongson,cpu-interrupt-controller";
> +		#interrupt-cells = <1>;
> +		interrupt-controller;
> +	};
> +
> +	bus@10000000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		ranges = <0x0 0x10000000 0x0 0x10000000 0x0 0x10000000>,
> +			 <0x0 0x2000000 0x0 0x2000000 0x0 0x2000000>,
> +			 <0x0 0x20000000 0x0 0x20000000 0x0 0x10000000>,
> +			 <0x0 0x40000000 0x0 0x40000000 0x0 0x40000000>,
> +			 <0xfe 0x0 0xfe 0x0 0x0 0x40000000>;
> +
> +		dma-coherent;
> +
> +		liointc0: interrupt-controller@1fe01400 {
> +			compatible = "loongson,liointc-2.0";
> +			reg = <0x0 0x1fe01400 0x0 0x40>,
> +			      <0x0 0x1fe01040 0x0 0x8>,
> +			      <0x0 0x1fe01140 0x0 0x8>;
> +			reg-names = "main", "isr0", "isr1";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			interrupt-parent = <&cpuintc>;
> +			interrupts = <2>;
> +			interrupt-names = "int0";
> +			loongson,parent_int_map = <0xffffffff>, /* int0 */
> +						  <0x00000000>, /* int1 */
> +						  <0x00000000>, /* int2 */
> +						  <0x00000000>; /* int3 */
> +		};
> +
> +		liointc1: interrupt-controller@1fe01440 {
> +			compatible = "loongson,liointc-2.0";
> +			reg = <0x0 0x1fe01440 0x0 0x40>,
> +			      <0x0 0x1fe01048 0x0 0x8>,
> +			      <0x0 0x1fe01148 0x0 0x8>;
> +			reg-names = "main", "isr0", "isr1";
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			interrupt-parent = <&cpuintc>;
> +			interrupts = <3>;
> +			interrupt-names = "int1";
> +			loongson,parent_int_map = <0x00000000>, /* int0 */
> +						  <0xffffffff>, /* int1 */
> +						  <0x00000000>, /* int2 */
> +						  <0x00000000>; /* int3 */
> +		};
> +
> +		global-utilities@1fe00000 {
> +			compatible = "loongson,ls2k-chipid";
> +			reg = <0x0 0x1fe00000 0x0 0x3ffc>;
> +			little-endian;
> +		};
> +
> +		pctrl: pinctrl@1fe00420 {
> +			compatible = "loongson,ls2k-pinctrl";
> +			reg = <0x0 0x1fe00420 0x0 0x18>;
> +			status = "disabled";
> +		};
> +
> +		clk: clock-controller@1fe00480 {
> +			compatible = "loongson,ls2k-clk";
> +			reg = <0x0 0x1fe00480 0x0 0x58>;
> +			#clock-cells = <1>;
> +			clocks = <&ref_100m>;
> +			clock-names = "ref_100m";
> +			status = "disabled";
> +		};
> +
> +		gpio0: gpio@1fe00500 {
> +			compatible = "loongson,ls2k-gpio";
> +			reg = <0x0 0x1fe00500 0x0 0x38>;
> +			ngpios = <64>;
> +			#gpio-cells = <2>;
> +			gpio-controller;
> +			gpio-ranges = <&pctrl 0x0 0x0 15>,
> +				      <&pctrl 16 16 15>,
> +				      <&pctrl 32 32 10>,
> +				      <&pctrl 44 44 20>;
> +			interrupt-parent = <&liointc1>;
> +			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>,
> +				     <29 IRQ_TYPE_LEVEL_HIGH>,
> +				     <30 IRQ_TYPE_LEVEL_HIGH>,
> +				     <30 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <26 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <>,
> +				     <>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>,
> +				     <27 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		uart0: serial@1fe20000 {
> +			compatible = "ns16550a";
> +			reg = <0x0 0x1fe20000 0x0 0x10>;
> +			clock-frequency = <125000000>;
> +			interrupt-parent = <&liointc0>;
> +			interrupts = <0x0 IRQ_TYPE_LEVEL_HIGH>;
> +			no-loopback-test;
> +			status = "disabled";
> +		};
> +
> +		i2c2: i2c@1fe21000 {
> +			compatible = "loongson,ls2k-i2c";
> +			reg = <0x0 0x1fe21000 0x0 0x8>;
> +			interrupt-parent = <&liointc0>;
> +			interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		i2c3: i2c@1fe21800 {
> +			compatible = "loongson,ls2k-i2c";
> +			reg = <0x0 0x1fe21800 0x0 0x8>;
> +			interrupt-parent = <&liointc0>;
> +			interrupts = <23 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		rtc0: rtc@1fe27800 {
> +			compatible = "loongson,ls2k1000-rtc";
> +			reg = <0x0 0x1fe27800 0x0 0x100>;
> +			interrupt-parent = <&liointc1>;
> +			interrupts = <8 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@1a000000 {
> +			compatible = "loongson,ls2k-pci";
> +			device_type = "pci";
> +			#size-cells = <2>;
> +			#address-cells = <3>;
> +
> +			reg = <0x0 0x1a000000 0x0 0x02000000>,
> +			      <0xfe 0x0 0x0 0x20000000>;
> +
> +			ranges = <0x1000000 0x0 0x8000 0x0 0x18008000 0x0 0x8000>,
> +				 <0x2000000 0x0 0x60000000 0x0 0x60000000 0x0 0x20000000>; /* mem */
> +
> +			gmac0: ethernet@3,0 {
> +				reg = <0x1800 0x0 0x0 0x0 0x0>;
> +				interrupt-parent = <&liointc0>;
> +				interrupts = <12 IRQ_TYPE_LEVEL_HIGH>,
> +					     <13 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "macirq", "eth_lpi";
> +				status = "disabled";
> +			};
> +
> +			gmac1: ethernet@3,1 {
> +				reg = <0x1900 0x0 0x0 0x0 0x0>;
> +				interrupt-parent = <&liointc0>;
> +				interrupts = <14 IRQ_TYPE_LEVEL_HIGH>,
> +					     <15 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "macirq", "eth_lpi";
> +				status = "disabled";
> +			};
> +
> +			ehci0: usb@4,1 {
> +				reg = <0x2100 0x0 0x0 0x0 0x0>;
> +				interrupt-parent = <&liointc1>;
> +				interrupts = <18 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";


All these PCI devices are part of SoC? The SoC?

Best regards,
Krzysztof

