Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF28B619719
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 14:09:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231555AbiKDNJm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 09:09:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231549AbiKDNJk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 09:09:40 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0DAA286E6
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 06:09:39 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id h21so2974106qtu.2
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 06:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4MxzjYKOk4sy5XjCR20EQiICdAfVYjjgrKgPBg79CsE=;
        b=jLQzpldCEcHA/FkI6E2pNXsFnBYFSpZpEi7EGtsN+UbHgHMGt8mblItb2S0sOavdll
         jCcljPGzrU0UgJjpy1YZmGTSPaynqcblExMDGFb0IxZXZ0aGYS+2lgY/D4Wl05GhpFsU
         W/n2UYzXuW8qV7VWdvCYoV5kzxUGQdBdz7c9j8drXSgmQjNL6DT8ydhoS2AiqxZm4XrH
         UK4Ur55PACqY5zSKJxsWVPLYJuBiW7sQl1Tag9msZcuQy24zXWfmBiJLGdn4so83rbEp
         6G1u49bDUYjiO3Av4uCxZyw32PMliCeFBFzU8bvCLokVrw8Qp0SmwF7yuNpSoKrj02/J
         MVgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4MxzjYKOk4sy5XjCR20EQiICdAfVYjjgrKgPBg79CsE=;
        b=XEZrPzpNdkq1Ddut9rxXS2SYfIHgMs1K7/H7tVhNeQSAQu8uifHwZRqRcQRpBdYOuK
         Lr9fk2u6s11ubqFwZbIgVzxQUbjnkns9rAmlviZk1XyP7rTzwQkdRA3Iil+bzs5vcTAD
         ePSd9usQWvmpNasSOHYHkdkYQZeR+vEHP2nG7Dr757VcU1yD8lEL5HZDYVasSSE+kSB+
         KHcvJDdjxZ2daggX+OMnMuUQXNaNvsZFrukJP29+y3cdl3ZYiEx2z3pxZa4AMuESoU4z
         bTiDCi30JdXquVdijbHaXJRkE11ajqanSk5ZzXVnawvlfFLHDzHK8xECYl1VP328exqm
         LtwA==
X-Gm-Message-State: ACrzQf0p8/xRyQpUYk3qNshj+eiDzVvguYBqPTTzOKm6A12W0tRtL0b0
        kd0QK6N+75ZTuieZXzWLzSoKDw==
X-Google-Smtp-Source: AMsMyM7zigYUVbBE2nPsp2ko6wVBLqpJ2LbhXuLIsukXJXFC98j3sXxmYJGHcIG5kwBfS9W5O41I7g==
X-Received: by 2002:a05:622a:4ac6:b0:3a5:29d8:b683 with SMTP id fx6-20020a05622a4ac600b003a529d8b683mr20780593qtb.386.1667567378867;
        Fri, 04 Nov 2022 06:09:38 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id w15-20020ac857cf000000b0038b684a1642sm2461299qta.32.2022.11.04.06.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 06:09:38 -0700 (PDT)
Message-ID: <94b9c2c7-a1f8-26e7-0dcf-41b7ef46b23f@linaro.org>
Date:   Fri, 4 Nov 2022 09:09:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/8] dt-bindings: display/msm: add support for the
 display on SM8450
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
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221102231309.583587-1-dmitry.baryshkov@linaro.org>
 <20221102231309.583587-4-dmitry.baryshkov@linaro.org>
 <bcc246a0-d682-33db-35d9-7738922756c0@linaro.org>
 <ec774d8b-b6b1-8dca-ec14-8e39e0a4f0f4@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ec774d8b-b6b1-8dca-ec14-8e39e0a4f0f4@linaro.org>
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

On 04/11/2022 08:45, Dmitry Baryshkov wrote:
> On 03/11/2022 17:03, Krzysztof Kozlowski wrote:
>> On 02/11/2022 19:13, Dmitry Baryshkov wrote:
>>> Add DPU and MDSS schemas to describe MDSS and DPU blocks on the Qualcomm
>>> SM8450 platform.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>   .../bindings/display/msm/qcom,sm8450-dpu.yaml | 132 +++++++
>>>   .../display/msm/qcom,sm8450-mdss.yaml         | 349 ++++++++++++++++++
>>>   2 files changed, 481 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-dpu.yaml
>>>   create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml
>>>
> 
> [skipped]
> 
>>> +
>>> +$ref: /schemas/display/msm/mdss-common.yaml#
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
> 
> [skipped]
> 
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: iface
>>> +      - const: bus
>>> +      - const: nrt_bus
>>> +      - const: core
>>> +
>>> +  iommus:
>>> +    maxItems: 1
>>> +
>>> +  interconnects:
>>> +    maxItems: 2
>>> +
>>> +  interconnect-names:
>>> +    maxItems: 2
>>
>> You need specific names here.
>>
> 
> The names are described in mdss-common.yaml

Ah, then it is ok. I could not check these :/

Best regards,
Krzysztof

