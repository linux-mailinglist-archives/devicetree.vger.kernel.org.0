Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8208F719385
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 08:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbjFAGrl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 02:47:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbjFAGrk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 02:47:40 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB7F6E2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 23:47:38 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5147f5efeb5so823672a12.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 23:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685602057; x=1688194057;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XcPJlre+hwC4HWFE1geR0MxXvG9lSERjFiZP6BYmvdM=;
        b=jhBQzzTvQHKLXxX8HeEDI0ErFtmNtpJu4uRC9SEHgB7ywVzsaqoiXM9++1w7Qqpg14
         63UDRTL4P8dyjwUKRg2hrl9IRNjWh0wXZoyau0YdZNlQaqD1LaIPRaHyOwWYodz2zNBj
         nETIbWFJPCkYo/XZXPVHCdjRaliJcPO/kEgf4IcB8fOCeuGVb2jgZnplkaD5yGkd+fjT
         by/DRdHRXuShpt4Kh/As3WjFhIHFEmb3pElCERUUJvZgl0/4Ew56L24nK8ezDfdpsWMw
         iBVTRfRBlw8Fa5BKpCQEz7bUi8kLxLNesJhJo9Kb0eS4f9gKmS88xzK34o+n8wFQzKlz
         ecxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685602057; x=1688194057;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XcPJlre+hwC4HWFE1geR0MxXvG9lSERjFiZP6BYmvdM=;
        b=VL8zEyvd/Neb0IDYAev+Vk9yP6RqeL/BXH/ZH0R3QY77eGHkJsQsllxp1kJIwhKWHm
         1CAOV7LU1DWJKhMpwBC04HkkuOlpIowA2TZW1FrIvN5LDjM5pvepKzYUlZ4ailU4BDJS
         jckEWJddczqSBfI2yaLCTWLbJcz0p3lq0FiZxyoj390Uey2Z141cFHi4PPRWPuobG6f1
         R7QEfrRUJXrlwwnEpQq3XZopx6d+aqqcqukidtoPFzTkSGGf4Hj6uvOoQMHp31knQ0Mq
         iHkPGAgser5IXy0ydVGOWRMOUQkn+IP1THztk2a6kIe7XYuSuX52d77NMGEDy6eymEGs
         HzZA==
X-Gm-Message-State: AC+VfDz0sOua2zhgNkE9QgefEIubGmAYMAl9CrY3SXJCB9EppNOreIA6
        KorCCV9ZSn62AvCCfzfqYMLh4Q==
X-Google-Smtp-Source: ACHHUZ4zaQuhqiSniRGwWTM2mtmjQo7gLHgX9Kg8Rxnxm6N6zPX6wYdlKh8ynufUJdKMTSPlnjTAEQ==
X-Received: by 2002:aa7:d8c4:0:b0:50b:c3a0:40e5 with SMTP id k4-20020aa7d8c4000000b0050bc3a040e5mr5197339eds.21.1685602057212;
        Wed, 31 May 2023 23:47:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id w9-20020aa7cb49000000b0050d82f96860sm6765817edt.59.2023.05.31.23.47.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 23:47:36 -0700 (PDT)
Message-ID: <e496475a-6307-5a11-99c1-5cd9d43d894b@linaro.org>
Date:   Thu, 1 Jun 2023 08:47:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/3] dt-bindings: nvmem: syscon: Add syscon backed
 nvmem bindings
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        devicetree@vger.kernel.org, kernel@dh-electronics.com,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230517152513.27922-1-marex@denx.de>
 <3951bf42-bf77-20a5-a343-46127b875dd5@linaro.org>
 <2aee9fc7-e0a8-b5ad-7362-8461bac618da@denx.de>
 <a954db86-c5b7-0c07-8881-0ceb39ac7337@linaro.org>
 <e9d7b2de-ef57-80fa-f92b-6f66d413114a@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e9d7b2de-ef57-80fa-f92b-6f66d413114a@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 22:44, Marek Vasut wrote:
> On 5/31/23 21:37, Krzysztof Kozlowski wrote:
>> On 24/05/2023 05:30, Marek Vasut wrote:
>>> On 5/18/23 16:26, Krzysztof Kozlowski wrote:
>>>> On 17/05/2023 17:25, Marek Vasut wrote:
>>>>> Add trivial bindings for driver which permits exposing syscon backed
>>>>> register to userspace. This is useful e.g. to expose U-Boot boot
>>>>> counter on various platforms where the boot counter is stored in
>>>>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
>>>>>
>>>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>>>> ---
>>>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>>>> Cc: Marek Vasut <marex@denx.de>
>>>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>>>> Cc: Rob Herring <robh+dt@kernel.org>
>>>>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>>> Cc: devicetree@vger.kernel.org
>>>>> Cc: kernel@dh-electronics.com
>>>>> Cc: linux-arm-kernel@lists.infradead.org
>>>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>>>> ---
>>>>> V2: Use generic syscon supernode
>>>>> ---
>>>>>    .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
>>>>>    1 file changed, 39 insertions(+)
>>>>>    create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>>> new file mode 100644
>>>>> index 0000000000000..7c1173a1a6218
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>>> @@ -0,0 +1,39 @@
>>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>>> +%YAML 1.2
>>>>> +---
>>>>> +$id: http://devicetree.org/schemas/nvmem/nvmem-syscon.yaml#
>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>>> +
>>>>> +title: Generic syscon backed nvmem
>>>>> +
>>>>> +maintainers:
>>>>> +  - Marek Vasut <marex@denx.de>
>>>>> +
>>>>> +allOf:
>>>>> +  - $ref: "nvmem.yaml#"
>>>>
>>>> Usual comment: drop quotes. We removed them everywhere, so you based
>>>> your work on some old tree.
>>>>
>>>>> +
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    enum:
>>>>> +      - nvmem-syscon
>>>>> +
>>>>> +  reg:
>>>>> +    maxItems: 1
>>>>
>>>> Rob's questions are not solved.
>>>
>>> Can you reiterate this one ? I likely missed it.
>>
>> You did not solve the case of more than one register. This isn't an odd
>> case.
> 
> So why not just extend the bindings to support
> 
> reg = <0x14c 0x4>, <0x180 0x10>, ... ;
> 
> this kind of stuff ?

Does not look right. Look at nvmem bindings and don't do it differently.

> 
>>>> The nvmem.yaml schema expects here to
>>>> allow children. This should not be created per-register, but per entire
>>>> block of registers.
>>>
>>> This thing works the other way around, I have a syscon register block
>>> already, and I want to expose subset of it to userspace as read/write
>>> accessible file to expose bootcounter available in that register (so I
>>> can read it and reset it from user application).
>>
>> And this makes it too limited. I would expect one device exposing
>> multiple blocks or registers, just like all nvmem providers are doing.
> 
> What would be the real-world use case of that ?

The same as the real world use cases for nvmem. One syscon block has
multiple registers so I can easily imagine wanting boottrap, bootstat,
boot-whatever you want.

Best regards,
Krzysztof

