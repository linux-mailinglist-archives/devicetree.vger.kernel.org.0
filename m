Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE3D726A946
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 18:03:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727497AbgIOQCt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 12:02:49 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:38832 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727551AbgIOP67 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 11:58:59 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08FFXLe1004198;
        Tue, 15 Sep 2020 10:33:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600184001;
        bh=zhHZxDKWQjStWe3Oqqxq9vQe91HlFMPkgagfu7NoDok=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=xG/V449pAd73aqZMzjNDDSuEeFd+JCU3R0S8K8oGibLDe1oqTVBZIai7QFhtvIgQO
         uWYwrQoG7m8qufH57EBsGX4xYxIpxZVHbS4VR4AKLjIKgVtvumo5IGVbIY6NX8we0l
         GJVbdg2C2AVoYGCtnmp2AuMPakwi0zlnjAy55PI0=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FFXLbD111210;
        Tue, 15 Sep 2020 10:33:21 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 10:33:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 10:33:21 -0500
Received: from [10.250.66.210] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FFXJOC067371;
        Tue, 15 Sep 2020 10:33:20 -0500
Subject: Re: [PATCH v4 5/5] arm64: dts: ti: Add support for J7200 Common
 Processor Board
To:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>
CC:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-6-lokeshvutla@ti.com>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <7d7f3ba2-d687-a90b-e4e9-6bec835e093f@ti.com>
Date:   Tue, 15 Sep 2020 10:33:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200914162231.2535-6-lokeshvutla@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/14/20 11:22 AM, Lokesh Vutla wrote:
> Add support for J7200 Common Processor Board.
> The EVM architecture is very similar to J721E as follows:
> 
> +------------------------------------------------------+
> |   +-------------------------------------------+      |
> |   |                                           |      |
> |   |        Add-on Card 1 Options              |      |
> |   |                                           |      |
> |   +-------------------------------------------+      |
> |                                                      |
> |                                                      |
> |                     +-------------------+            |
> |                     |                   |            |
> |                     |   SOM             |            |
> |  +--------------+   |                   |            |
> |  |              |   |                   |            |
> |  |  Add-on      |   +-------------------+            |
> |  |  Card 2      |                                    |    Power Supply
> |  |  Options     |                                    |    |
> |  |              |                                    |    |
> |  +--------------+                                    | <---
> +------------------------------------------------------+
>                                 Common Processor Board
> 
> Common Processor board is the baseboard that has most of the actual
> connectors, power supply etc. A SOM (System on Module) is plugged on
> to the common processor board and this contains the SoC, PMIC, DDR and
> basic high speed components necessary for functionality.
> 
> Note:
> * The minimum configuration required to boot up the board is System On
>   Module(SOM) + Common Processor Board.
> * Since there is just a single SOM and Common Processor Board, we are
>   maintaining common processor board as the base dts and SOM as the dtsi
>   that we include. In the future as more SOM's appear, we should move
>   common processor board as a dtsi and include configurations as dts.
> * All daughter cards beyond the basic boards shall be maintained as
>   overlays.
> 
> Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |  2 +
>  .../dts/ti/k3-j7200-common-proc-board.dts     | 64 +++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi   | 29 +++++++++
>  3 files changed, 95 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
>  create mode 100644 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 7f28be62b8da..65506f21ba30 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -9,3 +9,5 @@
>  dtb-$(CONFIG_ARCH_K3) += k3-am654-base-board.dtb
>  
>  dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
> +
> +dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
> new file mode 100644
> index 000000000000..e27069317c4e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dts
> @@ -0,0 +1,64 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +
> +#include "k3-j7200-som-p0.dtsi"
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
> +	};
> +};
> +
> +&wkup_uart0 {
> +	/* Wakeup UART is used by System firmware */
> +	status = "disabled";
> +};
> +
> +&main_uart0 {
> +	power-domains = <&k3_pds 146 TI_SCI_PD_SHARED>;

Perhaps a comment here to explain why this is being overwritten to use
PD_SHARED. I don't see anything in the Changelog either.

Otherwise, looks good.

regards
Suman

> +};
> +
> +&main_uart2 {
> +	/* MAIN UART 2 is used by R5F firmware */
> +	status = "disabled";
> +};
> +
> +&main_uart3 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> +
> +&main_uart4 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> +
> +&main_uart5 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> +
> +&main_uart6 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> +
> +&main_uart7 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> +
> +&main_uart8 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> +
> +&main_uart9 {
> +	/* UART not brought out */
> +	status = "disabled";
> +};
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> new file mode 100644
> index 000000000000..f7e271c442a0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi
> @@ -0,0 +1,29 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +
> +#include "k3-j7200.dtsi"
> +
> +/ {
> +	memory@80000000 {
> +		device_type = "memory";
> +		/* 4G RAM */
> +		reg = <0x00 0x80000000 0x00 0x80000000>,
> +		      <0x08 0x80000000 0x00 0x80000000>;
> +	};
> +
> +	reserved_memory: reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		secure_ddr: optee@9e800000 {
> +			reg = <0x00 0x9e800000 0x00 0x01800000>;
> +			alignment = <0x1000>;
> +			no-map;
> +		};
> +	};
> +};
> 

