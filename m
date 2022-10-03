Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E6435F2B95
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 10:21:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbiJCIV4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 04:21:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbiJCIVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 04:21:37 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31CBB1C40B
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 00:55:54 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a10so10900253ljq.0
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 00:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AWWik7Ro2WMW3rP3zuTmOKWCoTINy486UbZe1BIOJ30=;
        b=jCc986gDVQOoJgz1tTSNWFlwcc7cwQUEYkuAkDH+Wwv/85G7GPheB8Q/gKpngA7LoW
         jOUYnmTNK9Idr/6yd2PkrpuIlZSg1F+cndMsuV0XBsl+0Mw1iRZyzH1rtt9Bp6zbbdsU
         yJqrpV9nZPfd87H+S89HyLHj/kF/gUF0AOb1QbD0U6Uq94NExN7tQ9MeWNLW3IwwPkVX
         E8L+D0XW1A/m/Ih//TlBtd+5c4aG8gE40FGFOAsiSJ60ySelzvnOEaqIIZ3NRyyfjh7l
         fNgXk8O7szMe1hqfPpMYHyhTOyvNJ3eEvqskNibXrPVVSPytOuLWwnAnBgoFdHNeRQxf
         GevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AWWik7Ro2WMW3rP3zuTmOKWCoTINy486UbZe1BIOJ30=;
        b=oNnbojRbTpEY3GgldjwpI6cj/4V0phL+J5tObYE99DzXel/6SYrtJVSX2ThuqQZuHA
         VnqzNgvctWg7sV9qf1bXOjyQa9ShST5AaztIQB4AZPqZvw6GfaYxxyk1IR/BTdvg1lVn
         8dwaUzbrqcAVvHbu+vU+6AQuDMdNne+3z1cmBxjkOcyzZtAUIR3M0KTtr72W6R/8GDQh
         mDbl1761VX96CId3UEgmayRVvhO7AdrwF6UYgw2wrk8GZrL0B1q3FYt1bG/7to/ptFS0
         aRJm9EH9NPpcVh4Vw6l3hH7dnxomYbaBOKDH+Ff8J9fPF9SbAodTuiddj1z2YCjPr1lj
         iesQ==
X-Gm-Message-State: ACrzQf39pOe9rfJ6LtJGByQ7l9aI6uYHaw/UHzccQpWSZr5aPyz7/9L9
        /v3oOMrrzIlqtqZyrwQ2G0dzPw==
X-Google-Smtp-Source: AMsMyM6LazJpQxrBqhJQfb1vXbRFSUvDVP+Ts25muHd1R+0kQHdtCegacUeEqpXvowYR45JtZpfUqQ==
X-Received: by 2002:a05:651c:11cc:b0:26c:16cd:f1ae with SMTP id z12-20020a05651c11cc00b0026c16cdf1aemr5941193ljo.59.1664783715938;
        Mon, 03 Oct 2022 00:55:15 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s7-20020a2eb8c7000000b0026ddf39da47sm194830ljp.81.2022.10.03.00.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 00:55:15 -0700 (PDT)
Message-ID: <267c17b6-070c-8b77-8f52-75368c74d59d@linaro.org>
Date:   Mon, 3 Oct 2022 09:55:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v7 05/12] dt-bindings: display/msm: move common MDSS
 properties to mdss-common.yaml
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
 <20220915133742.115218-6-dmitry.baryshkov@linaro.org>
 <02b60bf8-70ac-eb7b-33d7-1c9b7a6f0a54@linaro.org>
 <168a46c3-2c0e-cd5c-e6f1-1e072c67d162@linaro.org>
 <d2af0a8e-63fe-221f-1c53-9fe1c43fa04d@linaro.org>
 <aeae567c-ccf7-de73-61eb-1f04772d3bba@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aeae567c-ccf7-de73-61eb-1f04772d3bba@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 22:32, Dmitry Baryshkov wrote:
> On 22/09/2022 15:28, Krzysztof Kozlowski wrote:
>> On 22/09/2022 13:46, Dmitry Baryshkov wrote:
>>>>> -  ranges: true
>>>>> +    maxItems: 2
>>>>>    
>>>>>      interconnects:
>>>>> -    items:
>>>>> -      - description: Interconnect path from mdp0 port to the data bus
>>>>> -      - description: Interconnect path from mdp1 port to the data bus
>>>>> +    maxItems: 2
>>>>
>>>> I think this is not equivalent now, because you have in total minItems:1
>>>> and maxItems:2, while in past minItems was 2.
>>>
>>> This means that I should have minItems:2, maxItems:2, which, if I got it
>>> right, is frowned upon. Let me doublecheck though if it works as expected.
>>
>> It is frowned upon only if it is alone, because for missing minItems,
>> maxItems implies minItems. Here you have minItems in other schema, so
>> there is no such case
> 
> Well, I just checked, the schema will throw an error if I put a single 
> interconnects or iommus entry. If I understand correctly these two 
> clauses are evaluated separately. So, the dpu-common's clause tells 
> minItems:1, maxItems:2. The platform schema file contains just 
> maxItems:2, which implicitly adds minItems:2 to _this_ clause.
> 
> Thus I think I'll leave this part as is.

Thanks for checking. It's good then.

Best regards,
Krzysztof

