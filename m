Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46236704D90
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 14:14:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232278AbjEPMOZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 08:14:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231888AbjEPMOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 08:14:24 -0400
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A27E6FA
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 05:14:23 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34G8lCVS014910;
        Tue, 16 May 2023 14:13:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=4D/lBeJGIR3TfTKha5AOxBhf8+e1rumLjgteYtlOQI4=;
 b=lBtlxTQGLXdLlSqLfx6re7xIJcC5BepLejfHa+8RFCXv1QiBizsql+t8LlbD92C5zO+G
 5afDbrWizphxCbWwuln0hRmmU5m2A5n/H0eVvYejl3XQWkQgzDT4wXQBfePKc9wHV0V4
 UpExudNWakPPTsVvK3VEO0tTw912Rt0dRiHAlHuQIJpUjzcYAAGBYBYjzn1ulta+SyU8
 pzO76/XmEXK36NTQwIjebtD8ehkD1ik99dtqL39sPLGkBYgd5JiBwZiuRXyLtmgGFzhQ
 1DWbxj9PMC0hS54liNtBTId3Dt5fbsKeoecuKEAqc+I+pCSx+moNIbwPA3rKGsnR620M nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3qkhp0gh4y-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 16 May 2023 14:13:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A331410002A;
        Tue, 16 May 2023 14:13:55 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9586A227896;
        Tue, 16 May 2023 14:13:55 +0200 (CEST)
Received: from [10.252.0.230] (10.252.0.230) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Tue, 16 May
 2023 14:13:54 +0200
Message-ID: <9e4126cb-99f7-76b5-a99f-8d607df03289@foss.st.com>
Date:   Tue, 16 May 2023 14:13:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] ARM: dts: stm32: Replace deprecated st,hw-flow-ctrl with
 uart-has-rtscts
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
CC:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        <kernel@dh-electronics.com>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20230407210152.138549-1-marex@denx.de>
From:   Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20230407210152.138549-1-marex@denx.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.252.0.230]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-16_05,2023-05-16_01,2023-02-09_01
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek

On 4/7/23 23:01, Marek Vasut wrote:
> Replace deprecated st,hw-flow-ctrl with uart-has-rtscts .
> No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---


Applied on stm32-next.

Thanks.
Alex

> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
>   arch/arm/boot/dts/stm32h750i-art-pi.dts            | 2 +-
>   arch/arm/boot/dts/stm32mp157a-stinger96.dtsi       | 4 ++--
>   arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 2 +-
>   3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32h750i-art-pi.dts b/arch/arm/boot/dts/stm32h750i-art-pi.dts
> index f3e70d3b65ac4..44c307f8b09cf 100644
> --- a/arch/arm/boot/dts/stm32h750i-art-pi.dts
> +++ b/arch/arm/boot/dts/stm32h750i-art-pi.dts
> @@ -208,7 +208,7 @@ &usart3 {
>   	dmas = <&dmamux1 45 0x400 0x05>,
>   	       <&dmamux1 46 0x400 0x05>;
>   	dma-names = "rx", "tx";
> -	st,hw-flow-ctrl;
> +	uart-has-rtscts;
>   	status = "okay";
>   
>   	bluetooth {
> diff --git a/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi b/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
> index 3a36f7fe0a2c3..5f85598cc7c6b 100644
> --- a/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157a-stinger96.dtsi
> @@ -287,7 +287,7 @@ &usart2 {
>   	pinctrl-names = "default", "sleep";
>   	pinctrl-0 = <&usart2_pins_b>;
>   	pinctrl-1 = <&usart2_sleep_pins_b>;
> -	st,hw-flow-ctrl;
> +	uart-has-rtscts;
>   	/delete-property/dmas;
>   	/delete-property/dma-names;
>   	status = "okay";
> @@ -297,7 +297,7 @@ &usart2 {
>   &uart4 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&uart4_pins_c>;
> -	st,hw-flow-ctrl;
> +	uart-has-rtscts;
>   	/delete-property/dmas;
>   	/delete-property/dma-names;
>   	status = "okay";
> diff --git a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
> index 50af4a27d6be4..8232bbbae379c 100644
> --- a/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
> @@ -452,7 +452,7 @@ &usart2 {
>   	pinctrl-names = "default", "sleep";
>   	pinctrl-0 = <&usart2_pins_a>;
>   	pinctrl-1 = <&usart2_sleep_pins_a>;
> -	st,hw-flow-ctrl;
> +	uart-has-rtscts;
>   	/delete-property/dmas;
>   	/delete-property/dma-names;
>   	status = "okay";

