Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FB0562B5D4
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 10:00:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233557AbiKPJAw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 04:00:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237368AbiKPI6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 03:58:51 -0500
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49C851DF1F
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:58:18 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AG8w7jE029416;
        Wed, 16 Nov 2022 02:58:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668589087;
        bh=xzdu5YiTFeakLJA1nzuemEkGVsIZL0m+5cZt84SrnnQ=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=OIzj0f1k3qL/kYdC5gEOXvFsaru/40mW1D4uG1gGO/u1ohQ8kWXpwqR0kkcSc2HO3
         kLgKolQF9YcWavdfiDsgjJ65Hksgw3b2SMt9lhoYMTu4LhP7bUbXdTNNIfZbPOBxmI
         xEENu7+1OIprybqpMw8TFoXiWWrrKHTAxWwgrqCc=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AG8w7sf083246
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Nov 2022 02:58:07 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 16
 Nov 2022 02:58:07 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 16 Nov 2022 02:58:07 -0600
Received: from [10.24.69.79] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AG8w4af074345;
        Wed, 16 Nov 2022 02:58:05 -0600
Message-ID: <ca75f586-4223-ddbf-233b-48e1657fd91f@ti.com>
Date:   Wed, 16 Nov 2022 14:28:04 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v5 2/8] arm64: dts: ti: k3-j721s2-main: Add SERDES and WIZ
 device tree node
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20221103044125.172864-1-mranostay@ti.com>
 <20221103044125.172864-3-mranostay@ti.com>
From:   Ravi Gunasekaran <r-gunasekaran@ti.com>
In-Reply-To: <20221103044125.172864-3-mranostay@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Matt,

On 03/11/22 10:11 am, Matt Ranostay wrote:
> Add dt node for the single instance of WIZ (SERDES wrapper) and
> SERDES module shared by PCIe, eDP and USB.
> 
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi | 53 ++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> index 93b71d079b4f..6f9ccf52363e 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> @@ -5,6 +5,16 @@
>   * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
>   */
>  
> +#include <dt-bindings/phy/phy-cadence.h>
> +#include <dt-bindings/phy/phy-ti.h>
> +
> +/ {
> +	serdes_refclk: clock-cmnrefclk {
> +		#clock-cells = <0>;
> +		compatible = "fixed-clock";
> +	};
> +};
> +
>  &cbass_main {
>  	msmc_ram: sram@70000000 {
>  		compatible = "mmio-sram";
> @@ -38,6 +48,13 @@ usb_serdes_mux: mux-controller-0 {
>  			#mux-control-cells = <1>;
>  			mux-reg-masks = <0x0 0x8000000>; /* USB0 to SERDES0 lane 1/3 mux */
>  		};
> +
> +		serdes_ln_ctrl: mux-controller-80 {
> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x80 0x3>, <0x84 0x3>, /* SERDES0 lane0/1 select */
> +					<0x88 0x3>, <0x8c 0x3>; /* SERDES0 lane2/3 select */
> +		};
>  	};
>  
>  	gic500: interrupt-controller@1800000 {
> @@ -768,6 +785,42 @@ usb0: usb@6000000 {
>  		};
>  	};
>  
> +	serdes_wiz0: wiz@5060000 {
> +		compatible = "ti,am64-wiz-10g";

Should this be "ti,am64-wiz-10g" or "ti,j721e-wiz-10g" ?

> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		power-domains = <&k3_pds 365 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 365 0>, <&k3_clks 365 3>, <&serdes_refclk>;
> +		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
> +		num-lanes = <4>;
> +		#reset-cells = <1>;
> +		#clock-cells = <1>;
> +		ranges = <0x5060000 0x0 0x5060000 0x10000>;
> +
> +		assigned-clocks = <&k3_clks 365 3>;
> +		assigned-clock-parents = <&k3_clks 365 7>;
> +
> +		serdes0: serdes@5060000 {
> +			compatible = "ti,j721e-serdes-10g";
> +			reg = <0x05060000 0x00010000>;
> +			reg-names = "torrent_phy";
> +			resets = <&serdes_wiz0 0>;
> +			reset-names = "torrent_reset";
> +			clocks = <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
> +				 <&serdes_wiz0 TI_WIZ_PHY_EN_REFCLK>;
> +			clock-names = "refclk", "phy_en_refclk";
> +			assigned-clocks = <&serdes_wiz0 TI_WIZ_PLL0_REFCLK>,
> +					  <&serdes_wiz0 TI_WIZ_PLL1_REFCLK>,
> +					  <&serdes_wiz0 TI_WIZ_REFCLK_DIG>;
> +			assigned-clock-parents = <&k3_clks 365 3>,
> +						 <&k3_clks 365 3>,
> +						 <&k3_clks 365 3>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +		};
> +	};
> +
>  	main_mcan0: can@2701000 {
>  		compatible = "bosch,m_can";
>  		reg = <0x00 0x02701000 0x00 0x200>,

-- 
Regards,
Ravi
