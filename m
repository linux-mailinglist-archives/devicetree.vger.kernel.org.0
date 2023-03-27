Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF4856CA404
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 14:25:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbjC0MZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 08:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231990AbjC0MZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 08:25:46 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE8526AF
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 05:25:44 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x3so35316281edb.10
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 05:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679919943;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=joz+G6GhOPLGNBgYdWhUUWc1HzQelk6ITcZ+QD28jgk=;
        b=PUi0LeSnL35LCF40u+FnoMXcDyIOPwaEQ/se2minV7DA3YrB7wY/VZTnpMHz0Ry9tf
         dLCHdEMWsPtv0vVyFyGxf+eCDx1WMHfiSkgb6Vw5neIRpMXm4D1oPUxaH4bUOuNLLwm3
         Se0tIU0XjGiiKN8+9IRPPyj8DDVRNAWodmMosL7UUrxsY2x89dIT4eIkPVD7cW81qe3G
         RYRLi2rI5rJwgAkMuXBUXBRYTSYSOlIr8tlI4ayFjUU7OO3k9K4UTBNH1/WgyPrZzKMZ
         v1ABqVJTaDtWCUBEXPQ8GJ3d62h/0z7co1k873E6DzB18I2pqOb1HqvKoB0UKeC16oKm
         sn+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679919943;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=joz+G6GhOPLGNBgYdWhUUWc1HzQelk6ITcZ+QD28jgk=;
        b=eqEEjTpx2HxyOXA10vwYLJAw0cl96mDR9fXhO79qiJKiYH0R5/i1hz32b+28bpqQ5X
         D8HelhIGV/mki776O1wmbXxcvAuNVpnnIe4g/Xbi9EwV6wnNgdvOPWZMmA6O2peNXC93
         PFRZgMo3hjnxMoGm/TO5npF8qzoUR1Qc9vsj7wvYsTyHDzXz/2wzxtRT8+ykkkhLWg8b
         4C1hHd6sSxnzBN9z4MVzZfRd4npAQ3hiv7qTYr0sR4sJEl2LBpNkKystnv9ES9HQgFFi
         Ua5ccQ9253eANSOVovVbFPLVzQvkeJ2l8Z3fzGX6ofzUMgzX11R/poFmqSD54JS3ImhT
         GYKQ==
X-Gm-Message-State: AAQBX9c0ez8MvXEE5UXt07UXfnvQaHPVcCnnCRa1Iv7aP+sI6YypW0NS
        +0cl1FyNtuhtjmTRabXDWssn1rEtGFbxEpSOwZQ=
X-Google-Smtp-Source: AKy350ZNyr6TRFP8CITB+F5cFxCV/EJslb7jdFVW+g9u1hhfHi7ZWRh5k14gIa9lPQ3jru7laaK7hw==
X-Received: by 2002:a17:906:e0c5:b0:931:4f2c:4e83 with SMTP id gl5-20020a170906e0c500b009314f2c4e83mr11694068ejb.63.1679919942873;
        Mon, 27 Mar 2023 05:25:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:581e:789c:7616:5ee? ([2a02:810d:15c0:828:581e:789c:7616:5ee])
        by smtp.gmail.com with ESMTPSA id c19-20020a170906155300b0093ebc654f78sm3931897ejd.25.2023.03.27.05.25.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 05:25:42 -0700 (PDT)
Message-ID: <757afef7-5be2-9487-8a1a-4917528ca135@linaro.org>
Date:   Mon, 27 Mar 2023 14:25:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: qcom: adsp: add
 qcom,sdm845-slpi-pas compatible
Content-Language: en-US
To:     Dylan Van Assche <me@dylanvanassche.be>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230325132117.19733-1-me@dylanvanassche.be>
 <20230325132117.19733-2-me@dylanvanassche.be>
 <8ab9d0c3-89f7-90f3-58d6-d2994d372518@linaro.org>
 <fe83e6f62d802109024f6203cf0d50c1ef348da1.camel@dylanvanassche.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fe83e6f62d802109024f6203cf0d50c1ef348da1.camel@dylanvanassche.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 13:39, Dylan Van Assche wrote:
> Hi Krzysztof,
> 
> On Sun, 2023-03-26 at 10:53 +0200, Krzysztof Kozlowski wrote:
>> On 25/03/2023 14:21, Dylan Van Assche wrote:
>>> SLPI DSP remoteproc on DSP is defined by the 'qcom,sdm845-slpi-pas'
>>> compatible in the qcom_q6v5_pas driver. Add this compatible to the
>>> devicetree bindings.
>>>
>>> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
>>> ---
>>>  Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml | 3
>>> +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
>>> b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
>>> index 643ee787a81f..175be01ecd1c 100644
>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,adsp.yaml
>>> @@ -26,6 +26,7 @@ properties:
>>>        - qcom,sdm660-adsp-pas
>>>        - qcom,sdm845-adsp-pas
>>>        - qcom,sdm845-cdsp-pas
>>> +      - qcom,sdm845-slpi-pas
>>>  
>>>    reg:
>>>      maxItems: 1
>>> @@ -63,6 +64,7 @@ allOf:
>>>                - qcom,msm8998-adsp-pas
>>>                - qcom,sdm845-adsp-pas
>>>                - qcom,sdm845-cdsp-pas
>>> +              - qcom,sdm845-slpi-pas
>>>      then:
>>>        properties:
>>>          clocks:
>>> @@ -104,6 +106,7 @@ allOf:
>>
>>
>> You miss also if:then: for power-domains.
> 
> I am not sure what to put for the power-domains, 

Doesn't your driver patch clearly state it?

> newer remoteprocs from
> SM8150/SM8250/SM8350 etc. are not in this binding either.

They have their own binding, but why is it an argument to add
sdm845-slpi a bit incomplete?

> 
> Could you elaborate a bit here? Thanks!

There are already examples of other remoteprocs which do it, so I do not
understand why this one is different. What to elaborate more?

Best regards,
Krzysztof

