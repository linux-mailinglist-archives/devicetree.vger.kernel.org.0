Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C909D718A46
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 21:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbjEaTh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 15:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbjEaTh0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 15:37:26 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 807AB9F
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:37:17 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-96f7bf29550so957629566b.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 12:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685561836; x=1688153836;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4CVJ2aPSnXlKEo5h1dcXTg+/9hraeZMDkdMUQ3ZvRI=;
        b=C3rUZ/nWtt08/VVwrNSPPyh4Iozms66rLQVUNTr8QQvmp2ckJH7JbT/nquDAzfjUj5
         hPmeWUg2Aid3VViCdRj38dUVflu3mjR9fY2LZbpVK5uMotOfsY1HqNLhiEBMj4bNQ6Cx
         gdTpGRI4wA++LoCCmJtPx7VyzobI4pkiz5oK9dqQOlLLISlmqR+0GitPUJDXWIUN/IMp
         tDXUCa7xhJtrPYEwtbC1Px1g4qS+ihPSb0zT9DS2VZCpq/qkN8lf1GptEi+ox6spMm/i
         PfmxLEtiTccX4EbYoOKl3A+l0eZg6xald0yMkX4CksZSpXVkg4I7U10zd2xgcOpdfSsD
         r7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685561836; x=1688153836;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f4CVJ2aPSnXlKEo5h1dcXTg+/9hraeZMDkdMUQ3ZvRI=;
        b=flM48QM6OvN/GPtAF39mMJTaVLyn56fdcLWjmrK+hxogs4z1Ggqh7CayUVnTdsbyJq
         0auss9ex/PQV4959fIQR4tXJg6kvENZonzaBFAaV8jpr/vWBZ5lTS0bv2Om2xS3wZLL9
         MAiSyi0qOu6KjEjJb4zV62BaN+wS+lw9A45kcmljTbVBV2baHhpN/nHovtq0f3jdVgOf
         Fl2In5Sz6LyVB2fIbHSb6xP1JJCDHpTv+42KTmpkKfZAJb3ethvPmYgDCNdeML4qkgOw
         6L7RhpRpot8CsXk+6YnvlKQ5OO03htLHbfUltwR8cuhBtcMLDnuUbNn2tUS4WjlQLlkt
         NngQ==
X-Gm-Message-State: AC+VfDzz/28s2ft6LECM4BX4kQ0PRS7FUBkoL5Sck5wfjYyxVNK4bOEb
        Z8DfDaJTe7+uW9ioxLGzhK4Jag==
X-Google-Smtp-Source: ACHHUZ6DYu8otCOHUm9zn9KFmrbjPg/88psB43J1UIblA5chDcugIdaCHyzDwNgHlpsTn6FF1gYLTw==
X-Received: by 2002:a17:907:6d12:b0:96a:2b4:eb65 with SMTP id sa18-20020a1709076d1200b0096a02b4eb65mr5753260ejc.9.1685561835963;
        Wed, 31 May 2023 12:37:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id s10-20020a170906a18a00b0096f00d79d6asm9487202ejy.54.2023.05.31.12.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 12:37:15 -0700 (PDT)
Message-ID: <a954db86-c5b7-0c07-8881-0ceb39ac7337@linaro.org>
Date:   Wed, 31 May 2023 21:37:13 +0200
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2aee9fc7-e0a8-b5ad-7362-8461bac618da@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2023 05:30, Marek Vasut wrote:
> On 5/18/23 16:26, Krzysztof Kozlowski wrote:
>> On 17/05/2023 17:25, Marek Vasut wrote:
>>> Add trivial bindings for driver which permits exposing syscon backed
>>> register to userspace. This is useful e.g. to expose U-Boot boot
>>> counter on various platforms where the boot counter is stored in
>>> random volatile register, like STM32MP15xx TAMP_BKPxR register.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> ---
>>> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>>> Cc: Marek Vasut <marex@denx.de>
>>> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: kernel@dh-electronics.com
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linux-stm32@st-md-mailman.stormreply.com
>>> ---
>>> V2: Use generic syscon supernode
>>> ---
>>>   .../bindings/nvmem/nvmem-syscon.yaml          | 39 +++++++++++++++++++
>>>   1 file changed, 39 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>> new file mode 100644
>>> index 0000000000000..7c1173a1a6218
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/nvmem/nvmem-syscon.yaml
>>> @@ -0,0 +1,39 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/nvmem/nvmem-syscon.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Generic syscon backed nvmem
>>> +
>>> +maintainers:
>>> +  - Marek Vasut <marex@denx.de>
>>> +
>>> +allOf:
>>> +  - $ref: "nvmem.yaml#"
>>
>> Usual comment: drop quotes. We removed them everywhere, so you based
>> your work on some old tree.
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - nvmem-syscon
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>
>> Rob's questions are not solved.
> 
> Can you reiterate this one ? I likely missed it.

You did not solve the case of more than one register. This isn't an odd
case.

> 
>> The nvmem.yaml schema expects here to
>> allow children. This should not be created per-register, but per entire
>> block of registers.
> 
> This thing works the other way around, I have a syscon register block 
> already, and I want to expose subset of it to userspace as read/write 
> accessible file to expose bootcounter available in that register (so I 
> can read it and reset it from user application).

And this makes it too limited. I would expect one device exposing
multiple blocks or registers, just like all nvmem providers are doing.


Best regards,
Krzysztof

