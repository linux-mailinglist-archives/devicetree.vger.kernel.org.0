Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE21D431167
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 09:30:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230324AbhJRHc1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 03:32:27 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59906
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230006AbhJRHc1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Oct 2021 03:32:27 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4E01B4018E
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 07:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634542215;
        bh=wFXVQ4KEtw8nWvUmZe9/ReIrDj2qrzV0p0234hn1yAw=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=TUakONoLSJEVL0hrnWof73bOVJjzIkn6QswUigN2imkl53sUMC9zaLaULXXmbyvvu
         9zntkI8qcg3nAKyP+czLVZn9pc7/41e2dMR99KH1qC8ZiIGUGs27vrnSy7BKqmda4w
         F9DW99J9btEmnfNL7RqKHmBiXsu6yzqTi07xOvfkKvz4GDjDW9Z4qN4OpIbWjIMk28
         7idIwqTNWIp6l9Ovi8ueS3knlpXkCqGEI8mrXQjeLqfQl56gpMUPSfAWJbwVfYv8C+
         QgpUaLvod8+PHMWpaxobcUlTDKMYAg2EDSAW26Z+t6LCWJEpyPo4Ay4xl9kHmdKCRG
         S53vX87R4Ii8g==
Received: by mail-wr1-f72.google.com with SMTP id 41-20020adf802c000000b00161123698e0so8457908wrk.12
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 00:30:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wFXVQ4KEtw8nWvUmZe9/ReIrDj2qrzV0p0234hn1yAw=;
        b=2MoYJ3uxI1fmgRwTkqZg4205Ac/i9jyTbQb0jTJwWWdEv3nSmzRsyCiameMtKtLSGx
         fY/oIGX044u/u0saLjXwVca9J0d6TH/kySeplGAWtAMSIOe3lF9BrWCqLMh+/rNPMrHu
         vO06jRZWsyo8XCm82y+/fFcwvyk+mm6k58O2NXkinkieY59pPzRLmHpHCDmotE1PaBp+
         cBOJWbjtJxVLDeMS32Na52f8JPvDzsaUZrngY9Gcf0eO7UcSpYN7rb6WpPXLpNuTSoxU
         7+GNx2Dj5BsJEAlr1FOX+gYeyKFN8E74nAz7z2F34F3Nnr0mr9iZCRE/EP1uvJlGX69K
         L92w==
X-Gm-Message-State: AOAM532U3Iz5xBi2pKUCrvy7LXikFGFYNbqc1xLRWhgJKsRfUSfdKGTL
        FLU9/dZ5KAUXPu0MhUcYTyK+xQnv9lKdFM0Fp+iO5SrkRgWMRltujEAuhdIa1+Fzij7xcs9VOqi
        Gi49azVMWpo3dfX+uQpKp1aetVPILpwgzREP9aXI=
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr30306599wrm.385.1634542214846;
        Mon, 18 Oct 2021 00:30:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxun+2EYZRd01wBMtxCIoQaC2e86t9mH9UcN0AyvQbSJarL/g5QoX3ssvsEHJB6Oa38TLHG/Q==
X-Received: by 2002:adf:e3d0:: with SMTP id k16mr30306572wrm.385.1634542214639;
        Mon, 18 Oct 2021 00:30:14 -0700 (PDT)
Received: from [192.168.123.55] (ip-88-152-144-157.hsi03.unitymediagroup.de. [88.152.144.157])
        by smtp.gmail.com with ESMTPSA id w26sm11594434wmk.34.2021.10.18.00.30.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 00:30:14 -0700 (PDT)
Message-ID: <7361287f-9c07-8b76-d405-35f287ac1706@canonical.com>
Date:   Mon, 18 Oct 2021 09:30:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH v2 1/1] dt-bindings: reg-io-width for SiFive CLINT
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
References: <20211015120735.27972-1-heinrich.schuchardt@canonical.com>
 <CAAhSdy3JU6jitTWFk4CVRG5Xc7P7ueZzd=xmnKBNpx8eGaR6hw@mail.gmail.com>
From:   Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <CAAhSdy3JU6jitTWFk4CVRG5Xc7P7ueZzd=xmnKBNpx8eGaR6hw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/18/21 06:33, Anup Patel wrote:
> On Fri, Oct 15, 2021 at 5:37 PM Heinrich Schuchardt
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
>> Add a new compatible string "allwinner,sun20i-d1-clint" for the CLINT of
>> the Allwinner D1 SoC.
>>
>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>> ---
>>   .../devicetree/bindings/timer/sifive,clint.yaml     | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>> index a35952f48742..d3b4c6844e2f 100644
>> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>> @@ -26,6 +26,7 @@ properties:
>>         - enum:
>>             - sifive,fu540-c000-clint
>>             - canaan,k210-clint
>> +          - allwinner,sun20i-d1-clint
>>         - const: sifive,clint0
>>
>>       description:
>> @@ -33,14 +34,22 @@ properties:
>>         Supported compatible strings are -
>>         "sifive,fu540-c000-clint" for the SiFive CLINT v0 as integrated
>>         onto the SiFive FU540 chip, "canaan,k210-clint" for the SiFive
>> -      CLINT v0 as integrated onto the Canaan Kendryte K210 chip, and
>> -      "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
>> +      CLINT v0 as integrated onto the Canaan Kendryte K210 chip,
>> +      "allwinner,sun20i-d1-clint" for the CLINT in the Allwinner D1 SoC,
>> +      and "sifive,clint0" for the SiFive CLINT v0 IP block with no chip
>>         integration tweaks.
>>         Please refer to sifive-blocks-ip-versioning.txt for details
>>
>>     reg:
>>       maxItems: 1
>>
>> +  reg-io-width:
>> +    description: |
>> +      Some CLINT implementations, e.g. on the T-HEAD 9xx, only support
>> +      32bit access for MTIMER.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    const: 4
>> +
> 
> Please drop the "reg-io-width" DT property.
> 
> Based on discussion on ACLINT MTIMER DT bindings, Rob suggested
> using implementation specific compatible string for detecting register IO
> width. We should follow the same strategy here as well.

Should we create a completely separated yaml document for 
"allwinner,sun20i-d1-clint", "thead,clint0"? Or should we integrate all 
in sifive,clint.yaml?

Best regards

Heinrich

> 
> Regards,
> Anup
> 
>>     interrupts-extended:
>>       minItems: 1
>>
>> --
>> 2.32.0
>>

