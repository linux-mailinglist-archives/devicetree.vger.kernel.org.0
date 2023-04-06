Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87A926D92DA
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 11:35:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236478AbjDFJfA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 05:35:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236414AbjDFJe7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 05:34:59 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AE0D171C
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 02:34:58 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id i5so147989785eda.0
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 02:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680773696;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8XWRAt6cA6SWvqbl8+GjMBljD3TzI/XKbSiZBb0m1lg=;
        b=iUyJ5JxMxjo6Lg1MAgMik0OjXzDVAgWJV7/syYXpP5vTrklva+j9asejul9jhTZhG+
         ZOPQLyZaeB0HXgKH6On+ZbEY9sh3UVTalQ29xiPIm9XN7v5sQ3Vq2SUCI3J5JSRVk6vY
         tgPU2AoA7BnY5FjcoliLIu2OHBfnigjBAPyKR21VAljvHZfpZ95vqXcAGyRlnEyDd1gR
         Fx3dqe5oZ1DRMcOdTr6L3FlHOutZXOzlLDYeCUBqG6Yf9ChKpyF2p8KnESTq/lzgNxJs
         rGIlao0FsA3ZzU7h/vSpLq1rdcWZJDSL+n1nBCImoCSo93H4vFqwA/dGrtMT9FEN0fwh
         Qj7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680773696;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8XWRAt6cA6SWvqbl8+GjMBljD3TzI/XKbSiZBb0m1lg=;
        b=BLVlaKamPJN3llGB7D5bYExvvhrr93WQPBZIssuyJYZYykIZ1igcT77kKff/C6q7wc
         wTwiyQ2n2YDAeMlusNpUM9c3pw6wdBagF6A3GYiEk4QdHZrPMBCXZGowdvvbroQlJe1f
         7HcG65bOrBBiUas2pAVWt9ko2m8If0hXETfLp/XCBTg8BGtsrrppGa7rB7s6vYIx2t7J
         oIUh+9CNvTUP3RK4prljYXG05Id9m0oPiWSLFk6iMyo4jyDRBiIlSmGpwJ+BiWCiCsHg
         ql2X6EBpHaodTZywiKCwd/RCB5wFwn4A4asPHoQfqQIzg8jECctnsMRb9dpcHIARH4d4
         Mm5A==
X-Gm-Message-State: AAQBX9dhW+UAerg+ww+oUgZ59v2/SmV2bieTVTsfVOEVQn2l8avqwW6V
        zF88AugqNJVm8pptZ0kUO9IKJg==
X-Google-Smtp-Source: AKy350a5Ns2ydsErA5vNRklEKPlI/iiw2rTSF2gMfY+fveUAraTypP6rpRRTkt51YdO1XzTRBVg0JA==
X-Received: by 2002:a17:906:3419:b0:93b:5f2:36c with SMTP id c25-20020a170906341900b0093b05f2036cmr5527876ejb.61.1680773696626;
        Thu, 06 Apr 2023 02:34:56 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id y21-20020a1709063a9500b009321cd80fdfsm566710ejd.158.2023.04.06.02.34.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 02:34:56 -0700 (PDT)
Message-ID: <f9728472-0dda-2fb2-1753-e9c039afa4c1@linaro.org>
Date:   Thu, 6 Apr 2023 11:34:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/5] dt-bindings: arm: msm: Add bindings for multi
 channel DDR in LLCC
Content-Language: en-US
To:     Komal Bajaj <quic_kbajaj@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Mukesh Ojha <quic_mojha@quicinc.com>
References: <20230313124040.9463-1-quic_kbajaj@quicinc.com>
 <20230313124040.9463-3-quic_kbajaj@quicinc.com>
 <2b3e39b9-ea70-db9b-89f7-09054df363c3@linaro.org>
 <20230315134814.GA98488@thinkpad>
 <c8f3499f-d927-6657-c7c6-732ed2222525@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c8f3499f-d927-6657-c7c6-732ed2222525@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 11:19, Komal Bajaj wrote:
> 
>>>>   
>>>>     interrupts:
>>>>       maxItems: 1
>>>>   
>>>> +  multi-ch-bit-off:
>>>> +    items:
>>>> +      - description: Specifies the offset in bits into the multi_channel_register
>>>> +                     and the number of bits used to decide which LLCC configuration
>>>> +                     to use
>>> There are here few issues.
>>> First, I don't fully understand the property. What is an LLCC
>>> configuration? Like some fused values?
> 
> There are different configuration for LLCC based on the number of
> DDR channel it uses. Here, we are basically trying to get information
> about the same.
> 
>>>
>>> Second, don't make it a register specific, it will not scale easily to
>>> any new version of this interface. Although how this should look like
>>> depends on what is it.
> 
> LLCC driver can only get DDR channel information from the register.

And why would that exactly matter to DT? How does it solve my concern
that your approach does not scale?

Best regards,
Krzysztof

