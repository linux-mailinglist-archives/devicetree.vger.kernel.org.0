Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 258BB7839DB
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 08:23:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232955AbjHVGXC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 02:23:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231880AbjHVGXB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 02:23:01 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D83E4187
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:22:59 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bfcf4c814so540840366b.0
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692685378; x=1693290178;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=++uPsclFX6VF1/jgPpJ+XcM5j+RVD9OVnr8XuYfEwuQ=;
        b=sLjkYFp+1+4rjN6O33rnfKfSdnhfEQ2mbt7XGKlfBnMk9ve8KMEdwwiFIBTnBE1EHF
         +aovr9Hwlj7igFM/gq3ReIYH33Sa+Jxy96PLhPXbMphfpAPkMqERAZvts8xmx3NxiIal
         b22XytYNdk4+dLlqRnVdCKJZhcPNtXP0G9TSiGt3n/k4DZS/kenR81ljacY6t+3VTZDK
         O4P3TCu9v8kwZ/PPiWYadl/I29UYQ8HzzhGyGVYFpOEu96jMsnUlTsYEXaqN3AivODs2
         3F0l/oTLIQIy/UJNGku1xSowqOyEsb1IyOYYbLrZNcTeTYbTKKT7CksKCXegiFvpIFOR
         gWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692685378; x=1693290178;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=++uPsclFX6VF1/jgPpJ+XcM5j+RVD9OVnr8XuYfEwuQ=;
        b=WNgWFVJ2ZWLrH9BRujaakFXuNe3I95Lw0RdD+O5LqlTlojoWfqniamu/KOEaF4MWvW
         EEpgTjUb6eh/2Zp11M5ST1F9cfflAnsU2r010iqPDfBjQTWlrUBQ7H6/DxaQohSwRdTd
         HbxfZZvwV8IAWH+7DOg/uB/0E1XqmWQTTxntXH+SnTIZ5mKRSIfedRmPPqbzX0jaSiVD
         GnZkJm+DReRvjjMQEn/L7OzSZBj9vT2mAADrlc3UD7N03wehM7k0CcDcVhJlJHfNBx/w
         FeKaIOnPFvzBjYCEUKhnFUn3LhktMm+g58XMMjveTM3KWLq0n9NDCpC9QpXYnL4+0p4l
         S6uQ==
X-Gm-Message-State: AOJu0Yz7D6Ipj+f9pp7ZA1nJwMc/6ZT0wAqvpJrtEGcm70HpT0LEOcz2
        mgmNNajWEjRCEfJqneNrUoFY9Q==
X-Google-Smtp-Source: AGHT+IGFnAAmOSB10YHrMmedlF1PvpXRbfopRi3ulL8UPfj46Ks6jCEC0lOnq8wTFZWqVbP0bkdNBw==
X-Received: by 2002:a17:906:73de:b0:99b:ead0:2733 with SMTP id n30-20020a17090673de00b0099bead02733mr6604681ejl.72.1692685378272;
        Mon, 21 Aug 2023 23:22:58 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id e16-20020a170906045000b0098dfec235ccsm7610162eja.47.2023.08.21.23.22.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 23:22:57 -0700 (PDT)
Message-ID: <e6d4a3e2-0de4-2d85-da05-e695aed05223@linaro.org>
Date:   Tue, 22 Aug 2023 08:22:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
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
References: <cover.1692618548.git.zhoubinbin@loongson.cn>
 <b8749ca4c76fd2584e6c9c8504cf44ee66eb0a20.1692618548.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b8749ca4c76fd2584e6c9c8504cf44ee66eb0a20.1692618548.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 14:49, Binbin Zhou wrote:
> Add DeviceTree file for Loongson-2K0500 processor, which integrates one
> 64-bit dual emission superscalar LA264 processor core.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  arch/loongarch/boot/dts/Makefile              |   2 +
>  .../boot/dts/loongson-2k0500-ref.dts          |  88 ++++++
>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 254 ++++++++++++++++++
>  3 files changed, 344 insertions(+)
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi
> 
> diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
> index 1e24cdb5180a..aa0b21d73d4e 100644
> --- a/arch/loongarch/boot/dts/Makefile
> +++ b/arch/loongarch/boot/dts/Makefile
> @@ -1,3 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  
> +dtb-$(CONFIG_MACH_LOONGSON64)	= loongson-2k0500-ref.dtb
> +
>  obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
> diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> new file mode 100644
> index 000000000000..5014cc2b367a
> --- /dev/null
> +++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> @@ -0,0 +1,88 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Loongson Technology Corporation Limited
> + */
> +
> +/dts-v1/;
> +
> +#include "loongson-2k0500.dtsi"
> +
> +/ {
> +	compatible = "loongson,ls2k0500-ref", "loongson,ls2k0500";
> +	model = "Loongson-2K0500 Reference Board";
> +
> +	aliases {
> +		ethernet0 = &gmac0;
> +		ethernet1 = &gmac1;
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory@200000 {
> +		device_type = "memory";
> +		reg = <0x0 0x200000 0x0 0xee00000>, /* 238 MB at 2 MB */
> +		      <0x0 0x90000000 0x0 0x60000000>;
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
> +};
> +
> +&gmac0 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii";
> +	bus_id = <0x0>;
> +};
> +
> +&gmac1 {
> +	status = "okay";
> +
> +	phy-mode = "rgmii";
> +	bus_id = <0x1>;
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	eeprom@57{
> +		compatible = "atmel,24c16";
> +		reg = <0x57>;
> +		pagesize = <16>;
> +	};
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&sata {
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&rtc0 {
> +	status = "okay";
> +};
> diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> new file mode 100644
> index 000000000000..b45d1c217a6c
> --- /dev/null
> +++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> @@ -0,0 +1,254 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 Loongson Technology Corporation Limited
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
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
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "loongson,la264";
> +			device_type = "cpu";
> +			reg = <0x0>;
> +			clocks = <&cpu_clk>;
> +		};
> +	};
> +
> +	cpu_clk: cpu-clk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <500000000>;
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
> +			 <0x0 0x2000000  0x0 0x2000000  0x0 0x2000000>,
> +			 <0x0 0x20000000 0x0 0x20000000 0x0 0x10000000>,
> +			 <0x0 0x40000000 0x0 0x40000000 0x0 0x40000000>,
> +			 <0xfe 0x0 0xfe 0x0 0x0 0x40000000>;

ranges should be after compatible, just like reg is.

Anyway, that's a nit, so:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

