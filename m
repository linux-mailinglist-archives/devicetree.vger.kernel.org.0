Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E535A4E7C93
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231638AbiCYTvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 15:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231627AbiCYTvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 15:51:23 -0400
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8718840FE86
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:35:12 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id 12so9224747oix.12
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0KizzHaq+oAKaUJXHQGWCQ50WrY84Xflk5J01rdbMdA=;
        b=z8RsdTWGv1xHh+NpQn2hc/inP/0p3ZvZWFppqGnFWVdvXlPOuqSCTKY1h065H+Co+R
         t6Ebg3luVFtwKOzM9fspxFOBXXv74JpbC/i5eZdKWgQ1UsvhP4MjRXrGS5ZSgpEWQLmL
         8EX0k74Lpy/J4zir+5K3r7whaAGThDDgguWZb/Iubqf76aMKaavXg+CPmzc8Kcea/l66
         n+UOKFY9ye11pjPsVrZV4gtxZrJvx1ys25QRwzGf8TGuq8ulqZknWw5+Fl1LMiRgt6sv
         yYQFRR4W7YMFiwm+uV8qToUtlI2hMho9UGjPpqo7/ritPAHQAtw8CxprYiyR+Y0OEjJs
         wSqA==
X-Gm-Message-State: AOAM532l4bkInkmHdk6LhfEjtL4Jd9IjpTXNqOzV7Zgses+49jMgaM40
        EnWL6YD62zKEQDUdRH03otsuR0jIlw==
X-Google-Smtp-Source: ABdhPJzuIILXNVaL330ZHvu/WCeg+TPhFZ3PoqK/qAQg4Ru2tMVqWvPBkrK7TeegbWQUmxaPh3tNWA==
X-Received: by 2002:a05:6870:5686:b0:dd:c3eb:e98d with SMTP id p6-20020a056870568600b000ddc3ebe98dmr5419639oao.0.1648230364560;
        Fri, 25 Mar 2022 10:46:04 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r6-20020a0568301ac600b005cdbc6e62a9sm1365584otc.39.2022.03.25.10.46.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Mar 2022 10:46:03 -0700 (PDT)
Received: (nullmailer pid 128112 invoked by uid 1000);
        Fri, 25 Mar 2022 17:46:02 -0000
Date:   Fri, 25 Mar 2022 12:46:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: arm: add corstone1000 device tree
Message-ID: <Yj3/2rL3iigj/pCQ@robh.at.kernel.org>
References: <20220325133655.4177977-1-rui.silva@linaro.org>
 <20220325133655.4177977-3-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220325133655.4177977-3-rui.silva@linaro.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 25, 2022 at 01:36:55PM +0000, Rui Miguel Silva wrote:
> Corstone1000 is a platform from arm, which includes pre
> verified Corstone SSE710 sub-system that combines Cortex-A and
> Cortex-M processors [0].
> 
> These device trees contains the necessary bits to support the
> Corstone 1000 FVP (Fixed Virtual Platform) [1] and the
> FPGA MPS3 board Cortex-A35 implementation at Cortex-A35 host
> side of this platform. [2]
> 
> 0: https://documentation-service.arm.com/static/619e02b1f45f0b1fbf3a8f16
> 1: https://developer.arm.com/tools-and-software/open-source-software/arm-platforms-software/arm-ecosystem-fvps
> 2: https://documentation-service.arm.com/static/61f3f4d7fa8173727a1b71bf
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  arch/arm64/boot/dts/arm/Makefile              |   1 +
>  arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  31 ++++
>  arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  38 +++++
>  arch/arm64/boot/dts/arm/corstone1000.dtsi     | 151 ++++++++++++++++++
>  4 files changed, 221 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

Please run 'make dtbs_check' on these and fix any errors.


