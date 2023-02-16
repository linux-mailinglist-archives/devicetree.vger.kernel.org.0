Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD696991C3
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbjBPKjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:39:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230121AbjBPKjW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:39:22 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 874F15258
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:38:51 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id k24so1466306ljn.5
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3mD0HHNj7WaJzjffm1YqyhZ/UjHTpC1i4BfYU1BFMzo=;
        b=je5QDz86XFZ9Mo+siICh+rYaV3xSSfLmVvPSbu2ViVuDh03j+ocmP/N7BMGA+V0An9
         KfXRq9S0c/U/MaeuoJ7TObDD7yS6iAz927rjXwh0UBO5zc/Y4v96bH0oEsvZPO+6bwZY
         u/sC0RdxTxB0gwAcGkBZ5tePro+mF4Cciy+Fo1dZhbkLMDVTtKAZbh44TAKv2qBy2soX
         9PpTO8whLU21E4WC4sVdHuZvDXwni/qyIXaZUQCI24H8FhySuc8dtq0/Wp7x0/5GpMt2
         uunoyjG35PYVij538z1jeWxS/dNw0VNLxDaa7Q0hUvKRu6OKxwYOfobPcYTrZ7X1GMrU
         SKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3mD0HHNj7WaJzjffm1YqyhZ/UjHTpC1i4BfYU1BFMzo=;
        b=ecw/s/e5LilGEn8puLmKPh4dod5gn+0QsAnhKLbokjyqow0scnnst5FiipxQs+ASCG
         zs4IdEqB1HZN9tBJ+rznCjrPpuuyhmTdPHN+KEGS4h9XR0PHG/iR6sLYLQ7wjr6e+DRC
         j2LWb+0WdBcvopoLjd869GXzo5QjRWxIB2pgcmcRmXIvqbSS/90GTo63RIyoj1plNwYQ
         hw2GfFIkyfMX3rLUiwAF2eyR0lWDURnpD96v9zg95TlhscCtwVUN1/U6LTQXK0ReOTIg
         WSSDSlEm7bH8AdVe9oMgRekfGshbco+Y6aRapOCmNDcqvz6ALvZEmtVh9AwXH79nyhfG
         Zn9Q==
X-Gm-Message-State: AO0yUKW6DjC8ybEhLLPoms7RbqYR4cC3UubP2W+gf1RLGFyidJIGL/yu
        /wi5+29mjR09OeilDqk1riqDzg==
X-Google-Smtp-Source: AK7set/Dz2xx+OrikilNhE+Zb5on4Yfn7Bbjf+oP1stt5+GWaLlFYzK1h2MdX6m1cGLlJ06MpeoLNw==
X-Received: by 2002:a2e:7d15:0:b0:292:8283:2c03 with SMTP id y21-20020a2e7d15000000b0029282832c03mr1421772ljc.51.1676543916244;
        Thu, 16 Feb 2023 02:38:36 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id t11-20020ac24c0b000000b004b5241dc8cfsm250299lfq.10.2023.02.16.02.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:38:35 -0800 (PST)
Message-ID: <375f611f-b5ba-363e-f8a2-32f3818db770@linaro.org>
Date:   Thu, 16 Feb 2023 11:38:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [RESEND PATCH 07/12] arm64: dts: qcom: sc7180: Supply clock from
 cpufreq node to CPUs
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, viresh.kumar@linaro.org
References: <20230215070400.5901-1-manivannan.sadhasivam@linaro.org>
 <20230215070400.5901-8-manivannan.sadhasivam@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230215070400.5901-8-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15.02.2023 08:03, Manivannan Sadhasivam wrote:
> Qualcomm platforms making use of CPUFreq HW Engine (EPSS/OSM) supply clocks
> to the CPU cores. But this relationship is not represented in DTS so far.
> 
> So let's make cpufreq node as the clock provider and CPU nodes as the
> consumers. The clock index for each CPU node is based on the frequency
> domain index.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index ebfa21e9ed8a..53f0076f20f6 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -76,6 +76,7 @@ CPU0: cpu@0 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x0>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>  					   &LITTLE_CPU_SLEEP_1
> @@ -103,6 +104,7 @@ CPU1: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x100>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>  					   &LITTLE_CPU_SLEEP_1
> @@ -126,6 +128,7 @@ CPU2: cpu@200 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x200>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>  					   &LITTLE_CPU_SLEEP_1
> @@ -149,6 +152,7 @@ CPU3: cpu@300 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x300>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>  					   &LITTLE_CPU_SLEEP_1
> @@ -172,6 +176,7 @@ CPU4: cpu@400 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x400>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>  					   &LITTLE_CPU_SLEEP_1
> @@ -195,6 +200,7 @@ CPU5: cpu@500 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x500>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&LITTLE_CPU_SLEEP_0
>  					   &LITTLE_CPU_SLEEP_1
> @@ -218,6 +224,7 @@ CPU6: cpu@600 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x600>;
> +			clocks = <&cpufreq_hw 1>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&BIG_CPU_SLEEP_0
>  					   &BIG_CPU_SLEEP_1
> @@ -241,6 +248,7 @@ CPU7: cpu@700 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo468";
>  			reg = <0x0 0x700>;
> +			clocks = <&cpufreq_hw 1>;
>  			enable-method = "psci";
>  			cpu-idle-states = <&BIG_CPU_SLEEP_0
>  					   &BIG_CPU_SLEEP_1
> @@ -3578,6 +3586,7 @@ cpufreq_hw: cpufreq@18323000 {
>  			clock-names = "xo", "alternate";
>  
>  			#freq-domain-cells = <1>;
> +			#clock-cells = <1>;
>  		};
>  
>  		wifi: wifi@18800000 {
