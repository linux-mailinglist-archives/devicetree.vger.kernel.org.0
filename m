Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A82D6B71A6
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 09:53:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230176AbjCMIxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 04:53:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbjCMIxK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 04:53:10 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 096965942A
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:50:34 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s20so14663056lfb.11
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678697432;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4kISuTIdSWojYVUO7a44Ca9HM94avYwnCGGlE/PB0uQ=;
        b=sBn4UTeJ8hrREsyBq5FazN2Ya2hXACUc2wyfokH9aQ9DFJbxe3H/wrSpSsrdOwCiOx
         uDMJVFoehjD/7ZigJe9GyCUZbWe2qgVR0Vz4nuIuo/L1YDnXWPQIsVJX0t8qjMRyhL1y
         ZD5qATvWJBpQgbNVC2LUfFhbheFpOUCUqeMLMm0Z2wbpzNQfat/F88DDJ1hFA36aWA7L
         yU5poCMAqAH6t9ApMmgc1DjCYDAcEkNUm1+42dXRPx8OjVlY37E2BMSeHVpbof2PeRrE
         BWrYFGokdWx04EKO5bF+bIplQvl/+aYiFNXckUpIPTGUC6ujyB9f15rYK4DOAOsR//UT
         MEPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678697432;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4kISuTIdSWojYVUO7a44Ca9HM94avYwnCGGlE/PB0uQ=;
        b=wFjvvDrhlroEG/YrqmG3M2bV0zL/ORu+CJXgfatlnBQTicbbA4+GsGFgvWVgakmTnB
         CJ4kWKqldPidkfKlCDCN9EWaoXKX6wpxpBFLiabYTL7c6IBDlhTEvjJaT+Lb3G+0XYN1
         QOoHa4g24CufYnzwjP0NtGGjIiqQy6LjTk5mKMJ6Kfc1DUGVzMfP1iwv2kjq0zMngr53
         +LTFmIqtdIquP3Ymfxsm4h600GP0HUOoPdzHKRcvWK9jKkAz3bRfc6wNY2sPvnsqBuvE
         JXnaW7zpYjn3z2tMx+UwiMjEiCqEaojSSjRs6nJDf9MNpvnGsGfKf6aTQb2tvZm4eEDv
         APsA==
X-Gm-Message-State: AO0yUKU/YflSRVR/Rdd5tGtW3DJ6wkIUceTLdqN/wP2IMy68ShAfsaLn
        cvy7ZCAn9Nl5v6kOdLYVKtELIQ==
X-Google-Smtp-Source: AK7set+TXMOG4+OAxi5JOlc0sgZmdeoPEOpFMTcExto9iRF2c+GNU0RXiuwWr1M4QjFvBoF+/kjlOg==
X-Received: by 2002:ac2:4c99:0:b0:4df:8235:25a4 with SMTP id d25-20020ac24c99000000b004df823525a4mr9560996lfl.53.1678697432314;
        Mon, 13 Mar 2023 01:50:32 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id l23-20020ac24317000000b004d8584970b8sm894391lfh.226.2023.03.13.01.50.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 01:50:31 -0700 (PDT)
Message-ID: <af9489db-4de2-5cd1-07ab-4f38e34832b9@linaro.org>
Date:   Mon, 13 Mar 2023 09:50:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 5/8] arm64: dts: qcom: msm8998-oneplus-cheeseburger:
 revert "fix backlight pin function"
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230312183622.460488-1-krzysztof.kozlowski@linaro.org>
 <20230312183622.460488-5-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230312183622.460488-5-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.03.2023 19:36, Krzysztof Kozlowski wrote:
> This reverts commit 46546f28825cf3a5ef6873b9cf947cd85c8a7258 because it
> mistakenly took PMIC pinctrl/GPIO as TLMM.  The TLMM pinctrl uses "gpio"
> function, but PMIC uses "normal", so original code was correct:
> 
>   msm8998-oneplus-cheeseburger.dtb: pmic@2: gpio@c000:button-backlight-state: 'oneOf' conditional failed, one must be fixed:
>     'gpio' is not one of ['normal', 'paired', 'func1', 'func2', 'dtest1', 'dtest2', 'dtest3', 'dtest4', 'func3', 'func4']
> 
> Fixes: 46546f28825c ("arm64: dts: qcom: msm8998-oneplus-cheeseburger: fix backlight pin function")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Eh, embarrassing. I would say to myself - use dtbs_check on patches, but
> I think that time there were too many errors coming from Qualcomm
> pinctrl bindings.
It's good that we have schema at all though.. It helps a lot!

> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts b/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts
> index d36b36af49d0..fac8b3510cd3 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts
> +++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts
> @@ -34,7 +34,7 @@ led-keypad-backlight {
>  &pmi8998_gpios {
>  	button_backlight_default: button-backlight-state {
>  		pins = "gpio5";
> -		function = "gpio";
> +		function = "normal";
>  		bias-pull-down;
>  		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
>  	};
