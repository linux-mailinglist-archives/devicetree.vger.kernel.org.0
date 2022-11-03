Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E31266183E1
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 17:12:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231470AbiKCQMr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 12:12:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231476AbiKCQMq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 12:12:46 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEC302639
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 09:12:44 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id o8so1443430qvw.5
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 09:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eZsDu85F3RHyxZVrl9PcYTkBaS8GKbnuss1ow6FXbIM=;
        b=JzTw5MYD7/X9ivqRz+J88C+21mHZVOlTmPxHEWmRpdyapRKIeVuUYLkPMtTKezLV17
         C9IA2g50CxMIs8HTOjX6TehMi5wkafrSzzweldlBwgE8HOxSruN2QSsERCPEUQz4S8ci
         7BVYFTShlwUoIrK68YclgkhqHs0f3Bbig1e2rUVFekVs5QPOldvZEmMjKrpfrFW7ry6A
         L98832iN3h6t8JpFRQp5q9Kxj6YtYuOsZNxBE9+7hldrQ8W2WlRx9i4NjeG3bhQ9Os9F
         eA+pgElGkjslKjPhH6otcH/ItC4psfWvwRDjBis9VmDCQaS/VDQ5tuq9M3R5XipLmLPX
         cm8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eZsDu85F3RHyxZVrl9PcYTkBaS8GKbnuss1ow6FXbIM=;
        b=yTbzxTa78vcU5DSMVMZgx9x2n/3mf1AHnJTpm+dj9U4xUUHgpEITyRy7GqAup00YFS
         ILLvcaAzmvI217RNFNp/5/5rWtjaTQAa9AV2a6VMW4b+V4HS3XE/9KATNChw9TUzGbSZ
         JP8tx1gPYUDU6KSNcQkq4TUhPeuWBr2Vrw7CUioLTfAo8luKbuk7zQ9khd5aDpkXdSC8
         BSUBwj3wEH06APEdkr58TpnL4Mm0W9bvn3LdHcME+DLYrjSYWVAJTvlR1vZkxFzNv4Gm
         gKZkfAfp9SIK65kk0mI2waHnpUW6J9h0SIic6nUr4QQd4WMXbEjGkEv9VK7PvyTfgTbZ
         4XPg==
X-Gm-Message-State: ACrzQf2YIyzRhfLntyw/qVMU1LO5Zmsk2aNMLzCUO8FJ1ekwiga6iDrq
        fbG5dsNAA3ThWSGAXFLGTOwEJu08t8A=
X-Google-Smtp-Source: AMsMyM7i3ysO9wWnrF9rLw2lIy0cnmlwHmen51GEhBUEboIR0RUutocGZ3jGBB1skdpQNpZj+wlT2A==
X-Received: by 2002:a05:6214:c67:b0:4bb:acd8:36ad with SMTP id t7-20020a0562140c6700b004bbacd836admr2292029qvj.100.1667491963901;
        Thu, 03 Nov 2022 09:12:43 -0700 (PDT)
Received: from [192.168.1.102] (ip72-194-116-95.oc.oc.cox.net. [72.194.116.95])
        by smtp.gmail.com with ESMTPSA id ga15-20020a05622a590f00b00398313f286dsm769855qtb.40.2022.11.03.09.12.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 09:12:43 -0700 (PDT)
Message-ID: <2989929f-d042-99c8-f933-2a811eab339b@gmail.com>
Date:   Thu, 3 Nov 2022 09:12:39 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] ARM: dts: bcm63138: drop invalid "nand" interrupt name
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20221103102406.18339-1-zajec5@gmail.com>
 <9b346154-4f11-3682-3b6d-73c76170455d@gmail.com>
 <57974d7f-66f2-8bf6-9d80-7fb9b6978465@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <57974d7f-66f2-8bf6-9d80-7fb9b6978465@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/3/2022 9:02 AM, Rafał Miłecki wrote:
> On 3.11.2022 16:31, Florian Fainelli wrote:
>> On 11/3/2022 3:24 AM, Rafał Miłecki wrote:
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> String "nand" was never a valid interrupt name. It was never documented
>>> and never used in Linux or U-Boot driver. It most likely comes from a
>>> copy & paste mistake ("nand" is used in "reg-names").
>>>
>>> The whole "interrupt-names" property is optional and can be skipped.
>>
>> How about we just fix the binding document instead? Deciding the fate 
>> of a property based upon client programs of the DTS using it is a weak 
>> argument IMHO.
> 
> It's not a matter of client programs.
> 
> 
> Binding clearly says that the first interrupt is "NAND CTLRDY interrupt".
> Please check: Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml

The binding is trying to capture all of the existing conditions that are 
present in Linux's tree but it is not actually specific enough for 
instance flash_dma_done and flash_edu_done are mutually exclusive and 
depend upon the controller's generation. Something that ought to be 
fixed as a separate patch.

> 
> Other interrupts are described as well. It's just "interrupts-names" that
> are optional.

How about we just rename the interrupt-names to "nand_ctlrdy" then, and 
also drop the Fixes: tag because we are not fixing anything functional here.
-- 
Florian
