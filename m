Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6E486883EA
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 17:16:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjBBQQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 11:16:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbjBBQQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 11:16:30 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32F7B64686
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 08:16:29 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id lu11so7459975ejb.3
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 08:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s/TwqFRK5J7OU2Udmc50EVMhDx9RBIMJL0vHwyknTSs=;
        b=XWQQBGJxyxq3gaYJAuz0o/leYgJ4JpCq+TyHU9q4BBpPQX45LzNb1Ml1GimJSuoVpI
         SbPl2XiNcbFxp7QeOBrZrQByNcgU+UeOnw1pkQ5Ht8X8G4DelE/JzYiPjOWx+LnhUV9M
         To5UtT37HaaSR+WgkRqh70/vhEHuq8VzCG3Ft3BK2R33jY9GuYnAXGZXnwA1c4TJ3NMa
         j1nRjvp1R0c7gaHEkixz172ke4zI9R6TzjVJVSFVuQeobOpzy4w31e622IPX0s3Us8SW
         stJb+1Qm4Do7ZbfaDeua++SXx+66L/qT0evP5+uhDp0PKX6TrMEUtltMN+0e5QWh3BLr
         fxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s/TwqFRK5J7OU2Udmc50EVMhDx9RBIMJL0vHwyknTSs=;
        b=pI2ZeybORE7mY3FOXWTOQeUcy+KUJNyccXryqD/QopW3XqOBfivwgEo+OwTJCtVayh
         1hy3m6/zvTL4v+DRPtC9IbG1MMsIcwOFyexBmHlpAMtLcDK5++N1UB8oyRHCpq/Ibp6S
         +jFs/TkI8z3bggcVeAxOx8woEKzTJvt/PVyPJVMWCy5big56EZNVTyl8KEqggaKDcTCi
         IKYFk4XIH2M/hxj4tmqVkfnRR5yYL02ourOrjtwWLO12QfB4ifJfuRMxQtt1usuTpSSW
         O/bxE2mZy/aKoNcsZVBnygeejtQjzlvX4chrcqS+MYaSqLsNvF/xZsLWXhX3+uE/xf5R
         7tqQ==
X-Gm-Message-State: AO0yUKWGX6wHjt8rKIXO/xv5tzgM7HzszwK0qxoQmNQwsQc35iwwf+GK
        PIVCiFWTM/XVID2EbuKGa5nshA==
X-Google-Smtp-Source: AK7set+1Utb1hKncVan/1yoYW6OY9gZkOOpnIvO/wnMteRFA+qaLiCYslLcGmMcw4tzIYelPbMiWlQ==
X-Received: by 2002:a17:906:535e:b0:88a:4655:b089 with SMTP id j30-20020a170906535e00b0088a4655b089mr6700089ejo.6.1675354587736;
        Thu, 02 Feb 2023 08:16:27 -0800 (PST)
Received: from [192.168.1.102] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 1-20020a17090600c100b0088b24b3aff8sm5151933eji.183.2023.02.02.08.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 08:16:27 -0800 (PST)
Message-ID: <61eb2a01-762e-b83b-16b7-2c9b178407da@linaro.org>
Date:   Thu, 2 Feb 2023 18:16:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v8 5/9] dt-bindings: qcom-qce: document clocks and
 clock-names as optional
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20230202135036.2635376-1-vladimir.zapolskiy@linaro.org>
 <20230202135036.2635376-6-vladimir.zapolskiy@linaro.org>
 <32c23da1-45f0-82a4-362d-ae5c06660e20@linaro.org>
 <36b6f8f2-c438-f5e6-b48f-326e8b709de8@linaro.org>
 <a2e4dff0-af8f-dccb-9074-8244b054c448@linaro.org>
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <a2e4dff0-af8f-dccb-9074-8244b054c448@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/2/23 16:21, Neil Armstrong wrote:
> On 02/02/2023 15:04, Vladimir Zapolskiy wrote:
>> Hi Krzysztof,
>>
>> On 2/2/23 15:53, Krzysztof Kozlowski wrote:
>>> On 02/02/2023 14:50, Vladimir Zapolskiy wrote:
>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>
>>>> On certain Snapdragon processors, the crypto engine clocks are enabled by
>>>> default by security firmware.
>>>
>>> Then probably we should not require them only on these variants.
>>
>> I don't have the exact list of the affected SoCs, I believe Neil can provide
>> such a list, if you find it crucial.
> 
> It's the case for SM8350, SM8450 & SM8550.
> 

On SM8250 there is no QCE clocks also, so I'll add it to the list, and I hope
that now the list is complete.

It could be that the relevant platforms are the ones with 'qcom,no-clock-support'
property of QCE in the downstream.

-- 
Best wishes,
Vladimir
