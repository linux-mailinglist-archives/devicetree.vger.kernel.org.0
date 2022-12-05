Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 050D664273A
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 12:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231483AbiLELLI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 06:11:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231644AbiLELLA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 06:11:00 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C27171741E
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 03:10:57 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id t17so1549111eju.1
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 03:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RK6ueAfA13DOhTvtmgyY4wFbMcoAzz4dewYC+swuv+M=;
        b=XqgH9E/1wAM4zYfPFk9uCbu6YpIBCURafdqdiMyibMDT+OGpyawM9rQCwT4UIW+V5n
         jFg1lKlbwJ7wp0Vl9ddfCNQU5iVfb0TYLwBv9rZ/CVYRzCHlQqId4PPlb/FCX4t167qE
         dHQDTBRU9xIXuqov9ge73NxjV1Dm9hDdOUj+8KPppg0uOueulxWuXXP/VVCeLMpdX5QA
         CLwuFbiX1RKz7QIYfJf6qGt94YPyqPwanx2z395IMiLCGxN9S8623R+wyH1ff7vA6T9V
         7NSrNzIvNYjaiPZvuIG/9VOe7DdsSa/t5UPgZubd/OC5ttOwAhJlTDz77n8/waY/nIdD
         7tFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RK6ueAfA13DOhTvtmgyY4wFbMcoAzz4dewYC+swuv+M=;
        b=olj5oY2xdej+fCFBd3iLKSHhcDQllDytMx69rgN2BHylKzJnSaajKe6eVYp4mm1aOT
         q7W6qoZWbBX0vsdLtppbefHAsgHJeXJ5gyyVM3W5Gv98NIxNTMitnGj5CLgOkmgrHPyA
         0CFt9Q4qZ4ZK/PlLZSF8WL0GY6DbQrm0e68mM5vRhqc+1ZUeMPmC1KSI5qAjgWnRFl6P
         qhUKOlK4g0K9lsU9xbyaUZVPE2q3J//6+wKAl3KMNNELCqzCHqMlftInp+E3iBk5fw5b
         2nzH9bK6yAlZgOAwNbos1NmMsT8fAvXt+WjUdq8lw+85MZh3rm8gnoWjyEouC8YR7Y1Q
         flyw==
X-Gm-Message-State: ANoB5pk2nDc8b/4XZE9kMBbBkjhh4Jolmz/KxYKOyIIeUAHnM606wGp/
        dJoUjt6kIvAh+jtmVhUQ+HRWoQ==
X-Google-Smtp-Source: AA0mqf7L47mbYWswBLPKPqALt9t2xuULaoyczUVHXTE6A/YRFRQMZZ7+9JsGBFjyslF7M9iSJrjNjA==
X-Received: by 2002:a17:906:1cda:b0:7c0:b9cc:2a60 with SMTP id i26-20020a1709061cda00b007c0b9cc2a60mr13374576ejh.362.1670238656374;
        Mon, 05 Dec 2022 03:10:56 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id p13-20020a056402154d00b0046778ce5fdfsm2614820edx.10.2022.12.05.03.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 03:10:55 -0800 (PST)
Message-ID: <2996937f-4031-d2bb-3bd0-282c3ef986c7@linaro.org>
Date:   Mon, 5 Dec 2022 12:10:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.0
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sda660-inforce-ifc6560: fix no-mmc
 property for SDHCI
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221204094438.73288-1-krzysztof.kozlowski@linaro.org>
 <20221204094438.73288-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221204094438.73288-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/12/2022 10:44, Krzysztof Kozlowski wrote:
> There is no "no-emmc" property, so intention for SD/SDIO only nodes was
> to use "no-mmc":
> 
>    qcom/sda660-inforce-ifc6560.dtb: mmc@c084000: Unevaluated properties are not allowed ('no-emmc' was unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
> index cddbeade1ffc..7c81918eee66 100644
> --- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
> +++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
> @@ -438,7 +438,7 @@ &sdhc_2 {
>   
>   	cd-gpios = <&tlmm 54 GPIO_ACTIVE_LOW>;
>   	no-sdio;
> -	no-emmc;
> +	no-mmc;
>   };
>   
>   &tlmm {
