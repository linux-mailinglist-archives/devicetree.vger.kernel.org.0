Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D56B64CCB7
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 15:55:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238659AbiLNOz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 09:55:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238510AbiLNOz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 09:55:28 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 962F626AAB
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:55:26 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id x28so10876465lfn.6
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Is2bdpOujvqQ7TKFZkhAsYGv4wUEaceqUXluAATDl4E=;
        b=KxZO+Z9GSEpF32M/K2idiwcyYS1hoJhhUvP2SCprvg8kwlLMRwSWYMBjpXJhlnVpLs
         x6F3YGuiDVPpnHPMc3jsUffax+6HUjXiAmqgijPVyUVCNWmRjUw7Lq4pd3ZFzNFH3wpm
         zIXkuhUZRTYdfzaAWxtJwdzPf69mDZenhuJGOqBDBAZtakxUacWsbYhsZmgwLv26L09y
         r7thJ94mMhQjZD15Qpt5eAHPEFjQa2nqTuJ/uktUkUKGXtDQMtT/ZaJiCn8hc1Np/CFm
         pcLfQ0UkJzE1oJwm59sVGXYe1licM1iCX1esrFK9dfqk66fIRqXyek6DwUJoOrbtlqSm
         lyZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Is2bdpOujvqQ7TKFZkhAsYGv4wUEaceqUXluAATDl4E=;
        b=oe+ZIVOPZAGDSDJzJ+8Z+C4caYNRxCtA5iqaF6XPpTcddgXEUy4fgD+P3o9sPZt34j
         nwnf1wvzcCxc1f1t+2G8PxNsJNcc+LTtmfT0YKwupXrWBUOUE2339AGqoyBg8WXaN4tw
         yQxqO+3o3a/tlo1YLw+sb4Z49SeK2q8rsEFj7IxFmJsLu0+j01WXQQF+VKS/WAbyJMw4
         4KXfJL5SO+96SBK+Xg6NCabvtY5MZ+gO5YjBdBn5v5cAswP4XSc6LdWC5pFbTRULVdhV
         zlJgoHEfY/Mg6558FlQIVckFoKmiyf5tbOPqlPG8y6rMtkZJ+HyR2Lq1mxt/tXbO4aPP
         sNdQ==
X-Gm-Message-State: ANoB5plQxBLGTWoh5W4dC21jkujf+y8/Wlz8fkn9APuraF+d2v3kgP36
        uB0xbBW1gNx5vSry5Gsy5HlMSXcLU44we5xm
X-Google-Smtp-Source: AA0mqf4lliDuXrww68K2znM9y1Vu1YU/7QPVaYLdHam/5Hx3JRG+Serl1dVXyca3CSu6nrO4yrzeqw==
X-Received: by 2002:a19:6a0f:0:b0:4b5:6db0:d598 with SMTP id u15-20020a196a0f000000b004b56db0d598mr6838042lfu.20.1671029724957;
        Wed, 14 Dec 2022 06:55:24 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t14-20020a056512208e00b0049c29292250sm828472lfr.149.2022.12.14.06.55.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 06:55:24 -0800 (PST)
Message-ID: <b6b7169b-7dd6-a9c2-87c5-645be74f0028@linaro.org>
Date:   Wed, 14 Dec 2022 15:55:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 2/2] dt-bindings: Add Arm corstone500 platform
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Emekcan Aras <emekcan.aras@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221214132404.439882-1-emekcan.aras@arm.com>
 <20221214132404.439882-3-emekcan.aras@arm.com>
 <2c799103-3e5f-f288-3c78-6360c17a8e45@linaro.org>
In-Reply-To: <2c799103-3e5f-f288-3c78-6360c17a8e45@linaro.org>
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

On 14/12/2022 14:44, Krzysztof Kozlowski wrote:
> On 14/12/2022 14:24, Emekcan Aras wrote:
>> From: Emekcan Aras <Emekcan.Aras@arm.com>
> 
> 1. Your From does not match SoB exactly. Avoid it and make it consistent.
> 
> 2. Use subject prefixes matching the subsystem (git log --oneline -- ...).
> 
> 3. Please use scripts/get_maintainers.pl to get a list of necessary
> people and lists to CC.  It might happen, that command when run on an
> older kernel, gives you outdated entries.  Therefore please be sure you
> base your patches on recent Linux kernel.
> 
> 
>>
>> Add bindings to describe implementation of
>> the ARM Corstone500 platform.
> 
> Please wrap commit message according to Linux coding style / submission
> process:
> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586
> 
>>
>> Signed-off-by: Emekcan Aras <emekcan.aras@arm.com>
>> ---
>>  .../bindings/arm/arm,corstone500.yaml         | 30 +++++++++++++++++++
>>  1 file changed, 30 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone500.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/arm/arm,corstone500.yaml b/Documentation/devicetree/bindings/arm/arm,corstone500.yaml
>> new file mode 100644
>> index 000000000000..cfe41f7760fd
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/arm,corstone500.yaml
>> @@ -0,0 +1,30 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/arm,corstone500.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: ARM Corstone500
>> +
>> +maintainers:
>> +  - Emekcan Aras <emekcan.aras@arm.com>
>> +  - Rui Miguel Silva <rui.silva@linaro.org>
>> +
>> +description: |+
>> +  Corstone-500 is an ideal starting point for feature rich System on Chip
>> +  (SoC) designs based on the Cortex-A5 core. These designs can be used in
>> +  Internet of Things (IoT) and embedded products.
> 
> Yet you do not allow to re-use your DTS, so how this re-usage of design
> will happen?
> 

OK, so similar as Corstone 1000, but please tell me - any reason why you
keep them separate in the bindings? Next time new file for Corstone
1001, 1002, 2000, 2221 etc.?

Best regards,
Krzysztof

