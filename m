Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF994637D88
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 17:18:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiKXQSi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 11:18:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbiKXQSh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 11:18:37 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D094F146FA3
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 08:18:34 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id g7so3209185lfv.5
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 08:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=izRYSsAMCF2m91RFG1/KwIhYV5jYb/CgD1ftOZxIHJE=;
        b=BmGGb4RKZ0cFwKwz1Xlpb7uME6awbRzyeW9Hx6TneBEzUIL8x5Xe4c/oVqaSaMcvvN
         BVvFbMUe3Z05nl/i737U0OK7z9w38sutf82GQJdaSThy6cjJfaFhaRmm2buf0G6bdQlw
         vWnj7A5qdoFN42h1jWi18dM9vZ51kyx2pBbLILeC5rzMem8myt3vbwfjJSMQeXYEIoPB
         0Zl5HttgliF1LvGIIfBUEYw/2CHqU3qCUn9LXDC0G8ydvWwoHWFS4B/g2C9c1aS0T6qG
         i+5QHrSXrFEVO/q140QL39aulUaRUU7h2EVI8SYOpQ11459idIUWmRBs6IW+xXhC8z3T
         gqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=izRYSsAMCF2m91RFG1/KwIhYV5jYb/CgD1ftOZxIHJE=;
        b=vdksHu/GDWpP7TCsv/6iDNeFigzzcaQrkTiw3sKTv1IfCy6xUsOXRIflwSeAN1kXW2
         r3nLVLNDwenqV8JBVaGhXd1XwLCTReGa5U2dCcLPqT9OzYMHRJYHwYcWehYKiu5wSz83
         EK8KnDoyvbzloabSnSafFMpBbcXPUMMBWzFrxnhsHtmpMzScoGSQ7W0Ty6rdcGJuvff4
         76k0f4sDjDvSWRGVHGO7a5MEsVIPMCiCZxrB2tT62SjKFL4Wj/9L5fJ8C/wCgmB6WfYS
         FHP/Ca3EbAPy3B1/P8cbQnUivJ2aLtsmAWdapOI06bbfF5B21tTUKDiAlIuOPs8tih+T
         NPIw==
X-Gm-Message-State: ANoB5pmoRj9NSbTEV1IbXd/WGNofCTCq/rrgvkyCRpMb33+hpkH9h927
        9/XzHGakl5Qy12rR4sQ8DJpWdQ==
X-Google-Smtp-Source: AA0mqf50LDhbXS+w8ymf43IqaJ3i0iEOZWPvbGKHxd3qb8XQMoDFzh3SVpSl+baZKBgAgMA4mpHlHw==
X-Received: by 2002:ac2:5a09:0:b0:4ab:b2c:75ae with SMTP id q9-20020ac25a09000000b004ab0b2c75aemr6358805lfn.40.1669306713076;
        Thu, 24 Nov 2022 08:18:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id 9-20020a2eb949000000b002797e41e1bdsm132869ljs.86.2022.11.24.08.18.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Nov 2022 08:18:32 -0800 (PST)
Message-ID: <5c7a06bf-94e3-5c65-f202-105f74a41d29@linaro.org>
Date:   Thu, 24 Nov 2022 17:18:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v1 1/2] dt-binding: soc: nuvoton: Add NPCM BPC LPC
 documentation
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>
Cc:     avifishman70@gmail.com, tali.perry1@gmail.com, joel@jms.id.au,
        venture@google.com, yuenn@google.com, benjaminfair@google.com,
        arnd@arndb.de, hasegawa-hitomi@fujitsu.com, marcan@marcan.st,
        nicolas.ferre@microchip.com, conor.dooley@microchip.com,
        heiko@sntech.de, sven@svenpeter.dev, briannorris@chromium.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221122201232.107065-1-tmaimon77@gmail.com>
 <20221122201232.107065-2-tmaimon77@gmail.com>
 <cedc0013-f0c0-3180-6995-477b77b919f8@linaro.org>
 <CAP6Zq1iGwqOVOnhmF0ijYw=KoTRJj5CUpFv6WDouZmjVxXhQ-g@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1iGwqOVOnhmF0ijYw=KoTRJj5CUpFv6WDouZmjVxXhQ-g@mail.gmail.com>
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

On 24/11/2022 16:38, Tomer Maimon wrote:
> Hi Krzysztof,
> 
> Thanks a lot for your comments.
> 
> On Wed, 23 Nov 2022 at 12:03, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 22/11/2022 21:12, Tomer Maimon wrote:
>>
>> 1. Subject: drop second, redundant "documentation" (dt-bindings are
>> documentation).
> O.K.
>>
>> 2. Use subject prefixes matching the subsystem (git log --oneline -- ...).
> this is what I did dt-binding: soc: nuvoton... do you mean dt-binding: nuvoton.

You didn't run the command, did you?

>>
>>> Added device tree binding documentation for Nuvoton BMC NPCM BIOS Post
>>> Code (BPC).
>>>


(...)


>>
>> No, only bus schemas could have it. Here additionalProperties: false.
>>
>> It seems there are already few LPC controllers and all are put in
>> different places:
>> Documentation/devicetree/bindings/mfd/aspeed-lpc.yaml
>> Documentation/devicetree/bindings/arm/hisilicon/low-pin-count.yaml
>>
>> Maybe Rob why this was made not really as two bindings - for bus
>> controller and devices?
> As mention above, next patch I will describe only the BPC device.
>>
>> Best regards,
>> Krzysztof
>>
> 
> In general, I waiting for Arnd approval for adding the NPCM BPC driver to SoC.
> After Arnd approval, I will send a new patch revision.


To be clear - bindings must be accepted (Reviewed or Acked) before
driver is.

Best regards,
Krzysztof

