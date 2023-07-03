Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EE4D745BA3
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:52:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbjGCLwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjGCLwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:52:32 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7FD010E
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 04:52:31 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b6a0d91e80so69275371fa.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 04:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688385150; x=1690977150;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=20GlBc85v1FwrTmdhH/mgqthKR06RQ3/X0wm5P3u7x8=;
        b=tF4vbQdgxaofa7U671GBXWM6AT5zR57cpPw+3UKr3fYRL9tQAdsnGDAkoW8azeAxsl
         itpDccL3wysZgG3tN7KzucQ4GY4alTzfADU+mkCW9Q1BHd2/teSv3E7yaHoiJhsVtUuF
         OpR66/kvAu4un/YxE4Up6DHZuYqAOkNtHlRYVXl4lbkHnXRlWVjPxFVKcMcOnL3Cgx1H
         dCaT6MMH0q7BSP8ipMwMWoyxig8vq9c5+Q5bOj0d4y5QG/jFnCUPl1erIXUnEEMaJSaJ
         yBMPHCRD+7Kr938HdWhrs2NeQHUVNjicUjYAV7KKK1O844Ay1o8J1Y7AMe+/Hi4H4jox
         cH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688385150; x=1690977150;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=20GlBc85v1FwrTmdhH/mgqthKR06RQ3/X0wm5P3u7x8=;
        b=e6n0dRs6kUQMR8xi74bWMBbsxriCdsD31wQrptjSHYO9rdBO/ds3PS1+yaj4yRPb7a
         YpgOJhc+f20bAWZYMinPAMIvy2hWS5l9helXoNnLJbiKBP1Vewg+rz9JSDDEJuyJglkw
         A15De/QyZREtXU8i+laP9QkJNIuoM1VGLi2fNWf4i++AReNWH5PzdDYwEbbbtA/Qrpf4
         qqrJs8UwjrU6O+S0Qtro7jgGCoFQ+iO+/LOq/tFHe2mW0jwO62r5MazayVewOkj8j+4/
         c6n6yDa+Fc18SDsVAqT5Ib4EVEPs1CCbVSWavluqkuoIJEIXG8sXQvjdDoJJz86wiLdf
         eBzg==
X-Gm-Message-State: ABy/qLb3kLK588qqEDwFiahOiBwDjSD2rw/En5Kwb5VobTIhoWGT+w2Q
        yGEoujgcD82o09x+c+kdfl2tSaYJYjE9o2EjN4EtYg==
X-Google-Smtp-Source: APBJJlGBrSFw60tfUkOICnu1wP1nGi8gmJ3D0uc5VK3FJjrqczROW7Sc/GcI9CU5f7VNZyF/SNECaQ==
X-Received: by 2002:a2e:8885:0:b0:2b5:80e0:f18e with SMTP id k5-20020a2e8885000000b002b580e0f18emr6735244lji.3.1688385149856;
        Mon, 03 Jul 2023 04:52:29 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id p15-20020a2e804f000000b002b6ad323248sm3828504ljg.10.2023.07.03.04.52.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:52:29 -0700 (PDT)
Message-ID: <779b83d9-eba3-619e-423f-ca6ecfea2055@linaro.org>
Date:   Mon, 3 Jul 2023 13:52:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 17/27] ARM: dts: qcom: pm8018: move reg property
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
 <20230702134320.98831-18-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230702134320.98831-18-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2.07.2023 15:43, Dmitry Baryshkov wrote:
> Move reg property to come after compatible.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom/pm8018.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
> index c602544900b2..85ab36b6d006 100644
> --- a/arch/arm/boot/dts/qcom/pm8018.dtsi
> +++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
> @@ -27,9 +27,9 @@ pwrkey@1c {
>  
>  		pm8018_mpps: mpps@50 {
>  			compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
> +			reg = <0x50>;
>  			interrupt-controller;
>  			#interrupt-cells = <2>;
> -			reg = <0x50>;
>  			gpio-controller;
>  			#gpio-cells = <2>;
>  			gpio-ranges = <&pm8018_mpps 0 0 6>;
> @@ -37,9 +37,9 @@ pm8018_mpps: mpps@50 {
>  
>  		rtc@11d {
>  			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
> +			reg = <0x11d>;
>  			interrupt-parent = <&pm8018>;
>  			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> -			reg = <0x11d>;
>  			allow-set-time;
>  		};
>  
