Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 659213C8F26
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 21:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240880AbhGNTv4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 15:51:56 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:41849 "EHLO
        mail-io1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239787AbhGNTtZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 15:49:25 -0400
Received: by mail-io1-f49.google.com with SMTP id z9so3536180iob.8
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 12:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=HZvxkroS3RD85Rm7dmGvrp0ttrucnhW0pYjG3pja4O0=;
        b=JfpwhrFSqFlliPJPFOVNWz6novophwPgPMUUpXCeIMEc1fPP83h/s3ZTE8Q0lN4t/p
         VDdm8LfonqZaVamwMhlonseNKwC9PoNFwkVWlgrRXrfTklmjiqBeEfHlkox/7Q6Z1ZHt
         5hG5x6fNOHQU1Pih8KmauBCNIvOXxEw0pVRlmg5IvYLcHFFWEdwvaC0q+Kr5duFbQhv+
         cECFeZT6HsWPTDfWu9ipcuWAXBLqeq400Re614CPvAudjhqjmzxhCIk75QVw6+cSvrxP
         Q8a5kQhFXkbFHVP/9U1wldNd6CgymUTKZc3OVxbRVX3stR6Ua4hpRW8eNECExsYscENO
         d85w==
X-Gm-Message-State: AOAM531uwa1IpBZLYYfWekynsqV3p2d4w1aud0e2ok+x+vl1qyfYlcIC
        gEj/CRT/vFDZzKofizT9Yw==
X-Google-Smtp-Source: ABdhPJxqTHigAoKP6LHCyS8TadYw93iVwb3rEbLQNIfRKUR5LAyI4fiFO6GwHQvS4jwzmlWEuZCNAg==
X-Received: by 2002:a6b:7b44:: with SMTP id m4mr5343923iop.72.1626291993649;
        Wed, 14 Jul 2021 12:46:33 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h11sm1849645ilc.1.2021.07.14.12.46.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 12:46:31 -0700 (PDT)
Received: (nullmailer pid 3232727 invoked by uid 1000);
        Wed, 14 Jul 2021 19:46:29 -0000
Date:   Wed, 14 Jul 2021 13:46:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, sboyd@kernel.org, s.hauer@pengutronix.de,
        linus.walleij@linaro.org, aisheng.dong@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 10/11] arm64: dts: imx8ulp: Add the basic dtsi file
 for imx8ulp
Message-ID: <20210714194629.GA3209928@robh.at.kernel.org>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
 <20210625011355.3468586-11-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210625011355.3468586-11-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 09:13:54AM +0800, Jacky Bai wrote:
> Add the basic dtsi support for i.MX8ULP.
> 
> i.MX 8ULP is part of the ULP family with emphasis on extreme
> low-power techniques using the 28 nm fully depleted silicon on
> insulator process. Like i.MX 7ULP, i.MX 8ULP continues to be
> based on asymmetric architecture, however will add a third DSP
> domain for advanced voice/audio capability and a Graphics domain
> where it is possible to access graphics resources from the
> application side or the realtime side.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  - v3 changes:
>    no
> 
>  - v2 changes:
>    update the license
>    update the compatible property for usb related node
> ---
>  .../boot/dts/freescale/imx8ulp-pinfunc.h      | 978 ++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi    | 474 +++++++++
>  2 files changed, 1452 insertions(+)
>  create mode 100755 arch/arm64/boot/dts/freescale/imx8ulp-pinfunc.h
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> 

> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> new file mode 100644
> index 000000000000..face5a272e4f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> @@ -0,0 +1,474 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2021 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8ulp-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +#include "imx8ulp-pinfunc.h"
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		ethernet0 = &fec;
> +		gpio0 = &gpiod;
> +		gpio1 = &gpioe;
> +		gpio2 = &gpiof;
> +		mmc0 = &usdhc0;
> +		mmc1 = &usdhc1;
> +		mmc2 = &usdhc2;
> +		serial0 = &lpuart4;
> +		serial1 = &lpuart5;
> +		serial2 = &lpuart6;
> +		serial3 = &lpuart7;
> +		usbphy0 = &usbphy1;
> +		usbphy1 = &usbphy2;

