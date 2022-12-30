Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C78E8659E84
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 00:42:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235678AbiL3XmT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 18:42:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235683AbiL3XmN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 18:42:13 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 360D3120AF
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 15:42:12 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id z7so17728993ljq.12
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 15:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0WtB0k/0geZ551s5KdQm3v8CugPdor0N8zLQW2G2EBk=;
        b=UqAdhq4vjABLugFvncVSApOu7v0Pm9JSshLd43aGQz2bve44Ng83QS0GYWJsLn9aAw
         37kRBpuebReKYC4w86FUfb54ujpCLYbnIOO+UVdZFq6aZKKID/RRzIRLr04pcRZefu8l
         VP291TyUyDcTRFEmbKeufVTJpDnsDQCbmUjxbGPMRO0kvXfwenHHMHuFf0EDFtFMHaMH
         7k/EQ5dnEzlRD5kGrVeFJaCI9rm3WAvi0wOkfTKkU16LE6py8YgMgVEeJ41AWxzsxolO
         4hFmJbfsmV9H+IN/+OR/eJAiymShjHAM90x3tFlfB2HXrez2vCqDhLWe0tSM/C8v8elC
         qPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0WtB0k/0geZ551s5KdQm3v8CugPdor0N8zLQW2G2EBk=;
        b=hqo/1N/nMbTMkIRPWJ9zK5I9Mf/IvPSV2PRx6jibSSJ7t1al3Mo1S0QR2jO5EqidBZ
         nmZlMn8rXLBtiPOLNVDvEC1b7bpcnvDzmsILXdQQjmtY3RKjLXe3KcHOY9bmsRqBTdYA
         0QKbg7a/CpjBxg5oA4EvFSvRU3rBOjByWaRHlb2Xp7tfRtIWDb4uQkW+lGqKfZW0btwM
         4beh2ROu08j6Vh+GNZ2Yh2J2YVPBiMKii9uvrWHAxpIP5DVXbXi24Ss4Cuclfi5gtRXC
         0bvkDOG5PeeCa5D1ALYQlH7V/9m0/artHd2p9+1gFblAzMBiFeb6wdU+lfCpzgiVbPrV
         a6XA==
X-Gm-Message-State: AFqh2koNX+7hh0gmtkviJKNBuD8VYpmZ4koTbZwmQsEwrT1zeemqpdqm
        8EfyLOVelGEGLrw+sJBSDkyXxQ==
X-Google-Smtp-Source: AMrXdXuqHlgJK8z7ubiOQ7/3A5n2XWyn/2sTREzaEL8rhX4soe6U2miIrg4f9BQZUwyAFOK7fjEokg==
X-Received: by 2002:a2e:b015:0:b0:27f:dfe4:4bdd with SMTP id y21-20020a2eb015000000b0027fdfe44bddmr1161377ljk.15.1672443730612;
        Fri, 30 Dec 2022 15:42:10 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id o5-20020a05651205c500b004cb0bc96172sm2059497lfo.278.2022.12.30.15.42.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 15:42:10 -0800 (PST)
Message-ID: <40dd8f01-dcfe-7b05-d2a3-ff1a162b4061@linaro.org>
Date:   Sat, 31 Dec 2022 00:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/7] arm64: dts: qcom: sc8280xp: align PSCI domain names
 with DT schema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221230160103.250996-1-krzysztof.kozlowski@linaro.org>
 <20221230160103.250996-2-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221230160103.250996-2-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30.12.2022 17:00, Krzysztof Kozlowski wrote:
> Bindings expect power domains to follow generic naming pattern:
> 
>   sc8280xp-crd.dtb: psci: 'cpu-cluster0', 'cpu0', 'cpu1', 'cpu2', 'cpu3', 'cpu4', 'cpu5', 'cpu6',
>     'cpu7' do not match any of the regexes: '^power-domain-', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> index d14663c9f34c..c39e51391286 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
> @@ -549,55 +549,55 @@ psci {
>  		compatible = "arm,psci-1.0";
>  		method = "smc";
>  
> -		CPU_PD0: cpu0 {
> +		CPU_PD0: power-domain-cpu0 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD1: cpu1 {
> +		CPU_PD1: power-domain-cpu1 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD2: cpu2 {
> +		CPU_PD2: power-domain-cpu2 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD3: cpu3 {
> +		CPU_PD3: power-domain-cpu3 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD4: cpu4 {
> +		CPU_PD4: power-domain-cpu4 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&BIG_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD5: cpu5 {
> +		CPU_PD5: power-domain-cpu5 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&BIG_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD6: cpu6 {
> +		CPU_PD6: power-domain-cpu6 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&BIG_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD7: cpu7 {
> +		CPU_PD7: power-domain-cpu7 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&BIG_CPU_SLEEP_0>;
>  		};
>  
> -		CLUSTER_PD: cpu-cluster0 {
> +		CLUSTER_PD: power-domain-cpu-cluster0 {
>  			#power-domain-cells = <0>;
>  			domain-idle-states = <&CLUSTER_SLEEP_0>;
>  		};
