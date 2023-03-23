Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3ABB6C5FBF
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 07:33:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229732AbjCWGdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 02:33:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbjCWGdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 02:33:20 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EE271E29D
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 23:33:14 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id ew6so19210773edb.7
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 23:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679553193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P26M5F00UYnJITnW1PuJMXRSHcsZ7mkPrkAisDp/mcw=;
        b=nSkaEW9HRcfQyhrDgk+uHc84d53HvzIkSPKGI2Cl7LALmspI9IIUK5GdPbuCxNHeXp
         2L2lUZ3ZH0k6VzT3JNiO4ghSBM9piHaetxnUZg3GmxNNW7K0mx1fkHszTlL8elG+v5JJ
         5xgP3JdFj7C+77gpteq64j+z/QJ30Un/dOOBNzyYaTOIpbaI9eLRNzdMDJhwAHQnHk9x
         O/XZNSBTUt07jcocowui9LmubyUI1xgmSAyuE22lPwe3NQ3fVHEiQVlOQh8Z+9jGvE5f
         AtWfKCoIt7Kyg7OHqhGm+PTgOyS9w+7SF1VV9ESo4ZGo7Es/mE9Lrve9sxM1+9CFPRdY
         M83Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679553193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P26M5F00UYnJITnW1PuJMXRSHcsZ7mkPrkAisDp/mcw=;
        b=VUqLHFcX3MSRRsCJYiyZjFSJO5SNeL1uekhLdlXki9aeU/VH8mt/OIsul65gLb1EFG
         dGV7VTjRwHE89FmEkAZXEz8USZgV6velW5iaY6p0pQAYMPgca4jhj+CDRWykUnEtvZJF
         DslvT594lKPXzS6fjOhFT6mfefjxUYxI4u9d3Qm0aq/hijuNqzX9X6B8DIInzh+/2C3a
         2VyoZG4a2Me8IMYZpjjaz96k4DJPBH/PhYbOnE+DqLmzYfQHOMMW6MZPB1o412fVoIHO
         RbI+Rn8LtbTEK0DZRDF1lcNq5axtjxnsfecykh+K3gzxrwADevXArQgKXfXmNJpQ5Z15
         0+5Q==
X-Gm-Message-State: AO0yUKVTxxD37JxFZpZ92XjSDZR1AQZv62ZwhMsjn3GlmO/gXW4tn0ot
        RpzsmCk7kcJ63YnPTrL5nRp15W6+gz0/A83Yxko=
X-Google-Smtp-Source: AK7set++CB5WXkyCT+haZZtvv0tmdf8UJ7T93bBXXDjeTepZzJ/1CEozqGivphGI+xif2kpqiVsDLw==
X-Received: by 2002:a17:906:698d:b0:930:28d6:4581 with SMTP id i13-20020a170906698d00b0093028d64581mr9280915ejr.59.1679553192931;
        Wed, 22 Mar 2023 23:33:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a665:ed1e:3966:c991? ([2a02:810d:15c0:828:a665:ed1e:3966:c991])
        by smtp.gmail.com with ESMTPSA id k8-20020a17090627c800b008d1693c212csm8138596ejc.8.2023.03.22.23.33.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 23:33:12 -0700 (PDT)
Message-ID: <554dd2ca-0514-dc1e-9add-d49a711bc1f2@linaro.org>
Date:   Thu, 23 Mar 2023 07:33:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 00/13] mailbox/arm64/ qcom: rework compatibles for
 fallback
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
 <c35fd641-12ff-beba-341c-4d0305bcaa40@linaro.org>
 <290b9b19-a320-38a1-4426-51f5725dd54f@linaro.org>
 <59a6ef88-758f-4ec4-f663-47e4caa552c5@linaro.org>
 <CAA8EJprqXVrXdBD6eBHoDGhvST2hViZUbMgdaeKEBohpv5_V3w@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAA8EJprqXVrXdBD6eBHoDGhvST2hViZUbMgdaeKEBohpv5_V3w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 23:28, Dmitry Baryshkov wrote:
> On Wed, 22 Mar 2023 at 19:37, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 16/03/2023 07:52, Krzysztof Kozlowski wrote:
>>> On 14/03/2023 13:16, Dmitry Baryshkov wrote:
>>>> On 14/03/2023 10:09, Krzysztof Kozlowski wrote:
>>>>> Hi,
>>>>>
>>>>> Changes since v1
>>>>> ================
>>>>> 1. Rebase
>>>>> 2. Make msm8994 fallback for several variants, not msm8953, because the latter
>>>>>     actually might take some clocks.
>>>>
>>>> Although the approach looks correct, I think that in some cases it tries
>>>> to mark devices compatible judging from the current driver, not from the
>>>> hardware itself.
>>>
>>> Which is what compatibility is about...
> 
> Well, I was trying to say that once we update the driver, the devices
> will not be compatible. But probably our definitions of being
> compatible differ.

What do you want to update in the driver? What's going to happen with
it? What is missing?

Best regards,
Krzysztof

