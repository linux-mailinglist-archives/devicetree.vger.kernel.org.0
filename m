Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF6E64CB75
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:41:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238029AbiLNNlQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:41:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbiLNNlO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:41:14 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA6C726AB2
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:41:12 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id p8so10452793lfu.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R9OJIlMABbZGSmesEgq9RCQulbBgbGgl8J80IYWeUAU=;
        b=uGKkFAg3E/XcNGUupSvO9z/hMfMFE+ob2lWF96ZDiOkDSiMOeloxIlI8fPVu5khTcA
         1H/V4XPy3jZUyON7q428ttBz+sEYY2bN1O86duRxU3Y/VJ+ywBsijeMU+6BkR6v9bPz+
         H9yAjrFm3wWTApf/sVDpSkBboYPDHO38iabWgG7tWRDisJhbEKJZCEZSssfpuCnVZmrq
         zZjPjgMCFwbRN7Q4HaTRtTxsveis+MHQUxk29RSXrboCMI1leQqtftcGcGrI2qnD+44A
         VY2DrWWQXrrvpjPsHxhLB1k86sjmDqlH+ZCRFuYwqJqSHsBk6HJlNJq7Hg4l14EkS4lW
         dMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R9OJIlMABbZGSmesEgq9RCQulbBgbGgl8J80IYWeUAU=;
        b=mzgcAiaPYKkHf0oKVUXFwsaR8f07ZFfHLer3Vcfzh5iX0fPQ1M6Oc4N2xsCgGwomRA
         7MSrkhwuM4ZnviZ9bbCYqx6x+UYvNeQ3EKYsq2Z3n4E7qiEOeb4o5LB29xzbicgsbTZE
         LoxbTZcufU5e/oSZTxcRnUX4kso4e9SbrIWZOXW21vsFgQ1a/OOR3uT+eLlJ8vPOJ4Y4
         S0uP7yY0dLTa2OYFhHLkG2okVkpmGN4kaiXTei8OyMyh9DMGLNVhdRNUrXvqgUnRsW3r
         +uiYXEYLtgaSmBZC5BrtfGiPTMVGd+i6/PCr7REVYPOmlgPaaYGD7aFzrSP0o81z+tdp
         SihQ==
X-Gm-Message-State: ANoB5pnbxmJPEaATJHFH1kx6p3PZ+jNh+8O0nVw+UCS8yApTmu/hE+3Z
        8D55YvbyI0yw7XjFT6lcmC2TVg==
X-Google-Smtp-Source: AA0mqf40hzU+9GKjBy3u64ZbkEvUC5GX6v2Zfr0Tsu84ewfmAFOmm5WxlShoEhp0kWfeorr2Qz8AIQ==
X-Received: by 2002:ac2:4d8f:0:b0:4b5:32e6:12e with SMTP id g15-20020ac24d8f000000b004b532e6012emr6775608lfe.65.1671025271023;
        Wed, 14 Dec 2022 05:41:11 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f12-20020a19dc4c000000b004b4e6dab30esm813283lfj.222.2022.12.14.05.41.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 05:41:10 -0800 (PST)
Message-ID: <20336c6d-6ad5-02d2-91e2-f362507040b1@linaro.org>
Date:   Wed, 14 Dec 2022 14:41:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/2] arm64: dts: Add Arm corstone500 platform support
Content-Language: en-US
To:     Emekcan Aras <emekcan.aras@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221214132404.439882-1-emekcan.aras@arm.com>
 <20221214132404.439882-2-emekcan.aras@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221214132404.439882-2-emekcan.aras@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 14:24, Emekcan Aras wrote:
> From: Emekcan Aras <Emekcan.Aras@arm.com>
> 

Use subject prefixes matching the subsystem (git log --oneline -- ...).
You already got such comment for v1... so do not ignore it but implement
instead.

> Corstone500[0] is a platform from arm, which includes Cortex-A cores and
> ideal starting point for feature rich System on Chip (SoC) designs
> based on the Cortex-A5 core.
> 
> These device trees contains the necessary bits to support the
> Corstone 500 FVP (Fixed Virtual Platform) and the
> FPGA MPS3 board.
> 
> 0: https://developer.arm.com/documentation/102262/0000
> 
> Signed-off-by: Emekcan Aras <emekcan.aras@arm.com>
> ---
>  arch/arm/boot/dts/corstone500.dts | 181 ++++++++++++++++++++++++++++++
>  1 file changed, 181 insertions(+)
>  create mode 100644 arch/arm/boot/dts/corstone500.dts

How do you test it? I do not see a way to compile it...

