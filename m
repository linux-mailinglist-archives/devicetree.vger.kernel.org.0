Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E141633689
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 09:03:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232629AbiKVIDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 03:03:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232577AbiKVIDs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 03:03:48 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF46626AC8
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 00:03:47 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id d20so17013471ljc.12
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 00:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ROiJRFMWDKmltgrHblPByivwSoLVeaip3CzL0q3bWto=;
        b=tVJ5OyErcGd/U8v92ZnFn+PabFejPk/Y1WSjawSVVWBJkz4pzZaVH6glIKPcv84bBx
         dD8wLeI3800KDuVDQLy+ViVwMy2GVWDlWhfvuFuRWEA7sl0nqJgVvfeNDqrHR0bvZgo3
         QQsOXoFhPsDBzsiKcqHTlRoK115EORiln7e+y55qzZJ+LcJ8Hnq03bl+/hMmSMq1OUsQ
         Wb/Y38NC7geoLlMuNwGU2qCLkg6nKvoufanq092k/KFpkQv975FZjJjaa50FUb3VpN1G
         4j8+ejUA7qHl4WDN8PePMf6YSsiKElpCojnW9nODUE+PhfJZEOFsq1XcsHZbX9oL1+gj
         EyXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ROiJRFMWDKmltgrHblPByivwSoLVeaip3CzL0q3bWto=;
        b=3DfuRR4D2Em0v7Up+UUUlCSTZQmiRDz3JCNYK8sWINslX/KHrZDAsJhiUAE0iruxhC
         xewKgwmHkROSQuQMIVooOyFT/mvmBYCujSxoPAZ3aRBqBqihXjzEixlwHYI/5y9Wt7Zq
         P67AcuBhEQmRq/rUsgTC8uNRxaelk/6Rwp9r6lpjZaxqf7kob9Z+4yR0xdDV9g39uZ9t
         1NjrkeaJ5lYi/sN4PfKVLcH4E3tzw4z0t0XJ04L1PPCP37/NEXcUo2gLp74H7wCzJIXF
         Cb7KHb7SntchrmJGDr+0VvffEynVNWgJsrKqcUq+ILBHykNQBRkAtTZqsDZqROFlo+4z
         eSxw==
X-Gm-Message-State: ANoB5pkc4WtTcEJkJ50hgLO86dvT/t+msQyQa1eRE3XCk7PHbs6SA7eX
        MWogh0YrteMBzNj4l+aVPkvBAw==
X-Google-Smtp-Source: AA0mqf5RNMyuBUHim4UaWwIPeE2fOHVF8CFH1ko9qlE2UDY+YPdhWLzZZ+CiJHrlpp7t87DPDB34uQ==
X-Received: by 2002:a2e:8e6e:0:b0:277:92e:e088 with SMTP id t14-20020a2e8e6e000000b00277092ee088mr1991756ljk.140.1669104226005;
        Tue, 22 Nov 2022 00:03:46 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v23-20020a056512349700b004994c190581sm2388863lfr.123.2022.11.22.00.03.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:03:45 -0800 (PST)
Message-ID: <65323df3-1102-8d95-7c13-80d9756c7c33@linaro.org>
Date:   Tue, 22 Nov 2022 09:03:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 1/4] dt-bindings: power: Add StarFive JH7110 power
 domain definitions
Content-Language: en-US
To:     Walker Chen <walker.chen@starfivetech.com>,
        linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        linux-kernel@vger.kernel.org
References: <20221118133216.17037-1-walker.chen@starfivetech.com>
 <20221118133216.17037-2-walker.chen@starfivetech.com>
 <bc853d76-5b65-676a-040a-edf53034c9ad@linaro.org>
 <98866fec-e88a-f241-bb42-78d33f051f11@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <98866fec-e88a-f241-bb42-78d33f051f11@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 08:46, Walker Chen wrote:
> On 2022/11/21 18:12, Krzysztof Kozlowski wrote:
>> On 18/11/2022 14:32, Walker Chen wrote:
>>> Add power domain definitions for the StarFive JH7110 SoC.
>>>
>>> Signed-off-by: Walker Chen <walker.chen@starfivetech.com>
>>> ---
>>>  include/dt-bindings/power/jh7110-power.h | 18 ++++++++++++++++++
>>>  1 file changed, 18 insertions(+)
>>>  create mode 100644 include/dt-bindings/power/jh7110-power.h
>>>
>>> diff --git a/include/dt-bindings/power/jh7110-power.h b/include/dt-bindings/power/jh7110-power.h
>>> new file mode 100644
>>> index 000000000000..24160c46fbaf
>>> --- /dev/null
>>> +++ b/include/dt-bindings/power/jh7110-power.h
>>
>> Filename matching compatible or bindings file.
> 
> So the file name should be changed to "starfive,jh7110-power.h" and the compatible in the driver 
> should also be changed to "starfive,jh7110-power". Is it right ?

I said filename should be changed. I don't remember what was your
compatible, but if I did not comment there, in means it looked fine.

> 
>>
>>> @@ -0,0 +1,18 @@
>>> +/* SPDX-License-Identifier: (GPL-2.0) */
>>
>> Dual license for bindings.
> 
> Ok, the license will be changed to GPL-2.0 or MIT in the patch v2. 

Any reasons why not using the licenses recommended by checkpatch?


Best regards,
Krzysztof

