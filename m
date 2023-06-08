Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68822727B5D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 11:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232321AbjFHJ3V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 05:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235938AbjFHJ3N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 05:29:13 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27BBB2D6A
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 02:29:03 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3586H0pE024757;
        Thu, 8 Jun 2023 11:28:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=F4pyCRuUe4o5DvW+WPN9psEiiRx1S0h4gHiilDLeFmg=;
 b=a+CM1Dls4E1UlSBY2eXE9rvEHh/69PRSgv3kX5sfQXEdjRWXoHXAxYyTW8PcHqdD+gED
 6VAeTMXOhzVZ25IIvcPrLjjaDLstAOgTuMF1dNY7V24CEKoreiZQYeJlVpreI7IPTiDn
 7o6cgN9vmjl3WOv7QtORqAxQXlxgdzjFDWDf2RIsT1UxPsBzVmquUV/Z4y+im8jIna8U
 6qpmOjtMLRbFz0J6p7lNHhXP/frsFrIMmP2i+I1b4XzY9FR0TJXH8PsHUHVyS/sfss9H
 pkCahOp+b0r4MiodhMpMoNB3mv0Pe27HzC3o/RGY5F16FdWEeMi+o9Mau7vTrjq2UfSe gw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3r348936kn-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 08 Jun 2023 11:28:35 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5E98510002A;
        Thu,  8 Jun 2023 11:28:34 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3607A21D3FA;
        Thu,  8 Jun 2023 11:28:34 +0200 (CEST)
Received: from [10.201.21.93] (10.201.21.93) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Thu, 8 Jun
 2023 11:28:33 +0200
Message-ID: <6b6ed9e3-c420-8777-3c39-5fe558077388@foss.st.com>
Date:   Thu, 8 Jun 2023 11:28:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] ARM: dts: stm32: Fix audio routing on STM32MP15xx DHCOM
 PDK2
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230606180112.215896-1-marex@denx.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20230606180112.215896-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.93]
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-08_06,2023-06-07_01,2023-05-22_02
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On 6/6/23 20:01, Marek Vasut wrote:
> The audio routing flow is not correct, the flow should be from source
> (second element in the pair) to sink (first element in the pair). The
> flow now is from "HP_OUT" to "Playback", where "Playback" is source
> and "HP_OUT" is sink, i.e. the direction is swapped and there is no
> direct link between the two either.
> 
> Fill in the correct routing, where "HP_OUT" supplies the "Headphone Jack",
> "Line In Jack" supplies "LINE_IN" input, "Microphone Jack" supplies "MIC_IN"
> input and "Mic Bias" supplies "Microphone Jack".
> 
> Fixes: 34e0c7847dcf ("ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1 SoM and PDK2 board")
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi | 11 +++++++----
>   1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
> index 4709677151aac..46b87a27d8b37 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcom-pdk2.dtsi
> @@ -137,10 +137,13 @@ reg_panel_supply: regulator-panel-supply {
>   
>   	sound {
>   		compatible = "audio-graph-card";
> -		routing =
> -			"MIC_IN", "Capture",
> -			"Capture", "Mic Bias",
> -			"Playback", "HP_OUT";
> +		widgets = "Headphone", "Headphone Jack",
> +			  "Line", "Line In Jack",
> +			  "Microphone", "Microphone Jack";
> +		routing = "Headphone Jack", "HP_OUT",
> +			  "LINE_IN", "Line In Jack",
> +			  "MIC_IN", "Microphone Jack",
> +			  "Microphone Jack", "Mic Bias";
>   		dais = <&sai2a_port &sai2b_port>;
>   		status = "okay";
>   	};

Applied on stm32-next.

Thanks.
Alex
