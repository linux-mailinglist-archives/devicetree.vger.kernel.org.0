Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA46A64F96C
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 15:37:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229902AbiLQOhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 09:37:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229875AbiLQOhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 09:37:03 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3587FAF2
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 06:37:01 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id m29so7431107lfo.11
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 06:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yhIs6fKfOUXpD44jRG6XVKMUeo1AQbRaXZh3dXmE8yg=;
        b=lfg6T6tFtiAwoV/7hjiVnUpzD0U08hBpMrXzDfxyyX6O+JgJwNME6Tx/VMZvDsLRUK
         dJJKvmfPwAiAQHIfnFfPsKivMkKJ/nB2sfZdssw6F9XoS8ECTG+GmetrDl6rfo6WoFDa
         9jBSN2FtnCudfLcssTYe1qK6Yq60Qa9rfrI9+KCPG9/ows4q6C3ZbD3mXQg7JkJ++jO6
         kwHbmGBkE1Cn4JDir+wHbQUSKiMpuOs+iLiUHI4+oFip5oMHylRIysZXtFjKxD5QkTzc
         26kqtHr3GmpR/47abQeDxesy6Xp1aTLHC9erjMS9mFuMsP3pD3SaP1F+HO6qBankCXfS
         uBxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhIs6fKfOUXpD44jRG6XVKMUeo1AQbRaXZh3dXmE8yg=;
        b=b4K1s3LOk63PQmp9ZjDXZmba55BFKLvwcEu5pCLq2MyJMJf761YV+UsjjtYYeG4w6W
         UnPG2vi9d5hV7ETio6zKKt792lOumYSiOg/KlCGJquXnsnvb4VmW6lWgKLKwOn7aDqlN
         GzfYSmDmfDS5r3xW7f8GbfNc9+1DVzw40c03q1cwueYGKlAmV9aZ5q5OEKN9iMQBB2Lb
         qteixWn/jZce2rMVVIYFL37bfThUFI+syBLBTWM7sPHdLAzM7CxGwZIG590Qup07FPDt
         9iZk1cgLpPDVuAEHGnkYgs1HKo1E8XtPmvIzwgMn+ngK1XRPAJGlVBnAfLp50ftdSaRT
         yttQ==
X-Gm-Message-State: ANoB5pl9dI3hjTekNMe9M8MFRl4v7Q6cGDFQ2L6VPGETcF5K3ZsmNwVf
        0j9OYr1Tm/W5UILnZGE3IC08EQ==
X-Google-Smtp-Source: AA0mqf6oGEg0XjMplLN1FeA974LONUwNKg1/PZjvwG7VNjiM+Ymn5G8rg5XoALL2ckkwj53VP5P5zg==
X-Received: by 2002:a05:6512:1698:b0:4af:ac78:2602 with SMTP id bu24-20020a056512169800b004afac782602mr14565352lfb.29.1671287820054;
        Sat, 17 Dec 2022 06:37:00 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id p13-20020a056512328d00b00497a61453a9sm516617lfe.243.2022.12.17.06.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 06:36:59 -0800 (PST)
Message-ID: <7b6e1c29-4e33-b66c-00c8-836a62a0941d@linaro.org>
Date:   Sat, 17 Dec 2022 15:36:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 1/4] arm64: dts: qcom: rename pm8450a dtsi to
 sa8540p-pmics
Content-Language: en-US
To:     Eric Chanudet <echanude@redhat.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>,
        Brian Masney <bmasney@redhat.com>
References: <20221216232606.2123341-1-echanude@redhat.com>
 <20221216232606.2123341-2-echanude@redhat.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221216232606.2123341-2-echanude@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.12.2022 00:26, Eric Chanudet wrote:
> pm8450a.dtsi was introduced for the descriptions of sa8540p based boards.
> Rename the dtsi to make this relationship explicit.
> 
For the descriptions of PMICs used on SA8540p based boards, I suppose?
> Signed-off-by: Eric Chanudet <echanude@redhat.com>
> ---
The change itself looks perfectly fine though!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} | 0
>  arch/arm64/boot/dts/qcom/sa8540p-ride.dts                     | 2 +-
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename arch/arm64/boot/dts/qcom/{pm8450a.dtsi => sa8540p-pmics.dtsi} (100%)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8450a.dtsi b/arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
> similarity index 100%
> rename from arch/arm64/boot/dts/qcom/pm8450a.dtsi
> rename to arch/arm64/boot/dts/qcom/sa8540p-pmics.dtsi
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> index 6c547f1b13dc..77d499702ea8 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> @@ -10,7 +10,7 @@
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  
>  #include "sa8540p.dtsi"
> -#include "pm8450a.dtsi"
> +#include "sa8540p-pmics.dtsi"
>  
>  / {
>  	model = "Qualcomm SA8540P Ride";
