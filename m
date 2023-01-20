Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30575674D6D
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 07:38:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbjATGii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 01:38:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjATGih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 01:38:37 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 262FD4A221
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 22:38:33 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id b7so3944893wrt.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 22:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FZtRmIZ42UnRz6LhmwOmoeKPNBphQysUvengJAatuzk=;
        b=mvvDxCz9s11Ai4vmLdV2UGQGcAUuhBixOGiaz6B4OVJeBVYVI1L9jdcvkR4bFlyDa1
         icigmZn+zStDeV+NBmQ6eNHRQ2Z9xP/ZkVG9GdmrM5HMpmzrmO5vzMUJKtB3I7VIwKYb
         EU9eaxgYoN30V790SKqF7Sb7q0Vy0tjtkxPMCgSDraGFaPouF1QmTr+b9AOXgfdm5vqp
         wrHi1M9UqFYEwz/yy7eKK5dNbzsh/E5b8YZIYpjAGLFc2Cd+6QPuGT8j+imJhqPZG4Gs
         M5yqCkI9aISsSuSNk9U+zaN3kJCe9S6v/VINIr6pvNaTac/4GVIeGvxETigsBPrrc6qs
         WTog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FZtRmIZ42UnRz6LhmwOmoeKPNBphQysUvengJAatuzk=;
        b=2EEV4dHKD0p9cWGt10gho2STuaj2MB7QkoeHC/13FHAp4O1VENwiA1GqCgLh59Nwbe
         7AxCHIc7ZwXZKUNM3UP+15xCyR6TQGDTdfmjUdnq7GqyO2NyqDjdAFgBTbAr76xn22fQ
         F4vx3dpE7iMk3hzGBbNrAGGShVcptVrc7xKdH5+M7wpJ3miwzRzHt1CcHoyWXsR/qYro
         sE9Fk4bdiPmkTwMnB4VQ4nroreBGn8NtbMKaJwZcp+zI2NCdb5zn4EsFF/jlbNNw4oVE
         vhRBA5cJ/c2OBkWMwICeJ05yjK4fRRZ/Vp5Oky4hptSLVQUoNR6N/U5CWQW6Q9aKRFB8
         bczA==
X-Gm-Message-State: AFqh2kqKdJ/D9pU8IJhiHO4EotliG7E9e1mUC+2lb42p2HiQ2+NHL0dw
        wL4B8XMSNk/Eujsdplu4dZCudg==
X-Google-Smtp-Source: AMrXdXvbEWmQ4JIEHt3Bob7S2yKY4TRYoAhRrOVQAmt28VEcaD3Z8/z4hIYoA8+WaOnqoC20RwPBQg==
X-Received: by 2002:a5d:5e84:0:b0:2bd:dd44:8b13 with SMTP id ck4-20020a5d5e84000000b002bddd448b13mr14220222wrb.60.1674196711684;
        Thu, 19 Jan 2023 22:38:31 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b11-20020a05600018ab00b002be2279f100sm9846759wri.96.2023.01.19.22.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 22:38:31 -0800 (PST)
Message-ID: <3aa54a61-8a42-6ddf-d524-c20dc03111fa@linaro.org>
Date:   Fri, 20 Jan 2023 07:38:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,pmic-mpp: Restrict 'mpp' child
 node name pattern
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230120020600.3232001-1-robh@kernel.org>
 <20230120042905.d2pdrzyv3e3airdj@builder.lan>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230120042905.d2pdrzyv3e3airdj@builder.lan>
Content-Type: text/plain; charset=UTF-8
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

On 20/01/2023 05:29, Bjorn Andersson wrote:
> On Thu, Jan 19, 2023 at 08:06:00PM -0600, Rob Herring wrote:
>> Just 'mpp' is a bit ambiguous for a pattern. It allows any prefix or
>> suffix. I couldn't find any actual users, so update the pattern to match
>> the example.
>>
>> Signed-off-by: Rob Herring <robh@kernel.org>
>> ---
>>  Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml
>> index 72cce38bc1ce..891a7385d7cb 100644
>> --- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-mpp.yaml
>> @@ -74,7 +74,7 @@ patternProperties:
>>      oneOf:
>>        - $ref: "#/$defs/qcom-pmic-mpp-state"
>>        - patternProperties:
>> -          "mpp":
>> +          "-mpp$":
> 
> How about aligning it with the other Qualcomm pinctrl bindings and make
> it "-pins$" instead?
> 
> If my grep is correct we have one "mpp5" and two "-pins$" currently in
> the sources, so this should be beneficial as well.

Let's align it with other Qualcomm pinctrl bindings, so:
	"-pins$":

I can also fix the DTS to match it.

Best regards,
Krzysztof

