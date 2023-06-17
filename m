Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEEA9733F07
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 09:12:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231982AbjFQHMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 03:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234063AbjFQHMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 03:12:49 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA8B52688
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:12:47 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9827109c6e9so211119166b.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686985966; x=1689577966;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJ/O7JTgvls0IaKgZkaCp9/RlgVG325GYsMwuH2AZMM=;
        b=QegjsKAcp3RLddA/g7sGAXXIxD7FSR3D2ONG5BxV/czb+XZ4FVFReuV9zn3cTXJAhV
         geJww72CaSmj+JC2fDnC803oj4ReP76gbk2wFDao2MbhxtBSPTcDEkbgLgpIfrx6DstI
         aB6pPVH1GMyiTl7N6eXdTtBiuqa+0d7cec5xdRpYeGWnRdNu9Z1vxMU/GAF6OqhRWFfi
         +t+rgx7W2z+7OkPrpXQMamGQhnXSboWKhw24tWMgpzgG0N1C70asePM8CdtyrgAbgCFA
         UWDlf4S7+zLRF1ia5sCgC/vEYlELkfOYvlM63OfB7N1MKPCVM2OW4xha0Xej9R9R13ne
         Jrug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686985966; x=1689577966;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xJ/O7JTgvls0IaKgZkaCp9/RlgVG325GYsMwuH2AZMM=;
        b=WsHesNm023tVuXXVLMoXWWANTwj86O0MYRCJleI5UmbfN1sdBSm2ly1AdYERHRFBrY
         Qf3CCVgX9Ljum7mGEjd4XEhtuFwId19iuno+iGHBxCrz2N2G1eOpcnuxkB0HvYt8jNVD
         yNreOJHMH/eECR1nII0+Hi1ufvIkQFWCPNE0NSpps6ruKRteVCrNZjFXiurBHTVa5Lme
         nuvNOdVvhT4YPkEWswRxIX9zNQBqSm6/nc4HO6N3bOSw27sbhObNWnrdmP35VBLROceK
         6gzxqBy17ZfcYBwsLW4hAebAz32wqO68nHisvnWFy3G3qcvEaHJPTIqMj4+AmA0Kz4AW
         c0vg==
X-Gm-Message-State: AC+VfDxPduIGQ50RecP3NsDNJLEtYTgNYVFHJWS7KrTMv/aom+of2YLm
        HBBYVpYFUZOQsKHLPgWK27G7ig==
X-Google-Smtp-Source: ACHHUZ57eieUxh6KiFZ33aqWxdvwuJbCqyZ9LsvL5TGCfT0mfZ3lJFrJBk2HHCzt9h0jhP8n1aTRYA==
X-Received: by 2002:a17:907:1b1e:b0:97e:aad0:12fe with SMTP id mp30-20020a1709071b1e00b0097eaad012femr3034838ejc.77.1686985966364;
        Sat, 17 Jun 2023 00:12:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b1-20020a1709062b4100b00982842ea98bsm4034180ejg.195.2023.06.17.00.12.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 00:12:45 -0700 (PDT)
Message-ID: <ed5c02d3-e9ed-ecd8-ca70-be6e2c478902@linaro.org>
Date:   Sat, 17 Jun 2023 09:12:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 5/6] LoongArch: DeviceTree for Loongson-2K1000
Content-Language: en-US
To:     Binbin Zhou <zhoubb.aaron@gmail.com>
Cc:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1686882123.git.zhoubinbin@loongson.cn>
 <99bdbfc66604b4700e3e22e28c3d27ef7c9c9af7.1686882123.git.zhoubinbin@loongson.cn>
 <493a28b2-8ad5-2e9a-462b-bdc7d585b722@linaro.org>
 <CAMpQs4JJWryScd_nEi+LpKGPXup=RZXw=rBhb7HQkxJuBXgTBw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMpQs4JJWryScd_nEi+LpKGPXup=RZXw=rBhb7HQkxJuBXgTBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/06/2023 08:59, Binbin Zhou wrote:
> On Fri, Jun 16, 2023 at 5:59 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 16/06/2023 08:11, Binbin Zhou wrote:
>>> Add DeviceTree file for Loongson-2K1000 processor, which integrates two
>>> 64-bit dual emission superscalar LA264 processor cores.
>>>
>>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
>>> ---
>>>  arch/loongarch/boot/dts/Makefile            |   3 +-
>>>  arch/loongarch/boot/dts/loongson_2k1000.dts | 565 ++++++++++++++++++++
>>>  2 files changed, 567 insertions(+), 1 deletion(-)
>>>  create mode 100644 arch/loongarch/boot/dts/loongson_2k1000.dts
>>>
>>> diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/dts/Makefile
>>> index 0e5ed373b1b4..c0464bb8e430 100644
>>> --- a/arch/loongarch/boot/dts/Makefile
>>> +++ b/arch/loongarch/boot/dts/Makefile
>>> @@ -1,5 +1,6 @@
>>>  # SPDX-License-Identifier: GPL-2.0-only
>>>
>>> -dtb-$(CONFIG_MACH_LOONGSON64)        = loongson_2k0500.dtb
>>> +dtb-$(CONFIG_MACH_LOONGSON64)        = loongson_2k0500.dtb \
>>> +                               loongson_2k1000.dtb
>>>
>>>  obj-$(CONFIG_BUILTIN_DTB)    += $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_NAME))
>>> diff --git a/arch/loongarch/boot/dts/loongson_2k1000.dts b/arch/loongarch/boot/dts/loongson_2k1000.dts
>>> new file mode 100644
>>> index 000000000000..9fd9d400d97f
>>> --- /dev/null
>>> +++ b/arch/loongarch/boot/dts/loongson_2k1000.dts
>>> @@ -0,0 +1,565 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/clock/loongson,ls2k-clk.h>
>>> +#include <dt-bindings/gpio/gpio.h>
>>> +
>>> +/ {
>>> +     model = "LS2K1000 Reference Board";
>>> +     compatible = "loongson,ls2k1000";
>>> +
>>
>> All the same comments apply here. Don't mix SoC (DTSI) with boards.
> 
> Hi Krzysztof:
> 
> I'm very sorry, this is the first time I've written a full DTS.
> Do you mean that I need to put the descriptions of these devices into
> DTSI and the descriptions of the boards into DTS?

You need to clearly identify what is SoC and what is board. Just look
for every arm/arm64/riscv example. SoC relevant properties go to SoC
DTSI. Board relevant properties go to board DTS.

Best regards,
Krzysztof

