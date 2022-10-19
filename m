Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9D1660456C
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 14:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233030AbiJSMgC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 08:36:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233186AbiJSMfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 08:35:40 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CE311669BA
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 05:15:21 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id a18so10537222qko.0
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 05:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sJdU4vN2UwEe970CPN5btDuDeCsHPbb95xpFu5R9G2k=;
        b=jTC5Se0zrBPlKxBKf997B9mwVq02UQF9KKrNW52+iV4JgYOqBeg+b+wM5MHOjn6gZ0
         RYP7Emp6gexAYVW41GzP0l9Tbme6LKvVYkyBqYtkEQ6kToyFL5MgFPCf+DDdNvTDh0JP
         IEK8XmV+CoXouJKHdxmv9tB7l7yz38jvtWkzB8hB6vATVbvIHsFqoN6XZ65MTsm96stp
         zSX3Y0AR0CFQWJ8UryVCLjZB5ocDnADBBbFxo4X2TlE+fo2JVGgHrQlXIaXE24KjUwLX
         FXCFd4dRbup62c6johjpl1MtIdpx+kdiPR2cTEUfZtizYt7vqaJO1E+OZ6jllR3FfdaP
         iYtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sJdU4vN2UwEe970CPN5btDuDeCsHPbb95xpFu5R9G2k=;
        b=o5MpADFhUyY1dZZhhDoSSt9qaTTvZbqxo5bRQW114zZX4ZbXf2TMW5OpbLZYdv1yec
         Wm1Aob0eQLPLvohCXjw7R2qROALv0ZBTSxTnlJQjbaoJvjh62ntmxHK7J4lMiV6abPbc
         9cgrkFqP1OKDR9/sqazmHKmWfzgZB4S1Fr5mR+FxVKReHoVFB8DSOHJG2wKgk4mvzF/L
         LwFnE/xzU7hjiLyu+HPUEW2rmGU3uiG4yLaoz9mjpHiW91WIZuHVbncvxfLFIMGFxsLz
         g4mEedZ2G5A/cSf44/PpuM/h8LvWxRKXUSEntqA6uekWkg4+fW03fOSEDHEnEqMvCnCp
         zRYQ==
X-Gm-Message-State: ACrzQf23HXYtPkSV3qLsRHeM+SrECPzTVXXdVAmkzk0hpQyNQKy5nmhB
        gryZGNmbhXfVtlQgvcTA5LAqWRk2l8XVUw==
X-Google-Smtp-Source: AMsMyM4o9PlRhMnYMKOaZD0/RuCTiRm9Sq8uEerfrFDJqDvRP+jzIrYyuegB2IPYiYvSo26kfTqYeA==
X-Received: by 2002:a05:622a:491:b0:39c:e770:2813 with SMTP id p17-20020a05622a049100b0039ce7702813mr6143638qtx.384.1666181180433;
        Wed, 19 Oct 2022 05:06:20 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id q26-20020a37f71a000000b006ed519554cfsm4508771qkj.61.2022.10.19.05.06.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:06:19 -0700 (PDT)
Message-ID: <621684ba-9ad1-e265-2b1b-c99020a6568a@linaro.org>
Date:   Wed, 19 Oct 2022 08:06:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/1] dt-bindings: clock: ti,cdce925: Convert to DT schema
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org
References: <20221018072106.2391771-1-alexander.stein@ew.tq-group.com>
 <3339aa03-5e43-7579-837f-d70eb0f4dae6@linaro.org>
 <8628461.lOV4Wx5bFT@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8628461.lOV4Wx5bFT@steina-w>
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

On 19/10/2022 01:49, Alexander Stein wrote:
> Hi Krzysztof,
> 
> thanks for your review.
> 
> Am Dienstag, 18. Oktober 2022, 15:51:35 CEST schrieb Krzysztof Kozlowski:
>> On 18/10/2022 03:21, Alexander Stein wrote:
>>> Convert the TI CDCE925 clock binding to DT schema format.
>>> Including a small fix: Add the missing 'ti' prefix in the example
>>> compatible.
>>>
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>> diff --git a/Documentation/devicetree/bindings/clock/ti,cdce925.yaml
>>> b/Documentation/devicetree/bindings/clock/ti,cdce925.yaml new file mode
>>> 100644
>>> index 000000000000..1e68ee68e458
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/clock/ti,cdce925.yaml
>>> @@ -0,0 +1,104 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/clock/ti,cdce925.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: TI CDCE913/925/937/949 programmable I2C clock synthesizers node
>>> bindings
>> Drop "node bindings"
> 
> Thanks, will do so.
> 
>>> +
>>> +maintainers:
>>> +  - Mike Looijmans <mike.looijmans@topic.nl>
>>> +
>>> +description: |
>>> +  Flexible Low Power LVCMOS Clock Generator with SSC Support for EMI
>>> Reduction +
>>> +  - CDCE(L)913: 1-PLL, 3 Outputs https://www.ti.com/product/cdce913
>>> +  - CDCE(L)925: 2-PLL, 5 Outputs https://www.ti.com/product/cdce925
>>> +  - CDCE(L)937: 3-PLL, 7 Outputs https://www.ti.com/product/cdce937
>>> +  - CDCE(L)949: 4-PLL, 9 Outputs https://www.ti.com/product/cdce949
>>> +
>>> +properties:
>>> +  $nodename:
>>> +    pattern: "^clock-controller$"
>>
>> Drop this requirement. It is in general expected, but there is no need
>> for each binding to specify it.
> 
> Should this be put in a common binding then?

Could be but we do not have dedicated binding for clock controllers, so
this would be a common binding only for name. :)


Best regards,
Krzysztof

