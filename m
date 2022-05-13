Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9B32526349
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 15:54:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232989AbiEMNxW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 09:53:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233196AbiEMNwB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 09:52:01 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77ABF56439
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:50:15 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id g16so10382857lja.3
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=RCbegzXr0AopN7OWP2qTKDNO4iaT5GNljew1oaaVSSk=;
        b=y/JWMFhEoVBwOh9iLovplFTwQMMkFhwPvyBP+jXd0y84M86PZZOz6JzzuRIJc1/50D
         Nua7VHjmMsXKqNkwcPraRAOCK6k1pCuMFgv6mBfBKPR4Ex4qor3w94leoCtHlzF9OLVE
         2d59vjjCtbUqRZCpxNw7bCHavtZrlQauH1lDZVruh8cajzUQRAOQ/sLekWUoAZr3ZnQt
         8Gt1zax1pjShBoRZMeocMHC6yWIM+WrSyeSI4sgZ31Trlc34NpwgVg/vnABvJwjSRJjK
         M3+3RHtm4gCMfYYjGaZK4Qbozrh6s1ljU7WUyivnAad/qscTLo7PsQ+85tU05BPwbgsY
         AEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=RCbegzXr0AopN7OWP2qTKDNO4iaT5GNljew1oaaVSSk=;
        b=krgG0NkbXJA+r6NUm/RmX8skO3OGbXUFYCzQGoNf31O3m1jxr4Ged+IgR14Yrwktc4
         dA9sF9rIy4eZiipQcxTcZPOQiFNTTe0pqtZFmSMy6oDTQSHpunCTmOUqGILH/f9/cLj3
         5pHXl8IoxtjIF63imsHTwTkevsEHUdENAYk8JQJEtW3yIbVdTyHsvOHxo82TVIh/R8+9
         UkW/BmT2G6YGczbJ3NB3IN7OYpg+f0UF5IMLcosSpE0P1qhHgCbY6JS3g21o40uCQlu2
         wixziVItCQMEzuEKsi9+1UCv/hgZk1gm2nfnUGzOCjm0g+aIhNFxOfoQKDGYXORJUEjJ
         ZzRA==
X-Gm-Message-State: AOAM532dCH22m+H0cWAwN+Inrb4cmGgdofmZRKIKd0AZiw6DBInk2Qfe
        4fRauGh8lJLuzKR4iRI50nFe+g==
X-Google-Smtp-Source: ABdhPJzspehYpZqjRHyIDQsSJpReakeJmzkr4BaWpo7Pr5K+BQv1mfbWukZOq62yJAX933nqrV+yiw==
X-Received: by 2002:a05:651c:1313:b0:24f:517c:ffad with SMTP id u19-20020a05651c131300b0024f517cffadmr3130956lja.111.1652449813499;
        Fri, 13 May 2022 06:50:13 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o11-20020ac2494b000000b0047255d2113esm386995lfi.109.2022.05.13.06.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 06:50:12 -0700 (PDT)
Message-ID: <8f13d1e4-eaca-a8ef-510a-6b2e039612d6@linaro.org>
Date:   Fri, 13 May 2022 16:50:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v8 00/10] PCI: qcom: Fix higher MSI vectors handling
Content-Language: en-GB
To:     Johan Hovold <johan@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20220512104545.2204523-1-dmitry.baryshkov@linaro.org>
 <Yn4dvpgezdrKmSro@hovoldconsulting.com>
 <CAA8EJppzx5nkyk3gCcgFd2G_QewU0Z6q6DAKb-Lyj9yZyMo_AA@mail.gmail.com>
 <Yn4ms7dKIzeAqt7A@hovoldconsulting.com>
 <CAA8EJppt4kiG45j62W-Z7Ech8WLNnkPYiVv7T0AK-+Dxtc_KDQ@mail.gmail.com>
 <Yn5UqtxmNGWerTdT@hovoldconsulting.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yn5UqtxmNGWerTdT@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 15:52, Johan Hovold wrote:
> On Fri, May 13, 2022 at 01:10:44PM +0300, Dmitry Baryshkov wrote:
>> On Fri, 13 May 2022 at 12:36, Johan Hovold <johan@kernel.org> wrote:
>>>
>>> On Fri, May 13, 2022 at 12:28:40PM +0300, Dmitry Baryshkov wrote:
>>>> On Fri, 13 May 2022 at 11:58, Johan Hovold <johan@kernel.org> wrote:
> 
>>> But you also added
>>>
>>> +        - properties:
>>> +            interrupts:
>>> +              minItems: 8
>>> +            interrupt-names:
>>> +              minItems: 8
>>> +              items:
>>> +                - const: msi0
>>> +                - const: msi1
>>> +                - const: msi2
>>> +                - const: msi3
>>> +                - const: msi4
>>> +                - const: msi5
>>> +                - const: msi6
>>> +                - const: msi7
>>>
>>> which means that I can no longer describe the four interrupts in DT.
>>>
>>> I didn't check the implementation, but it seems you should derive the
>>> number of MSIs based on the devicetree as I guess you did in v7.
>>
>> It is a conditional, so you can add another conditional for the
>> sc8280xp platform describing just 4 interrupts. And as you don't have
>> legacy DTS, you can completely omit the backwards compatible clause in
>> your case.
>> So, something like:
>>   - if:
>>     properties:
>>        contains:
>>           enum:
>>              - qcom,pcie-sc8280xp
>>    then:
>>      properties:
>>         interrupts:
>>            minItems: 4
>>            maxItems: 4
>>         interrupt-names:
>>             items:
>>                - const: msi0
>>                - const: msi1
>>                - const: msi2
>>                - const: msi3
> 
> Ok, so the driver code still handles it, thanks.
> 
> Are you able to confirm that all sc8280xp systems have only four msi
> IRQs?

Unfortunately no. I don't have access to the sc8280xp docs. Let's see if 
BjornA can confirm this.

> This seems like another case of using the kernel as a DT validator by
> describing things in two places and making sure that they match.

Yep, this seems like a bad habit of mine: to distrust the DT.

> 
> I assume the number of vectors will always be a multiple of the numbers
> of msi IRQs. Right? Then we don't need to encode this number for every
> supported platform in the corresponding PCIe driver even if we end up
> describing it in the binding.

But it was your suggestion!

Let's drop the warning then, parse what was passed by the DT and just 
print the total amount of MSI IRQs.

-- 
With best wishes
Dmitry
