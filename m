Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EE1142EFFC
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 13:54:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238549AbhJOL4e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 07:56:34 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49832
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235249AbhJOL4d (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Oct 2021 07:56:33 -0400
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0168D40006
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 11:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634298866;
        bh=c9jh8Oug06AKc57muwkesbMnQqm4YikcwhqDP8QKSX8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=B1ym/HuN6dOXTYkNAy6EliBmRrggdPumoTeAwGFLE9GOp3p419qZhrElj+GNJymGn
         x5ogidfOMxCvRaHsrX2AjvCsJTk0bNNpGhUpMPDmcEaiF4WqBHTjoZGzMLPTwD0RSE
         UCXTLhTK1yGsm2Hak38WBSFbCX8qCfbVlp5XQhg1R31okn/z4SHm4YqQdgPJ0WVcj6
         AXf66nPrhTXi1miIXlzyPWYxEKsJlQUGmY/lHfDv+k1uK58x8jP3qCP8Lqfu6tdGCZ
         Y62ampYO5Va08BdaAcgavDxhXuLWdfIXrNtoziE829f7L0mRdyQ/g3NmVWpGdgCrkr
         3c+G89BcYS1+A==
Received: by mail-wm1-f70.google.com with SMTP id s25-20020a7bc399000000b0030da0f36afeso757097wmj.1
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 04:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c9jh8Oug06AKc57muwkesbMnQqm4YikcwhqDP8QKSX8=;
        b=X/SkUjavhJ2L7NllWTqeZvISltA3/LA85CZGfmsR2q1M+pEXZ8UDCGr2UrSr8m11J8
         G8GkN8FWnkf58V9QsxcLRX3FsMQyR7ZH9rMLnIKua+bg3j+b4ecdU6FcfD/wgIeuo311
         G+ht70shX8N4Vs2rO2qOdQG7SBfG/9VkjTCMsVleRaWdlw3KlYKKdrP5zGTuO3FfbaIR
         zmGvUlKymA5/U/35/roB/b+ZR/6aR/2uYAzxBrNb+y3BjVkUXQ/VyaOE6tHwUnsdebfm
         Yv2oqcR1YQxNWNuh5zUAdD6b7H6brDto6c0l0+iLdFJ8UEG1DcW94vk2BIEJSYq7cSb0
         h+FA==
X-Gm-Message-State: AOAM532ETRY7d0/gEQWk5puWCaRH0Et65qg2qo+oSHMiOGK6Sf/8SlAb
        atAf6lLoD//yHfeuQK2BY6vD/MIYffBDVQYXjtZaB0v9ZBu+L5PQjWDm0LEPnRmqD5U9y1eYyZW
        m7jz/KqVvQU8V/GWnw01JRSenbOle/XIG3dVQic4=
X-Received: by 2002:a05:600c:1548:: with SMTP id f8mr12195407wmg.35.1634298865214;
        Fri, 15 Oct 2021 04:54:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrsgC8rHPMRvubvnpUIbMn2Nt0B3IBm9IRtB1R9WUWCgSJvYa0cPdXCvYF+Pd0OXvt+Lspfg==
X-Received: by 2002:a05:600c:1548:: with SMTP id f8mr12195376wmg.35.1634298864992;
        Fri, 15 Oct 2021 04:54:24 -0700 (PDT)
Received: from [192.168.123.55] (ip-88-152-144-157.hsi03.unitymediagroup.de. [88.152.144.157])
        by smtp.gmail.com with ESMTPSA id d8sm4931663wrv.80.2021.10.15.04.54.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 04:54:24 -0700 (PDT)
Message-ID: <49af3dc8-0d1e-e82f-6df2-2bf8338acd3a@canonical.com>
Date:   Fri, 15 Oct 2021 13:54:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH 1/1] dt-bindings: reg-io-width for SiFive CLINT
Content-Language: en-US
To:     Bin Meng <bmeng.cn@gmail.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Guo Ren <guoren@linux.alibaba.com>, Xiang W <wxjstz@126.com>,
        Samuel Holland <samuel@sholland.org>,
        Atish Patra <atish.patra@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        OpenSBI <opensbi@lists.infradead.org>
References: <20211015100941.17621-1-heinrich.schuchardt@canonical.com>
 <CAEUhbmUSmi9mbiHpatBjGgRjrtyJPms9BRmyBPs5BWeVb7n1Nw@mail.gmail.com>
From:   Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <CAEUhbmUSmi9mbiHpatBjGgRjrtyJPms9BRmyBPs5BWeVb7n1Nw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/15/21 12:14, Bin Meng wrote:
> On Fri, Oct 15, 2021 at 6:09 PM Heinrich Schuchardt
> <heinrich.schuchardt@canonical.com> wrote:
>>
>> The CLINT in the T-HEAD 9xx processors do not support 64bit mmio access to
>> the MTIMER device. The current schema does not allow to specify this.
>>
>> OpenSBI currently uses a property 'clint,has-no-64bit-mmio' to indicate the
>> restriction. Samuael Holland suggested in
>> lib: utils/timer: Use standard property to specify 32-bit I/O
>> https://github.com/smaeul/opensbi/commit/b95e9cf7cf93b0af16fc89204378bc59ff30008e
>> to use "reg-io-width = <4>;" as the reg-io-width property is generally used
>> in the devicetree schema for such a condition.
>>
>> A release candidate of the ACLINT specification is available at
>> https://github.com/riscv/riscv-aclint/releases
>>
>> Add reg-io-width as optional property to the SiFive Core Local Interruptor.
>>
>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>> ---
>>   Documentation/devicetree/bindings/timer/sifive,clint.yaml | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>> index a35952f48742..266012d887b5 100644
>> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>> @@ -41,6 +41,13 @@ properties:
>>     reg:
>>       maxItems: 1
>>
>> +  reg-io-width:
>> +    description: |
>> +      Some CLINT implementations, e.g. on the T-HEAD 9xx, only support
>> +      32bit access for MTIMER.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    const: 4
> 
> But this is not a "sifive,clint" anyway. Should there be a new
> dt-bindings for T-Head clint variant?

I assume by new dt-bindings variant you mean: Add a new compatible 
string in Documentation/devicetree/bindings/timer/sifive,clint.yaml.

The vendor Debian image uses:
compatible = "{allwinner,sun20i-d1-clint", "sifive,clint0"};

We could add this diff in a future version of the patch:

--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -26,6 +26,7 @@ properties:
        - enum:
            - sifive,fu540-c000-clint
            - canaan,k210-clint
+          - allwinner,sun20i-d1-clint
        - const: sifive,clint0

      description:
@@ -33,10 +34,10 @@ properties:
        Supported compatible strings are -
        "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
        onto the SiFive FU540 chip, "canaan,k210-clint" for the SiFive
-      CLINT v0 as integrated onto the Canaan Kendryte K210 chip, and
+      CLINT v0 as integrated onto the Canaan Kendryte K210 chip,
        "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
-      integration tweaks.
-      Please refer to sifive-blocks-ip-versioning.txt for details
+      integration tweaks, and "allwinner,sun20i-d1-clint" for the Allwinner
+      D1. Please refer to sifive-blocks-ip-versioning.txt for details

    reg:
      maxItems: 1

Best regards

Heinrich

> 
>> +
>>     interrupts-extended:
>>       minItems: 1
> 
> Regards,
> Bin
> 

