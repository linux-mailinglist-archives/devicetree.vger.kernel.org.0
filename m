Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3748E64CE2C
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 17:37:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238982AbiLNQhf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 11:37:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230206AbiLNQhd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 11:37:33 -0500
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 722CFB68
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 08:37:32 -0800 (PST)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-144bd860fdbso17353679fac.0
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 08:37:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mX4cE3qhh3kTKeX4sLL8Id44ukdMZ3awZY70XaXwpFs=;
        b=5Il9GvT/48Rr2M1e+BWsVwmSFFdX/OU5KsyzaU93Jf1kxGMwd9XkZgmOfdvWf4quCo
         6jMzlp/NImD2V+j0TQ68wMBTyQ1U8fvwRLHyXZ7aX+YmPi1FJs4ELm+gW9yt5BbKTAcP
         ue2jSISKb5EgvhHZV8AWBrkrGXQ4486Rs2UCd3ehjoaHrshrzbvGR7p2YTUMyGnYlkgT
         iraIs5K1sWNscy1em0uSc8Yi9zO5V6vgE1CDKXWT14RFn2K8OmzA64Yb/yAYTcCDpWOl
         8dB/fiHbpmEp9f5R5dqWba9D0aH2Nkt2seDZkvgJyrEWcDlurcpArn8b2+VKaDFjkyBY
         6qGg==
X-Gm-Message-State: ANoB5pkyJT/ic2KxhUcVIMzM93S8YuhP0IMcfFqSegYr/+Vb8QIBChkY
        gd4bvoyNqKxrFNk1FcEF9w==
X-Google-Smtp-Source: AA0mqf6fUFfNhCc+kvfrGEZbQZ56+/Ui/2BYPoGSMhlbExUzQBb+Es1PIUiVv/s2+9tegxOLP2mY3w==
X-Received: by 2002:a05:6870:6982:b0:143:89ce:80ee with SMTP id my2-20020a056870698200b0014389ce80eemr11679785oab.20.1671035851663;
        Wed, 14 Dec 2022 08:37:31 -0800 (PST)
Received: from robh_at_kernel.org (rrcs-98-6-157-194.sw.biz.rr.com. [98.6.157.194])
        by smtp.gmail.com with ESMTPSA id o193-20020a4a2cca000000b0049ef7f3b2c8sm2389826ooo.48.2022.12.14.08.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 08:37:31 -0800 (PST)
Received: (nullmailer pid 1192000 invoked by uid 1000);
        Wed, 14 Dec 2022 16:37:29 -0000
Date:   Wed, 14 Dec 2022 10:37:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Emekcan Aras <emekcan.aras@arm.com>
Cc:     Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: Add Arm corstone500 platform support
Message-ID: <20221214163729.GA1181413-robh@kernel.org>
References: <20221214132404.439882-1-emekcan.aras@arm.com>
 <20221214132404.439882-2-emekcan.aras@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221214132404.439882-2-emekcan.aras@arm.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 01:24:03PM +0000, Emekcan Aras wrote:
> From: Emekcan Aras <Emekcan.Aras@arm.com>
> 
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
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	model = "ARM Corstone500";
> +	compatible = "arm,corstone500";
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

You really need to be compatible with all these PSCI versions? 
'arm,psci' means you have the function IDs in DT before they were 
standardized (in 2013 IIRC). You need to support OS's from that time?

> +		method = "smc";
> +		cpu_on = <0x84000003>;

And here is one, but the rest? Really, it should be dropped along with 
'arm,psci'.

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

Why is this one not under 'soc'. Really, all MMIO nodes should be.


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
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +};
> -- 
> 2.25.1
> 
> 
