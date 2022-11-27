Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BB85639C7D
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 20:07:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbiK0THN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 14:07:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiK0THL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 14:07:11 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0524B7CB
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:07:10 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id be13so14361166lfb.4
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nu5ySqON0rKMTNPTMckDOx8RTb0i6RB2rj6jQlZbbl8=;
        b=BjEIwtO7TaFqjipp0K9U40VdBtWTI8vZNmptvif3XQUHoSqTZwP71CwW1asiDGVGGr
         6495u0di2UTD+xo4exFA5uT4vkLzcDZARFz4CquriYD3J0GRx4EWRJZNX72pDPQjUSQu
         Iodsr9WQy5MJ2g7qBX6sjeI+Qd5eA7reYh0jsqi247g9k5fQKTmeTfQJeODF7I3A9OBp
         3WbK5/BZ6Zjb6uKzjrxgEuQsuzeoCqurvXi5JYnWOZTaWBiqXxm/rnxTH8TgRP5xSNS8
         9xHk9EGobtqKTGax6I4aqSm1ZOuitEWcjLjvnYjYQs+5aXgGSFgvFIJ4FDxRVXqRRqsE
         ywDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nu5ySqON0rKMTNPTMckDOx8RTb0i6RB2rj6jQlZbbl8=;
        b=j0mCOLhVtyu//1FTSPG/qnRn7X4rm7UhTt6ifa1EbQgG1aYGd2vd5aB2XLdCJkUZYe
         /L3g1G2qEckKfFyAWZx82HVMeQHi7GRy6tosN3X6DxmtiA+9k5os7RFeIrvcUcq9+3Vn
         qcdLIlAGvzDz70o/LdNIjZfQTRyqy/uaDFjdDwKcMq3GS+xPH0xhsvw8prVQsI7+wSl0
         Nj91D5mMx+Wqp6fVPV7X3gAc4lZsclOVIKdPH14Oxg+dQmamdatonFL/zYgqDa9DMggB
         sDIQEwpMAH9QmFMRm0I0C9yXINmcJc64W+biWapQlof7z63sH7hLqSxAjTGF94xaEgNw
         vfCQ==
X-Gm-Message-State: ANoB5plHyQL/781FTEzhd0+y/jaJF5ng5FKGhBslsOaU1ChdwFSEUEoP
        0ZR5SNP8EUUDJzBxIQ+0ZDRJxg==
X-Google-Smtp-Source: AA0mqf6SFeRDdtfOQYAkuUnBJwpsyfH8mtxMG79UhEUc30L5Bvf42MbEWmn458FxgVTXO+zVfv9W3Q==
X-Received: by 2002:a05:6512:2203:b0:4aa:83e6:53e8 with SMTP id h3-20020a056512220300b004aa83e653e8mr7068272lfu.606.1669576029105;
        Sun, 27 Nov 2022 11:07:09 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p12-20020ac24ecc000000b0049a5a59aa68sm1390312lfr.10.2022.11.27.11.07.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Nov 2022 11:07:08 -0800 (PST)
Message-ID: <c89f9330-715f-4830-49fb-64c0b533ed39@linaro.org>
Date:   Sun, 27 Nov 2022 20:07:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] arm64: dts: amlogic: align LED node names with dtschema
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
 <3719828c-0ac5-34c9-a04b-251cbeb5f6ef@linaro.org>
 <a135f93a-235a-27b8-f649-69d62f6ebd30@linaro.org>
 <54f500cb-d7d0-8af1-eb58-99fbe71791a5@linaro.org>
 <CAB6niQ4808JEgdQEvRvaYqq8YmFCGo_YLnxXo+rjpSgxQxu+7g@mail.gmail.com>
 <615eb86b-a00a-56bc-ae1a-9f0e4e86f77c@linaro.org>
 <a3b7e1f0-16cb-4284-c740-5b5874612ea4@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a3b7e1f0-16cb-4284-c740-5b5874612ea4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/11/2022 14:33, Neil Armstrong wrote:
> 
> Le 27/11/2022 à 13:25, Krzysztof Kozlowski a écrit :
>> On 26/11/2022 17:03, Neil Armstrong wrote:
>>>>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>>> Aren't you maintainer of the platform? This means I should take care of
>>>>> this patch?
>>>> Ah, this will be picked up by Kevin or Jerome? So this tag means only
>>>> Reviewer's statement of oversight, right?
>>> Of course I'll pick it.
>>>
>> So that's confusing to see Review which does not mean review, but
>> maintainer pick...
> 
> Reviewed-by means reviewed, there's no confusion here, the significance
> is clearly documented on https://docs.kernel.org/process/submitting-patches.html
> 
>>
>> Reviewed-by means, I should take your tag and add to v2 or the
>> maintainer will add it when picking up.
> 
> Reviewed-by means reviewed, fully reviewed patches are ready to
> be picked unless a change is asked by a reviewer.
> 
> Decision to pick or not a patch does not depend on any tags, but
> is the sole decision of the maintainer adding it's Signed-off-by.

Then why giving review tag and not notifying about the pick, while the
pick actually happens? This is confusing. When the maintainer, which is
supposed to pick patch, gives reviewed it means always the same as
acked, so the patch is expected to go other way. Not through that
maintainer's tree.

If you just apply it, say you apply it.

Best regards,
Krzysztof

