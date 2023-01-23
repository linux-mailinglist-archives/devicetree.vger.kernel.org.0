Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 087C86780A5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:57:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232970AbjAWP5k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:57:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231712AbjAWP5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:57:37 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 266732D6F
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:57:36 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id q8so9375982wmo.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W5hrQIyqQuqAn7Bhek3gM4uIwIgMAVVwBp4GADSA+Cw=;
        b=c1kHzEEuAAohbfhkBYauOoWYNOawlKfZE5mlKQzgNOC0tEhGML4PgfJBlBbO4oIVVt
         bnMySVmUYtzmwF2M0HdPdtn/zUzt/+aaLsuxYY0IPSMPRiUoLcsrfUClQLZHK6Dh9EDJ
         bh0p3aTjRNvlkyShZD8iuPVSiv4NOdyWhHG1KfBCH4Jl3PxW7B04JXkWIF2pvLJx6UKS
         RS5fiEP0NfWZWpCKlNMdIe0m9oF43H3huXvD0+QOZdIx39jAcpyrYvhe75ele0pGQ3p1
         MMt62QlnZ39BLYOJ7QE2FBUOI+5cDm7SyF+twW7oL5P/KtQwlXNZZvOP/Rr5osNAYgXH
         g22w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W5hrQIyqQuqAn7Bhek3gM4uIwIgMAVVwBp4GADSA+Cw=;
        b=ovqhvf2KMC6ToDkIHvJOljhpzE96llVQqlwg3Nov6gb5r6Gq0gaGpeQMWorwnkGJY9
         kdR4NjYkbJsTCqkeyOG0IlBGZDT7hyCSk/eyBCZ0Mnqt5lJ1TLtd16RNXxB7eWFVIL/H
         CRFxiZ2C6T7C17CNsTya7hAbCxWkIzxFU3hsHL9uizaMPJSgSHkO69CIUZGpycF00No0
         fK5/aJpvoPB3wjOWYg0xBdsU33Ka5UkHgcye98yjz7pNRxzaJVis8Hu2HBhTHI1BBqal
         K2oMjqbd3iUvf8wyVL1iF//QuwbituFe4d3NUt5h7OzEvdkYlhuw1nZILvmmBDY2Rg6j
         521A==
X-Gm-Message-State: AFqh2krIomsec/IxAhZWiah5/taIHJ15EK4L7D/2SIqR7zChm1UJ3e2s
        oBhN1b+SMWwKzsDH1JyOnVnHEw==
X-Google-Smtp-Source: AMrXdXtpUjl/JVLD08k3jbZH7A5k8ndahqsMDGXZjtXnPJIX3NQffVo7/cdQUFZDQ1DgUuif6F+ptA==
X-Received: by 2002:a05:600c:3b1e:b0:3cf:497c:c4f5 with SMTP id m30-20020a05600c3b1e00b003cf497cc4f5mr24792007wms.13.1674489454756;
        Mon, 23 Jan 2023 07:57:34 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l21-20020a05600c4f1500b003d98f92692fsm11715052wmq.17.2023.01.23.07.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 07:57:34 -0800 (PST)
Message-ID: <934c637b-9ca2-34be-ce64-2a7639de6490@linaro.org>
Date:   Mon, 23 Jan 2023 16:57:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 2/6] dt-bindings: riscv: Document cboz-block-size
Content-Language: en-US
To:     Andrew Jones <ajones@ventanamicro.com>,
        Conor Dooley <conor.dooley@microchip.com>, g@orel
Cc:     linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
        'Atish Patra ' <atishp@rivosinc.com>,
        'Jisheng Zhang ' <jszhang@kernel.org>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20230122191328.1193885-1-ajones@ventanamicro.com>
 <20230122191328.1193885-3-ajones@ventanamicro.com> <Y85A+3MW2N/jPTHH@wendy>
 <20230123094405.2ageo63zauqt6g2n@orel>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123094405.2ageo63zauqt6g2n@orel>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 10:44, Andrew Jones wrote:
> On Mon, Jan 23, 2023 at 08:10:35AM +0000, Conor Dooley wrote:
>> Hey,
>>
>> On Sun, Jan 22, 2023 at 08:13:24PM +0100, Andrew Jones wrote:
>>> The Zicboz operates on a block-size defined for the cpu-core,
>>> which does not necessarily match other cache-sizes used.
>>>
>>> So add the necessary property for the system to know the core's
>>> block-size.
>>>
>>> Cc: Rob Herring <robh@kernel.org>
>>
>> FYI bindings need to be CC Krzysztof & the devicetree list too.
> 
> Thanks, hopefully CC'ing them now is OK (I just added them). If not,
> I can repost.
> 

It does not work like this. I don't have the patch in my inbox. How it
should magically appear there?

Also how do you expect the bot to get it?

You need to use get_maintainers.pl *always*. Please resend.

Best regards,
Krzysztof

