Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E2017129D5
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 17:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244118AbjEZPnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 11:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243572AbjEZPny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 11:43:54 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78118134
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:43:52 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f6e72a1464so6773205e9.1
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685115831; x=1687707831;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=312Qxv20qtT6z2BiqRrmUkxmiNN8OsfraYgPOBDA1W8=;
        b=gKwC8mFgz6AhT4BVC44KDGqdc4siWRAA2cwNYRpG+Gj9crgr6dhZ6pYJQsUUCyeVrj
         REXzngGbGddXxxlwLdb9y0SFXydTR15KsaXewI8Un8LjR9QXDQnvphhmkpaXvGlMvvXE
         kbgKT9FZix51RWAsK+xC5W2VFV9ZkJfodxXD6DElgUiDTI2Z2oPRbaAsz/7nzvQbhYi/
         FDsS7Uma40dFkNb4F1DD8FGEcc9Lw53l1FfaOdVnJTE1jaBlo4ezpmnmgVsmIFlJGmlS
         d43EViDu4edo8XqbvPrft05qomlCWQ/5Dbu0qnoiAIhHqzKW0pfgh3EQ88pZFvQiNnNS
         rdyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685115831; x=1687707831;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=312Qxv20qtT6z2BiqRrmUkxmiNN8OsfraYgPOBDA1W8=;
        b=cY5oa7gKiPz3+hVLBImHGz5tA286U5YhYzrv3s1W2E5KGRyP9c4c8yfaDsAVESpfD1
         tSFA6O4obWe0/AUae3NhW17LMkGRnGnO/wivHaPbjFY6fkNoR8YdOZVIJpYfeizUhhO/
         DBvSKibvINdjbOMmRxNK4KtD2witqX9xtZ4jGnQWe9Gt9wq3e6mwLoNfvJ2n9h2HSk+E
         QLli1RGmJE3mmq9sP033hIEM9PACYu0Ks6YkopY9HpcotaF5nksIgKeRxf/CatAwny0R
         YXEKtvLUplxkfP6dtGPrv/lN1J720CuNl7YRj2ktX+bSWghgBgOr022tAI84bAoWI09c
         Zw1A==
X-Gm-Message-State: AC+VfDzcp3F1Mjyc9oevoe83NQZwc5dZp3NmHumgFl3xZL1G/cJag9H3
        Y/1nrXe0aa2O5rD8Uo4yrLlZnA==
X-Google-Smtp-Source: ACHHUZ7Q6nwIhAVYfGO39O3z0eWSlyDAMusz11lFgR+cnF8WvUYT41nznEDgEmFKXVCC33L0gLJUvA==
X-Received: by 2002:adf:e792:0:b0:306:340c:4737 with SMTP id n18-20020adfe792000000b00306340c4737mr1703838wrm.67.1685115830955;
        Fri, 26 May 2023 08:43:50 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id c2-20020adfed82000000b003078a3f3a24sm5472890wro.114.2023.05.26.08.43.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:43:50 -0700 (PDT)
Message-ID: <8bc6aaac-f28a-3ce7-8dea-f8484fd5b6c9@linaro.org>
Date:   Fri, 26 May 2023 16:43:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/8] arm64: dts: qcom: msm8916: Fix regulator constraints
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230510-msm8916-regulators-v1-0-54d4960a05fc@gerhold.net>
 <20230510-msm8916-regulators-v1-3-54d4960a05fc@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230510-msm8916-regulators-v1-3-54d4960a05fc@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2023 19:48, Stephan Gerhold wrote:
> The regulator constraints for most MSM8916 devices (except DB410c) were
> originally taken from Qualcomm's msm-3.10 vendor device tree (for lack
> of better documentation). Unfortunately it turns out that Qualcomm's
> voltages are slightly off as well and do not match the voltage
> constraints applied by the RPM firmware.
> 
> This means that we sometimes request a specific voltage but the RPM
> firmware actually applies a much lower or higher voltage. This is
> particularly critical for pm8916_l11 which is used as SD card VMMC
> regulator: The SD card can choose a voltage from the current range of
> 1.8 - 2.95V. If it chooses to run at 1.8V we pretend that this is fine
> but the RPM firmware will still silently end up configuring 2.95V.
> This can be easily reproduced with a multimeter or by checking the
> SPMI hardware registers of the regulator.
> 
> Fix this by making the voltages match the actual "specified range" in
> the PM8916 Device Specification which is enforced by the RPM firmware.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>   arch/arm64/boot/dts/qcom/msm8916-acer-a1-724.dts           | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts       | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts             | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts         | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts             | 12 ++++++------
>   arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts       | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts       | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-samsung-a2015-common.dtsi | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-samsung-gt5-common.dtsi   | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi    | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-samsung-serranove.dts     | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-ufi.dtsi                  | 14 +++++++-------
>   arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts      | 12 ++++++------
>   13 files changed, 89 insertions(+), 89 deletions(-)

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

