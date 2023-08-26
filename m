Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06C3A7894D0
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 10:37:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230143AbjHZIgm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 04:36:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbjHZIgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 04:36:24 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7A4F2680
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 01:36:20 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-52683b68c2fso2336913a12.0
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 01:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693038979; x=1693643779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DLuvtTSFsh+JsVxGOiA4Xb35SPTbinIM1/fw5S+zmhE=;
        b=RIhjKu9qVES3FjJC22lGg3xPRYCwqSUYQyhuMC7MZM/jrQsnldLjL2WmonwbRsAunj
         4/qq3k1cB+YesuPtbHpHY0jInhttCx1EvYH27hUDziVrJcdZ3EF9Lf3umoi508oRFnrj
         uJyAdPtqfDUWRrrn7HgFPQwBVfULKZI0i2z3sGCkf4yPMHd78xlsz7m4aCrnRQ/RO8UK
         W7cI8a+FuTllqO+UKpw7INX3aahvjjXt7xEYBRNQH5kvQjzoSNdED10Z/qvE5tfJnCsX
         CPiIwQO/Y5HYC1Brn0rXmZteQosKsgu5bcCNYsym2f15gYciLcmhoQW+tpag4EHSp+Df
         CZSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693038979; x=1693643779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DLuvtTSFsh+JsVxGOiA4Xb35SPTbinIM1/fw5S+zmhE=;
        b=bGFSAMPDqeaIBoUxVnnl1VrGnbUCjAE3WDov8Xla6LZx+oZwLj5jc4bsMd+RHLAAfU
         o+CHw0nisktZsDEAFR5vlOrmmxcDTv01yilOBgoi0Knue98zD8IhfNGIycLXiWu4MT2X
         9pK+VzHJ2GqJmk9uze8DKNonnlxYm0kz1HsbCqpTfh9l54lw0+bXNaf8I/U9c2bcvNor
         It2ub1u6rPlTocEhQ8GP2Xajz/8xeBoh19gAMRQ/qWmqSHmnLUnGiiq2K4GHsYFN56Q3
         X1KxZT9eIfjA+zFU6GJJPclXxE1D3s3OtJuoDaLTsDIZznlVMFXzVmKDiK2SqyD1ty5x
         9cZA==
X-Gm-Message-State: AOJu0YxKwUtBPjHcioVb3RUzBnrQiRgggnsC0+mNj05LweOk54VrC8vM
        GDML9LZ6AikPLFkxZqrmUUsDoA==
X-Google-Smtp-Source: AGHT+IHMg5LV/V7ymlXjJxDUGXYB2ba4oX2as7CHzc3zUC79kBqKhtmzzJAxW3GvDen8GWFxpVlt+Q==
X-Received: by 2002:aa7:c98c:0:b0:528:925f:413e with SMTP id c12-20020aa7c98c000000b00528925f413emr15785879edt.12.1693038979042;
        Sat, 26 Aug 2023 01:36:19 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id e10-20020aa7d7ca000000b005256994e335sm1866916eds.92.2023.08.26.01.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Aug 2023 01:36:18 -0700 (PDT)
Message-ID: <d190bba6-71be-639e-750f-7c7d234b4da7@linaro.org>
Date:   Sat, 26 Aug 2023 10:36:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/3] dt-bindings: iio: adc: add lltc,ltc2309 bindings
To:     Liam Beguin <liambeguin@gmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230824-ltc2309-v1-0-b87b4eb8030c@gmail.com>
 <20230824-ltc2309-v1-3-b87b4eb8030c@gmail.com>
 <e54273c7-4728-7577-f053-b15307d3a083@linaro.org>
 <20230824185054.GA3659959@shaak>
 <fecb8658-ed3a-1c5c-70bb-5238b09d4e76@linaro.org>
 <20230825155307.GA3149625@shaak>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825155307.GA3149625@shaak>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 17:53, Liam Beguin wrote:
> Hi Krzysztof,
> 
> On Fri, Aug 25, 2023 at 08:15:57AM +0200, Krzysztof Kozlowski wrote:
>> On 24/08/2023 20:50, Liam Beguin wrote:
>>> On Thu, Aug 24, 2023 at 07:56:29PM +0200, Krzysztof Kozlowski wrote:
>>>> On 24/08/2023 18:55, Liam Beguin wrote:
>>>>> Add devicetree bindings for the Linear Technology LTC2309 ADC driver.
>>>>>
>>>>> Signed-off-by: Liam Beguin <liambeguin@gmail.com>
>>>>
>>>> Thank you for your patch. There is something to discuss/improve.
>>>>
>>>>> +++ b/Documentation/devicetree/bindings/iio/adc/lltc,ltc2309.yaml
>>>>> @@ -0,0 +1,52 @@
>>>>> +# SPDX-License-Identifier: GPL-2.0
>>>>
>>>> Wrong license. Run checkpatch before sending patches.
>>>>
>>>
>>> Sorry about that, I ran it through checkpatch but it didn't flag
>>> anything.
>>
>> No, you didn't, because checkpatch flags it easily:
>>
>> WARNING: DT binding documents should be licensed (GPL-2.0-only OR
>> BSD-2-Clause)
>> #21: FILE: Documentation/devicetree/bindings/iio/adc/lltc,ltc2309.yaml:1:
>> +# SPDX-License-Identifier: GPL-2.0
>>
>> total: 0 errors, 2 warnings, 52 lines checked
> 
> It seems like I wasn't running checkpatch in strict mode.

No. This was not a strict mode but a regular run. I don't understand why
you are turning this all the time around... You can easily check by
yourself and reproduce the warning any time.


Best regards,
Krzysztof

