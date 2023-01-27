Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95F1E67EB5D
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 17:45:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbjA0Qo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 11:44:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234767AbjA0Qoy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 11:44:54 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 366F17E070
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:44:35 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so5827947wmb.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:44:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BQnUCfXc82O/4NTtQlvKtH9yVhmvnskB7/bG1kNkrKg=;
        b=RD/xmSvJ1sq9e9iRJ2Eq7Caj1FIrJLpCZacmZqhB9F6KDvPSJSBOzBOi6pEW9MolvN
         DYT9vLdKzt9HtlgvRHMsyzXXBOZs1wBDGbjX9jEYbwRJqc/FuvgCLcYULBA8n0Wk9GhH
         iT84RjznvcHngWCNce0pwkzfmIs0e+pxtJO8YD9xTBIdvnZk9YjHAP50iFQ6URgDydsE
         6n054MmPJful+Q3BQXPy3hxqe1vNj83s1FHlpZIAgP6trxURNJwfH5aOGK3a1TREGKNn
         o/Ld6sNmQhi0ByFClutk8pBGQnw8JVxtp+f4pUdNf24oK7YYrR1QuZuigSbOkMBkvbo0
         +nOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQnUCfXc82O/4NTtQlvKtH9yVhmvnskB7/bG1kNkrKg=;
        b=h0ix8zxACjXKKFF8ENg0Goaic15fGkwrys8zEkE5hVcrtlIXk1iw4UUe4NXKnCBcOg
         /GH3epEzdFlDOx0z6uld5Zvue05JgiVwFKFy5t46dG0Vs62xHriiyMfqXeqcIjWKStM7
         YUxWr/jLUZEGLfZBCEsi21q0Jl56lnfrMPMZaptisUT51IsghvS4tUnDNSdHWxY538Kz
         w20racS1NlbH0aEo7eeOCBC7sKthoeMzGLdfNIdMGEtbFchy1HLquGz78dbhAC9THsYP
         78eqLrWcLZ18A7X2L4ukz3VnD7jf7d4C9pkeAu++/yDIyctLE+oM3evbCJN+bgBi/TH0
         wsaA==
X-Gm-Message-State: AFqh2kpS6Q3hX4bKWFixLMZsI63pHwE16ByEDIKRqFHr5q+IjWmoaSga
        EWhgA92Dkur8oHq9/YMXkYdR1g==
X-Google-Smtp-Source: AMrXdXvcQEZfNNPyQVfoVcVcWNCDRMM3G/7II6ByhoPzLOTiaCrmU8hE/GqJVSnyJVqkvz+ErasX6w==
X-Received: by 2002:a1c:ed0a:0:b0:3d3:4a47:52e9 with SMTP id l10-20020a1ced0a000000b003d34a4752e9mr40237621wmh.15.1674837872372;
        Fri, 27 Jan 2023 08:44:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t19-20020a1c7713000000b003c71358a42dsm9567680wmi.18.2023.01.27.08.44.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:44:32 -0800 (PST)
Message-ID: <9610c8be-2a9a-a93b-e417-fa376ad2e855@linaro.org>
Date:   Fri, 27 Jan 2023 17:44:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480> <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
 <20230127075248.GL20713@T480> <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
 <a3c3603f-7401-aeb2-4b58-86c3ca778c6c@linaro.org>
 <6ad9bc2a-910a-357c-fd7a-cf4ffe13ddb0@seco.com>
 <8da6b154-f799-4a33-d455-f42e30ad8940@linaro.org>
 <01d344a6-5e54-9762-3737-05b930fc2fd7@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <01d344a6-5e54-9762-3737-05b930fc2fd7@seco.com>
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

On 27/01/2023 17:42, Sean Anderson wrote:
> On 1/27/23 11:41, Krzysztof Kozlowski wrote:
>> On 27/01/2023 17:22, Sean Anderson wrote:
>>> On 1/27/23 11:15, Krzysztof Kozlowski wrote:
>>>> On 27/01/2023 17:11, Sean Anderson wrote:
>>>>>>>>>
>>>>>>>>>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>>>>>>>>>  drivers/phy/freescale/Kconfig                 |   1 +
>>>>>>>>
>>>>>>>> The phy driver Kconfig change shouldn't be part of this patch.
>>>>>>>
>>>>>>> I put it here for bisectability, since this is the point where we need
>>>>>>> to enable it. But I can do this in a separate patch if you want.
>>>>>>
>>>>>> From DT ABI perspective, it's already broken anyway if you need to change
>>>>>> kernel and DT atomically.
>>>>>
>>>>> AIUI new kernels must work with old device trees, but new device trees need not
>>>>> work with old kernels. So a change like this is fine, since the kernel won't
>>>>> touch the serdes if it isn't supplied.
>>>>
>>>> You used the argument "bisectability". If the patchset is not
>>>> bisectable, the ABI is broken.
>>>
>>> Well, because Shawn wants it in a separate patch I am just going to enable
>>> the driver by default on Layerscape before adding the device nodes. That way we have
>>>
>>> 1. Base state, driver not enabled and node is disabled
>>> 2. Driver enabled but not used because the node is disabled
>>> 3. Driver enabled and bound to node
>>>
>>> So there is never a case where the node is bound but the driver isn't enabled
>>> (which would cause the ethernet drivers to fail to probe).
>>
>> Then there is no bisectability issues and the Kconfig patch should have

"should have not been squashed", of course...

>> been squashed here... Mentioning bisectability and that squash just
>> confuses.
> 
> The Kconfig is currently squashed, but I am going to split it off as requested.

Yes, thanks.


Best regards,
Krzysztof

