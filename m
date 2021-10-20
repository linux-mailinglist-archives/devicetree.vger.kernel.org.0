Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71644434A5B
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 13:43:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbhJTLpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 07:45:11 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:49788
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230179AbhJTLpK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 20 Oct 2021 07:45:10 -0400
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8D95840019
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 11:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634730175;
        bh=tdDpH01uDMaig+FuQ9PM8Nx6u5iJw79tILyhirsrWXQ=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Btif3CdhbSObdGakPCnM4eRUrCg0Ch6YN/wC3x/QlODfQV7mxiFrSRA0EqozpyhUw
         RdDQ8MdtWUHuXwxJmx9wVJ+qiXZCWvZNANdvFKbS1EfA2WxuhJN2v/Oz+ywRP+6I9r
         zU4756dFsBJbEwv5L/hvAjbIvMGw/Ch1C4PRcpLjX97d0arnjbT/VVJ3D61OyXnvMv
         ScGIbyr1pTAW54QvzqMr8GmC5qbTISDZO/Wd2Nfg6omCNya4FRje6PNeVocNcACBCO
         48BxVlqD2rgFcm2+QH0sy7VFHotDn/3qorOGsMGrEMiSEjtEyzVjDLBtAg4HXcbCRG
         u5wiQ6l5VYc0g==
Received: by mail-wm1-f72.google.com with SMTP id o140-20020a1ca592000000b0030d66991388so150053wme.7
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 04:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tdDpH01uDMaig+FuQ9PM8Nx6u5iJw79tILyhirsrWXQ=;
        b=y3dzmlz3x3i+v6ydpY8l3TVSNyGZwmj+hlfbuJXsSNdivQqtNQD67dnI4MhZpDWvFN
         L952VtTpV5PcgZPY4dTWCeZrzRb2a66TYkKvvnIJ8qSrSRzLvHPW7mhh8TUSLyDw3Z4w
         6nyXVdkSSzkrfNxzxjMgF0UoVdOz6M83skFqEdYx4CRsn4lwZzGchoN8HmWAx20jt61M
         W7Icge9P/zYyTPCu6pMOt8tmCTqsJF4YMF+bnSMRLUBUTGp21+52D2OvwO3yluf8VKPl
         QoN9c9sj0B+cxqJGYz31sUT0pOGceErmtkROlNOUotWTl2E/PqnTQIZ6KGGDv7Qm4GYO
         jNwA==
X-Gm-Message-State: AOAM532Euu7Sf3ULZvEtaOV6JGIk3kHnHOJECrtUWPAeEKp7yBJUuyM+
        necLaid7zOb4KY5BcoDNyhaJscgTjpMF1u6jmtiQYgUQEtzTT+OV93kIhxYfzCQjBkiD30w+lSo
        Hnsrv7AbCvRxOQVptgRtNv9uAYHHhZaTiTN4myoo=
X-Received: by 2002:a05:6000:2af:: with SMTP id l15mr52558020wry.296.1634730175191;
        Wed, 20 Oct 2021 04:42:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyTYsmDUEoSmOgGfRQuvGXjp4xEXc4RGTmMWLib1J1UD0fvSL7a7UiTabgi/AyDkMpNJ682wg==
X-Received: by 2002:a05:6000:2af:: with SMTP id l15mr52557999wry.296.1634730174949;
        Wed, 20 Oct 2021 04:42:54 -0700 (PDT)
Received: from [192.168.123.55] (ip-88-152-144-157.hsi03.unitymediagroup.de. [88.152.144.157])
        by smtp.gmail.com with ESMTPSA id z8sm1830913wrq.16.2021.10.20.04.42.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 04:42:54 -0700 (PDT)
Message-ID: <ff1fdb31-d739-ee85-9ce0-8386065e297f@canonical.com>
Date:   Wed, 20 Oct 2021 13:42:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH 1/1] dt-bindings: T-HEAD CLINT
Content-Language: en-US
To:     Anup Patel <anup@brainfault.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Guo Ren <guoren@linux.alibaba.com>,
        Bin Meng <bmeng.cn@gmail.com>, Xiang W <wxjstz@126.com>,
        Samuel Holland <samuel@sholland.org>,
        Atish Patra <atish.patra@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        OpenSBI <opensbi@lists.infradead.org>
References: <20211020093603.28653-1-heinrich.schuchardt@canonical.com>
 <CAAhSdy22y3gWM0Y9x7m84CdmtHKo7VsDC4+ZDY7+mhkJ9HcYyA@mail.gmail.com>
