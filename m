Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A1F16E7449
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 09:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231591AbjDSHsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 03:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231362AbjDSHsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 03:48:39 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 502A0DE
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 00:48:37 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id u3so27333130ejj.12
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 00:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681890515; x=1684482515;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=agSZbKqp8B+BLFTMYJTpSAUFC27L20Z+bg36x+eCgwQ=;
        b=G+EZMie2NNYAU/ddcmxIwr8z1uFQzA3jx34H/gQIR4jO7rIgvTZi/vMd7RkwCTtRBw
         eMggNJlkhwDQiCl+e95aCGkz3rjxIM5YBMRL0PMi0nsb00RT3SPOm1s7EqdQddEsGxpF
         H9V/kuPDXjyC398XCBOrt95Tmi/X+6Xow3o7UFwXCjkS4erxa9uqFsCFvQ77xxHBCCbj
         DHRByiGyo9ZtHft2Z48OK4YbRnQvfr+D0NuOHmLIzv1rh4ERu1tISpceOErdRzBGoRMF
         o6GZ4hPhSnmOOOPrVOvPlH5HF2RL8ZfQ1Z8NOrs38YDwepbOaBtDtKItLF1eyP9/go0d
         F8uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681890515; x=1684482515;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=agSZbKqp8B+BLFTMYJTpSAUFC27L20Z+bg36x+eCgwQ=;
        b=GEyPKOAjsFF/crjj47ib2T8t2MFxHJrBhzvAGz7BGD5I9OfO597db5CpL5/WniuBR6
         yhKctmWyySrcpL+6eZ6Dsf0oMtHRfyj9xgNobmQrL4z4PR8qUTOLST78sZkhTQ+00yaK
         bBGRg2OD08AWOH45xj6ySe8addvH5Ca5meHDKdQmQ2ctSfasOViXwfNRw48F7DOD3DQm
         hBi+he4kmsIzCBaLK5p3rqVYlDi+9ZDQ46LiFQCBFkEC3w5IZTmrRee37yOt0oQaMd/L
         hPfLcHdYc1L+k/Wj8vZWyt0Kl9QECvxm/ovBr+d2z7KTyA2aTxDetP8RVESRUaBfXx0n
         syog==
X-Gm-Message-State: AAQBX9dtHqvbs0xuWvxCVZhx9hPTfi0lKmBc2lYFPWgEbqvIHQF0R25c
        RYmx1Y3fYxiSCVxuRqcbkwomlw==
X-Google-Smtp-Source: AKy350ZXpeN4XhVY2vpzb2GTlhGSPH9uDAoRBoJib+e+SROd6TY8qrjX4AFHaCSKMNi/VyrTJZS9KA==
X-Received: by 2002:a17:906:2c14:b0:91f:b13f:a028 with SMTP id e20-20020a1709062c1400b0091fb13fa028mr13114900ejh.34.1681890515615;
        Wed, 19 Apr 2023 00:48:35 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:62f5:eb43:f726:5fee? ([2a02:810d:15c0:828:62f5:eb43:f726:5fee])
        by smtp.gmail.com with ESMTPSA id q17-20020a1709066ad100b0094f6f45b2c1sm4240673ejs.156.2023.04.19.00.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 00:48:35 -0700 (PDT)
Message-ID: <4e6469e5-0f6c-4150-4709-7459597f06cc@linaro.org>
Date:   Wed, 19 Apr 2023 09:48:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [RFC PATCH 2/2] arm64: dts: add support for C3 based Amlogic
 AW409
Content-Language: en-US
To:     =Xianwei Zhao <xianwei.zhao@amlogic.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230419073834.972273-1-xianwei.zhao@amlogic.com>
 <20230419073834.972273-3-xianwei.zhao@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230419073834.972273-3-xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 09:38, =Xianwei Zhao wrote:
> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
> 
> Amlogic C3 is an advanced edge AI processor designed for smart IP camera
> applications.
> 
> Add basic support for the C3 based Amlogic AW409 board, which describes
> the following components: CPU, GIC, IRQ, Timer, UART. It's capable of
> booting up into the serial console.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile          |  1 +
>  .../amlogic/amlogic-c3-c302x-aw409-256m.dts   | 30 +++++++
>  arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi   | 87 +++++++++++++++++++
>  3 files changed, 118 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/amlogic-c3-c302x-aw409-256m.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index cd1c5b04890a..d2b5d0d750bc 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -74,3 +74,4 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
> +dtb-$(CONFIG_ARCH_AMLIPC) += amlogic-c3-c302x-aw409-256m.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3-c302x-aw409-256m.dts b/arch/arm64/boot/dts/amlogic/amlogic-c3-c302x-aw409-256m.dts
> new file mode 100644
> index 000000000000..38ca98a32181
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-c3-c302x-aw409-256m.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Amlogic, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "amlogic-c3.dtsi"
> +
> +/ {
> +	model = "Amlogic C302 aw409 Development Board";
> +	compatible = "amlogic,aw409", "amlogic,c3";

Undocumented compatibles. Run checkpatch and fix all warnings. Anyway, I
am not sure this warrants separate architecture. Isn't C3 standard Meson
SoC?

> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &uart_B;
> +	};
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x0 0x0 0x10000000>;
> +	};
> +

Drop stray blank lines.

> +};
> +
> +&uart_B {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
> new file mode 100644
> index 000000000000..c69072ac57f5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Amlogic, Inc. All rights reserved.
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x1>;
> +			enable-method = "psci";
> +		};
> +

Everywhere...

> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	xtal: xtal-clk {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "xtal";
> +		#clock-cells = <0>;
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		gic: interrupt-controller@fff01000 {
> +			compatible = "arm,gic-400";
> +			#interrupt-cells = <3>;
> +			#address-cells = <0>;
> +			interrupt-controller;
> +			reg = <0x0 0xfff01000 0 0x1000>,
> +			      <0x0 0xfff02000 0 0x2000>,
> +			      <0x0 0xfff04000 0 0x2000>,
> +			      <0x0 0xfff06000 0 0x2000>;
> +			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> +		};
> +
> +		apb4: apb4@fe000000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +			compatible = "simple-bus";
> +			reg = <0x0 0xfe000000 0x0 0x480000>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
> +
> +			uart_B: serial@7a000 {

lowercase for labels

> +				compatible = "amlogic,meson-g12a-uart";

So this is just meson? Drop new ARCH, no need for it. Anyway, you need
SoC specific compatible.

Best regards,
Krzysztof

