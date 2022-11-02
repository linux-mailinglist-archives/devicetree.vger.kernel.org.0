Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70F50616E14
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 20:55:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbiKBTzs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 15:55:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbiKBTzr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 15:55:47 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99C20304
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 12:55:46 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id w4so33449qts.0
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 12:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bvp0GxHXX02PA4c6ttDiy9yeQr8r+U10bXzzBfuTgfg=;
        b=MUcHdRuPKLmFMKrd7RgK1QXx6B0CeD6S6Ej/TAQWrSPf26ox3BeLiD5lO68CVkeOGR
         73uHUGRPGWcEQoPhOAg5IwR9rhxIB0aoRWe5/DPmGaswZJ1TIg/zOdPhhQJnkU14YLy0
         344yTQ3F7JbJRIItjVwfyKzwp7rqiBZVPhe3yIjXEM4uwqZWWY+D5hDS9mEeDjA1MVEF
         yuUzyyV+1L9wjq+2M50waxbbw3K1iInyT0VLJBypwigCQUpwGkXAHv8wfz8fuEisoiMM
         NggB12ea3SXcVBwPAK8Vo+8M6i/uNTnIaPP5DaWDZmUFB/XVvG2+8KiHT6pb4O49RWlB
         q2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bvp0GxHXX02PA4c6ttDiy9yeQr8r+U10bXzzBfuTgfg=;
        b=0jGtkjhpBLEgINC+hwJPlIqSvVyGy3MJ4WmhnASxkHgagEW7gY1ll+dZLBvR+iEk+U
         kUbelBXg+vRyjsc2nMJ0Bf3WmswHsgy5MaOcSJ4L71qem4Wdq5wmcMV2Q7JePXkXJIjG
         6oXD5k6NOi8Jis0OVnKeCOuK/XqeOeJmE0EyDcvmuxKHgFqb5LrYu/xqWOVhfS7g1ARH
         5M5asdirn/OCPONeN+0BLh9Ml3/xr8Dz3VkAc0K+RDSYT8VbOQGZW/GvpIXwOzMNoz4g
         wCcDyy5FCXmbA21anSQR/Kz72GkT5aBAVsp+7yXhE7N//fCEptn2paASHD/iZFYnMbr3
         pq3A==
X-Gm-Message-State: ACrzQf0YI9VBv3T93nU2pP4KP3lzhGTE19EUNViIMqU96aRDrB2gfB0p
        SIaxwwjr26hqg9ElGThUKja00A==
X-Google-Smtp-Source: AMsMyM6QWbjr326dSXQCPiL6JFeXTSgexxMZLfP1Di29Ar8lXTBavHU5SJ7uP/DBriEaFq7FWdpcJQ==
X-Received: by 2002:a05:622a:11c4:b0:39c:d88e:dc93 with SMTP id n4-20020a05622a11c400b0039cd88edc93mr21317995qtk.332.1667418945704;
        Wed, 02 Nov 2022 12:55:45 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bm8-20020a05620a198800b006ed138e89f2sm9142744qkb.123.2022.11.02.12.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 12:55:45 -0700 (PDT)
Message-ID: <00dd8dc0-2f8c-753e-2109-1b30154c38c2@linaro.org>
Date:   Wed, 2 Nov 2022 15:55:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/2] arm64: dts: Add support for phyBOARD-Electra-AM642
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>, Wadim Egorov <W.Egorov@phytec.de>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "vigneshr@ti.com" <vigneshr@ti.com>,
        "kristo@kernel.org" <kristo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
References: <20221102134923.3438022-1-w.egorov@phytec.de>
 <20221102134923.3438022-2-w.egorov@phytec.de>
 <20221102151047.ucwh7dwmmqhx4nxf@rejoice>
 <1c73c3a0-458a-0005-f9a7-2d879e70cfe3@phytec.de>
 <20221102194146.zyaw2yzl7q4b6r7u@ducky>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102194146.zyaw2yzl7q4b6r7u@ducky>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 15:41, Nishanth Menon wrote:
> On 16:56-20221102, Wadim Egorov wrote:
> [...]
> 
>>>> +
>>>> +#include <dt-bindings/gpio/gpio.h>
>>>> +#include <dt-bindings/leds/common.h>
>>>> +#include <dt-bindings/net/ti-dp83867.h>
>>>> +
>>>> +/ {
>>>> +	model = "PHYTEC phyCORE-AM64x";
>>>> +	compatible = "phytec,am64-phycore-som";
>>> Does this match the binding?
>>
>> Not very sure about the compatible I should chose here. It is probably not very 
>> important since the compatible gets overridden by the carrier which specifies 
>> the am642 SoC.
>> Seems like the TI SoMs (k3-j7*som*.dtsi) do not add a compatible at all.
>>
>> Or do you think we should add the "ti,am642" compatible here?
> 
> If the compatible of SoM makes much sense as a standalone OR usable
> elsewhere, then it could be an enum option to allow for som, soC as a
> valid combination.
> 
> On the other hand, simplistically, it does look like SoM (like the j7es
> processor board) serves no specific purpose standalone, in which case
> skipping it is more appropriate.

The compatible from patch is clearly wrong - you cannot have such
compatible alone.

Whether having there compatible at all, is a different question...

Best regards,
Krzysztof