From:   Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <CAAhSdy22y3gWM0Y9x7m84CdmtHKo7VsDC4+ZDY7+mhkJ9HcYyA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/20/21 13:27, Anup Patel wrote:
> On Wed, Oct 20, 2021 at 3:06 PM Heinrich Schuchardt
> <heinrich.schuchardt@canonical.com> wrote:
>>
>> The CLINT in the T-HEAD 9xx CPUs is similar to the SiFive CLINT but does
>> not support 64bit mmio access to the MTIMER device.
>>
>> OpenSBI currently uses a property 'clint,has-no-64bit-mmio' to indicate the
>> restriction and the "sifive,cling0" compatible string. An OpenSBI
>> patch suggested to use "reg-io-width = <4>;" as the reg-io-width property
>> is generally used in the devicetree schema for such a condition.
>>
>> As the design is not SiFive based it is preferable to apply a compatible
>> string identifying T-HEAD instead.
>>
>> Add a new yaml file describing the T-HEAD CLINT.
>>
>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>> ---
>> @Palmer, @Anup
>> I copied you as maintainers from sifive,clint.yaml. Please, indicate if
>> this should be changed.
>>
>> For the prior discussion see:
>> https://lore.kernel.org/all/20211015100941.17621-1-heinrich.schuchardt@canonical.com/
>> https://lore.kernel.org/all/20211015120735.27972-1-heinrich.schuchardt@canonical.com/
>>
>> A release candidate of the ACLINT specification is available at
>> https://github.com/riscv/riscv-aclint/releases
> 
> T-HEAD supporting only 32bit accesses to MTIME and MTIMECMP
> registers are totally allowed. The RISC-V privileged specification does
> not enforce RV64 platforms to support 64bit accesses to MTIME and
> MTIMECMP registers. Also, the ACLINT specification only states
> that MTIME and MTIMECMP registers are 64-bit wide but it does
> not enforce platforms to support 64-bit accesses.
> 
> Here are some discussions from tech-aia mailing list:
> https://lists.riscv.org/g/tech-aia/message/115
> https://lists.riscv.org/g/tech-aia/message/119
> https://lists.riscv.org/g/tech-aia/message/120
> 
> In other words, the T-HEAD CLINT (MTIMER+MSWI) is compliant
> with the RISC-V ACLINT specification.
> 
> I think we should add implementation specific compatible strings
> for Allwinner D1 in the ACLINT MTIMER and ACLINT MSWI
> DT bindings.
> 
> How about including the following two compatible strings in
> ACLINT DT bindings ?
> allwinner,sun20i-d1-aclint-mtimer
> allwinner,sun20i-d1-aclint-mswi

If the Allwinner CLINT is sufficiently compliant, this makes sense to me.

Will there be a new round of
[RFC PATCH v4 08/10] dt-bindings: timer: Add ACLINT MTIMER bindings
https://lore.kernel.org/all/20211007123632.697666-9-anup.patel@wdc.com/
were you could add the Allwinner device? Or is that series already merged?

Should the riscv,aclint-mtimer.yaml file mention that there are 
different access sizes and either state per compatibility string what 
that size is or provide a parameter for that purpose?

Best regards

Heinrich

> 
> Regards,
> Anup
> 
>> ---
>>   .../bindings/timer/thead,clint.yaml           | 62 +++++++++++++++++++
>>   1 file changed, 62 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/timer/thead,clint.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/timer/thead,clint.yaml b/Documentation/devicetree/bindings/timer/thead,clint.yaml
>> new file mode 100644
>> index 000000000000..02463fb2043a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/timer/thead,clint.yaml
>> @@ -0,0 +1,62 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/timer/thead,clint.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: SiFive Core Local Interruptor
>> +
>> +maintainers:
>> +  - Palmer Dabbelt <palmer@dabbelt.com>
>> +  - Anup Patel <anup.patel@wdc.com>
>> +
>> +description:
>> +  T-HEAD (and other RISC-V) SOCs include an implementation of the T-HEAD
>> +  Core Local Interruptor (CLINT) for M-mode timer and M-mode inter-processor
>> +  interrupts. It directly connects to the timer and inter-processor interrupt
>> +  lines of various HARTs (or CPUs) so RISC-V per-HART (or per-CPU) local
>> +  interrupt controller is the parent interrupt controller for CLINT device.
>> +  The clock frequency of the CLINT is specified via "timebase-frequency" DT
>> +  property of "/cpus" DT node. The "timebase-frequency" DT property is
>> +  described in Documentation/devicetree/bindings/riscv/cpus.yaml
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const:
>> +          - allwinner,sun20i-d1-clint
>> +      - const:
>> +          - thead,clint0
>> +
>> +    description:
>> +      Should be "<vendor>,<chip>-clint" and "thead,clint<version>" for
>> +      the T-HEAD derived CLINTs.
>> +      Supported compatible strings are -
>> +      "allwinner,sun20i-d1-clint" for the CLINT in the Allwinner D1 SoC
>> +      and "thead,clint0" for the T-HEAD IP block with no chip
>> +      integration tweaks.
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts-extended:
>> +    minItems: 1
>> +
>> +additionalProperties: false
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts-extended
>> +
>> +examples:
>> +  - |
>> +    timer@2000000 {
>> +      compatible = "allwinner,sun20i-d1-clint", "thead,clint0";
>> +      interrupts-extended = <&cpu1intc 3 &cpu1intc 7
>> +                             &cpu2intc 3 &cpu2intc 7
>> +                             &cpu3intc 3 &cpu3intc 7
>> +                             &cpu4intc 3 &cpu4intc 7>;
>> +       reg = <0x2000000 0x10000>;
>> +    };
>> +...
>> --
>> 2.32.0
>>

