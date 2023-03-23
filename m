Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69F9D6C6073
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 08:14:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbjCWHOC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 03:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbjCWHOB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 03:14:01 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D54949C0
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 00:13:59 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ew6so19501249edb.7
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 00:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679555637;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LBJgZk/5gZTMXWKLjqWieGCHA6/EePG1dJ76A5v7KBE=;
        b=C3Y45eJBP6qd6Z8kgCqJMFag5Xg1Wyu7Pbw+5qO2V7+N40It/EKSxlPrum6bxn5wUg
         kU6qGNvK3Eyx0O0iRlXaMpzZg1NAXb7qS1ADhr4m42Mn6hZn4oyFR+AiW0tBWFAocggN
         7LSac5eUxJNdk1JLLMgLJI580EkGLpH1SCyxKFnwGTh0zClBLKyBwiRE5hPP7slQXR5W
         9YA5mlWSqEt+KLR0IGb4TXCylKYWF+KDKZjScX6dgwJuw9f7xxaphM1uTcUxWuQZIWbU
         pekR2kOmus46Ss1FuZfNWeR8UjvfQHfSKGg1hymFgngMsr6cxY84aKlDlJkVzSaukM8b
         ywyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679555637;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LBJgZk/5gZTMXWKLjqWieGCHA6/EePG1dJ76A5v7KBE=;
        b=1wc4dSjIwwtsFj8TaebRE4IkvwCg2zTCObaY8bPoDgxp+Iyo0HB0Yrn3ijxBshHtTs
         dbRU7bgwo1+mx4UQL2rghNwQzFB0ftuafOSKpc50AmdKQwAf3ilyzmDL++2NEn0RfSte
         WT8SRhyMuWMvxpE6DbT8KtDG1NpqHGHJxgzFXR5Q5tBngmYKVHf/FmYx2DIW0OJHtgUM
         9uCnglStMsC2vkaKQ0Swf2M+5xaXwFY5oyRkF720dKhy+SFk27JDjT/uw2GUO7mzgkO4
         Asa2/EqQnTTBfTmM9iMYTgcyKyMHpbPvvGNB7AcuEuogPsKQT+FLnkXSLbCVPZpS/SCo
         3BzQ==
X-Gm-Message-State: AO0yUKU4xK37cp3XDE7E3Hduq6AKaAYNHlFXHRSS5N9pj5IitaKoenqR
        CK5YL5Xz/gIyQ/yUi7Vz1G5nAQ==
X-Google-Smtp-Source: AK7set+TQJM01LMv3gKPoGhiFzaMyZYEPquadg55mOCGLlyXbLbGIp4+2kj8G0/9wXGb+9kbMevLEQ==
X-Received: by 2002:a17:906:660f:b0:930:a7c9:e45 with SMTP id b15-20020a170906660f00b00930a7c90e45mr8833758ejp.8.1679555637523;
        Thu, 23 Mar 2023 00:13:57 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ox7-20020a170907100700b008cf8c6f5c43sm8240180ejb.83.2023.03.23.00.13.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 00:13:56 -0700 (PDT)
Message-ID: <c53239d3-75b5-a51e-ccc1-2215f1c797a8@linaro.org>
Date:   Thu, 23 Mar 2023 07:13:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: Add compatible for SM6350
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230314-topic-nvmem_compats-v1-0-508100c17603@linaro.org>
 <20230314-topic-nvmem_compats-v1-1-508100c17603@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230314-topic-nvmem_compats-v1-1-508100c17603@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14/03/2023 13:35, Konrad Dybcio wrote:
> Docuemnt the QFPROM on SM6350.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---

Applied both

thanks,
srini
>   Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> index 2173fe82317d..cbc5a1ed7c6b 100644
> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> @@ -32,6 +32,7 @@ properties:
>             - qcom,sdm670-qfprom
>             - qcom,sdm845-qfprom
>             - qcom,sm6115-qfprom
> +          - qcom,sm6350-qfprom
>             - qcom,sm8150-qfprom
>             - qcom,sm8250-qfprom
>         - const: qcom,qfprom
> 
