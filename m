Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3737164CCB3
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 15:54:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238655AbiLNOyo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 09:54:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238510AbiLNOyo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 09:54:44 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9F1326AA4
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:54:42 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bp15so10829381lfb.13
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 06:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d9H+JLM7JXP1nEy5PY8dMMEpmgbgUuWuDo5L4Nc4N6I=;
        b=QrszxCfK6LEcWCEexHbBwj9Mlc7Nd+G96wjxYvS/e3hBqFTZAj4s6tZ6N4tyGaujSD
         9eH7PzO+lfoYDZtM9cVt6bkrFLtbXfPmrmtQU1mZzmjSi6KroF1g/74Zw53xYBSFEr7f
         G3NzewMW7EixsUFryKZjHEYtgPaZ6z3SiRTExYJN/1+hC/yXjwRftTDrRO8v242nuqIW
         gWNe21lXTAF5HSOLEGdg7y2njho9wh1gQS1JEUTgvVAUJaXVp8kOoWd7DxBqnHfOgVsz
         LKrhEAPQedKaf1FXDguoh/YpDON+j2Eo9SRBDR/Z6plgWm+vFSdGUvEO8q8d0wbondgx
         1jlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d9H+JLM7JXP1nEy5PY8dMMEpmgbgUuWuDo5L4Nc4N6I=;
        b=TTXN8ZLGg2mRn64aWRFgDdP8eImI3CczHWMeXcZZH3YyYssrzg4TTLH59tDqUfOw5X
         cJQxdWo8w8sxt8cj8hN5AYdqDeEyE8lH/10D1Z2D3bAUPmJZ568Ikognt7EEdB9dazh3
         GicdI5gOHCtVP0uSa+mXRKYOfXaV8ZuE5XjM/zGe3Uv4IQBQO8UAv2ND4VGJbzw7DdEY
         kgl/LvphfiJ6HF41fp8kJCqoKqlU3ZEzGJeub/3TM5PmI4xuQ/N4bWXX6SzIa6BA+fKZ
         vv1uihkR9L+G/afW+TZMULhJXDqgxY+DJKmsTh7bCHSaXi/wHPklEY3frR0oMT8qVx2z
         cckg==
X-Gm-Message-State: ANoB5pkeSKVKNgKrWgMmdZIYXLdOwstaoockZGqWVLY0iHkVtscfqcC2
        sxv7+gbh+Q1ap2nU7AwbaMKrdw==
X-Google-Smtp-Source: AA0mqf7fjDbMQOczDzxDWVvRQKDuql3rPpFAf/jp+i07yzsVHvTdJLcej1wveU20loOokknycLoWWw==
X-Received: by 2002:ac2:4c33:0:b0:4b5:26f3:2247 with SMTP id u19-20020ac24c33000000b004b526f32247mr5822724lfq.69.1671029681149;
        Wed, 14 Dec 2022 06:54:41 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z25-20020a195059000000b004b57bbaef87sm831961lfj.224.2022.12.14.06.54.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 06:54:40 -0800 (PST)
Message-ID: <cc812139-5d0f-df79-0db3-f59ae56493b1@linaro.org>
Date:   Wed, 14 Dec 2022 15:54:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 1/2] arm64: dts: Add Arm corstone500 platform support
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Emekcan Aras <emekcan.aras@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221214132404.439882-1-emekcan.aras@arm.com>
 <20221214132404.439882-2-emekcan.aras@arm.com>
 <20336c6d-6ad5-02d2-91e2-f362507040b1@linaro.org>
In-Reply-To: <20336c6d-6ad5-02d2-91e2-f362507040b1@linaro.org>
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

On 14/12/2022 14:41, Krzysztof Kozlowski wrote:
> On 14/12/2022 14:24, Emekcan Aras wrote:
>> From: Emekcan Aras <Emekcan.Aras@arm.com>
>>
> 
> Use subject prefixes matching the subsystem (git log --oneline -- ...).
> You already got such comment for v1... so do not ignore it but implement
> instead.
> 
>> Corstone500[0] is a platform from arm, which includes Cortex-A cores and
>> ideal starting point for feature rich System on Chip (SoC) designs
>> based on the Cortex-A5 core.
>>
>> These device trees contains the necessary bits to support the
>> Corstone 500 FVP (Fixed Virtual Platform) and the
>> FPGA MPS3 board.
>>
>> 0: https://developer.arm.com/documentation/102262/0000
>>
>> Signed-off-by: Emekcan Aras <emekcan.aras@arm.com>
>> ---
>>  arch/arm/boot/dts/corstone500.dts | 181 ++++++++++++++++++++++++++++++
>>  1 file changed, 181 insertions(+)
>>  create mode 100644 arch/arm/boot/dts/corstone500.dts
> 
> How do you test it? I do not see a way to compile it...
> 
> You need to include it in maintainers entry and CC relevant maintainers.
> 
>>
>> diff --git a/arch/arm/boot/dts/corstone500.dts b/arch/arm/boot/dts/corstone500.dts
>> new file mode 100644
>> index 000000000000..976aa333ffbc
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/corstone500.dts
>> @@ -0,0 +1,181 @@
>> +// SPDX-License-Identifier: GPL-2.0 or MIT
>> +/*
>> + * Copyright (c) 2022, Arm Limited. All rights reserved.
>> + *
>> + */
>> +
>> +
> 
> Just one blank line
> 
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +	model = "ARM Corstone500";
>> +	compatible = "arm,corstone500";
> 
> No DTSI? No board or platform compatible? How is it going to be used by
> anyone else?

I guess this is the same as concept as Corstone 1000.

Best regards,
Krzysztof

