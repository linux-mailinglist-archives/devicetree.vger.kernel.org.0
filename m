Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7E1D26DC78
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 15:08:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726955AbgIQNIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 09:08:12 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:49922 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727073AbgIQNHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 09:07:44 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08HD7OQQ055911;
        Thu, 17 Sep 2020 08:07:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600348044;
        bh=5cm1TYMgzmYFsX/9vDRmJO8ddQ80zLzAZqagHAFcE68=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=XaZhJS2LJHntSUTcfps6ZYMp6o330/0+BDM2L7W4+6jN+ajft2YUfT5/zNTPvXZol
         LCCUBC122/6mOvvWWp9eLUAEmsQV0PaUHb68Z0Ec8DXt0VD06kZ8Z/DlGKYxEwmjZG
         YDZHozkn3lpE/GAWyZGpQFPI6R3qXj56WHXzL3Rc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08HD7Ojc086086
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 17 Sep 2020 08:07:24 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 17
 Sep 2020 08:07:23 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 17 Sep 2020 08:07:23 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08HD7N4o114751;
        Thu, 17 Sep 2020 08:07:23 -0500
Date:   Thu, 17 Sep 2020 08:07:23 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Swapnil Jakhade <sjakhade@cadence.com>, <yamonkar@cadence.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sekhar Nori <nsekhar@ti.com>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-j721e-main: add DP & DP PHY
Message-ID: <20200917130723.q3asxcb6uoenady5@akan>
References: <20200917071248.71284-1-tomi.valkeinen@ti.com>
 <20200917071248.71284-2-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20200917071248.71284-2-tomi.valkeinen@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10:12-20200917, Tomi Valkeinen wrote:
> Add DT nodes for DisplayPort and DisplayPort PHY. The DP is Cadence MHDP
> 8546 and the PHY is a Cadence Torrent PHY with TI WIZ wrapper.
> 
> A slight irregularity in the bindings is the DPTX PHY register block,
> which is in the MHDP IP, but is needed and mapped by the PHY.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>

just quick notes below:

> ---
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 104 ++++++++++++++++++++++
>  1 file changed, 104 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 12ceea9b3c9a..82d89dd3faf5 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -553,6 +553,82 @@ serdes3: serdes@5030000 {
>  		};
>  	};
>  
> +	serdes_wiz4: wiz@5050000 {
serdes-mux ? - I think we might want to cleanup other similar usage
instead of "wiz" or maybe just "mux"?

> +		compatible = "ti,j721e-wiz-10g";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		power-domains = <&k3_pds 297 TI_SCI_PD_EXCLUSIVE>;
> +		clocks = <&k3_clks 297 1>, <&k3_clks 297 9>, <&dummy_cmn_refclk>;
> +		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
> +		assigned-clocks = <&k3_clks 297 9>;
> +		assigned-clock-parents = <&k3_clks 297 10>;
> +		assigned-clock-rates = <19200000>;
> +		num-lanes = <4>;
> +		#reset-cells = <1>;
> +		ranges = <0x5050000 0x0 0x5050000 0x10000>,
> +			<0xa030a00 0x0 0xa030a00 0x40>;
> +
> +		wiz4_pll0_refclk: pll0-refclk {
	clock@ ?
> +			clocks = <&k3_clks 297 9>, <&dummy_cmn_refclk>;
> +			clock-output-names = "wiz4_pll0_refclk";
> +			#clock-cells = <0>;
> +			assigned-clocks = <&wiz4_pll0_refclk>;
> +			assigned-clock-parents = <&k3_clks 297 9>;
> +		};
> +
> +		wiz4_pll1_refclk: pll1-refclk {
	same?
> +			clocks = <&k3_clks 297 9>, <&dummy_cmn_refclk>;
> +			clock-output-names = "wiz4_pll1_refclk";
> +			#clock-cells = <0>;
> +			assigned-clocks = <&wiz4_pll1_refclk>;
> +			assigned-clock-parents = <&k3_clks 297 9>;
> +		};
> +
> +		wiz4_refclk_dig: refclk-dig {
	same?
> +			clocks = <&k3_clks 297 9>, <&dummy_cmn_refclk>;
> +			clock-output-names = "wiz4_refclk_dig";
> +			#clock-cells = <0>;
> +			assigned-clocks = <&wiz4_refclk_dig>;
> +			assigned-clock-parents = <&k3_clks 297 9>;
> +		};
> +
> +		wiz4_cmn_refclk_dig_div: cmn-refclk-dig-div {
	same?
> +			clocks = <&wiz4_refclk_dig>;
> +			#clock-cells = <0>;
> +		};
> +
> +		wiz4_cmn_refclk1_dig_div: cmn-refclk1-dig-div {
	same?
> +			clocks = <&wiz4_pll1_refclk>;
> +			#clock-cells = <0>;
> +		};
> +
> +		serdes4: serdes@5050000 {
> +			/*
> +			 * Note: we also map DPTX PHY registers as the Torrent
> +			 * needs to manage those.
> +			 */
> +			compatible = "ti,j721e-serdes-10g";
> +			reg = <0x5050000 0x10000>,
> +			      <0xa030a00 0x40>; /* DPTX PHY */
> +			reg-names = "torrent_phy", "dptx_phy";
> +
> +			resets = <&serdes_wiz4 0>;
> +			reset-names = "torrent_reset";
> +			clocks = <&wiz4_pll0_refclk>;
> +			clock-names = "refclk";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			torrent_phy_dp: phy@0 {
> +				reg = <0>;
> +				resets = <&serdes_wiz4 1>;
> +				cdns,phy-type = <PHY_TYPE_DP>;
> +				cdns,num-lanes = <4>;
> +				cdns,max-bit-rate = <5400>;
> +				#phy-cells = <0>;
> +			};
> +		};
> +	};
> +
Do you see any impact of the discussions we are having at [1] ?

>  	main_uart0: serial@2800000 {
>  		compatible = "ti,j721e-uart", "ti,am654-uart";
>  		reg = <0x00 0x02800000 0x00 0x100>;
> @@ -1024,6 +1100,34 @@ ufs@4e84000 {
>  		};
>  	};
>  
> +	mhdp: dp-bridge@a000000 {
> +		compatible = "ti,j721e-mhdp8546";
> +		/*
> +		 * Note: we do not map DPTX PHY area, as that is handled by
> +		 * the PHY driver.
> +		 */
> +		reg = <0x0 0xa000000 0x0 0x30a00>, /* DSS_EDP0_V2A_CORE_VP_REGS_APB */
> +		      <0x0 0x4f40000 0x0 0x20>;    /* DSS_EDP0_INTG_CFG_VP */
> +		reg-names = "mhdptx", "j721e-intg";
> +
> +		status = "disabled";
> +
> +		clocks = <&k3_clks 151 36>;
> +
> +		phys = <&torrent_phy_dp>;
> +		phy-names = "dpphy";
> +
> +		interrupt-parent = <&gic500>;
> +		interrupts = <GIC_SPI 614 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		power-domains = <&k3_pds 151 TI_SCI_PD_EXCLUSIVE>;
> +
> +		dp0_ports: ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +		};
> +	};
> +
>  	dss: dss@04a00000 {
>  		compatible = "ti,j721e-dss";
>  		reg =
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

[1] https://lore.kernel.org/linux-devicetree/8a27f8f3-20c4-f72c-b683-81153107d867@ti.com/
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
