Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 388DD6B561F
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 01:03:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232057AbjCKADR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 19:03:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232041AbjCKADQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 19:03:16 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 487B84346D
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 16:03:13 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id d36so8767607lfv.8
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 16:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678492991;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MHjcuN4l8cDafPZ+BEF9zDzwhIfoGIcJ0X1czuhXcas=;
        b=S56H2eCvJI4jgaO0WQKHONerGaGmsrzeSydyxdYK97k+WstZKqLwToDJr4cJ38fjby
         TtnkIHGNOYa0vaN++CqBmkaIrur+fLlNF15afEj3B0Bjws6qhAks/zeFl8x4RK/BtF6F
         6ijk1XWYzJKc8jud79yY5UmDVsH7ioeqIWZWu+KBte5Bee2fa55oq+p0biPZDRGTGll5
         /NoVe5PmW4cwXVVc05ANG2qiHHWXJc+b+/gCZSFlAT8T9/BAWTgsg6/9ymdcjsqXrptg
         x18sdCx50fCNWaKV3kH5IVUeP5DErQSytSRjyK4r8RAti9OoD6/OweQx2EykKBY44cQf
         ejNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678492991;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MHjcuN4l8cDafPZ+BEF9zDzwhIfoGIcJ0X1czuhXcas=;
        b=hbJBbLG2xcp6qdUZrJ1R0TdFGaGE6scvcMj2H0T41iTb7ITUCBEW3f02ZMpcS4Kb/k
         CmTbvJp8hQlB+jE9TWna3GL33iON0OoPKeY4OjWQLp8uaN5ABlct5Z9st6kmnCM3fHvm
         V9a3bL9EsB4jRiVKxy2X5wtLQnJZcLMsu/DZWZ4eUQr1CtrCqJw4xrHNT5hyxprEdRmR
         etz1YQLEgaXMb7b31GYrXmoZBt65rD4teucJZrfQaw27qBYcKQUrjFwpbbehDYwh3YcV
         dh62zGbCr6nPNP/273EeCxcOBU7LQI7egx5lOFo9sjYFVg2WaiRlY80Hr2F7KFDBs/BW
         PVZQ==
X-Gm-Message-State: AO0yUKV5KVBgnwG/QnJyVtd4vE94v7IF5pCK4AYE1uo2r+pyLWZaFgcK
        KUjiqm7mIb6PcXlAlQ4gQ7aUUg==
X-Google-Smtp-Source: AK7set9hgeVrzO4Wf0Zm/vGAFIHZD+LgJTn6U3yE1rgw37XD5V9kyNyAvx/Xu1qrMAJP+EatXfnyOw==
X-Received: by 2002:ac2:538c:0:b0:4d7:44c9:9f4c with SMTP id g12-20020ac2538c000000b004d744c99f4cmr7084828lfh.4.1678492991353;
        Fri, 10 Mar 2023 16:03:11 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id o14-20020a05651238ae00b004cb3e97bff8sm124811lft.284.2023.03.10.16.03.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 16:03:10 -0800 (PST)
Message-ID: <bfdbb8f8-7519-5e9a-837e-09f2ce063b7e@linaro.org>
Date:   Sat, 11 Mar 2023 01:03:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Qualcomm Kryo core compatibles
To:     Rob Herring <robh+dt@kernel.org>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <197ea188-c59d-6c53-77fd-3a0551ef8e70@linaro.org>
 <CAL_JsqLYdyqe+=zb_sDOcffbbb3AUhxsCbUp_1GHk1fKu2xiJw@mail.gmail.com>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAL_JsqLYdyqe+=zb_sDOcffbbb3AUhxsCbUp_1GHk1fKu2xiJw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10.03.2023 23:39, Rob Herring wrote:
> On Wed, Mar 8, 2023 at 4:44 AM Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> Hi!
>>
>> I was recently debating what to do about Qualcomm Kryo compatibles.
>>
>> There are basically 3 cases:
>>
>> 1. Falkor/"real Kryo" - the (never shipped?) server platform & MSM8996
>>
>> This one's easy, it's actually Kryo so it should stay Kryo.
>>
>>
>> 2. Fake Kryo ("customized" Arm Cortex cores) (MSM8998-SM8x50)
>>
>> This one's tough.. Qualcomm marketing material seems to sometimes say
>> Cortex, sometimes Kryo, sometimes "customized Cortex".. They do use
>> their own arm IMPLEMENTER_ID in the MIDR_EL1 register and their
>> PART_NUM values are not Arm-stock, but these cores don't seem to be
>> any special.. Maybe some irq lines are routed differently? Not sure.
>>
>> My proposition here is to do:
>>
>> "qcom,kryoXXX", "arm,cortex-ABC"
>>
>> or
>>
>> "qcom,kryoXXX-PQR", "arm,cortex-ABC"
> 
> I don't see much value in the fallback here. We don't do much with the
> values anyways as everything uses ID registers anyways. Do you know
> the level of modification?
Sadly no..

> 
>> where PQR is one of:
>> - silver (LITTLE cores)
>> - gold (big cores)
>> - gold_plus (prime core(s))
>>
>>
>> 3. Arm cores modified within Arm implementation-defined allowance (SC8280XP+)
>>
>> These cores report Arm IMPLEMENTER_IDs and actual Arm PART_NUMs, which would
>> suggest they're bone stock Arm Cortex cores, with some Qualcomm-iness coming
>> as part of implementation details which are.. expected since Cortex allows for
>> some IMPLEMENTATION DEFINED things. The only non-obvious part here is that
>> the REVISION field they report does not always seem covered by the Arm TRMs.
>>
>> In this case I think going with
>>
>> "arm,cortex-ABC"
>>
>> is fine.. I already did this for 8550 and 8280xp and Rob seems to have liked it.
>>
>> So, I suppose the real question is what to do about 2., should they stay as
>> they are, or maybe my proposition seems attractive?
> 
> What about the generic 'qcom,kryo' strings?
As I pointed out in 1., IMO it'd be most logical to only use them for
"true kryo" cores, which are a custom armv8.1-compliant design not
based on Cortex, used on MSM8996 and some dead server platform. Any other
"kryo" seems to either fall under 2. or 3.

Konrad

> 
> Rob