Why do you need aliases for usbphy? Drop.

> +	};
> +
> +	cpus {
> +		#address-cells = <2>;
> +		#size-cells = <0>;
> +
> +		A35_0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&A35_L2>;
> +		};
> +
> +		A35_1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a35";
> +			reg = <0x0 0x1>;
> +			enable-method = "psci";
> +			next-level-cache = <&A35_L2>;
> +		};
> +
> +		A35_L2: l2-cache0 {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	gic: interrupt-controller@2d400000 {
> +		compatible = "arm,gic-v3";
> +		reg = <0x0 0x2d400000 0 0x10000>, /* GIC Dist */
> +		      <0x0 0x2d440000 0 0xc0000>; /* GICR (RD_base + SGI_base) */
> +		#interrupt-cells = <3>;
> +		interrupt-controller;
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-1.0";
> +		method = "smc";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure */
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* Physical Non-Secure */
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* Virtual */
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
> +	};
> +
> +	frosc: clock-frosc {
> +		compatible = "fixed-clock";
> +		clock-frequency = <192000000>;
> +		clock-output-names = "frosc";
> +		#clock-cells = <0>;
> +	};
> +
> +	lposc: clock-lposc {
> +		compatible = "fixed-clock";
> +		clock-frequency = <1000000>;
> +		clock-output-names = "lposc";
> +		#clock-cells = <0>;
> +	};
> +
> +	rosc: clock-rosc {
> +		compatible = "fixed-clock";
> +		clock-frequency = <32768>;
> +		clock-output-names = "rosc";
> +		#clock-cells = <0>;
> +	};
> +
> +	sosc: clock-sosc {
> +		compatible = "fixed-clock";
> +		clock-frequency = <24000000>;
> +		clock-output-names = "sosc";
> +		#clock-cells = <0>;
> +	};
> +
> +	soc@0 {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x0 0x40000000>;
> +
> +		per_bridge3: bus@29000000 {
> +			compatible = "simple-bus";
> +			reg = <0x29000000 0x800000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			wdog3: watchdog@292a0000 {
> +				compatible = "fsl,imx8ulp-wdt", "fsl,imx7ulp-wdt";
> +				reg = <0x292a0000 0x10000>;
> +				interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_WDOG3>;
> +				assigned-clocks = <&pcc3 IMX8ULP_CLK_WDOG3>;
> +				assigned-clocks-parents = <&cgc1 IMX8ULP_CLK_SOSC_DIV2>;
> +				timeout-sec = <40>;
> +			};
> +
> +			cgc1: clock-controller@292c0000 {
> +				compatible = "fsl,imx8ulp-cgc1";
> +				reg = <0x292c0000 0x10000>;
> +				clocks = <&rosc>, <&sosc>, <&frosc>, <&lposc>;
> +				clock-names = "rosc", "sosc", "frosc", "lposc";
> +				#clock-cells = <1>;
> +			};
> +
> +			pcc3: clock-controller@292d0000 {
> +				compatible = "fsl,imx8ulp-pcc3";
> +				reg = <0x292d0000 0x10000>;
> +				#clock-cells = <1>;
> +			};
> +
> +			tpm5: tpm@29340000 {
> +				compatible = "fsl,imx8ulp-tpm", "fsl,imx7ulp-tpm";
> +				reg = <0x29340000 0x1000>;
> +				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_TPM5>,
> +					 <&pcc3 IMX8ULP_CLK_TPM5>;
> +				clock-names = "ipg", "per";
> +				status = "disabled";
> +			};
> +
> +			lpi2c4: i2c@29370000 {
> +				compatible = "fsl,imx8ulp-lpi2c", "fsl,imx7ulp-lpi2c";
> +				reg = <0x29370000 0x10000>;
> +				interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_LPI2C4>,
> +					 <&pcc3 IMX8ULP_CLK_LPI2C4>;
> +				clock-names = "per", "ipg";
> +				assigned-clocks = <&pcc3 IMX8ULP_CLK_LPI2C4>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>;
> +				assigned-clock-rates = <48000000>;
> +				status = "disabled";
> +			};
> +
> +			lpi2c5: i2c@29380000 {
> +				compatible = "fsl,imx8ulp-lpi2c", "fsl,imx7ulp-lpi2c";
> +				reg = <0x29380000 0x10000>;
> +				interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_LPI2C5>,
> +					 <&pcc3 IMX8ULP_CLK_LPI2C5>;
> +				clock-names = "per", "ipg";
> +				assigned-clocks = <&pcc3 IMX8ULP_CLK_LPI2C5>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>;
> +				assigned-clock-rates = <48000000>;
> +				status = "disabled";
> +			};
> +
> +			lpuart4: serial@29390000 {
> +				compatible = "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
> +				reg = <0x29390000 0x1000>;
> +				interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_LPUART4>;
> +				clock-names = "ipg";
> +				status = "disabled";
> +			};
> +
> +			lpuart5: serial@293a0000 {
> +				compatible = "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
> +				reg = <0x293a0000 0x1000>;
> +				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_LPUART5>;
> +				clock-names = "ipg";
> +				status = "disabled";
> +			};
> +
> +			lpspi4: spi@293b0000 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "fsl,imx8ulp-spi", "fsl,imx7ulp-spi";
> +				reg = <0x293b0000 0x10000>;
> +				interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_LPSPI4>,
> +					 <&pcc3 IMX8ULP_CLK_LPSPI4>;
> +				clock-names = "per", "ipg";
> +				assigned-clocks = <&pcc3 IMX8ULP_CLK_LPSPI4>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>;
> +				assigned-clock-rates = <16000000>;
> +				status = "disabled";
> +			};
> +
> +			lpspi5: spi@293c0000 {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				compatible = "fsl,imx8ulp-spi", "fsl,imx7ulp-spi";
> +				reg = <0x293c0000 0x10000>;
> +				interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc3 IMX8ULP_CLK_LPSPI5>,
> +					 <&pcc3 IMX8ULP_CLK_LPSPI5>;
> +				clock-names = "per", "ipg";
> +				assigned-clocks = <&pcc3 IMX8ULP_CLK_LPSPI5>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>;
> +				assigned-clock-rates = <16000000>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		per_bridge4: bus@29800000 {
> +			compatible = "simple-bus";
> +			reg = <0x29800000 0x800000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			pcc4: clock-controller@29800000 {
> +				compatible = "fsl,imx8ulp-pcc4";
> +				reg = <0x29800000 0x10000>;
> +				#clock-cells = <1>;
> +			};
> +
> +			lpi2c6: i2c@29840000 {
> +				compatible = "fsl,imx8ulp-lpi2c", "fsl,imx7ulp-lpi2c";
> +				reg = <0x29840000 0x10000>;
> +				interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_LPI2C6>,
> +					 <&pcc4 IMX8ULP_CLK_LPI2C6>;
> +				clock-names = "per", "ipg";
> +				assigned-clocks = <&pcc4 IMX8ULP_CLK_LPI2C6>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>;
> +				assigned-clock-rates = <48000000>;
> +				status = "disabled";
> +			};
> +
> +			lpi2c7: i2c@29850000 {
> +				compatible = "fsl,imx8ulp-lpi2c", "fsl,imx7ulp-lpi2c";
> +				reg = <0x29850000 0x10000>;
> +				interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_LPI2C7>,
> +					 <&pcc4 IMX8ULP_CLK_LPI2C7>;
> +				clock-names = "per", "ipg";
> +				assigned-clocks = <&pcc4 IMX8ULP_CLK_LPI2C7>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>;
> +				assigned-clock-rates = <48000000>;
> +				status = "disabled";
> +			};
> +
> +			lpuart6: serial@29860000 {
> +				compatible = "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
> +				reg = <0x29860000 0x1000>;
> +				interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_LPUART6>;
> +				clock-names = "ipg";
> +				status = "disabled";
> +			};
> +
> +			lpuart7: serial@29870000 {
> +				compatible = "fsl,imx8ulp-lpuart", "fsl,imx7ulp-lpuart";
> +				reg = <0x29870000 0x1000>;
> +				interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_LPUART7>;
> +				clock-names = "ipg";
> +				status = "disabled";
> +			};
> +
> +			iomuxc1: pinctrl@298c0000 {
> +				compatible = "fsl,imx8ulp-iomuxc1";
> +				reg = <0x298c0000 0x10000>;
> +			};
> +
> +			usdhc0: mmc@298d0000 {
> +				compatible = "fsl,imx8ulp-usdhc", "fsl,imx8mm-usdhc";
> +				reg = <0x298d0000 0x10000>;
> +				interrupts = <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>,
> +					 <&cgc1 IMX8ULP_CLK_XBAR_AD_DIVPLAT>,
> +					 <&pcc4 IMX8ULP_CLK_USDHC0>;
> +				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-start-tap = <20>;
> +				fsl,tuning-step= <2>;
> +				bus-width = <4>;
> +				status = "disabled";
> +			};
> +
> +			usdhc1: mmc@298e0000 {
> +				compatible = "fsl,imx8ulp-usdhc", "fsl,imx8mm-usdhc";
> +				reg = <0x298e0000 0x10000>;
> +				interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>,
> +					 <&cgc1 IMX8ULP_CLK_NIC_PER_DIVPLAT>,
> +					 <&pcc4 IMX8ULP_CLK_USDHC1>;
> +				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-start-tap = <20>;
> +				fsl,tuning-step= <2>;
> +				bus-width = <4>;
> +				status = "disabled";
> +			};
> +
> +			usdhc2: mmc@298f0000 {
> +				compatible = "fsl,imx8ulp-usdhc", "fsl,imx8mm-usdhc";
> +				reg = <0x298f0000 0x10000>;
> +				interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&cgc1 IMX8ULP_CLK_XBAR_DIVBUS>,
> +					 <&cgc1 IMX8ULP_CLK_NIC_PER_DIVPLAT>,
> +					 <&pcc4 IMX8ULP_CLK_USDHC2>;
> +				clock-names = "ipg", "ahb", "per";
> +				fsl,tuning-start-tap = <20>;
> +				fsl,tuning-step= <2>;
> +				bus-width = <4>;
> +				status = "disabled";
> +			};
> +
> +			usbotg1: usb@29900000 {
> +				compatible = "fsl,imx8ulp-usb", "fsl,imx7ulp-usb";
> +				reg = <0x29900000 0x200>;
> +				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_USB0>;
> +				phys = <&usbphy1>;
> +				fsl,usbmisc = <&usbmisc1 0>;
> +				ahb-burst-config = <0x0>;
> +				tx-burst-size-dword = <0x8>;
> +				rx-burst-size-dword = <0x8>;
> +				status = "disabled";
> +			};
> +
> +			usbmisc1: usbmisc@29900200 {
> +				compatible = "fsl,imx8ulp-usbmisc", "fsl,imx7ulp-usbmisc";
> +				#index-cells = <1>;
> +				reg = <0x29900200 0x200>;
> +				status = "disabled";
> +			};
> +
> +			usbphy1: usb-phy@29910000 {
> +				compatible = "fsl,imx8ulp-usbphy", "fsl,imx7ulp-usbphy";
> +				reg = <0x29910000 0x10000>;
> +				interrupts = <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_USB0_PHY>;
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +
> +			usbotg2: usb@29920000 {
> +				compatible = "fsl,imx8ulp-usb", "fsl,imx7ulp-usb";
> +				reg = <0x29920000 0x200>;
> +				interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_USB1>;
> +				phys = <&usbphy2>;
> +				fsl,usbmisc = <&usbmisc2 0>;
> +				ahb-burst-config = <0x0>;
> +				tx-burst-size-dword = <0x8>;
> +				rx-burst-size-dword = <0x8>;
> +				status = "disabled";
> +			};
> +
> +			usbmisc2: usbmisc@29920200 {
> +				compatible = "fsl,imx8ulp-usbmisc", "fsl,imx7ulp-usbmisc";
> +				#index-cells = <1>;
> +				reg = <0x29920200 0x200>;
> +				status = "disabled";
> +			};
> +
> +			usbphy2: usb-phy@29930000 {
> +				compatible = "fsl,imx8ulp-usbphy", "fsl,imx7ulp-usbphy";
> +				reg = <0x29930000 0x10000>;
> +				interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&pcc4 IMX8ULP_CLK_USB1_PHY>;
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +
> +			fec: ethernet@29950000 {
> +				compatible = "fsl,imx8ulp-fec", "fsl,imx6ul-fec";
> +				reg = <0x29950000 0x10000>;
> +				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "int0";
> +				clocks = <&pcc4 IMX8ULP_CLK_ENET>,
> +					 <&pcc4 IMX8ULP_CLK_ENET>,
> +					 <&cgc1 IMX8ULP_CLK_ENET_TS_SEL>;
> +				clock-names = "ipg", "ahb", "ptp";
> +				assigned-clocks = <&cgc1 IMX8ULP_CLK_ENET_TS_SEL>;
> +				assigned-clock-parents = <&cgc1 IMX8ULP_CLK_SOSC>;
> +				assigned-clock-rates = <24000000>;
> +				fsl,num-tx-queues = <1>;
> +				fsl,num-rx-queues = <1>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		gpioe: gpio@2d000000 {
> +				compatible = "fsl,imx8ulp-gpio", "fsl,imx7ulp-gpio";
> +				reg = <0x2d000080 0x1000>, <0x2d000040 0x40>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupts = <GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				clocks = <&pcc4 IMX8ULP_CLK_RGPIOE>,
> +					 <&pcc4 IMX8ULP_CLK_PCTLE>;
> +				clock-names = "gpio", "port";
> +				gpio-ranges = <&iomuxc1 0 32 24>;
> +		};
> +
> +		gpiof: gpio@2d010000 {
> +				compatible = "fsl,imx8ulp-gpio", "fsl,imx7ulp-gpio";
> +				reg = <0x2d010080 0x1000>, <0x2d010040 0x40>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				clocks = <&pcc4 IMX8ULP_CLK_RGPIOF>,
> +					 <&pcc4 IMX8ULP_CLK_PCTLF>;
> +				clock-names = "gpio", "port";
> +				gpio-ranges = <&iomuxc1 0 64 32>;
> +		};
> +
> +		per_bridge5: bus@2d800000 {
> +			compatible = "simple-bus";
> +			reg = <0x2d800000 0x800000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges;
> +
> +			cgc2: clock-controller@2da60000 {
> +				compatible = "fsl,imx8ulp-cgc2";
> +				reg = <0x2da60000 0x10000>;
> +				clocks = <&sosc>, <&frosc>;
> +				clock-names = "sosc", "frosc";
> +				#clock-cells = <1>;
> +			};
> +
> +			pcc5: clock-controller@2da70000 {
> +				compatible = "fsl,imx8ulp-pcc5";
> +				reg = <0x2da70000 0x10000>;
> +				#clock-cells = <1>;
> +			};
> +		};
> +
> +		gpiod: gpio@2e200000 {
> +			compatible = "fsl,imx8ulp-gpio", "fsl,imx7ulp-gpio";
> +			reg = <0x2e200080 0x1000>, <0x2e200040 0x40>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +			clocks = <&pcc5 IMX8ULP_CLK_RGPIOD>,
> +				 <&pcc5 IMX8ULP_CLK_RGPIOD>;
> +			clock-names = "gpio", "port";
> +			gpio-ranges = <&iomuxc1 0 0 24>;
> +		};
> +	};
> +};
> -- 
> 2.26.2
> 
> 
