Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3219E534EDF
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 14:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242494AbiEZMLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 08:11:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230487AbiEZMLp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 08:11:45 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 536CAB2240
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:11:44 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id er5so1543926edb.12
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 05:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sXHp14NNalgqPaKL7fFgyP/4BdJ+vF73UOPZDrXfEbU=;
        b=FGwLjy7oS+OIxxTDnvLctd0ph6xYVfo9FHwpZa0nZL9tKTfGKLDaBLD2pgvAlHvsSO
         6+YLNbhFsfrMUNXNQxqtzm3DgEK4LOOTzzATAJrKJsO8czXDovltiJKZddYVbl5z5sVu
         Cgr7SW5TSLSVGrIpy7bAoLTAn0aaQXJRTfJbJ6D0xGbzEhYxN0vAXpP0PduCOthjh7Qx
         1Lp5YIborDM4hz1c22ERtTfDyt8uAJgCEfX7qBL5icCGLa4M7HZxCshuadE5teTSPbzv
         fuRYIQg7n/5kW8y1p8Vct+9Z2GLEaQDIIdJa1zZSDJyK9jhwtjFdxn369U1N2ewN68hc
         zZUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sXHp14NNalgqPaKL7fFgyP/4BdJ+vF73UOPZDrXfEbU=;
        b=ST2tclAMNQgT7ufX7anoRZGCeFZOsP/9OUQf1AsjxixUulcEuFflznd9H7cgeelYKQ
         UyAhhDRLMesX1ueyzpfQ79xhWGV6sVvz3bIUd2sqSORe+eIbxBncTBaUWxyVJeeTFX1M
         Y5DUE08T5Df1/hUxyr+L0TWxNlxWyOjQCk7qqC2AL1K7gRxWoYxZHR4F1iKU+Hl0H42h
         BqZtnhvq0Asq3FeQJzoLH/zcC4/qViJi3acjxJY6m5uQq0u2zss8REA77tA5Jo31xI6x
         MxNXv2CnENRo9NbIU/gx1oLA7btjuzaF5P8+gxggML06qL8FD5LgNbuFYDohzoKgPSu2
         rgwg==
X-Gm-Message-State: AOAM532fy5s/JKLUV5PtSjd8+uUiGxdjXjEZzqBMmkZ4ezVlD/LmjADj
        l+XFTfwOV+EMKlIQwKYrnHfEzg==
X-Google-Smtp-Source: ABdhPJxKtLDaqitsHZgj8YIb7tPwvHNZlr+rERVc0m5szUCbZxJUM9dMruOloFZQvWNGezIeQY6/EA==
X-Received: by 2002:aa7:c79a:0:b0:42a:762e:769c with SMTP id n26-20020aa7c79a000000b0042a762e769cmr39520806eds.155.1653567102762;
        Thu, 26 May 2022 05:11:42 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cw13-20020a170906c78d00b006fee11af404sm458355ejb.147.2022.05.26.05.11.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 05:11:42 -0700 (PDT)
Message-ID: <32077a17-6a95-d583-9d7f-2276cf586b38@linaro.org>
Date:   Thu, 26 May 2022 14:11:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH -next] ARM: dts: aspeed: nuvia: rename vendor nuvia to
 qcom
Content-Language: en-US
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
References: <20220523175640.60155-1-quic_jaehyoo@quicinc.com>
 <dd67a453-b75b-d092-f999-3faf05ef8160@linaro.org>
 <71613fa5-c468-e3ab-935a-7aa675e822fc@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <71613fa5-c468-e3ab-935a-7aa675e822fc@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2022 13:57, Jae Hyun Yoo wrote:
> Hi Krzysztof,
> 
> On 5/24/2022 2:53 AM, Krzysztof Kozlowski wrote:
>> On 23/05/2022 19:56, Jae Hyun Yoo wrote:
>>> Nuvia has been acquired by Qualcomm and the vendor name 'nuvia' will
>>> not be used anymore so rename aspeed-bmc-nuvia-dc-scm.dts to
>>> aspeed-bmc-qcom-dc-scm-v1.dts and change 'nuvia' to 'qcom' as its vendor
>>> name in the file.
>>
>> And all users of this DTB now have to update their bootloaders, scripts,
>> installation methods. We did not rename FSL or Marvell boards, so
>> neither should be renamed this one.
> 
> Yeah, I know that we don't rename dts but the previous version of this
> change was picked recently in the middle of code review
> https://lore.kernel.org/all/979a5c87-a7ea-a1f0-e42e-29043df6b348@quicinc.com/
> and the v3 was pulled recently so it's still in the -next queue so
> I believe it has a chance to be renamed since no one is using the DTB
> yet.

Ah, so it is still in next (or was before this merge window). OK, thanks
for explanation.

> 
>>>
>>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>>> ---
>>>   arch/arm/boot/dts/Makefile                                    | 2 +-
>>>   ...eed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} | 4 ++--
>>>   2 files changed, 3 insertions(+), 3 deletions(-)
>>>   rename arch/arm/boot/dts/{aspeed-bmc-nuvia-dc-scm.dts => aspeed-bmc-qcom-dc-scm-v1.dts} (97%)
>>>
>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>> index 03f5b3a15415..2a3c95387613 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -1584,7 +1584,6 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>>   	aspeed-bmc-lenovo-hr630.dtb \
>>>   	aspeed-bmc-lenovo-hr855xg2.dtb \
>>>   	aspeed-bmc-microsoft-olympus.dtb \
>>> -	aspeed-bmc-nuvia-dc-scm.dtb \
>>>   	aspeed-bmc-opp-lanyang.dtb \
>>>   	aspeed-bmc-opp-mihawk.dtb \
>>>   	aspeed-bmc-opp-mowgli.dtb \
>>> @@ -1597,6 +1596,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>>   	aspeed-bmc-opp-witherspoon.dtb \
>>>   	aspeed-bmc-opp-zaius.dtb \
>>>   	aspeed-bmc-portwell-neptune.dtb \
>>> +	aspeed-bmc-qcom-dc-scm-v1.dtb \
>>>   	aspeed-bmc-quanta-q71l.dtb \
>>>   	aspeed-bmc-quanta-s6q.dtb \
>>>   	aspeed-bmc-supermicro-x11spi.dtb \
>>> diff --git a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
>>> similarity index 97%
>>> rename from arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>>> rename to arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
>>> index f4a97cfb0f23..259ef3f54c5c 100644
>>> --- a/arch/arm/boot/dts/aspeed-bmc-nuvia-dc-scm.dts
>>> +++ b/arch/arm/boot/dts/aspeed-bmc-qcom-dc-scm-v1.dts
>>> @@ -6,8 +6,8 @@
>>>   #include "aspeed-g6.dtsi"
>>>   
>>>   / {
>>> -	model = "Nuvia DC-SCM BMC";
>>> -	compatible = "nuvia,dc-scm-bmc", "aspeed,ast2600";
>>> +	model = "Qualcomm DC-SCM V1 BMC";
>>> +	compatible = "qcom,dc-scm-v1-bmc", "aspeed,ast2600";
>>
>>
>> You need also change bindings.
> 
> I didn't see any case of changing bindings for adding a new Aspped BMC
> dts.

Hmmm... Where do you document these bindings? Or does it mean Aspeed
does not document it at all, every time the checkpatch complains but no
one thought about it why? :)

Best regards,
Krzysztof
