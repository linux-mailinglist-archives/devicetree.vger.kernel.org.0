Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BE3257E530
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 19:16:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235958AbiGVRQc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 13:16:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236058AbiGVRQW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 13:16:22 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E3A224096
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 10:16:19 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id y11so8621098lfs.6
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 10:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qzKvnXIunHj3Oe09t7pjgnCJEOdHA12gmzofARgYOME=;
        b=Eo92qaL4trtnQyMylGrDeeKV8N52OGZdJeqMO8j4DPFBxG970Lp6rmyTOY5N3cKHr6
         ya3hpXlZiizzbTv4HdI4e+xXwGTBKvxeI/hO46PGeo6+PQM08GcauJg35asuntABAfxB
         z5x75LH/yCVEA9IEXG/t7M+HBo5kUcCGooIpm0+JLA78wkoOFOuDqXXkzwCQfWtfsH7Z
         Jo7a7LfLDY1uXEregHEPnZg5TgPXuYnKPGl1FT5RR8rBDJb3O3N2L0I0zdXo+pyONVcV
         SstaayKDyJYxEV3s5LQ2bY65jDka9OuEseDiLqaI7amQSb260bvOlTCEjvdFBQZ+CZlZ
         shpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qzKvnXIunHj3Oe09t7pjgnCJEOdHA12gmzofARgYOME=;
        b=lnu7M8oblxysuzqQpPMn/TfYyWg62R2ri3gjDstbpQCTez6AewjMHvpHVxU3Zpur6E
         Rv8yoUsMKXBlbXC1k/5C9NPfMa9kErQzobmHZeH29Zeh81f+bSLAPlwLiqGnZYBXkGZV
         GPVAt/0lSEkX0IlqxlQ4zhx2AWub4ALGrl0cnsl7zFoWEfeKyNAN35a0UATXqx/sLzcA
         yy+4Ncro6pZ7VBS3i0She087oYWjFlo39HqXiF3hzIAPdyDlkqw/476wXIzcp0E1s36M
         5zFrvyliRr5yZYKNFKUCuu2aTOvmUmjzXKztiOMhfLRv1BgEPmf6S1RCsXZ6mvsbh+OV
         GqVw==
X-Gm-Message-State: AJIora/flEco1xxuv1M1++fgvB/SNxek9XJA7wXSXKMYx9nKLCtqN6iT
        aIIututsNXyAJxvHxLBUo8bPQQ==
X-Google-Smtp-Source: AGRyM1tm8lG7HIgSNHNOp7qyZEM1JP4mQGHlpvpjhWzODGjdPwwS9kwQuib0Cmd/jns5KE1BaLEg8g==
X-Received: by 2002:a05:6512:22d2:b0:48a:1ec7:2220 with SMTP id g18-20020a05651222d200b0048a1ec72220mr362226lfu.668.1658510177750;
        Fri, 22 Jul 2022 10:16:17 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id w24-20020a05651c119800b0025dd5f64d2esm1223031ljo.110.2022.07.22.10.16.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 10:16:17 -0700 (PDT)
Message-ID: <7c4a07e3-b087-3d44-d350-43e8ed1e10e6@linaro.org>
Date:   Fri, 22 Jul 2022 19:16:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 2/2] dt-bindings: arm: qcom: Document additional sku6
 for sc7180 pazquel
