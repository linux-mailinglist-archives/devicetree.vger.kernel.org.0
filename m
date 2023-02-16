Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9672C69961A
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 14:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230402AbjBPNnh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 08:43:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbjBPNnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 08:43:22 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 104E859B75
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:43:06 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id fj20so2937728edb.1
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B5grLXxAB2C9edHtiWdcPQF4DNv/cRB6QAPzd9Oxh6M=;
        b=NQVwbo6Oc/igVtVnE5j9BA51kVTizAW4bXxHKVG4u+nusPCgy7miJHd5yn7E/y/vwE
         Lbs7+8Sr0blHOvDJhNvAZr7/ctXDElFMFdYLzKCICxnJc74z+IRIcXdToaV4DcHNepaB
         sHUNy2du4sdjpZZUwqHJ/IgvysSmtgm5avpBXsoBsvUXr4WwhYESareQBPmsNpkxigqm
         sLvfcnD0IqRS8czrjOh7oiIdJT8zJQz190ZtromTTjlV1Ve9RwuZpddtfThaWKj3nrQD
         Q6Srqfd9txDc1vL5Hddz2gerivCodr1PmQS7WYHJ+hCxy2B2YvYi6XKOqCuu8M5oZ0YX
         k1ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B5grLXxAB2C9edHtiWdcPQF4DNv/cRB6QAPzd9Oxh6M=;
        b=SW+J79YGWhXQ1MbdrUTfuGHxRv8t8uEu18fCMgYvBKr1Fk6nv7G/sEUqvq4C50jZVc
         P/75Pa2iVwavXfLX6YxJW+wPl/cpcFOjZScPWexr0PpPTW+qUbWmuzbMcQyBVvZ8pLSv
         SvTNOArk693lX62qvDk+lS3yEOyrCjs594uMMDriPH8upMO0Oc8WO9vQ+HY0+eTl+AgA
         XA3Fkb5Ztmv/dqjHEXZ7Xy1eLpDi1IjxsQelP1pOdpjJ4nJZLcAsfo/U5yLitFbH5cFn
         OMjLB26z6B8ldLjg8YZbf89FvTD6JfydOYZfSADbJfgOzAETNVBK0/igEaEPUASr7qs+
         xw4Q==
X-Gm-Message-State: AO0yUKUDPN/Xwg/e61SNrN973gf6dpP8uujv3ZyaHBmmwHJJTwYREsA7
        DT2ofc9EIER4n0FD3gsljgm+kw==
X-Google-Smtp-Source: AK7set/TRdjG6xv8ct9rhgVcIRiyLMjQGkZkFuhAX6OpQzYrsPbm81px2CSsywNftx89T+9FNn5qpA==
X-Received: by 2002:a05:6402:909:b0:4ab:1715:2858 with SMTP id g9-20020a056402090900b004ab17152858mr2272896edz.11.1676554985181;
        Thu, 16 Feb 2023 05:43:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n28-20020a5099dc000000b004aab66d34c7sm898722edb.7.2023.02.16.05.43.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 05:43:04 -0800 (PST)
Message-ID: <caed0029-57cf-cd95-661f-1657ef0a6d5e@linaro.org>
Date:   Thu, 16 Feb 2023 14:43:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] dt-bindings: mmc: meson-gx: fix interrupt binding
Content-Language: en-US
To:     neil.armstrong@linaro.org, Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <d5542f6e-920e-93cf-a453-b0601d03f48d@gmail.com>
 <21ae5f5f-2336-db5b-f98a-f83391e1becd@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <21ae5f5f-2336-db5b-f98a-f83391e1becd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 13:52, Neil Armstrong wrote:
>>     interrupts:
>> +    minItems: 1
>>       maxItems: 2
>> +    description:
>> +      mmc controller instance interrupt
>> +      optional card detect interrupt
> 
> I would instead write:
> 
> interrupts:
>    minItems: 1
>    items:
>      - description: mmc controller instance
>      - description: card detect
> 
> and drop maxItems.

+1

Best regards,
Krzysztof