> diff --git a/arch/arm64/boot/dts/arm/Makefile b/arch/arm64/boot/dts/arm/Makefile
> index 4382b73baef5..d908e96d7ddc 100644
> --- a/arch/arm64/boot/dts/arm/Makefile
> +++ b/arch/arm64/boot/dts/arm/Makefile
> @@ -6,3 +6,4 @@ dtb-$(CONFIG_ARCH_VEXPRESS) += juno.dtb juno-r1.dtb juno-r2.dtb juno-scmi.dtb ju
>  dtb-$(CONFIG_ARCH_VEXPRESS) += rtsm_ve-aemv8a.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += vexpress-v2f-1xv7-ca53x2.dtb
>  dtb-$(CONFIG_ARCH_VEXPRESS) += fvp-base-revc.dtb
> +dtb-$(CONFIG_ARCH_VEXPRESS) += corstone1000-fvp.dtb corstone1000-mps3.dtb
> diff --git a/arch/arm64/boot/dts/arm/corstone1000-fvp.dts b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
> new file mode 100644
> index 000000000000..8f6ce94b4d5a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone1000-fvp.dts
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: BSD-3-Clause

While nothing is shared, the existing Arm, Ltd dts files here are GPL2 
only or GPL/BSD. The preference for dts files is dual GPL2 and BSD/MIT

> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited. All rights reserved.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "corstone1000.dtsi"
> +
> +/ {
> +	model = "ARM Corstone1000 FVP (Fixed Virtual Platform)";
> +	compatible = "arm,corstone1000-fvp";
> +
> +	ethernet: eth@4010000 {
> +		compatible = "smsc,lan91c111";
> +		reg = <0x40100000 0x10000>;
> +		phy-mode = "mii";
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_SPI 116 (GIC_CPU_MASK_SIMPLE(4) |
> +			      IRQ_TYPE_LEVEL_HIGH)>;
> +		reg-io-width = <2>;
> +		smsc,irq-push-pull;
> +	};
> +
> +};
> +
> +&refclk {
> +	clock-frequency = <50000000>;
> +};
> diff --git a/arch/arm64/boot/dts/arm/corstone1000-mps3.dts b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
> new file mode 100644
> index 000000000000..922253f0af07
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone1000-mps3.dts
> @@ -0,0 +1,38 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited. All rights reserved.
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "corstone1000.dtsi"
> +
> +/ {
> +	model = "ARM Corstone1000 FPGA MPS3 board";
> +	compatible = "arm,corstone1000-mps3";
> +
> +	ethernet: eth@4010000 {
> +		compatible = "smsc,lan9220", "smsc,lan9115";
> +		reg = <0x40100000 0x10000>;
> +		phy-mode = "mii";
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
> +		reg-io-width = <2>;
> +		smsc,irq-push-pull;
> +	};
> +
> +	usb: usb@40200000 {
> +		compatible = "nxp,usb-isp1763";
> +		reg = <0x40200000 0x100000>;
> +		interrupts-parent = <&gic>;
> +		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +		bus-width = <16>;
> +		dr_mode = "host";
> +	};
> +};
> +
> +&refclk {
> +	clock-frequency = <50000000>;
> +};
> diff --git a/arch/arm64/boot/dts/arm/corstone1000.dtsi b/arch/arm64/boot/dts/arm/corstone1000.dtsi
> new file mode 100644
> index 000000000000..eb423af84e9f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/arm/corstone1000.dtsi
> @@ -0,0 +1,151 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2022, Arm Limited. All rights reserved.
> + * Copyright (c) 2022, Linaro Limited. All rights reserved.
> + *
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	chosen {
> +		stdout-path = "/uart@1a510000:115200n8";
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,armv8";

This compatible is only valid for models. The FPGA should have something 
else.

> +			reg = <0>;
> +			next-level-cache = <&L2_0>;
> +		};
> +	};
> +
> +	memory@88200000 {
> +		device_type = "memory";
> +		reg = <0x88200000 0x77e00000>;
> +	};
> +
> +	gic: interrupt-controller@1c000000 {
> +		compatible = "arm,gic-400";
> +		#interrupt-cells = <3>;
> +		#address-cells = <0>;
> +		interrupt-controller;
> +		reg =	<0x1c010000 0x1000>,
> +			<0x1c02f000 0x2000>,
> +			<0x1c04f000 0x1000>,
> +			<0x1c06f000 0x2000>;
> +		interrupts = <1 9 0xf08>;
> +	};
> +
> +	L2_0: l2-cache0 {
> +		compatible = "cache";
> +	};
> +
> +	refclk100mhz: refclk100mhz {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +		clock-output-names = "apb_pclk";
> +	};
> +
> +	smbclk: refclk24mhzx2 {
> +		/* Reference 24MHz clock x 2 */
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <48000000>;
> +		clock-output-names = "smclk";
> +	};
> +
> +	uartclk: uartclk {
> +		/* UART clock - 50MHz */
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <50000000>;
> +		clock-output-names = "uartclk";
> +	};
> +
> +	serial0: uart@1a510000 {

Place nodes with an MMIO address under one (or more) simple-bus nodes. 

You might want that to align with what's in the the SSE710 subsystem and 
not in it.

> +		compatible = "arm,pl011", "arm,primecell";
> +		reg = <0x1a510000 0x1000>;
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&uartclk>, <&refclk100mhz>;
> +		clock-names = "uartclk", "apb_pclk";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts =	<GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
> +				 IRQ_TYPE_LEVEL_LOW)>,
> +				<GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
> +				 IRQ_TYPE_LEVEL_LOW)>,
> +				<GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
> +				 IRQ_TYPE_LEVEL_LOW)>,
> +				<GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
> +				 IRQ_TYPE_LEVEL_LOW)>;
> +	};
> +
> +	refclk: refclk@1a220000 {

refclk?

> +		compatible = "arm,armv7-timer-mem";
> +		reg = <0x1a220000  0x1000>;

1 space                          ^^

> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		frame@1a230000 {
> +			frame-number = <0>;
> +			interrupts = <GIC_SPI 2 (GIC_CPU_MASK_SIMPLE(4) |
> +				      IRQ_TYPE_LEVEL_HIGH)>;
> +			reg = <0x1a230000 0x1000>;
> +		};
> +	};
> +
> +	mbox_es0mhu0: mhu@1b000000 {

mailbox@...

> +		compatible = "arm,mhuv2","arm,primecell";

space                                    ^

> +		reg = <0x1b000000 0x1000>,
> +		      <0x1b010000 0x1000>;
> +		clocks = <&refclk100mhz>;
> +		clock-names = "apb_pclk";
> +		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "mhu_rx";
> +		#mbox-cells = <1>;
> +		mbox-name = "arm-es0-mhu0";

It's 'mbox-names', but that's a consumer, not provider property. You 
should see a warning for this.

> +	};
> +
> +	mbox_es0mhu1: mhu@1b020000 {
> +		compatible = "arm,mhuv2","arm,primecell";
> +		reg = <0x1b020000 0x1000>,
> +		      <0x1b030000 0x1000>;
> +		clocks = <&refclk100mhz>;
> +		clock-names = "apb_pclk";
> +		interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "mhu_rx";
> +		#mbox-cells = <1>;
> +		mbox-name = "arm-es0-mhu1";
> +	};
> +
> +	mbox_semhu1: mhu@1b820000 {
> +		compatible = "arm,mhuv2","arm,primecell";
> +		reg = <0x1b820000 0x1000>,
> +		      <0x1b830000 0x1000>;
> +		clocks = <&refclk100mhz>;
> +		clock-names = "apb_pclk";
> +		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "mhu_rx";
> +		#mbox-cells = <1>;
> +		mbox-name = "arm-se-mhu1";
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0", "arm,psci-0.2";
> +		method = "smc";
> +	};
> +};
> -- 
> 2.35.1
> 
> 
