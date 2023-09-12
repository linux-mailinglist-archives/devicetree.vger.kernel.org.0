Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4154879D51B
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 17:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236360AbjILPig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 11:38:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233996AbjILPie (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 11:38:34 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C58A10E5
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 08:38:30 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38CFcMi9095136;
        Tue, 12 Sep 2023 10:38:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1694533102;
        bh=/5BT8Z5/OoWNAwaIqctDEy8oR1iFfe/mH7Lq1oun+Dk=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=bTsxn/2+zZw1ubdhoa33zubKAnVAr9v/M6+n5b/tkUX6ZTTShOLIRBK2zd/pty1pi
         lcOVASs2I1GEMXMqv+i/CuMj1duVPMn/XE0iyiSOA1gLMSJ9aeSWcY6g+4WrSLp8dj
         3cf/ELp7X8ivO4CoytCx947c3Q5iVGUuYHalk4pY=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38CFcMcu020187
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 12 Sep 2023 10:38:22 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 12
 Sep 2023 10:38:21 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 12 Sep 2023 10:38:21 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38CFcKh2027023;
        Tue, 12 Sep 2023 10:38:20 -0500
Date:   Tue, 12 Sep 2023 21:08:19 +0530
From:   Dhruva Gole <d-gole@ti.com>
To:     Tony Lindgren <tony@atomide.com>
CC:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
 wkup_uart0
Message-ID: <20230912153819.fzp6feqkspczci45@dhruva>
References: <20230912111215.18415-1-tony@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912111215.18415-1-tony@atomide.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sep 12, 2023 at 14:12:15 +0300, Tony Lindgren wrote:
> The devices in the wkup domain are capable of waking up the system from
> suspend. We can configure the wkup domain devices in a generic way using
> the ti-sysc interconnect target module driver like we have done with the
> earlier TI SoCs.
> 
> As ti-sysc manages the SYSCONFIG related registers independent of the
> child hardware device, the wake-up configuration is also set even if
> wkup_uart0 is reserved by sysfw.
> 
> The wkup_uart0 device has interconnect target module register mapping like
> dra7 wkup uart. There is a 1 MB interconnect target range with one uart IP
> block in the target module. The power domain and clock affects the whole
> interconnect target module.
> 
> Note we change the functional clock name to follow the ti-sysc binding
> and use "fck" instead of "fclk".
> 
> Cc: Dhruva Gole <d-gole@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---

Have tested wakeup using wake_uart as I have pointed out in a previous patch for
ti-sysc, please find required patches here:

https://github.com/DhruvaG2000/v-linux/commits/v6.5-rc7_wkuart

Hence,

Tested-by: Dhruva Gole <d-gole@ti.com>

>  arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi | 33 ++++++++++++++++++----
>  1 file changed, 27 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi
> @@ -5,6 +5,8 @@
>   * Copyright (C) 2020-2022 Texas Instruments Incorporated - https://www.ti.com/
>   */
>  
> +#include <dt-bindings/bus/ti-sysc.h>
> +
>  &cbass_wakeup {
>  	wkup_conf: syscon@43000000 {
>  		compatible = "syscon", "simple-mfd";
> @@ -19,14 +21,33 @@ chipid: chipid@14 {
>  		};
>  	};
>  
> -	wkup_uart0: serial@2b300000 {
> -		compatible = "ti,am64-uart", "ti,am654-uart";
> -		reg = <0x00 0x2b300000 0x00 0x100>;
> -		interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +	target-module@2b300000 {
> +		compatible = "ti,sysc-omap2", "ti,sysc";
> +		reg = <0 0x2b300050 0 0x4>,
> +		      <0 0x2b300054 0 0x4>,
> +		      <0 0x2b300058 0 0x4>;
> +		reg-names = "rev", "sysc", "syss";
> +		ti,sysc-mask = <(SYSC_OMAP2_ENAWAKEUP |
> +				 SYSC_OMAP2_SOFTRESET |
> +				 SYSC_OMAP2_AUTOIDLE)>;
> +		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +				<SYSC_IDLE_NO>,
> +				<SYSC_IDLE_SMART>,
> +				<SYSC_IDLE_SMART_WKUP>;
> +		ti,syss-mask = <1>;
>  		power-domains = <&k3_pds 114 TI_SCI_PD_EXCLUSIVE>;
>  		clocks = <&k3_clks 114 0>;
> -		clock-names = "fclk";
> -		status = "disabled";
> +		clock-names = "fck";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0 0 0x2b300000 0x100000>;
> +
> +		wkup_uart0: serial@2b300000 {
> +			compatible = "ti,am64-uart", "ti,am654-uart";
> +			reg = <0 0x100>;
> +			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";

wondering if "reserved" makes more sense as it's currently being used by
SYSFW? I am okay with this disabled as well.

> +		};
>  	};
>  
>  	wkup_i2c0: i2c@2b200000 {
> -- 
> 2.42.0

-- 
Best regards,
Dhruva Gole <d-gole@ti.com>
