Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2029264B00
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 19:20:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725833AbgIJRUV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 13:20:21 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:58200 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725803AbgIJRTe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 13:19:34 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08AHJUGk009004;
        Thu, 10 Sep 2020 12:19:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599758370;
        bh=xd+ZpFSHQP4lTMB+7CuVEAXXYCd/7OuC2qWmrPmbmV8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=k+6BDBRLqg0/jwrPTacKjp9435eD56mb5AaEM8AtnnBOTJr4L1DOwG6eanrwBESpQ
         eRfxh1JfAwlsgTCmM+EKdJ3VO+rbn0hSU8mHkWAiSAuW1x8L+wcNeUuiNAHwhI7y7H
         Nc5q7SQ/gD21WCi1zruvCKhwSkDCClqYbnz86/n8=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08AHJUe0098607
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 10 Sep 2020 12:19:30 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 12:19:30 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 12:19:30 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08AHJS4E110703;
        Thu, 10 Sep 2020 12:19:29 -0500
Date:   Thu, 10 Sep 2020 12:19:28 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 4/5] arm64: dts: ti: Add support for J7200 SoC
Message-ID: <20200910171928.xzfwhix46lcsiup7@akan>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-5-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20200908162252.17672-5-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21:52-20200908, Lokesh Vutla wrote:
[...]
Few minor comments below.. (I dont have any further comments beyond
these) I had missed taking a diff against j721e and what downstream
vendor kernel.

> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> new file mode 100644
> index 000000000000..ed5f419bc86d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-main.dtsi
> @@ -0,0 +1,199 @@
[...]
> +	gic500: interrupt-controller@1800000 {
> +		compatible = "arm,gic-v3";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		#interrupt-cells = <3>;
> +		interrupt-controller;
> +		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
> +		      <0x00 0x01900000 0x00 0x100000>;	/* GICR */
> +
> +		/* vcpumntirq: virtual CPU interface maintenance interrupt */
> +		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		gic_its: msi-controller@1820000 {
> +			compatible = "arm,gic-v3-its";
> +			reg = <0x00 0x01820000 0x00 0x10000>;
> +			socionext,synquacer-pre-its = <0x1000000 0x400000>;
> +			msi-controller;
> +			#msi-cells = <1>;
> +		};
> +	};
> +
> +	main_navss: navss@30000000 {

hmm.. bus@ just to simplify things? or I wonder if a better common term is available?
I cant find a better alternative when I look at
https://github.com/devicetree-org/devicetree-specification/blob/v0.3/source/devicetree-basics.rst

> +		compatible = "simple-mfd";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>;


> +
> +		secure_proxy_main: mailbox@32c00000 {
> +			compatible = "ti,am654-secure-proxy";
> +			#mbox-cells = <1>;
> +			reg-names = "target_data", "rt", "scfg";
> +			reg = <0x00 0x32c00000 0x00 0x100000>,
> +			      <0x00 0x32400000 0x00 0x100000>,
> +			      <0x00 0x32800000 0x00 0x100000>;
> +			interrupt-names = "rx_011";
> +			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
> +		};

I think we could introduce base infrastructure stuff like intr and
inta nodes here? Also, the gpio_intr?

> +	};
> +
> +	main_pmx0: pinmux@11c000 {

	pinctrl@ ?

[...]
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> new file mode 100644
> index 000000000000..76ef75586077
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +
[...]
> +	wkup_pmx0: pinmux@4301c000 {
	
	pinctrl@ ?
> +		compatible = "pinctrl-single";
> +		/* Proxy 0 addressing */
> +		reg = <0x00 0x4301c000 0x00 0x178>;
> +		#pinctrl-cells = <1>;
> +		pinctrl-single,register-width = <32>;
> +		pinctrl-single,function-mask = <0xffffffff>;
> +	};
> +
> +	mcu_ram: sram@41c00000 {
> +		compatible = "mmio-sram";
> +		reg = <0x00 0x41c00000 0x00 0x100000>;
> +		ranges = <0x00 0x00 0x41c00000 0x100000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};

wkup_gpio_intr same argument as "core infrastructure" ?

> +
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200.dtsi b/arch/arm64/boot/dts/ti/k3-j7200.dtsi
> new file mode 100644
> index 000000000000..7c337780adb6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200.dtsi
> @@ -0,0 +1,165 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for J7200 SoC Family
> + *
> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/pinctrl/k3.h>
> +#include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +/ {
> +	model = "Texas Instruments K3 J7200 SoC";
> +	compatible = "ti,j7200";
> +	interrupt-parent = <&gic500>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		serial0 = &wkup_uart0;
> +		serial1 = &mcu_uart0;
> +		serial2 = &main_uart0;
> +		serial3 = &main_uart1;
> +		serial4 = &main_uart2;
> +		serial5 = &main_uart3;
> +		serial6 = &main_uart4;
> +		serial7 = &main_uart5;
> +		serial8 = &main_uart6;
> +		serial9 = &main_uart7;
> +		serial10 = &main_uart8;
> +		serial11 = &main_uart9;
> +	};
> +

might be nice to leave a chosen { }; here to indicate board
files fill it up.. just to maintain consistency with rest of SoC dtsis?

[...]
> +
> +	cbass_main: bus@100000 {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
> +			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
> +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* timesync router */
> +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
> +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
> +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>, /* MSMC RAM */
> +			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT */
> +
> +			 /* MCUSS_WKUP Range */
> +			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> +			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
> +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
> +			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
> +			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
> +			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
> +			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
> +			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
> +			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
> +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>;
> +
> +		cbass_mcu_wakeup: bus@28380000 {
> +			compatible = "simple-bus";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
> +				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
> +				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
> +				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
> +				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
> +				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
> +				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
> +				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
> +				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
> +				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
> +				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>; /* FSS OSPI0/1 data region 0 */
> +		};
> +	};
> +};

We covered these already.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
