Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2BF8757CCF
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 15:08:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbjGRNIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 09:08:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232516AbjGRNHk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 09:07:40 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FAF19BD
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 06:06:10 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5216f44d881so5768174a12.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 06:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689685568; x=1692277568;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6sUHst+qMfvqGd6D4drEgX+385kdv+PYqXOtITReCXQ=;
        b=FfNEH+WfJctNkYn82YYreYDRI+kPAiyGGv+jM94jGbleg8FgOTkXMCnC+DDEx9cN2M
         SrmmY1IZCmKQgjgCEsYk9GhoBqidgt7UvwqJkx3aJy8bHmAPFDDrZLmJlXXS7tMmoTDY
         6h9kMru9B3+o9/8CZdwy/YfELuF2uWeTWqgjo5/yP7q8YP/SLpdqHcgao76c1+yFY78H
         W6PgaeeuPAkNxk8XVMsOeahh8mpAWz2NzE0FTwYvJnV8ANPvUgAJdHM8Q31NycJTMrPF
         AAEAQMt5WKsxNyOUcyBNO4EU5bUXwQJnfsAF9iBXaicSXwlSfaP07uea+wbZF1KcDRiA
         6uRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689685568; x=1692277568;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6sUHst+qMfvqGd6D4drEgX+385kdv+PYqXOtITReCXQ=;
        b=lR/OVh/s0m97mMl1dH2c2Z7AZKH95M+RPsMtcd5Pa3nNRiqY3oQ9/zif2t2/5Slhnu
         1tSK6r+6RDtBaoEsVMjPJEM2KqiVyNGWYy3wOCiJebyDZ9vvD0+PHOBuEVFZ2lM+YVLn
         fPWz3hc1C17zgKWDq6HVSmrDvpueadxNEUXF1OINuQlbNmyQVU/RzOjvW0fK9/AvtWnP
         ho13G/QPYFDEdolGApDsElMmsnWJHJyTZ75D3I9UFCKRbq6cKgCIstKWOt2BMj6PYzvj
         Md+O67xztCgbXbgd2U+sACGWzwtAey5sipcZcNa8gRHtE92dlCDyRVqwNejyjrvHLwvI
         ylGg==
X-Gm-Message-State: ABy/qLY5x6nf5Pr0WTspVi6dFszivckWLAhEfuQrlM06MuYH2g2lP/Rb
        WYUvBNBBfeL/5MFu+LRu+qHXbA==
X-Google-Smtp-Source: APBJJlHN/ABo/31dZHX/zuzp/ACj1KfAoQbuVnqa49boqYOwScwX4fNTzdd4k6SkhYEzB4GeDz/18g==
X-Received: by 2002:a17:907:3d5:b0:982:8de1:aad9 with SMTP id su21-20020a17090703d500b009828de1aad9mr12232196ejb.64.1689685568703;
        Tue, 18 Jul 2023 06:06:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p1-20020a1709061b4100b00982a92a849asm1014398ejg.91.2023.07.18.06.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jul 2023 06:06:08 -0700 (PDT)
Message-ID: <8c4a488e-8990-8ad2-e82b-8759c9b85447@linaro.org>
Date:   Tue, 18 Jul 2023 15:06:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Content-Language: en-US
To:     Frank Binns <Frank.Binns@imgtec.com>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        Sarah Walker <Sarah.Walker@imgtec.com>
Cc:     "luben.tuikov@amd.com" <luben.tuikov@amd.com>,
        "christian.koenig@amd.com" <christian.koenig@amd.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "tzimmermann@suse.de" <tzimmermann@suse.de>,
        "mripard@kernel.org" <mripard@kernel.org>,
        "matthew.brost@intel.com" <matthew.brost@intel.com>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        "hns@goldelico.com" <hns@goldelico.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "boris.brezillon@collabora.com" <boris.brezillon@collabora.com>,
        "dakr@redhat.com" <dakr@redhat.com>,
        "maarten.lankhorst@linux.intel.com" 
        <maarten.lankhorst@linux.intel.com>, "afd@ti.com" <afd@ti.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "airlied@gmail.com" <airlied@gmail.com>,
        Donald Robson <Donald.Robson@imgtec.com>,
        "faith.ekstrand@collabora.com" <faith.ekstrand@collabora.com>
References: <20230714142526.111569-1-sarah.walker@imgtec.com>
 <19a7dae4-a9bd-187f-49f8-fe9c47f44eff@linaro.org>
 <6eeccb26e09aad67fb30ffcd523c793a43c79c2a.camel@imgtec.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6eeccb26e09aad67fb30ffcd523c793a43c79c2a.camel@imgtec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 13:32, Frank Binns wrote:
> Hi Krzysztof,
> 
> On Mon, 2023-07-17 at 09:29 +0200, Krzysztof Kozlowski wrote:
>> On 14/07/2023 16:25, Sarah Walker wrote:
>>> Add the device tree binding documentation for the Series AXE GPU used in
>>> TI AM62 SoCs.
>>>
>>
>> ...
>>
>>> +
>>> +  clocks:
>>> +    minItems: 1
>>> +    maxItems: 3
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: core
>>> +      - const: mem
>>> +      - const: sys
>>> +    minItems: 1
>>
>> Why clocks for this device vary? That's really unusual to have a SoC IP
>> block which can have a clock physically disconnected, depending on the
>> board (not SoC!).
> 
> By default, this GPU IP (Series AXE) operates on a single clock (the core
> clock), but the SoC vendor can choose at IP integration time to run the memory
> and SoC interfaces on separate clocks (mem and sys clocks respectively). We also
> have IP, such as the Series 6XT, that requires all 3 clocks.

Currently you have only one SoC vendor with only one SoC, so the clocks
do not vary. Describing the clocks for all possible variants is a good
idea, but then this should be clear that this implementation uses subset.

> 
> So the situation here is that Series AXE may have 1 or 3 clocks, but the TI
> implementation being added only has 1.
> 
> I guess we need to add something like:
> 
>   allOf:
>     - if:
>         properties:
>           compatible:
>             contains:
>               const: ti,am62-gpu
>       then:
>         properties:
>           clocks:
>             maxItems: 1
> 
> Or should we be doing something else?

Yes. clock-names as well..


Best regards,
Krzysztof

