Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B57C5A6B40
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231925AbiH3Rvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:51:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231707AbiH3RvX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 13:51:23 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2CB858509
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:47:58 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id p7so5423492lfu.3
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=VbbC1Bh6r1meQW/qFxqr5r4rBsOPTTmmpQK0Kk/mnoM=;
        b=CLx2anEK5muMjHEy2z6C/ytE09XuuVbT66QitISohw8P5KeGxIDzu3b3thqQ0XbIPB
         KxIstQ1nTlrbMbsyAniPt1O+OUDo6NXpNPd8eFeiEzf9DdnTn9v/tpl8hMEejPORxwPf
         xevIa+Vg6ZZNZtopf1a8JGSJQ1pOFWlsvU4rEgwdKANRzQoyhnQk2oDaLTpJn6cvQdTN
         lRXu5okbtYkUH/DYBOPjr9Wd0N0cqUgyS2hfG1l4yL+ssbqSWoJpdR1pXn/4bzNo9Sg+
         5totB4e8qGoIOrGLeo5jhnDSU/YXMfTIk2SDmpq8luO+q/5AMtou5/vxxI1QkkL4sK9/
         vr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=VbbC1Bh6r1meQW/qFxqr5r4rBsOPTTmmpQK0Kk/mnoM=;
        b=EH03V1yTXfzFnJDz8ag0myt8fvexuhGcFu1dW+tnZz85lDoGlPmtKLS+8FRimvZdHR
         8mGC2aZYOmNpxpm7k3ZAlGZHI8YUx1E0+R7MrXVeJiwjhwWOemfShvNl7vLG2XW6Rloo
         LVpGI574rH7cktKulVS1RX8pfTdvZimJu2F5vegxG/1pkrREQ0O5n5fH/kPNw3xc7Ckf
         +ZbPlP6ObhZG/Lynaw97TBWNs1u5uK5CRbY0JBSZUgmuv1sUf+lepIZqtZ1MLjQ3Ja1r
         CfuHehExkil12MLkrjGcOQ9HEYIl6gHouXwacOLHoLzp222ds15uBdBKv0KHG08YazSz
         Yufg==
X-Gm-Message-State: ACgBeo1SFb+0HGA9CBpY3JFHRaexGNKDntYY804nVRnd15v6+sbu/6NO
        POjPcPkQKJBZXSJ0HyrnVnDbGg==
X-Google-Smtp-Source: AA6agR4iL/IbKnyBOdWHHEfU9GGXJYgpKeaHWqUCTEAWeQ+yo7kn+yxnBWPHeQ6vQS/TgkpXkMzTiw==
X-Received: by 2002:ac2:4144:0:b0:492:eb38:d8e9 with SMTP id c4-20020ac24144000000b00492eb38d8e9mr8904249lfi.215.1661881676256;
        Tue, 30 Aug 2022 10:47:56 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id q15-20020ac25fcf000000b0048b03ec561fsm1675010lfg.150.2022.08.30.10.47.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:47:55 -0700 (PDT)
Message-ID: <a494ab3f-fc43-e1c7-e30f-09838d743ed5@linaro.org>
Date:   Tue, 30 Aug 2022 20:47:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/9] dt-bindings: riscv: microchip: document the aries
 m100pfsevp
Content-Language: en-US
To:     Conor.Dooley@microchip.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, Daire.McNamara@microchip.com,
        Shravan.Chippa@microchip.com
Cc:     paul.walmsley@sifive.com, palmer@dabbelt.com,
        aou@eecs.berkeley.edu, Cyril.Jean@microchip.com,
        Lewis.Hanly@microchip.com, Praveen.Kumar@microchip.com,
        wg@aries-embedded.de, Hugh.Breslin@microchip.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220830101803.1456180-1-conor.dooley@microchip.com>
 <20220830101803.1456180-3-conor.dooley@microchip.com>
 <a3a8e2ba-a6bd-6e66-fd04-e3a46661a34d@linaro.org>
 <27b8aa9e-9173-b40e-8f9c-a53fa5ba36c8@microchip.com>
 <1065bc99-d73a-9d19-7f09-26cd862fe0c7@linaro.org>
 <69027950-f18d-c9a7-9f0b-d73ef68197c7@microchip.com>
 <dc3bd6c6-852d-30a5-2ec1-ab5f7fd1488c@linaro.org>
 <8ae5c383-1c04-e16e-83a6-26861640deb1@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8ae5c383-1c04-e16e-83a6-26861640deb1@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 20:35, Conor.Dooley@microchip.com wrote:
> On 30/08/2022 18:30, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 30/08/2022 19:59, Conor.Dooley@microchip.com wrote:
>>>>> w dts were
>>>>> needed so that the gpio-hog could be set correctly. Out of curiosity, I can
>>>>> have the same compatible in multiple devicetrees right? In that case, it
>>>>> would just be "aries,m100pfsevp" here and I could put that in both?
>>>>> Would make things easier..
>>>>
>>>> Depends, but I would say for this case rather not. The compatible should
>>>> identify the board. If the boards are different, one compatible should
>>>> not identify both of them. Imagine U-Boot (or something else) trying to
>>>> match the DTS.
>>>
>>> It is the same board though, the way the bootloader works is that if it
>>> detects an SD-card it will use that to boot from, and if not will fall back
>>> to the emmc.
>>
>> Wait, I might miss that part. So this is exactly the same hardware with
>> the same SoM/SoC, same eMMC and SD card, except that one has plugged
>> this SD card (as it is hot-pluggable)?

Then two thoughts:
1. It is indeed one compatible because it is exactly the same hardware
(I don't consider plugged SD card as part of it, just like plugged USB).

2. Then I don't think you should have two boards in the kernel. It's
fine if bootloaders have two of them or to store an overlay in the
kernel or somewhere. But two boards for the same board differing by
hot-plug setup is not for Linux kernel.


Best regards,
Krzysztof
