Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8809962F511
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 13:38:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241364AbiKRMiw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 07:38:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240830AbiKRMiu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 07:38:50 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1C3B25EA3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 04:38:48 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id d20so6569069ljc.12
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 04:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=no+H9b9eosuH2qEiOD6KMI4wDDshNFpABjP/G2BO63Y=;
        b=jppWrMespj1W0x31C9rRdsaH+buh83dd/Gcj7rlLRtIESrlD//bdSWM9+4ikPaNATM
         3jNHsYnzfIt+1qp93V6OXnhxPO5SNUxRXJ/TWMh0jB8rnvAN/Bn44AAO/yLzhzCdJsuG
         DguZeIHz+DYm4t6pdwsZB5gtuYIMZaU8yFSrD8Ycim0rDmOfIz8FGLO50T2CTSFKv3LH
         Oh80rSa6GhGxaEnIuQPwfKoXqHD5jgqlpqmDsi0WdOwZ0TXMPF1FsLhToraw3qbOR6tu
         PdLgJzSuXcAj6AcIyebrgco2D6UH2F5Y1YrjKqRQhOvfz8cwn6sywTCGsU70k8ptIo7c
         vbtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=no+H9b9eosuH2qEiOD6KMI4wDDshNFpABjP/G2BO63Y=;
        b=N9HMDIBFCLvwpKl7VevH4xRrFynUaRbhl5AtMeQsePAvGu6mHX6Yoghu2KEzqYMDAQ
         2lS47IOhvQj68lxqyXYUTvyLs0Sj7jDyhwhJze273VQMwBfOPF2/PnQ/kl1gkLUqCJqf
         QeelXzIZByduZKtqIZLaGbjPEOpCUFjqTVbjD2lEASJnUqUQQA6C1gAmrE3+pVJGCbfU
         M28y/CGH5IX6AEsWJryLHBXCqpZyaivjMU5bBcynItFEV42ATDJpiJumXlCBASAgo3eU
         MmgGFOOqw2PSdkN//c6x/LCET93lBGj+CfYQ9WwkM3oNPIKY+/hG/x9gCagDfGknF5HB
         NKWQ==
X-Gm-Message-State: ANoB5pmUkss9EZQ05WEeWJHjtHpdWfzZS1sizVFNhb2cUumb4TwlCj9W
        tdPZOIW++VpQ+MTvNckYrdxzXw==
X-Google-Smtp-Source: AA0mqf62h736Id6DM8RIqmZIS9xAsNwoJ77uCAoB61kEqeITqo+LxKOuY7z4FqSEcmCxnj0W6V0Atw==
X-Received: by 2002:a2e:b529:0:b0:26a:c77f:57f8 with SMTP id z9-20020a2eb529000000b0026ac77f57f8mr2247605ljm.465.1668775127010;
        Fri, 18 Nov 2022 04:38:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u24-20020a2e9b18000000b002637c04b472sm638303lji.83.2022.11.18.04.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 04:38:46 -0800 (PST)
Message-ID: <947bc72f-2273-9474-9af4-5532d69491b2@linaro.org>
Date:   Fri, 18 Nov 2022 13:38:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 2/2] dt-bindings: gpio: add loongson series gpio
Content-Language: en-US
To:     Yinbo Zhu <zhuyinbo@loongson.cn>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Juxin Gao <gaojuxin@loongson.cn>,
        Bibo Mao <maobibo@loongson.cn>,
        Yanteng Si <siyanteng@loongson.cn>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        loongarch@lists.linux.dev, linux-mips@vger.kernel.org,
        richard.liu@st.com, Arnaud Patard <apatard@mandriva.com>,
        Hongbing Hu <huhb@lemote.com>,
        Huacai Chen <chenhuacai@kernel.org>
References: <20221108092107.28996-1-zhuyinbo@loongson.cn>
 <20221108092107.28996-2-zhuyinbo@loongson.cn>
 <d9edb6e1-c3da-0f5b-546d-37d8151aaa35@linaro.org>
 <d5457109-3bcb-e7d3-067d-9e4acd66ac17@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d5457109-3bcb-e7d3-067d-9e4acd66ac17@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/11/2022 10:50, Yinbo Zhu wrote:
>
>>> +
>>> +  "#gpio-cells":
>>> +    const: 2
>>> +
>>> +  gpio-controller: true
>>> +
>>> +  gpio-ranges: true
>>> +
>>> +  loongson,conf_offset:
>>
>> No underscores in node names. Plus comments from Linus seem to apply
>> here as well. Drop it entirely or explain why this is not part of
>> compatible, why this is needed and why encoding programming model
>> address in DT matches the DT...
> Add it is to distinguish differnt address in different platform.
> and I had drop them and initial them in kernel driver that depend
> on diffent compatible.
>>

So if you had to drop these, please drop from the bindings.

Best regards,
Krzysztof

