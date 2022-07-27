Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64F1F5826BD
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 14:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233232AbiG0Mff (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 08:35:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbiG0Mfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 08:35:33 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288FB357DC
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:35:28 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id t22so20511384lfg.1
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 05:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=mPe16ekSgX4cb+0KyUQJ019tyAyY1yQvQOxlKs0AzY4=;
        b=ZHcQ/D3C8Iaeab+khKtxzYxEUvc05eKuVkjkkhrSSO7aEqsUhO9M4VLmj7WbeoZ1kl
         6YAlkS1n4T/XQsyZ2PGx9KvpNzRlpsdlhLHNB0E0DdK4PXVUeynwlgSz7VNZJoVe6+v7
         xj14XIcrXUVgg3EgqfbSIHeRwxyE37382kMlOkDnliYliUhaCxDPiJIIZ56gzqvdWCoi
         yBa8CAmt+/4eKnJYs/SjVac9nUBoxoO3EsL1qyFAiVeItzIRIclaDCyBfe1E/ZD8OU6k
         qXV8Zsb4pj0ovXJP0mThmxnVqjzikqo05T7MZzj6ETbaKKQuc92AREKApCxS+E8t46bC
         zsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mPe16ekSgX4cb+0KyUQJ019tyAyY1yQvQOxlKs0AzY4=;
        b=4KIXXUvqGs8hf8HeeeKv/09sapYuSYxC67rSurKOQRP08+K6p6bVHSdXDN38WmYdAu
         vP//5cRLv+LNwbG/BjPiNhmHk6h2SgIca//VWY+YguqP9UwIQKnNqxT2zp5fvvCtpVPs
         3A9UaiCDnyvKDex2BUeFveByiKoxKpC0Wsy5R0wkcC7H443O9xDW6tDjAWM/QU92cajb
         93BIc+heaBDHv5IsSQxXdvUiIWKYlh2k9d9fHXD9Pit0V5B2J9FKWm251/EyEga2uIMS
         IoJhZwWO6gYeFPmB3qG3v+FnW2HaolhJ65FUYfwHnuIiqusEhKyZ7A7qdCkj6VPg+8ph
         OhRw==
X-Gm-Message-State: AJIora+1oA30lGBTaIk0tM91JMatv/kwNZ9+EKUAXqDd+LIM5zMgEQOP
        lQTPeZSOAwa7JZD6N94kFJ56fQ==
X-Google-Smtp-Source: AGRyM1vY4KSJURxXvB7KNbE1JbrTT2blNm61Rz8AhaGwD8klo2ZFj2oq9d/saTo3nYqGgr3R82GH8Q==
X-Received: by 2002:a05:6512:ea5:b0:48a:77a6:f9f with SMTP id bi37-20020a0565120ea500b0048a77a60f9fmr7601866lfb.60.1658925326340;
        Wed, 27 Jul 2022 05:35:26 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id p5-20020ac24ec5000000b0048abf3a550asm102806lfr.224.2022.07.27.05.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 05:35:25 -0700 (PDT)
Message-ID: <7a0477a0-9f0f-87d6-4070-30321745f4cc@linaro.org>
Date:   Wed, 27 Jul 2022 14:35:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 1/2] dt-bindings: riscv: Add optional DT property
 riscv,timer-can-wake-cpu
Content-Language: en-US
To:     Anup Patel <apatel@ventanamicro.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220727114302.302201-1-apatel@ventanamicro.com>
 <20220727114302.302201-2-apatel@ventanamicro.com>
 <372e37bf-ac90-c371-ad9e-b9c18e1cc059@linaro.org>
 <CAK9=C2WjU+2cD7UZbja3TT++KCdRyWroT=50dw=fzi5mX30rcw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAK9=C2WjU+2cD7UZbja3TT++KCdRyWroT=50dw=fzi5mX30rcw@mail.gmail.com>
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

On 27/07/2022 14:21, Anup Patel wrote:
> On Wed, Jul 27, 2022 at 5:37 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 27/07/2022 13:43, Anup Patel wrote:
>>> We add an optional DT property riscv,timer-can-wake-cpu which if present
>>> in CPU DT node then CPU timer is always powered-on and never loses context.
>>>
>>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>>> ---
>>>  Documentation/devicetree/bindings/riscv/cpus.yaml | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
>>> index d632ac76532e..b60b64b4113a 100644
>>> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
>>> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
>>> @@ -78,6 +78,12 @@ properties:
>>>        - rv64imac
>>>        - rv64imafdc
>>>
>>> +  riscv,timer-can-wake-cpu:
>>> +    type: boolean
>>> +    description:
>>> +      If present, the timer interrupt can wake up the CPU from
>>> +      suspend/idle state.
>>
>> Isn't this a property of a timer, not CPU? IOW, your timer node should
>> have "wakeup-source" property.
> 
> Historically (since the early days), we never had a timer node in the
> RISC-V world.
> 
>>
>> Now that's actual problem: why the RISC-V timer is bound to "riscv"
>> compatible, not to dedicated timer node? How is it related to actual CPU
>> (not SoC)?
> 
> The RISC-V timer is always present on all RISC-V platforms because

Timer is always present also on ARMv8 (and ARMv7) yet it has its node.

> the "time" CSR is defined by RISC-V privileged specification. The method
> to program per-CPU timer events in either using SBI call or Sstc CSRs.

Timer is still not part of CPU. Otherwise you are claiming here that CPU
can wakeup CPU...

> 
> Since, there is no dedicated timer node, we use CPU compatible string
> for probing the per-CPU timer.

Next time you add a properties:
riscv,saata-can-wake-cpu
riscv,usb-can-wake-cpu
riscv,interrupt-controller-can-wake-cpu

and so on and keep explaining that "historically" you did not define
separate nodes, so thus must be in CPU node.

You need to properly reflect hardware in the DTS instead of such hacks.

Best regards,
Krzysztof
