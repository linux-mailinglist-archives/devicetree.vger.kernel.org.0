Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D64E86D4237
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 12:36:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232348AbjDCKgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 06:36:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232414AbjDCKgP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 06:36:15 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 211C11285E
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 03:35:29 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id br6so37393512lfb.11
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 03:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680518126;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AFXXrE7mS9aSgMDOk91dyJgg2vShqN0pwU8x4yt7Oas=;
        b=JASIa/XAo+zJX688JIfJzo981VYZQhF8frdc+z/rAJSUpGoJAj5pnyj4hS8MIXWkxN
         G9yy1wP2vzn6NoTZMPyLGf3UEYPQNm4QuLgHm51omAW6yn8zGKa2JFWaceXsWa6GbntC
         h9Z0ndt19wfyxQiDR2KwmNbjpjcgFiS+SbGc5CguAcsHyuDcUfIaoz6fDxf9YUawHNGC
         z63GHGjCUVFxBpoyWgghnKjHnsLHrAKTRzY5TFCVxlk51TSM5/07/v3iH+cGIFgEyR7u
         BheIMLSaf8m/laAb1xCP+3h6/gjRp+hQ1PqRTWkLQFm+xLua+0KJdCb02BzboI4qyrEo
         N+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680518126;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AFXXrE7mS9aSgMDOk91dyJgg2vShqN0pwU8x4yt7Oas=;
        b=zc9o1EE9CVCAhATARzoYuNrKvc21RIwl9EKuP/ILjhWfK+nHX46nlXKUaPsJR6ufKt
         IN8WjLXS7W2md9cGmkRHS1h9yeTDZeipe/og5ZwuRE6asaM7nCzvz61v+trG2Sb5T++l
         bfvdQi5/j8f6xBMUbXwyz3HY9lNjluMMD+tS7JUG9yJfhzGB5pQQYbEfnj5zhPLPZaci
         596jXXnPGD4d0wWXLWUx/Q2i0kUAIzxMEwGcyJq+XYiBdZVADrLvkCooMeKyGtO/Hmtb
         hoxzO3R9JZtOkj1Q2+iSAQ9x3+F36WFybJDmIlJ638yQZMD2T6wNtOAG29gmdsDbr8zL
         8vsg==
X-Gm-Message-State: AAQBX9eW4FGpshIHmfRV5jfLh+/2nJtUqeq6kTqhGF9x+lOFRNdREyhw
        y/DxLqKgB8yNZojvJ3KNiCEOrQ==
X-Google-Smtp-Source: AKy350bjc7TwioRSA9lVda/pSDQswYD6bw4AQAe4jdc9Pzw/tTRLEwwNEPfoBEe8w0ch/alHLWliGw==
X-Received: by 2002:ac2:5383:0:b0:4cb:4362:381d with SMTP id g3-20020ac25383000000b004cb4362381dmr10087674lfh.62.1680518125914;
        Mon, 03 Apr 2023 03:35:25 -0700 (PDT)
Received: from [192.168.1.101] (abxj135.neoplus.adsl.tpnet.pl. [83.9.3.135])
        by smtp.gmail.com with ESMTPSA id w4-20020a05651204c400b004d58e782886sm1710865lfq.303.2023.04.03.03.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 03:35:25 -0700 (PDT)
Message-ID: <b33337de-1a09-aa72-7f1f-fabf85ddcd9d@linaro.org>
Date:   Mon, 3 Apr 2023 12:35:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 21/22] arch: arm64: dts: qcom: pm8150: support SID
 greater that 9
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
References: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
 <20230401220810.3563708-22-dmitry.baryshkov@linaro.org>
 <af18b9a3-2960-8fbb-0d19-ee7d3b3f89ab@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <af18b9a3-2960-8fbb-0d19-ee7d3b3f89ab@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 2.04.2023 11:51, Krzysztof Kozlowski wrote:
> On 02/04/2023 00:08, Dmitry Baryshkov wrote:
>> Supporting SIDs greater than 9 required additional handling in order to
>> properly generatae hex values. Apply this customization to pm8150.dtsi.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/pm8150.dtsi          | 16 ++++++++--------
>>  arch/arm64/boot/dts/qcom/pmic-dyn-footer.dtsi |  6 ++++++
>>  arch/arm64/boot/dts/qcom/pmic-dyn-header.dtsi |  6 ++++++
>>  3 files changed, 20 insertions(+), 8 deletions(-)
>>
> 
>> diff --git a/arch/arm64/boot/dts/qcom/pmic-dyn-footer.dtsi b/arch/arm64/boot/dts/qcom/pmic-dyn-footer.dtsi
>> index 83a2bada48ff..f3743ef3aa13 100644
>> --- a/arch/arm64/boot/dts/qcom/pmic-dyn-footer.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/pmic-dyn-footer.dtsi
>> @@ -11,6 +11,12 @@
>>  
>>  #undef NODE
>>  
>> +#undef HEX
>> +#undef _HEX
>> +
>> +#undef PMIC_SID_HEX
>> +#undef PMIC_SID1_HEX
All decimal numbers can be represented as hex numbers..
Is there any point to keeping them separate?

Konrad
>> +
>>  #undef PMIC_SID
>>  #undef PMIC_SID1
>>  #undef PMIC_LABEL
> 
> Same comment as for previous patches - all undefs must be gone.
> 
> Maybe I should not have acked all these changes customized SID ("include
> sid into defines") because it looks like it opened can of worms.
> 
> Best regards,
> Krzysztof
> 
