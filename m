Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E20026DE91
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 16:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727314AbgIQOWF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 10:22:05 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:55598 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727073AbgIQNxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 09:53:06 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08HDqAA7067946;
        Thu, 17 Sep 2020 08:52:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600350730;
        bh=ELS8QfAru0Zhz0CCZfm+n+0o9Zu+0e8fUZ1p29oMWgY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=RA4tm6tRD29bvEA+okPYlU7OETrD+3Wd0ZGLnm9TnLQW+cArWyxysqr8iHfibr/le
         dNOphhuuJHCJwOcLPLOtExBct2Jos4fUh48YG1I/gDylLHZbg0Kne4TaInFT2rRDzb
         uPKaa0vv9dVdeL3nBrEIUONG27Q0aSs995viBz0Y=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08HDqAj5122911;
        Thu, 17 Sep 2020 08:52:10 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 17
 Sep 2020 08:52:09 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 17 Sep 2020 08:52:09 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08HDq7C9103626;
        Thu, 17 Sep 2020 08:52:07 -0500
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-j721e-main: add DP & DP PHY
To:     Nishanth Menon <nm@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        Swapnil Jakhade <sjakhade@cadence.com>, <yamonkar@cadence.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sekhar Nori <nsekhar@ti.com>
References: <20200917071248.71284-1-tomi.valkeinen@ti.com>
 <20200917071248.71284-2-tomi.valkeinen@ti.com>
 <20200917130723.q3asxcb6uoenady5@akan>
From:   Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <933cccf5-fa5c-dc46-36e5-3200e7b7801d@ti.com>
Date:   Thu, 17 Sep 2020 16:52:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917130723.q3asxcb6uoenady5@akan>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nishanth,

On 17/09/2020 16:07, Nishanth Menon wrote:
> On 10:12-20200917, Tomi Valkeinen wrote:
>> Add DT nodes for DisplayPort and DisplayPort PHY. The DP is Cadence MHDP
>> 8546 and the PHY is a Cadence Torrent PHY with TI WIZ wrapper.
>>
>> A slight irregularity in the bindings is the DPTX PHY register block,
>> which is in the MHDP IP, but is needed and mapped by the PHY.
>>
>> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> 
> just quick notes below:
> 
>> ---
>>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 104 ++++++++++++++++++++++
>>  1 file changed, 104 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> index 12ceea9b3c9a..82d89dd3faf5 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>> @@ -553,6 +553,82 @@ serdes3: serdes@5030000 {
>>  		};
>>  	};
>>  
>> +	serdes_wiz4: wiz@5050000 {
> serdes-mux ? - I think we might want to cleanup other similar usage
> instead of "wiz" or maybe just "mux"?
> 
>> +		compatible = "ti,j721e-wiz-10g";
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +		power-domains = <&k3_pds 297 TI_SCI_PD_EXCLUSIVE>;
>> +		clocks = <&k3_clks 297 1>, <&k3_clks 297 9>, <&dummy_cmn_refclk>;
>> +		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
>> +		assigned-clocks = <&k3_clks 297 9>;
>> +		assigned-clock-parents = <&k3_clks 297 10>;
>> +		assigned-clock-rates = <19200000>;
>> +		num-lanes = <4>;
>> +		#reset-cells = <1>;
>> +		ranges = <0x5050000 0x0 0x5050000 0x10000>,
>> +			<0xa030a00 0x0 0xa030a00 0x40>;
>> +
>> +		wiz4_pll0_refclk: pll0-refclk {
> 	clock@ ?
>> +			clocks = <&k3_clks 297 9>, <&dummy_cmn_refclk>;
>> +			clock-output-names = "wiz4_pll0_refclk";
>> +			#clock-cells = <0>;
>> +			assigned-clocks = <&wiz4_pll0_refclk>;
>> +			assigned-clock-parents = <&k3_clks 297 9>;
>> +		};
>> +
>> +		wiz4_pll1_refclk: pll1-refclk {
> 	same?
>> +			clocks = <&k3_clks 297 9>, <&dummy_cmn_refclk>;
>> +			clock-output-names = "wiz4_pll1_refclk";
>> +			#clock-cells = <0>;
>> +			assigned-clocks = <&wiz4_pll1_refclk>;
>> +			assigned-clock-parents = <&k3_clks 297 9>;
>> +		};
>> +
>> +		wiz4_refclk_dig: refclk-dig {
> 	same?
>> +			clocks = <&k3_clks 297 9>, <&dummy_cmn_refclk>;
>> +			clock-output-names = "wiz4_refclk_dig";
>> +			#clock-cells = <0>;
>> +			assigned-clocks = <&wiz4_refclk_dig>;
>> +			assigned-clock-parents = <&k3_clks 297 9>;
>> +		};
>> +
>> +		wiz4_cmn_refclk_dig_div: cmn-refclk-dig-div {
> 	same?
>> +			clocks = <&wiz4_refclk_dig>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		wiz4_cmn_refclk1_dig_div: cmn-refclk1-dig-div {
> 	same?
>> +			clocks = <&wiz4_pll1_refclk>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		serdes4: serdes@5050000 {
>> +			/*
>> +			 * Note: we also map DPTX PHY registers as the Torrent
>> +			 * needs to manage those.
>> +			 */
>> +			compatible = "ti,j721e-serdes-10g";
>> +			reg = <0x5050000 0x10000>,
>> +			      <0xa030a00 0x40>; /* DPTX PHY */
>> +			reg-names = "torrent_phy", "dptx_phy";
>> +
>> +			resets = <&serdes_wiz4 0>;
>> +			reset-names = "torrent_reset";
>> +			clocks = <&wiz4_pll0_refclk>;
>> +			clock-names = "refclk";
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +			torrent_phy_dp: phy@0 {
>> +				reg = <0>;
>> +				resets = <&serdes_wiz4 1>;
>> +				cdns,phy-type = <PHY_TYPE_DP>;
>> +				cdns,num-lanes = <4>;
>> +				cdns,max-bit-rate = <5400>;
>> +				#phy-cells = <0>;
>> +			};
>> +		};
>> +	};
>> +
> Do you see any impact of the discussions we are having at [1] ?
You mean using wiz or serdes naming all around?

But I think the answer to all the comments is the same: I'm following what's already there for
serdes 0-3 in k3-j721e-main.dtsi, and what's defined in ti,phy-j721e-wiz.yaml.

Kishon is probably better person to answer about changes to the wiz naming.

 Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
