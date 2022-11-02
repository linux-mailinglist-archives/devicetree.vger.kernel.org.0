Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36E4C616E64
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:14:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbiKBUOq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:14:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229681AbiKBUOp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:14:45 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC7E411B
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:14:43 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A2KEUjw016142;
        Wed, 2 Nov 2022 15:14:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667420070;
        bh=hPUaqV18sxUqO1cb1VBgcA8gp3YT2KW8fR+52Q8qbk8=;
        h=Date:Subject:To:CC:References:From:In-Reply-To;
        b=vDwvpl/Yv/MrCwzBAVtZ98bjQdNKELzqYziSMiS7Mm65h4rp2PjyVYe85wVDV3mX3
         wdGMS5oPVAl3ahAKr4uVxu6UX2/3HLVaOBoXfQuFV7iRzTSp4HPD7AyRTdJhADISGb
         2lg0yUpPVImCI61JFazKpQhAdJqU2heIdGmVIH64=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A2KEUTu024890
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 15:14:30 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 15:14:30 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 15:14:30 -0500
Received: from [128.247.81.95] (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A2KEU8Z041447;
        Wed, 2 Nov 2022 15:14:30 -0500
Message-ID: <615d6805-4b0c-c3ad-f4d7-dc0536e6cabe@ti.com>
Date:   Wed, 2 Nov 2022 15:14:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] arm64: dts: ti: rename clock-names adc_tsc_fck to fck
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <miquel.raynal@bootlin.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20221024151648.394623-1-mranostay@ti.com>
From:   Judith Mendez <jm@ti.com>
In-Reply-To: <20221024151648.394623-1-mranostay@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On 10/24/22 10:16, Matt Ranostay wrote:
> Avoid the following warnings from dt-schema by just renaming the
> clock-names string from adc_tsc_fck to fck so it matches the values in
> ti,am3359-tscadc.yaml
> 
> tscadc@40200000: clock-names:0: 'fck' was expected
> 

Tested on AM64x GP EVM.

Verified-by: Judith Mendez <jm@ti.com>

> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am64-main.dtsi        | 2 +-
>  arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi         | 4 ++--
>  arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi | 2 +-
>  arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi | 4 ++--
>  4 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> index d6aa23681bbe..b61c15427bf7 100644
> --- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
> @@ -612,7 +612,7 @@ tscadc0: tscadc@28001000 {
>  		assigned-clocks = <&k3_clks 0 0>;
>  		assigned-clock-parents = <&k3_clks 0 3>;
>  		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>  
>  		adc {
>  			#io-channel-cells = <1>;
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> index 8d592bf41d6f..1807ec4730cb 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi
> @@ -85,7 +85,7 @@ tscadc0: tscadc@40200000 {
>  		clocks = <&k3_clks 0 2>;
>  		assigned-clocks = <&k3_clks 0 2>;
>  		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>  		dmas = <&mcu_udmap 0x7100>,
>  			<&mcu_udmap 0x7101 >;
>  		dma-names = "fifo0", "fifo1";
> @@ -103,7 +103,7 @@ tscadc1: tscadc@40210000 {
>  		clocks = <&k3_clks 1 2>;
>  		assigned-clocks = <&k3_clks 1 2>;
>  		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>  		dmas = <&mcu_udmap 0x7102>,
>  			<&mcu_udmap 0x7103>;
>  		dma-names = "fifo0", "fifo1";
> diff --git a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> index 2025aab4b66f..3d9190a869c5 100644
> --- a/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi
> @@ -325,7 +325,7 @@ tscadc0: tscadc@40200000 {
>  		clocks = <&k3_clks 0 1>;
>  		assigned-clocks = <&k3_clks 0 3>;
>  		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>  		dmas = <&main_udmap 0x7400>,
>  			<&main_udmap 0x7401>;
>  		dma-names = "fifo0", "fifo1";
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> index 5d9ec221fa34..7799db6a167c 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
> @@ -216,7 +216,7 @@ tscadc0: tscadc@40200000 {
>  		clocks = <&k3_clks 0 1>;
>  		assigned-clocks = <&k3_clks 0 3>;
>  		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>  		dmas = <&main_udmap 0x7400>,
>  			<&main_udmap 0x7401>;
>  		dma-names = "fifo0", "fifo1";
> @@ -235,7 +235,7 @@ tscadc1: tscadc@40210000 {
>  		clocks = <&k3_clks 1 1>;
>  		assigned-clocks = <&k3_clks 1 3>;
>  		assigned-clock-rates = <60000000>;
> -		clock-names = "adc_tsc_fck";
> +		clock-names = "fck";
>  		dmas = <&main_udmap 0x7402>,
>  			<&main_udmap 0x7403>;
>  		dma-names = "fifo0", "fifo1";
