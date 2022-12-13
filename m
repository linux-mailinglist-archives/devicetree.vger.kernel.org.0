Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DFCF64B5EC
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 14:17:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbiLMNQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 08:16:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235458AbiLMNQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 08:16:48 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC6E201A2
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:16:47 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id b9so3251133ljr.5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 05:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vpGS/sLfJxOssPdaaO0i3vLsbjRZ/QFKT+W7Ixf+RBA=;
        b=JMhitTV6dbHSNBi5lG8kfpe0v4v4PjALRyni8Tgoy5X1fILLoiestrd2zMSm+8ed7E
         jP+HSNbSB6NZQoZCdfD8KUZRbTT5oCGQ4LG+Wsl7K6JFurtUpRz0cRzVzmvueh/oo3DB
         lwHBUoKoolhS3i4YWJLzv6U1DUpd8I6Rb120N6tBefDLyEd+wiY0po51Zq+L57vtKgO6
         ogCycbgCvMZIjexasVJke6cpxeOMCwBwV8Y8TqCubqG9V6EaTAkeJAjXhnscln9lDzlY
         dAp7FOyomZ7sRUvV1i638x2Pw0q3DgHXHHleS8sgCeRKIIgcu8shWeZ/+Xfzm9pFn0Wi
         Zd/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vpGS/sLfJxOssPdaaO0i3vLsbjRZ/QFKT+W7Ixf+RBA=;
        b=TsTVxsqk2RIY8plVSU65vNoQwsdi2WqpFjClOm3+e25VhvkP949zQAx3zPBwkPXQ6s
         D1dagqLDmKMokXVWCK6z43wtByiY4lLOfsoIisHRS927y4YJsiOq3fRYc2bzfqcjqXJ3
         FqnRuQ6QpSfX3Y09mk8Cxpy/5BLMQGBcq8q1F2u3i4c8Z98gab79nIlXNqKO7koHsag9
         ECuBg0PYMwypLyldvKIXyMlZLiTCpl0FUG4DjWJ6Y0uUZDIdsMO2TDFNXcPyJIrg03zr
         30NQ0oQQZKrYWCeei/kI5pViPdgYoGqed1oPHbKA7VWQW9UndWsSEh0DvDgT7At+XAnS
         Ij6g==
X-Gm-Message-State: ANoB5pme40sGE0fTtMYtTLP3VmzaTWmfdC4JIPnXR1xhhaMLJVxSbl/f
        HMtLW9QtxrgNiV9nYKyoTRWEBg==
X-Google-Smtp-Source: AA0mqf7h9JdmO1o4fZ5CvwWZSLzxNP4uB3CqDgju8Mga2Rm0IHZvbY8kfyTBYoVwBBTX1+MYSw75Nw==
X-Received: by 2002:a05:651c:198b:b0:26f:e24e:a41f with SMTP id bx11-20020a05651c198b00b0026fe24ea41fmr6573438ljb.49.1670937405820;
        Tue, 13 Dec 2022 05:16:45 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i6-20020a2ea226000000b0027730261350sm258386ljm.131.2022.12.13.05.16.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 05:16:45 -0800 (PST)
Message-ID: <336ad377-8273-0eb5-d4a7-006e84707b7f@linaro.org>
Date:   Tue, 13 Dec 2022 14:16:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/7] dt-bindings: nvmem: Add compatible for SM8250
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221213002423.259039-1-konrad.dybcio@linaro.org>
 <20221213002423.259039-3-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213002423.259039-3-konrad.dybcio@linaro.org>
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

On 13/12/2022 01:24, Konrad Dybcio wrote:
> Docuemnt the QFPROM on SM8250.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

