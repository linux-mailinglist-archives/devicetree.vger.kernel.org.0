Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B28D42F135
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 14:43:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238937AbhJOMpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 08:45:18 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:51458
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238973AbhJOMpC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Oct 2021 08:45:02 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 398463FFEE
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 12:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1634301775;
        bh=n5foe9bmgDkFfFq3zSQcgI6TNmwb73rCwv2IOYhq6Zc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=uibEVoQr3KNSl1uYAwd8yP9pHal2pbcoPWpuhiSbjNJGljYt/3oY9kIJ932DL4GYD
         x0bRGh6E/39HMdNlIJOUk5/u1RiXiG1NHEibUACFiBghR5DOYUHXy0J9j1Z7iEHWk9
         aVFrKjASJEI2C0QQ6L1TDMhp4GmvhU77ShIyxj7qSuky+EwQUlfwBAoTc71TKovDI5
         oQOaFSvGExQ9OM6zkanKvHUS9sMe3AtSMskO7IaeBTupNiwXYAJoeauYD8HvjZUG6Z
         H9a9ddlnUh3BM4pGY8Ek1MPCc445TA8AV4wXagZWuNoTyQTQbUwqdPmDuzC5X5VJtB
         Dt+MW3lXFJ+AA==
Received: by mail-wr1-f71.google.com with SMTP id r16-20020adfbb10000000b00160958ed8acso5861057wrg.16
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 05:42:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n5foe9bmgDkFfFq3zSQcgI6TNmwb73rCwv2IOYhq6Zc=;
        b=dQOQOJ6+Ice6Tvp8gBrq3drPLa8ozS/PFjL8xTAIL5Np32sLrWCGTFohh5S0zNUarh
         5bZu5wXoED3xrXXUMWR81tnFJhnwr9hAufQVsgt9DN0pnLFNL3kz/tf3VU1fTy2fDXU8
         5FB8ddoFBz6BowhYMspbPGxl9l8X7vQMAaCvtVxAjNeJw3Ckvi67SmtZt8IfzjPgq82W
         ORvF402e+1FxG02azPAbvGyjkbBWjpIC2MNJ6wXph8saGNJeC9QWmVyhVKDGklzOOJwY
         MCPT+PlFBnxhiVvGmRCs5vwTpXyTXVwFaw9VrWywdpdW0DtCV9W8X1NVEPTBQsKem4no
         B4Lw==
X-Gm-Message-State: AOAM5304KdWdpfP4d+gxOUUF+3ZEFOv+bkj/clFwrT+DHZanYS9boDb6
        2FpM06N3XXgXKBbCAoS6NFLW+JwD5ch/7go+7i6fQ30IyYM8Jp3ZVif8OK1jaKNHtFbZXbriWuE
        GfUAPVCKppHpOewJLZoePHDhplIGM5dEyw4cX9Dc=
X-Received: by 2002:a7b:c114:: with SMTP id w20mr12049079wmi.143.1634301774933;
        Fri, 15 Oct 2021 05:42:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyNVuMirSALcejYMmB27BxTdWSSxDP4ZYw9M5uBqnWOsxvVtvdVqqFUCaQrxhddccMSOHqJ7w==
X-Received: by 2002:a7b:c114:: with SMTP id w20mr12049056wmi.143.1634301774736;
        Fri, 15 Oct 2021 05:42:54 -0700 (PDT)
Received: from [192.168.123.55] (ip-88-152-144-157.hsi03.unitymediagroup.de. [88.152.144.157])
        by smtp.gmail.com with ESMTPSA id g188sm4869796wmg.46.2021.10.15.05.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 05:42:54 -0700 (PDT)
Message-ID: <081176c0-5938-df1a-7828-d9ee1c270cbf@canonical.com>
Date:   Fri, 15 Oct 2021 14:42:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH 1/1] dt-bindings: reg-io-width for SiFive CLINT
Content-Language: en-US
To:     Jessica Clarke <jrtc27@jrtc27.com>
Cc:     Bin Meng <bmeng.cn@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
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
 <49af3dc8-0d1e-e82f-6df2-2bf8338acd3a@canonical.com>
 <D976B0F9-6AE4-4C04-8D52-75B24D6E4359@jrtc27.com>
From:   Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <D976B0F9-6AE4-4C04-8D52-75B24D6E4359@jrtc27.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/15/21 14:15, Jessica Clarke wrote:
> On 15 Oct 2021, at 12:54, Heinrich Schuchardt <heinrich.schuchardt@canonical.com> wrote:
>>
>> On 10/15/21 12:14, Bin Meng wrote:
>>> On Fri, Oct 15, 2021 at 6:09 PM Heinrich Schuchardt
>>> <heinrich.schuchardt@canonical.com> wrote:
>>>>
>>>> The CLINT in the T-HEAD 9xx processors do not support 64bit mmio access to
>>>> the MTIMER device. The current schema does not allow to specify this.
>>>>
>>>> OpenSBI currently uses a property 'clint,has-no-64bit-mmio' to indicate the
>>>> restriction. Samuael Holland suggested in
>>>> lib: utils/timer: Use standard property to specify 32-bit I/O
>>>> https://github.com/smaeul/opensbi/commit/b95e9cf7cf93b0af16fc89204378bc59ff30008e
>>>> to use "reg-io-width = <4>;" as the reg-io-width property is generally used
>>>> in the devicetree schema for such a condition.
>>>>
>>>> A release candidate of the ACLINT specification is available at
>>>> https://github.com/riscv/riscv-aclint/releases
>>>>
>>>> Add reg-io-width as optional property to the SiFive Core Local Interruptor.
>>>>
>>>> Signed-off-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>>>> ---
>>>>   Documentation/devicetree/bindings/timer/sifive,clint.yaml | 7 +++++++
>>>>   1 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>>> index a35952f48742..266012d887b5 100644
>>>> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>>> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>>> @@ -41,6 +41,13 @@ properties:
>>>>     reg:
>>>>       maxItems: 1
>>>>
>>>> +  reg-io-width:
>>>> +    description: |
>>>> +      Some CLINT implementations, e.g. on the T-HEAD 9xx, only support
>>>> +      32bit access for MTIMER.
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>> +    const: 4
>>> But this is not a "sifive,clint" anyway. Should there be a new
>>> dt-bindings for T-Head clint variant?
>>
>> I assume by new dt-bindings variant you mean: Add a new compatible string in Documentation/devicetree/bindings/timer/sifive,clint.yaml.
>>
>> The vendor Debian image uses:
>> compatible = "{allwinner,sun20i-d1-clint", "sifive,clint0”};
> 
> I assume Bin means to stop calling it a sifive,clint0 and instead have
> something like
> 
>      "allwinner,sun20i-d1-clint", "thead,clint0"
> 
> as is being done for their non-conforming PLIC. It’s worth pointing out
> that the same is true here; the SiFive CLINT supports 64-bit accesses
> on RV64, so this is not compatible with a SiFive CLINT. Moreover, the
> RISC-V spec was clearly written in a way that intended 64-bit accesses
> to be supported for RV64, though was not completely explicit about
> that, which has now been resolved (see
> https://github.com/riscv/riscv-isa-manual/issues/639), so this CLINT
> violates the obvious intent of the pre-1.12 privileged specs (see
> Andrew’s message in the issue, which agrees with my reading).
> 
> Jess
> 

This comment is referring to the discussion in

https://lore.kernel.org/lkml/693a609c-4278-84ab-8a9b-448936bb13d0@sholland.org/