Content-Language: en-US
To:     Doug Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>
Cc:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
References: <20220721033918.v3.1.I10519ca1bf88233702a90e296088808d18cdc7b1@changeid>
 <20220721033918.v3.2.I7ecbb7eeb58c5e6a33e32a3abf4d6874e6cb725c@changeid>
 <CAD=FV=WSBgupLFMCZgianck6uTkAyqrG0WK2ChSbNbJdhOPdLA@mail.gmail.com>
 <4b2fe9d0-f590-0fac-79fa-bb05da1d61df@linaro.org>
 <CAD=FV=XmaNdc9k98vAwbcN-sm0w_WeqhRsK_AUm3h4LZ5-egmQ@mail.gmail.com>
 <c2b03863-2249-13e6-98e0-731c1b40d0a9@linaro.org>
 <CAD=FV=XKC_fbBzna8TgiPRmPH_=AQ3ckv2EEjoNvayKQ83Uciw@mail.gmail.com>
 <20220722002210.GA2223409-robh@kernel.org>
 <CAD=FV=U1yqdPzdtJFu+Rk56TOX1kYX2BZ16XGuMoM+=Re5NA9A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=U1yqdPzdtJFu+Rk56TOX1kYX2BZ16XGuMoM+=Re5NA9A@mail.gmail.com>
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

On 22/07/2022 17:41, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jul 21, 2022 at 5:22 PM Rob Herring <robh@kernel.org> wrote:
>>
>> On Thu, Jul 21, 2022 at 11:29:13AM -0700, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Thu, Jul 21, 2022 at 9:52 AM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 21/07/2022 18:43, Doug Anderson wrote:
>>>>> Hi,
>>>>>
>>>>> On Thu, Jul 21, 2022 at 9:33 AM Krzysztof Kozlowski
>>>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>>>
>>>>>> On 21/07/2022 15:37, Doug Anderson wrote:
>>>>>>>
>>>>>>> Not worth sending a new version for, but normally I expect the
>>>>>>> bindings to be patch #1 and the dts change to be patch #2. In any
>>>>>>> case:
>>>>>>>
>>>>>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>>>>>>
>>>>>> I would say worth v4, because otherwise patches is not bisectable.
>>>>>
>>>>> You're saying because `dtbs_check` will fail between the two?
>>>>
>>>> Yes
>>>
>>> OK. Then I assume you agree that reversing the order of the patches
>>> won't help, only combining the two patches into one.
>>>
>>>
>>>>> How does
>>>>> flipping the order help? If `dtbs_check` needs to be bisectable then
>>>>> these two need to be one patch, but I was always under the impression
>>>>> that we wanted bindings patches separate from dts patches.
>>>>
>>>> I don't think anyone said that bindings patches must be separate from
>>>> DTS. The only restriction is DTS cannot go with drivers.
>>>
>>> I have always heard that best practice is to have bindings in a patch
>>> by themselves. If I've misunderstood and/or folks have changed their
>>> minds, that's fine, but historically I've been told to keep them
>>> separate.
>>
>> Correct.
>>
>>
>>>> Bindings for boards go pretty often with DTS (subarch). This is exactly
>>>> what maintainers do, e.g.:
>>>> https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/log/?h=arm64-for-5.20
>>>> Bindings for hardware should go via subsystem maintainer (drivers).
>>>
>>> OK, fair that in this case both the bindings and the yaml will land
>>> through the Qualcomm tree. I guess it's really up to Bjorn and whether
>>> he'd prefer "make dtbs_check" to be bisectable or whether he'd prefer
>>> the bindings and dts change to be in separate patches from each other.
>>
>> Bindings go first if applied together because you have to define the
>> binding before you use it. But sometimes things go via multiple trees
>> and that's fine because it's just easier. In that case, the subsystem
>> tree is preferred for bindings (i.e. with the driver). But in this case,
>> Bjorn is the subsystem tree.
> 
> Thanks! I'll interpret your response as:
> 
> 1. Keep this as two patches and it's more important to keep dts and
> bindings separate than it is to avoid breaking bisectability of "make
> dtbs_check".

No one questioned this here...

> 
> 2. Bindings should have been patch #1, but it's not a massive deal.

This started our discussion and I said it should be a v4 with a proper
order. It's not massive deal, but hopefully the submitter will learn
something.

> 
> 3. I'll assume that Bjorn will yell if he'd like this series re-posted
> with the reverse order.



Best regards,
Krzysztof
