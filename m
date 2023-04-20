Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EECE6E90BE
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 12:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234625AbjDTKqg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 06:46:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234701AbjDTKpw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 06:45:52 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF47A72BB
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:45:10 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id j11so2214828ljq.10
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681987507; x=1684579507;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WanydDH+DUNdZ+ajUSrm6nqSv30NntmhEufY3oYv4QI=;
        b=vAuQDGuVUkXyWcadXibSo5MXWFZlw6tmeL5bqFqVONvzV152TnGynyRWQqtV0+S6+v
         lggtevKAY+OG0cFmJdESE4ZeyQcjhQRl0bFKb02l8jyvrGeNQKRLqwi1QsHMY6jiOqbP
         Z9mtTcJ1KcnNiuCN6j5MeRtMvZeG92lKYC4jzNMQvk6D+6rq61U+EIa1BJM3afuBcBGW
         L8yh/fyHAIx8NP0aAkG6k0Bs8bv/KMvMQLS6T2e50dqZwaiFnuH74IdtWF2D3tcb0sCH
         8sKxDJ9cCYKm3zlfw/uywn1OkZWwE7w695i9ARouqHf8G3QqB2Ra7pM9OvEujSugAb1K
         q7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681987507; x=1684579507;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WanydDH+DUNdZ+ajUSrm6nqSv30NntmhEufY3oYv4QI=;
        b=LWNSsSzroYRO/Rile1KObAC0YNyzWI1EqODx201VBlLhxbmPKL1BEyp92xchav3u3Y
         9j20qjUHNO5+GZyDUYYUea/kN/IRfQB587MR6+bH/FueCCx8spzB6hsOKo6mlc5BFgbb
         oxxFLbdc7hSGXl151cOzfXopzmtjZo1JqL/b0GMnsqAO54zsUbADkLqy89VpZGgpRxw0
         i8fz5j4Wlraw2vVyxyiY/dbNBegD3ZmgFxKsDAIeTi/rIiufvwbZI1yiHino9qcI61ZY
         ImSXRBdwSHaMQ7B5PHebxV/0iF38bEFp6Oz0VdaLzQ9n22v2loXt6m6GGrTqbnJNA+FZ
         JQ1w==
X-Gm-Message-State: AAQBX9eLYvZ+7xGXnu8rOzLs2kIuEPirQcJxOQt3kXXH11hja7jMjZp2
        6Gj5SR8AMccyIi4KQU530bJVHQ==
X-Google-Smtp-Source: AKy350Y/MnVzrogXe61JD5piGhI0C0s+c4DKcth5haG6C6YouJq8M4agJnRMmj4KLb1mdt7R9UeTaw==
X-Received: by 2002:a2e:8917:0:b0:2a8:ccd3:4c40 with SMTP id d23-20020a2e8917000000b002a8ccd34c40mr445460lji.13.1681987506892;
        Thu, 20 Apr 2023 03:45:06 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id q4-20020a2e84c4000000b002a9ee18e9c7sm41553ljh.69.2023.04.20.03.45.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 03:45:06 -0700 (PDT)
Message-ID: <29f018cd-8843-c85c-437e-c7ab422e1a0c@linaro.org>
Date:   Thu, 20 Apr 2023 12:45:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm6125: add unit address to soc
 node
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230420063610.11068-1-krzysztof.kozlowski@linaro.org>
 <20230420063610.11068-7-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230420063610.11068-7-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20.04.2023 08:36, Krzysztof Kozlowski wrote:
> "soc" node is supposed to have unit address:
> 
> Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6125.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
> index 9484752fb850..745874a82a49 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
> @@ -364,7 +364,7 @@ smem: smem {
>  		hwlocks = <&tcsr_mutex 3>;
>  	};
>  
> -	soc {
> +	soc@0 {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		ranges = <0x00 0x00 0x00 0xffffffff>;
