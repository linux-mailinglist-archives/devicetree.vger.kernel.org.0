Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABB3A699172
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 11:35:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbjBPKfq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 05:35:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229898AbjBPKfp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 05:35:45 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89A3654545
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:35:12 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id h17so1463820ljq.4
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 02:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=weW8aW4PndduIq/71klBgNgnbzX2oVj/BBuMpdwsPj0=;
        b=enrti5UVbStRXkWOZPz75/7i+Ms/eaeY5EjxVtg8P2N/Fo5U3FrpoPyxeSVAFKeKNW
         4rKRVhWonPCyxy1DpHyv0oq3uF4N6hgFnO33ko+Dz9fE1N6LC2+Ha5FezQ+zPhBKNwjL
         EN6R8NzuS0jjD07ZHnUOTmnjBF18IW00uOTiOkuE88EQE4OWXjz8X4RIKR6+Tvvygp+I
         IEcYOpnqG+uNhqduJKKxE+QKNMpUtmylx5GO++xlMk4FSt8xGuaIaPKUT8qYuULMuIkC
         GO6C+HrxV8oAC3npj3UUjxDSLDVRiQn0L4IuqDAehA06w6SIXPH1wGQbmrAQit4cqSl0
         Cn/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=weW8aW4PndduIq/71klBgNgnbzX2oVj/BBuMpdwsPj0=;
        b=ODkXNlFfL6nd2nUu4FvvOfCHi6TsV+Xz/vuBBSe8fAhan3jC2+nPKy0FQQ994eZvrQ
         Ib6I6j7cYHy5YjxC0qSuOAQxsf5LA2jLX/QD56MJWULV530WopJmj5+DG2CZuuDNGQM7
         qaX7EUo2vANstcEuApO1gmJnAoE/4xBfojezHSEiijPztdabD5O7KNnHGR1/qTdhc7eX
         gyBPSASNxCcB2NP9XsDSHiLfR4fEydNWH8RKuVqYce0MSstx1FOhxbjDYEbyARSXCmJI
         fARVZjRh18qEQtmbUz+hCQxmY3ZfpE5GjQfNw50yF9SXACQTf1/J6JAVGe3CP5EgzTG1
         zTFA==
X-Gm-Message-State: AO0yUKWf9tM0IgZKUe01orXJHalP66DD+ambnMpHB4lOVQZpM5jFGvmD
        pYBU3Nif9getInzBRT71sDJ1Dg==
X-Google-Smtp-Source: AK7set/nqZNA7P1VFq5fg6MOZ214d/TW4EOjVHA3rdkxlySkYEcIXjbE4mn6UW0WiBYwICIyz1T+kQ==
X-Received: by 2002:a2e:a98b:0:b0:293:5fce:12b3 with SMTP id x11-20020a2ea98b000000b002935fce12b3mr2027487ljq.1.1676543709518;
        Thu, 16 Feb 2023 02:35:09 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id u11-20020a2e854b000000b0028b6e922ba1sm141099ljj.30.2023.02.16.02.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 02:35:09 -0800 (PST)
Message-ID: <75e0e104-a37f-6372-bcc9-df10de5c7e03@linaro.org>
Date:   Thu, 16 Feb 2023 11:35:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [RESEND PATCH 03/12] arm64: dts: qcom: sm6350: Supply clock from
 cpufreq node to CPUs
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, viresh.kumar@linaro.org
References: <20230215070400.5901-1-manivannan.sadhasivam@linaro.org>
 <20230215070400.5901-4-manivannan.sadhasivam@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230215070400.5901-4-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> index 1e1d366c92c1..c46bb6dab6a1 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -46,6 +46,7 @@ CPU0: cpu@0 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x0>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> @@ -71,6 +72,7 @@ CPU1: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x100>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> @@ -92,6 +94,7 @@ CPU2: cpu@200 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x200>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> @@ -113,6 +116,7 @@ CPU3: cpu@300 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x300>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> @@ -134,6 +138,7 @@ CPU4: cpu@400 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x400>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> @@ -155,6 +160,7 @@ CPU5: cpu@500 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x500>;
> +			clocks = <&cpufreq_hw 0>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			dynamic-power-coefficient = <100>;
> @@ -177,6 +183,7 @@ CPU6: cpu@600 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x600>;
> +			clocks = <&cpufreq_hw 1>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1894>;
>  			dynamic-power-coefficient = <703>;
> @@ -198,6 +205,7 @@ CPU7: cpu@700 {
>  			device_type = "cpu";
>  			compatible = "qcom,kryo560";
>  			reg = <0x0 0x700>;
> +			clocks = <&cpufreq_hw 1>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1894>;
>  			dynamic-power-coefficient = <703>;
> @@ -2002,6 +2010,7 @@ cpufreq_hw: cpufreq@18323000 {
>  			clock-names = "xo", "alternate";
>  
>  			#freq-domain-cells = <1>;
> +			#clock-cells = <1>;
>  		};
>  	};
>  
