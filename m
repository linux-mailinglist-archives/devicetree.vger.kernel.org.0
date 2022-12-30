Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD4B659E87
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 00:42:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235686AbiL3Xmi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 18:42:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235701AbiL3Xmh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 18:42:37 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E260E1DF34
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 15:42:35 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id z26so33542615lfu.8
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 15:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xLrnsQ1eOmHmsIwEqP5zlFk//c4n3hKPLBzlzHX1l40=;
        b=DqFk0FZFywhp/wCLw8VMnoe/ydSKS03wJCbtJm2qgyCyTK/ZDls/nU21jIG/+0u72D
         R5BcYfih4fFS2D/po86Ry8Ma5SqMe+BOi84cthfR5y4ScimWvFwUwI5CdQz98W/J4KEz
         QtQjjyvDn4/d8CCfjDrogBgexJFm4up/mutImIoIJ02WF0geX55p1hzs+e4cEVEfY1x9
         cYpYAkLuzr+iaUue/45DSQiRidVrvj+A2myDY24moK9QrVzUVu4npRSKsVzNXfczq60I
         DDFD9etGuuaNzw1+gV8wsYhXcp9gv4cPNZ411PwqpEUrcuvWl/2yI0LdgV66R8d4ZmTK
         G26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xLrnsQ1eOmHmsIwEqP5zlFk//c4n3hKPLBzlzHX1l40=;
        b=ZVMtR/g4LHb8aMezOtoX2eM7B1Zz27HZDaFgh15kLAA9RHp8orUoLcjzaGv1ysMKbJ
         9UpUI3xtORrQilvNvA5wv3RoDOKYZoX8+DyBuVMvR6jFRNp9SwD6gZAIbhx5SkKT4mlY
         BpYYdzDBl7iCsG5SGChRPcf4K94fBKCkaAE9N6J7ZXK33K0dHbSkjqh8IwhudMjyd3fu
         qQzPwCYg0yZMYd8ih34+UC3efL3ikG7t5jowt16kvGzhKgbKIthIMKW4xTgG0mNhP2ue
         QCUTGPUTguU7LORl8s9xpQrZXup7QHWPP26v3SrKbQq0/N9mzBO/4dsyArjX8zN/vxAl
         v20A==
X-Gm-Message-State: AFqh2kr3NoEYjSMgGzqIBD7Unzx/F3TGDpV28pWDKJfTbbX2ynwaaqK7
        Gj1o9ybzwIDXZfpi5Flhkx6KbA==
X-Google-Smtp-Source: AMrXdXv3OZWrdowYrnbhewO3XRhqIhJjdlklFI8XJ361JT+dRoKkkaaa8MN9/9BliAKCAuRMEy9d+g==
X-Received: by 2002:a05:6512:b25:b0:4b4:b8fc:4ac5 with SMTP id w37-20020a0565120b2500b004b4b8fc4ac5mr10567970lfu.3.1672443754180;
        Fri, 30 Dec 2022 15:42:34 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id c1-20020ac25f61000000b0049f54c5f2a4sm3660796lfc.229.2022.12.30.15.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 15:42:33 -0800 (PST)
Message-ID: <541b8ba4-0779-2080-4516-40283e5de047@linaro.org>
Date:   Sat, 31 Dec 2022 00:42:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 3/7] arm64: dts: qcom: sm6375: align PSCI domain names
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
 <20221230160103.250996-3-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221230160103.250996-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30.12.2022 17:00, Krzysztof Kozlowski wrote:
> Bindings expect power domains to follow generic naming pattern:
> 
>   sm6375-sony-xperia-murray-pdx225.dtb: psci: 'cpu-cluster0', 'cpu0', 'cpu1', 'cpu2', 'cpu3', 'cpu4', 'cpu5', 'cpu6',
>     'cpu7' do not match any of the regexes: '^power-domain-', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6375.dtsi | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
> index 12cf5dbe5bd6..31b88c738510 100644
> --- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
> @@ -264,55 +264,55 @@ psci {
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
>  			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
>  		};
>  
> -		CPU_PD5: cpu5 {
> +		CPU_PD5: power-domain-cpu5 {
>  			#power-domain-cells = <0>;
>  			power-domains = <&CLUSTER_PD>;
>  			domain-idle-states = <&LITTLE_CPU_SLEEP_0>;
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
