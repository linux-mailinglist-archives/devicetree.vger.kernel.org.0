Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ADE36325B6
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 15:25:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231341AbiKUOZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 09:25:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230176AbiKUOY7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 09:24:59 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B648DC8445
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:23:56 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id a15so14660057ljb.7
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 06:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ukdkZsBG+Zpg8CFe5XXXn+uTzn8/gKFc0qyjbWGXodI=;
        b=RU8as1KlrpTbuhrPb0+GOSd5H1XZUQTtGzT6zGEHqiNQxgrS/4eFlkVJBNOudNEFM1
         4bANpq8j4fUs1OaFfn4rsBd+9pc+ouIXTvs7hYennrqWiQW/IDaK5Beb1SqpVNYQ3zjB
         mgQhbQyL2820HWFTuB8RxXyXJrjWCxB4VNiAuEZzTUfsn7G4p3O4yaU9hfGYKwwUZI0T
         DPFEUEtC/d79WO+u8QevAKHrMHKIRHxDvZg57Z2uyhw0VYGVsx+xVf4MeR7jWUNraf5y
         tWU/vTP+LvmH+0Blb7yaXvpIX96s8K1jQm/jGfthvWOXWOwH8Bc4pmIqAEv3i8mNawpD
         4stg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ukdkZsBG+Zpg8CFe5XXXn+uTzn8/gKFc0qyjbWGXodI=;
        b=bstgu0k2e/nU67uCELZhFTbjknrW+CbzCdZp1NMTukhwzzNsmN/4nzTR8ZM/GZ+vqa
         wljeNyTvI6qzdAOCbhWoMjdzpcOTCDv66+Cb3zQiWv6S5FOXbvVnwxj0c2zjLUFYW7GG
         mh6Tj+ZVjiZqBX2YMAhEzrOxvOUwlp6NWnYBUvL/ayrFpxLohZ6fBOz8m1J6pt6CXWUJ
         2pdIIFWTuy9Ofw+WYUSFuxSW7SmdYZzPlv4v8mU8nPajLr7ErQ+ZmqBeyDmj6od8S6jF
         E2WE1DVNd+y+Rb7p3n9zCNkzUQ1yey9VViuxpuhH30wKLSx/JTuKXb+g94UCUmcWkZz3
         ugYQ==
X-Gm-Message-State: ANoB5pkggRG1WYgBUjhG9FSsZtdS+5P+gLsYVDcUpST8M/Co/glcH+Dk
        0J72HeZpJW4vUY7XyZDS0at2Hg==
X-Google-Smtp-Source: AA0mqf7MZ43Jbbypc7iZP4L2F5Ff6Ssa4Pv03V41oQQyWJBlv6zwFujvnbVw5xRudBAn5lLLiFWZAw==
X-Received: by 2002:a05:651c:1954:b0:277:43c4:a864 with SMTP id bs20-20020a05651c195400b0027743c4a864mr5434683ljb.463.1669040634960;
        Mon, 21 Nov 2022 06:23:54 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b1-20020a056512070100b004b4bb6286d8sm1704524lfs.84.2022.11.21.06.23.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 06:23:54 -0800 (PST)
Message-ID: <b958733a-18a0-d916-930a-e7efb481dd06@linaro.org>
Date:   Mon, 21 Nov 2022 15:23:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: Mixed types of values inside a single property
Content-Language: en-US
To:     Andy Shevchenko <andriy.shevchenko@intel.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <Y3t2QLqXdomHkLTN@smile.fi.intel.com>
 <dc7f379a-4593-659e-a4c5-012bc11c8841@linaro.org>
 <Y3uG/XvhZzaIq5Zi@smile.fi.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3uG/XvhZzaIq5Zi@smile.fi.intel.com>
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

On 21/11/2022 15:11, Andy Shevchenko wrote:
> On Mon, Nov 21, 2022 at 02:52:37PM +0100, Krzysztof Kozlowski wrote:
>> On 21/11/2022 13:59, Andy Shevchenko wrote:
>>>
>>> Hi, Rob and Krzysztof!
>>>
>>> Today on SO one question [1] was popped up, and I, remembering a bit of
>>> the code of device properties in the Linux kernel, was a bit surprised of it
>>> in a way that reading DT specification (0.4-rc1 as of today) doesn't clarify
>>> that either.
>>>
>>> Can the specification be a bit more clear about that? Or is it me and the OP of
>>> that question who missed something in the DT spec?
>>>
>>> [1]: https://stackoverflow.com/questions/74517569/reading-tuples-in-a-devicetree
>>
>> I saw question on Stackoverflow and I saw there answers, but what is the
>> question to us?
> 
> Does the specification allows mixed types of the values in the same property?
> Because reading it doesn't give a hint.

I think DT spec allows it ("Format is specific to the property. See the
property definition.") but DT schema mostly not (finite list of property
types). To some level DT schema accepts mixes, e.g. phandle-array
containing phandle and offsets, but that's because phandle is actually
also a number (dtschema/schemas/types.yaml).

Best regards,
Krzysztof

