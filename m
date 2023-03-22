Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E220C6C50C7
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 17:31:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbjCVQb4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 12:31:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230454AbjCVQbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 12:31:32 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4275962DA3
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 09:31:19 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id eg48so75237872edb.13
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 09:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679502677;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LFZ61u9VJpUAoRQg3tYOp0+T7FfcK8Yyt0cUesAGieo=;
        b=mSosGN2PMVqD3N3ytlg3MLYHzTKtWw5SEEAFlU+HPEKE8UvUDsEqzIJpCVFRTpVToH
         rnjAo370CQykNNjXeLGrJ/2/iJ3ngbS9reBPAczDi+vOshiD2Covtz29dZyLLDV1xJ4H
         YEEv1+ANUCr6Qa/t653F3IXXNi+l1cd9ll5KB9kLdlj5d/jFlHRQYKq4Ahu4TLwMGw0S
         K2DkbS4feGeAcRwmWRX0h5zXHU9iYsVTklwpIViF0n8hXAoc98y8cgv308YKFjoDkGnZ
         Y6ZMT6itJskGGm79cR3JCbnRl0J31FQ4nAwkatZKcrYEzeleB7d4iUmEbS5PyVpXqebe
         HLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679502677;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LFZ61u9VJpUAoRQg3tYOp0+T7FfcK8Yyt0cUesAGieo=;
        b=vj8cTADb9mQhRwpvPjS87SulgxJQ1x0f3sv8eoqWzrxDnl4rQYmmYBwgFTFgA5OBh+
         c2IrTBMdOZrSuBPyeXUSkNsF6e7c6KhZVYxmz8pGHT4PoJIgKTlED4FFBQoGgUCMazCf
         wRCz8KI6pM6o4QsAK64AexjGOG0HaI9N6Tg27y8yA+pKEoo/9Q4dn4pwc4vPuGudmaaT
         XaBJl9/8MeTl0he7NIY/wdqd9OmY7PYxmP7mG4teBwf5h2elKydWh3K0lTMYOUxHTNAy
         pLuvG2It1IHRPKv4EYNTc7z0g1jksR2R4kreXuKhJov59tYkl6cJGMu4NumowRLBW12m
         9WwQ==
X-Gm-Message-State: AO0yUKVbg6u27RmWlXE3FVavLSSsZcBhtCmlW2zH/DYeWLxZacS2CqXi
        BIm5umS+JHBYWDBD9V24+eWzzg==
X-Google-Smtp-Source: AK7set/0VxbL1t+c77xBvqnLXnH9QJBY6d7D9I3voRWBgpPjw55Gc7XlDpGQLhruT45zooGlUnpLnw==
X-Received: by 2002:a17:907:2169:b0:933:4ca3:9678 with SMTP id rl9-20020a170907216900b009334ca39678mr7792106ejb.24.1679502677576;
        Wed, 22 Mar 2023 09:31:17 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5050:151b:e755:1c6? ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id ml23-20020a170906cc1700b0092ce8344078sm7465296ejb.33.2023.03.22.09.31.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 09:31:17 -0700 (PDT)
Message-ID: <855b64ea-ccd3-4925-29a8-ebb8d0734adc@linaro.org>
Date:   Wed, 22 Mar 2023 17:31:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V1 2/4] dt-bindings: soc: qcom,mpm-sleep-counter: Add the
 dtschema
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1679403696.git.quic_schowdhu@quicinc.com>
 <576e53a1d0ef218536da976102b4cc207436ec1d.1679403696.git.quic_schowdhu@quicinc.com>
 <e845b412-9afa-3d9e-54fc-7f9f04d25c05@linaro.org>
 <8efa2296-7136-690a-6e6b-c9b41562ba84@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8efa2296-7136-690a-6e6b-c9b41562ba84@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 15:02, Souradeep Chowdhury wrote:
> 
> 
> On 3/21/2023 11:09 PM, Krzysztof Kozlowski wrote:
>> On 21/03/2023 14:51, Souradeep Chowdhury wrote:
>>> Add the device tree bindings for the module power manager sleep
>>> counter.
>>>
>>> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>
>>> ---
>>>   .../bindings/soc/qcom/qcom,mpm-sleep-counter.yaml  | 40 ++++++++++++++++++++++
>>>   1 file changed, 40 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,mpm-sleep-counter.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,mpm-sleep-counter.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,mpm-sleep-counter.yaml
>>> new file mode 100644
>>> index 0000000..f9f46b7
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,mpm-sleep-counter.yaml
>>
>> Your code a bit explains this... this is not a device but some memory
>> region. Does not look like suitable for bindings as separate device.
> 
> Ack. Can you let me know the suitable place to put the bindings for this?

Reserved memory region? Or drop from bindings entirely.

Best regards,
Krzysztof

