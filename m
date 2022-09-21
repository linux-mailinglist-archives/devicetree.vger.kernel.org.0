Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 812E35BF84D
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230527AbiIUHxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:53:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230015AbiIUHxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:53:09 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E949085ABD
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:53:07 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id l12so5941800ljg.9
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=OS0CSjnlW5ADVTuZSK4e/8bQa+nM61/76HZjRJHlhE8=;
        b=UHWL6t56LIFGZHwdc/+WL+z0SYzWxEENolMyzH7nOCm8KzikH68NrxBkjqGr70SXNW
         3mZWGxLEC+XHRUKKNrwh7WhDCiNlhPUnKoFfo+UiqbYQaGdpKclRAwHbhTKWmkkXRaWM
         v1RFmVq194hS8C/YXDzo4R+l/FI8t+G1jsKqwxLovg/6D/Rklc35jn1pkBqU/GD9rwzn
         hlECjQKZIu9ER1b2twWm9OxlWSc1gODdrFORxJi5HewVDvJM/prvlNHMJ3us67Ee1+gN
         1Zr6BKxKw3U0V5bncc9hYanXdxZh8Db9LGrHAw1ZkP4uqaaAt2RH4kWWmzjQP3IhfgB4
         +x2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=OS0CSjnlW5ADVTuZSK4e/8bQa+nM61/76HZjRJHlhE8=;
        b=pHmb6dhg9Uv07BD7qfGso1PLiHZcbzCcoKxc+Z+4+8l1Y1S3d3DKxT48Cz+Y7MKy8Y
         sXdwH7XlWbmUNluxg0AQJc4ZL0TF4w5UbTWdXnraeoPLYYz17Kq/QCqVjlwIM98NJ8Mx
         yjXAqZJGDxWsxje3xAGzMwdABlLiPChu2YsLy/nIcQtNq3QAC3TvHYouG8bj+kI9Kgy/
         LbWXvjXwrMafCjHDMyRRVhYCEvP1etF3nMTSpc+O3dWLejhev8BpBfSWkErNAgVbbrBa
         XHyxkOFJgJr3J5VfpVkhGm8MrrrJmuO0MkNEB59txgf4vWCTwszXcYpSCzOSalu+5Atr
         ZT9A==
X-Gm-Message-State: ACrzQf3etOmf11YLUiXtP2EI8D+NwuhKWUAOCWfq8mulfmHa/AVQG/fp
        mqfokinEhDr18zMHKsgup8Vm1w==
X-Google-Smtp-Source: AMsMyM4KNz309yv4EvSMp9zHGKrkbtkYd/2U0LDBcwFkpEnNdcd3KlhL/+LDBSpIdSdcUpYQn3T7Ag==
X-Received: by 2002:a2e:9005:0:b0:26c:14d9:cea0 with SMTP id h5-20020a2e9005000000b0026c14d9cea0mr7733489ljg.300.1663746786270;
        Wed, 21 Sep 2022 00:53:06 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b26-20020a0565120b9a00b00497a99e7b73sm317674lfv.246.2022.09.21.00.53.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:53:05 -0700 (PDT)
Message-ID: <9ada8d37-83b8-8bd2-2b02-d821b1b1c8e7@linaro.org>
Date:   Wed, 21 Sep 2022 09:53:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 0/8] Support for NVDEC on Tegra234
Content-Language: en-US
To:     Mikko Perttunen <cyndis@kapsi.fi>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Hunter <jonathanh@nvidia.com>
Cc:     Mikko Perttunen <mperttunen@nvidia.com>,
        Ashish Mhetre <amhetre@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220920081203.3237744-1-cyndis@kapsi.fi>
 <89d925ea-f550-6903-1c24-b320ae5a82c0@linaro.org>
 <de7f5e65-c939-558a-277d-01320f93eedc@kapsi.fi>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <de7f5e65-c939-558a-277d-01320f93eedc@kapsi.fi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 09:50, Mikko Perttunen wrote:
> On 9/21/22 10:26, Krzysztof Kozlowski wrote:
>> On 20/09/2022 10:11, Mikko Perttunen wrote:
>>> From: Mikko Perttunen <mperttunen@nvidia.com>
>>>
>>> v3:
>>> * Updated patch 3 based on comments
>>>
>>> v2:
>>> * Updated patches 1,3 based on comments
>>> * Added Acked-by to patch 2
>>>
>>> Original message:
>>>
>>> Hi all,
>>>
>>> this series adds support for the HW video decoder, NVDEC,
>>> on Tegra234 (Orin). The main change is a switch from Falcon
>>> to RISC-V for the internal microcontroller, which brings along
>>> a change in how the engine is booted. Otherwise it is backwards
>>> compatible with earlier versions.
>>
>> I asked you to describe the dependencies and patch merging strategy.
>> It's still not here, so I assume there are no and I am taking patches
>> relevant to me.
>>
>> Best regards,
>> Krzysztof
> 
> Sorry, I described it in the earlier email and forgot to add it to the 
> cover letter..

Please keep it in cover letter. We all get too many emails and too many
patchsets to remember. Plus, things can change and such dependency can
disappear after some versions.

Best regards,
Krzysztof
