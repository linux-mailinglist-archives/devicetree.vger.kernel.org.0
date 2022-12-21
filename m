Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CA31652DB0
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 09:12:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234445AbiLUIMO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 03:12:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232901AbiLUIML (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 03:12:11 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C52B51F2DC
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:12:10 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id y25so22306880lfa.9
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:12:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fmMv6arrS6NFNzx+/euB/gP43n+k7aQRktlJ3iUoiuI=;
        b=JrLRWpcaGKgvEuvTvOKCdDB9dLrlP2SrGhu+JtRlNZMIdwJhJKESxdEnGVtzkAmmDw
         B60eEmRSmM6lctZTVYwi8E0moO3zsm6/JuUdnT/kQwn0duiDaQB9Fz4AG4xslyH5JpEb
         +RSDqEZAFQUWTJKV99CkoyplVeY81d3mUr7gUG+YhO3IDk244JbtlQUeEeAiWaXg0gpG
         RnNfNQBQUDjgNVW/BGWJizaVMKn0I2o0dtBpV26lFnFRL3RPCyc6tTWGjc8EOhguVaOt
         AQbsiS3X6bYpAf0aelHTU21NfGJUvPTEOxUPhwp2XZr/eWZIKOe7pQa1kfuhIi5d+EXN
         AYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fmMv6arrS6NFNzx+/euB/gP43n+k7aQRktlJ3iUoiuI=;
        b=PiSmYJeqsYrVQ4Wjy4n9LVS+TOKEULaM2IuSrQbx1JZC7/8ZZPo78Kdefi92sJWdGv
         cJEPG7+hXbKtLNpGtL+yJdRWS+MMqAIlc2LKXfd525NY9N/p0chRoD2neqo5B/Dldz6K
         MGxMfPLxj/qMNJOJiwdbFKVWNHd+B1XnlYLqY7DLRIxOxIzJ9IN2vZ/NK0YHVuqsCclk
         m2DFsr6PXhaaBHcD9o4OywMMsEtY4FMJW4c1Bzh3K7S0tRCnwuqd9VddbYKRLMOymQ42
         Y6eNhpa7fGjebCwxtHobflbzeGj5vCBPpjTj3ODEg6Oj5IFdiTCNZIfEUFJkqgwCBrgu
         TRHA==
X-Gm-Message-State: AFqh2kodjqxDrjJSb81R5AW3JwjQZZTfnFiFIJsPnuoqmZAR4IeuWVXm
        zNoLUqP04qICk/S2lw0UCESGIQ==
X-Google-Smtp-Source: AMrXdXvuA8QbIWLU3k0yNJc6O3vB5Weh4uzIGXMr+BpW9Slch9F478xD1kzjF/Usr1R/66DQozY+pA==
X-Received: by 2002:a05:6512:3769:b0:4a4:68b7:f86d with SMTP id z9-20020a056512376900b004a468b7f86dmr391286lft.17.1671610329114;
        Wed, 21 Dec 2022 00:12:09 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r14-20020ac24d0e000000b004aa0870b5e5sm1776887lfi.147.2022.12.21.00.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:12:08 -0800 (PST)
Message-ID: <afd7851b-0846-c21f-a769-10fb920c7c80@linaro.org>
Date:   Wed, 21 Dec 2022 09:12:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: add display port audio
Content-Language: en-US
To:     Judy Hsiao <judyhsiao@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20221221071734.2887901-1-judyhsiao@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221221071734.2887901-1-judyhsiao@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 08:17, Judy Hsiao wrote:
> Add DisplayPort sound node and lpass_cpu node
> in sc7280-herobrine-audio-rt5682.dtsi.
> 
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> 
> --
> ---

That's not a correct patch format. Apply it, git show and you will see
the error.

> 
>  .../qcom/sc7280-herobrine-audio-rt5682.dtsi   | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi
> index af685bc35e10..69e7aa7b2f6c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi
> @@ -33,9 +33,22 @@ codec {
>  		};
>  
>  		dai-link@1 {
> -			link-name = "ALC5682";
> +			link-name = "DisplayPort";

Why do you change link@1 from DP to ALC?

Best regards,
Krzysztof

