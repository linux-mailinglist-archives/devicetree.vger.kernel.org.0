Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1861C6C0AC2
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 07:38:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbjCTGie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 02:38:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229776AbjCTGid (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 02:38:33 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96AEBE19C
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 23:38:30 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id r11so42488520edd.5
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 23:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679294309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t7XeoSe7UBuX/qyHKNlFZtj5mQnbrycYOrmZq1cWzw8=;
        b=og1arrjvv3V1NdTKTL6nqWdto4cJlvx1lJaOUNCZQU3G6Z+9CVFWBZwA9KKnSw9aCN
         AG75/Do04vm1Qf4H6oTVavstgAkPq6nCdoXdzjjkRh3Hnod3I/hA70S3G5qRXRazZ3ov
         eDALdS055/VHd+mWMubR9Dg5B1MNq1EfJKbUtmWmPaZzxSpEGUa9h5RCr/K9i48XzaJ3
         eA4n/AbtFz9gQv4nRpJZ1B2daPdP2um5KxxScW7XpjE76P2aZDJkuc+91Mze3/Uz0Mvk
         OLvcAyE258gGyChEZjewf1ULjk0gfkA/IEMNzI4ItXaPGyH+bLbNBtqEkQg0UvfJ77S8
         bz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679294309;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7XeoSe7UBuX/qyHKNlFZtj5mQnbrycYOrmZq1cWzw8=;
        b=vXlkVbs/74NifX3mLcDWrSYT+0AXpkFCVtHkFvCQa6IzW4x5YoP5NFgHTv72+qB540
         mOxm2nLycgPzb7IZaNrAfiLwcuIoWbIl5V4nfWzOo4iAtNHlDi31ohs/xXv+AwB/6lOV
         gW/C7Drj4MYSm5BGYceagI7KSiHNOVBnAgG2SyVOV3rBGdD63+W0krkP/8IKbgUohV0q
         blodAB9o2PRWnLzJ+7zaBQrVWY0L1su0XRmdMKHV79nfsQeynknwFZDD/bu3P3u5/IS0
         zzYl+qB3IncwPqDmpKIzWBe1YVnRFdArvrOgrEKztl9BrD21BBFbXLfvl1/ags65m3Jm
         t+wg==
X-Gm-Message-State: AO0yUKUajpzqMYV3rfVmMloen0sqf4Z31oGpbgmo8/Whwqn9hCUREy1J
        a55DYrj+l5veTBiC54DJcC3BKhUIPVM18q07Djg=
X-Google-Smtp-Source: AK7set8zaCmvCo/leOy8Mug11ajTRxSNFLkO0e1EhQz95/FxfjvSuWjkKWa7MhfAtVfj+tsoVUmaGQ==
X-Received: by 2002:a17:906:1f53:b0:931:91a:fa4f with SMTP id d19-20020a1709061f5300b00931091afa4fmr8592424ejk.41.1679294309064;
        Sun, 19 Mar 2023 23:38:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4428:8354:afb6:2992? ([2a02:810d:15c0:828:4428:8354:afb6:2992])
        by smtp.gmail.com with ESMTPSA id 8-20020a170906300800b008e2dfc6382asm3967122ejz.125.2023.03.19.23.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 23:38:28 -0700 (PDT)
Message-ID: <f25cc55e-3405-4b17-fb45-5ae5eb36a404@linaro.org>
Date:   Mon, 20 Mar 2023 07:38:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RESEND v6 1/2] dt-bindings: soc: starfive: Add StarFive syscon
 doc
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>
References: <20230315055813.94740-1-william.qiu@starfivetech.com>
 <20230315055813.94740-2-william.qiu@starfivetech.com>
 <850bc37e-c6d1-2381-a851-965a4cbee8a0@linaro.org>
 <e38efd81-9c79-553b-7556-7aff30f6ec50@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e38efd81-9c79-553b-7556-7aff30f6ec50@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/03/2023 06:54, William Qiu wrote:
> 
> 
> On 2023/3/19 20:27, Krzysztof Kozlowski wrote:
>> On 15/03/2023 06:58, William Qiu wrote:
>>> Add documentation to describe StarFive System Controller Registers.
>>>
>>> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
>>> ---
>>>  .../soc/starfive/starfive,jh7110-syscon.yaml  | 41 +++++++++++++++++++
>>>  MAINTAINERS                                   |  5 +++
>>>  2 files changed, 46 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml b/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
>>> new file mode 100644
>>> index 000000000000..ae7f1d6916af
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/starfive/starfive,jh7110-syscon.yaml
>>> @@ -0,0 +1,41 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/soc/starfive/starfive,jh7110-syscon.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: StarFive JH7110 SoC system controller
>>> +
>>> +maintainers:
>>> +  - William Qiu <william.qiu@starfivetech.com>
>>> +
>>> +description: |
>>> +  The StarFive JH7110 SoC system controller provides register information such
>>> +  as offset, mask and shift to configure related modules such as MMC and PCIe.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - starfive,jh7110-aon-syscon
>>> +          - starfive,jh7110-stg-syscon
>>> +          - starfive,jh7110-sys-syscon
>>> +      - const: syscon
>>
>> Does not look like you tested the bindings. Please run `make
>> dt_binding_check` (see
>> Documentation/devicetree/bindings/writing-schema.rst for instructions).
>>
>> ... or your PLL clock controller was not tested.
>>
>> Best regards,
>> Krzysztof
>>
> Hi Krzysztof,
> 
> I've already done`make dt_binding_check`, and get no error. So maybe PLL clock controller
> was not tested which I didn't add in this patch series. And PLL clock controller belongs
> to Xingyu Wu, I would tell him.

What's confusing you do not allow here clock controller.

Best regards,
Krzysztof

