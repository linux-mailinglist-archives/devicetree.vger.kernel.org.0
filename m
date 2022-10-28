Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD4516109C5
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 07:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbiJ1FiV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 01:38:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiJ1FiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 01:38:19 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1874E17D288
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 22:38:19 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29S5c3dl045473;
        Fri, 28 Oct 2022 00:38:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666935483;
        bh=s0xFz2plRfRSju8ZtL/CUHklCrryvz/0owwLgOZwtqs=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=x9VlJx6kGW0ZdI4BN+wCvwBlvPJvERs6jl/Z3EpvV1nImPwMG3ENG2xTV4QhkpiPQ
         mKTp6vnj55S+2Zwiu2kJArGzwEcW38eRN3URuk0ebNsojsJCEPmTA48t9b9dw+x/fc
         L3qQCO/1dfCfBzm+WO0YoUvkjtVGNdc172CPXjbY=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29S5c3tJ033882
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 Oct 2022 00:38:03 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Fri, 28
 Oct 2022 00:38:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Fri, 28 Oct 2022 00:38:03 -0500
Received: from [10.250.234.138] (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29S5bxIJ119921;
        Fri, 28 Oct 2022 00:38:00 -0500
Message-ID: <4e174a4f-cfea-c6a4-809d-02e16d361f10@ti.com>
Date:   Fri, 28 Oct 2022 11:07:59 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] arm64: dts: ti: rename clock-names adc_tsc_fck to fck
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <miquel.raynal@bootlin.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20221024151648.394623-1-mranostay@ti.com>
From:   "Gole, Dhruva" <d-gole@ti.com>
In-Reply-To: <20221024151648.394623-1-mranostay@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 10/24/2022 8:46 PM, Matt Ranostay wrote:
> Avoid the following warnings from dt-schema by just renaming the
> clock-names string from adc_tsc_fck to fck so it matches the values in
> ti,am3359-tscadc.yaml
>
> tscadc@40200000: clock-names:0: 'fck' was expected
>
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---

This patch LGTM.

Reviewed-by: Dhruva Gole <d-gole@ti.com>

>   arch/arm64/boot/dts/ti/k3-am64-main.dtsi        | 2 +-
>   arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 4 ++--
>   arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 2 +-
>   arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 4 ++--
>   4 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> index d6aa23681bbe..b61c15427bf7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> @@ -612,7 +612,7 @@ tscadc0: tscadc@28001000 {
>   		assigned-clocks = <&k3_clks 0 0>;
>   		assigned-clock-parents = <&k3_clks 0 3>;
>   		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>   
>   		adc {
>   			#io-channel-cells = <1>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> index 8d592bf41d6f..1807ec4730cb 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> @@ -85,7 +85,7 @@ tscadc0: tscadc@40200000 {
>   		clocks = <&k3_clks 0 2>;
>   		assigned-clocks = <&k3_clks 0 2>;
>   		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>   		dmas = <&mcu_udmap 0x7100>,
>   			<&mcu_udmap 0x7101 >;
>   		dma-names = "fifo0", "fifo1";
> @@ -103,7 +103,7 @@ tscadc1: tscadc@40210000 {
>   		clocks = <&k3_clks 1 2>;
>   		assigned-clocks = <&k3_clks 1 2>;
>   		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>   		dmas = <&mcu_udmap 0x7102>,
>   			<&mcu_udmap 0x7103>;
>   		dma-names = "fifo0", "fifo1";
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> index 2025aab4b66f..3d9190a869c5 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> @@ -325,7 +325,7 @@ tscadc0: tscadc@40200000 {
>   		clocks = <&k3_clks 0 1>;
>   		assigned-clocks = <&k3_clks 0 3>;
>   		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>   		dmas = <&main_udmap 0x7400>,
>   			<&main_udmap 0x7401>;
>   		dma-names = "fifo0", "fifo1";
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index 5d9ec221fa34..7799db6a167c 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -216,7 +216,7 @@ tscadc0: tscadc@40200000 {
>   		clocks = <&k3_clks 0 1>;
>   		assigned-clocks = <&k3_clks 0 3>;
>   		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>   		dmas = <&main_udmap 0x7400>,
>   			<&main_udmap 0x7401>;
>   		dma-names = "fifo0", "fifo1";
> @@ -235,7 +235,7 @@ tscadc1: tscadc@40210000 {
>   		clocks = <&k3_clks 1 1>;
>   		assigned-clocks = <&k3_clks 1 3>;
>   		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>   		dmas = <&main_udmap 0x7402>,
>   			<&main_udmap 0x7403>;
>   		dma-names = "fifo0", "fifo1";
