Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248CB62B5B1
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 09:55:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231979AbiKPIzI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 03:55:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230431AbiKPIzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 03:55:07 -0500
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FAF362E3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 00:55:06 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AG8suP9019546;
        Wed, 16 Nov 2022 02:54:56 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1668588896;
        bh=UVvApuNaIwtCZsda0guLl/O8cRVyv5qWStPCuDizK2E=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=itfddFf9Q4gGdWSeSk8+jgHoxxqtANbKnPgdKfU4PlpV2k/8f+28xwLziVyVxWuIF
         gFOPV1lvI0ryhYreubq601oHqhTXrgPZoEUsuvZXHQYThaqIDBxGkGfMeva5xeV1ij
         e0bbDdfxxC0XbZAOilsjW6P2xWWPSy8u0W9Aw2zQ=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AG8sucR033355
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 16 Nov 2022 02:54:56 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 16
 Nov 2022 02:54:56 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Wed, 16 Nov 2022 02:54:56 -0600
Received: from [10.24.69.79] (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2AG8srUW005190;
        Wed, 16 Nov 2022 02:54:54 -0600
Message-ID: <71ce4ecd-2a50-c69d-28be-f1a8d769970e@ti.com>
Date:   Wed, 16 Nov 2022 14:24:52 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v5 4/8] arm64: dts: ti: k3-j721s2-common-proc-board:
 Enable SERDES0
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20221103044125.172864-1-mranostay@ti.com>
 <20221103044125.172864-5-mranostay@ti.com>
From:   Ravi Gunasekaran <r-gunasekaran@ti.com>
In-Reply-To: <20221103044125.172864-5-mranostay@ti.com>
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



On 03/11/22 10:11 am, Matt Ranostay wrote:
> From: Aswath Govindraju <a-govindraju@ti.com>
> 
> Configure first lane to PCIe, the second lane to USB and the last two lanes
> to eDP. Also, add sub-nodes to SERDES0 DT node to represent SERDES0 is
> connected to PCIe.
> 
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Cc: Nishanth Menon <nm@ti.com>
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  .../dts/ti/k3-j721s2-common-proc-board.dts    | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> index a7aa6cf08acd..c3a397484c70 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
> @@ -9,6 +9,9 @@
>  
>  #include "k3-j721s2-som-p0.dtsi"
>  #include <dt-bindings/net/ti-dp83867.h>
> +#include <dt-bindings/phy/phy-cadence.h>
> +#include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/mux/ti-serdes.h>
>  
>  / {
>  	compatible = "ti,j721s2-evm", "ti,j721s2";
> @@ -296,6 +299,25 @@ &cpsw_port1 {
>  	phy-handle = <&phy0>;
>  };
>  
> +&serdes_ln_ctrl {
> +	idle-states = <J721S2_SERDES0_LANE0_PCIE1_LANE0>, <J721S2_SERDES0_LANE1_USB>,
> +		      <J721S2_SERDES0_LANE2_EDP_LANE2>, <J721S2_SERDES0_LANE3_EDP_LANE3>;
> +};
> +
> +&serdes_refclk {
> +	clock-frequency = <100000000>;
> +};
> +
> +&serdes0 {
> +	serdes0_pcie_link: phy@0 {
> +		reg = <0>;
> +		cdns,num-lanes = <1>;
> +		#phy-cells = <0>;
> +		cdns,phy-type = <PHY_TYPE_PCIE>;
> +		resets = <&serdes_wiz0 1>;
> +	};
> +};
> +
>  &mcu_mcan0 {
>  	status = "okay";
>  	pinctrl-names = "default";

Reviewed-by: Ravi Gunasekaran <r-gunasekaran@ti.com>

-- 
Regards,
Ravi