You need to include it in maintainers entry and CC relevant maintainers.

> 
> diff --git a/arch/arm/boot/dts/corstone500.dts b/arch/arm/boot/dts/corstone500.dts
> new file mode 100644
> index 000000000000..976aa333ffbc
> --- /dev/null
> +++ b/arch/arm/boot/dts/corstone500.dts
> @@ -0,0 +1,181 @@
> +// SPDX-License-Identifier: GPL-2.0 or MIT
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + *
> + */
> +
> +

Just one blank line

> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	model = "ARM Corstone500";
> +	compatible = "arm,corstone500";

No DTSI? No board or platform compatible? How is it going to be used by
anyone else?

> +	interrupt-parent = <&gic>;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2", "arm,psci";
> +		method = "smc";
> +		cpu_on = <0x84000003>;
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		enable-method = "psci";
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <0>;
> +			next-level-cache = <&L2>;
> +		};
> +
> +		cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <1>;
> +			next-level-cache = <&L2>;
> +		};
> +
> +		cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <2>;
> +			next-level-cache = <&L2>;
> +		};
> +
> +		cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a5";
> +			reg = <3>;
> +			next-level-cache = <&L2>;
> +		};
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x7f000000>;
> +	};
> +
> +	L2: cache-controller@1c010000 {
> +		compatible = "arm,pl310-cache";
> +		reg = <0x1c010000 0x1000>;
> +		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
> +		cache-level = <2>;
> +		cache-unified;
> +		arm,data-latency = <1 1 1>;
> +		arm,tag-latency = <1 1 1>;
> +	};
> +
> +	refclk7500khz: refclk7500khz {

Node names should be generic, so at least generic prefix or suffix
(clock-, -clock).
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <7500000>;
> +		clock-output-names = "apb_pclk";
> +	};
> +
> +	refclk24mhz: refclk24mhz {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		clock-output-names = "apb_pclk";
> +	};
> +
> +	smbclk: refclk24mhzx2 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <48000000>;
> +		clock-output-names = "smclk";
> +	};
> +
> +	rtc@1a220000 {
> +		compatible = "arm,pl031", "arm,primecell";
> +		reg = <0x1a220000 0x1000>;
> +		clocks = <&refclk24mhz>;
> +		interrupts = <GIC_SPI 6 (GIC_CPU_MASK_SIMPLE(4) |
> +			IRQ_TYPE_LEVEL_HIGH)>;
> +		clock-names = "apb_pclk";
> +	};
> +
> +	gic: interrupt-controller@1c001000 {
> +		compatible = "arm,cortex-a5-gic";
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupt-controller;
> +		reg =	<0x1c001000 0x1000>,
> +			<0x1c000100 0x100>;
> +		interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) |
> +			IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
> +	soc{
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		clock_frequency = <50000000>;
> +		interrupt-parent = <&gic>;
> +		ranges;
> +
> +		uart0: serial@1a200000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x1a200000 0x1000>;
> +			interrupts = <GIC_SPI 8 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +			clocks = <&refclk7500khz>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		uart1: serial@1a210000 {
> +			compatible = "arm,pl011", "arm,primecell";
> +			reg = <0x1a210000 0x1000>;
> +			interrupts = <GIC_SPI 9 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +			clocks = <&refclk7500khz>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		timer0: timer@1a040000 {
> +			compatible = "arm,armv7-timer-mem";
> +			reg = <0x1a040000 0x1000>;
> +			clock-frequency = <7500000>;
> +
> +			frame@1a050000 {
> +				frame-number = <0>;
> +				interrupts = <GIC_SPI 2 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +				reg = <0x1a050000 0x1000>;
> +			};
> +		};
> +
> +		smsc: ethernet@4020000 {
> +			compatible = "smsc,lan9220", "smsc,lan9115";
> +			reg = <0x40200000 0x10000>;
> +			interrupts = <GIC_SPI 43 (GIC_CPU_MASK_SIMPLE(4) |
> +				IRQ_TYPE_LEVEL_HIGH)>;
> +			reg-io-width = <4>;
> +			phy-mode = "mii";
> +			smsc,irq-active-high;
> +			vdd33a-supply = <&v2m_fixed_3v3>;
> +			vddvario-supply = <&v2m_fixed_3v3>;
> +		};
> +	};
> +
> +	v2m_fixed_3v3: fixed-regulator-0 {

You have weird ordering of nodes. If it is by name, then this should be
regulator-0. Anyway drop "fixed" prefix as it is not relevant.


Best regards,
Krzysztof

