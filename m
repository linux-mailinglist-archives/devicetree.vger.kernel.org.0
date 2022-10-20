Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E712960604A
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 14:36:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230049AbiJTMgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 08:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229976AbiJTMgF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 08:36:05 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 616C81D5553
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:35:46 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id t16so107456qvm.9
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8/UkpWDlCb1VBoDddnSGcWzFXaR1SMPz8bBVjiSyJik=;
        b=oOCjXD8mJP66/QfUDSL1e5Czts0R7eKIud3RFfBeioP3j0qau02qJsUyCTKhuCB+BQ
         K8rF0xnzRmihdhl/nYgYbfUUpjYdBbikSbAzKsv4Ug72zwuOAj+ptRJl/KV4efWoSdt6
         HVyMD4V+823kzmdW60hr28NqJry4G75GlzxujfSkr9E+ptlObetd5eFiqCa01RhVe34F
         gP93tnTi/PKWL/NJrRmnFHqG64nwFlZSG9KjITgjD4d4Vp7dsWmXoWJA73UNhE0iMtfe
         7PdhQroPCOhLQ51mlDnHohPC2i10amEQi49BkEiQrCoNk6e21duz6/hSvYnZmdQOs+HU
         AT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8/UkpWDlCb1VBoDddnSGcWzFXaR1SMPz8bBVjiSyJik=;
        b=V7u2G4dDiumRk5pwQomzlO14W+GSQaU5baXX8fz2hZdrcYtTopmn3OAnWzO2ffaiWV
         Mj67DjV7mdRTPMj7XmbjGZrmY1tI+jW8NEYqy6nYLCt7XP8aUY9idu4ANO/lXDK98YzJ
         d1v7QCP71XM2ydhEUcTNI6YZs1zGZFZXocFH9dr29xN6+fal65Qg3K8899iNYdx1qcp4
         PFePGa/yYVPZU06njciSh/2cxqiKQflo5V8SyVU+pe64koFbxC1rabv8mkomKTD0zL5z
         sn8gH5JfuVHsZ9MlBHFUToPYaP2+RKm/f4BNYqo3ljOnghkZE4lBFjeFDXGcekKcXf2P
         yq0w==
X-Gm-Message-State: ACrzQf2OHuwruMt3QTHUg4Hf1XHhI5UFmq/7fdrXT5Tr8hfY2m9Ryg8r
        ibViMrc34Ed9+oYVeebwHUZ7BQ==
X-Google-Smtp-Source: AMsMyM6lzIwu5NdXuv/ZUmXvjjlFYw8NTQ5oTBAqsfEI2gkDUGtqecr003L/apzboVEWywKL7I+RyA==
X-Received: by 2002:a0c:dd11:0:b0:4b1:97db:abe with SMTP id u17-20020a0cdd11000000b004b197db0abemr10576971qvk.95.1666269344392;
        Thu, 20 Oct 2022 05:35:44 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id dt5-20020a05620a478500b006ee94c5bf26sm7458715qkb.91.2022.10.20.05.35.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 05:35:43 -0700 (PDT)
Message-ID: <a8d38406-6294-581a-9677-ff2e686eca50@linaro.org>
Date:   Thu, 20 Oct 2022 08:35:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 1/4] dt-bindings: firmware: scm: Add QDU1000/QRU1000
 compatibles
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <quic_gurus@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221014221121.7497-1-quic_molvera@quicinc.com>
 <20221014221121.7497-2-quic_molvera@quicinc.com>
 <55d026c0-9c54-f5d6-bf5e-da71856f0698@linaro.org>
 <4d680e5a-16eb-f68b-ac6a-e11580104c23@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4d680e5a-16eb-f68b-ac6a-e11580104c23@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 14:08, Melody Olvera wrote:
> 
> 
> On 10/15/2022 6:34 AM, Krzysztof Kozlowski wrote:
>> On 14/10/2022 18:11, Melody Olvera wrote:
>>> Add compatibles for scm driver for QDU1000 and QRU1000 platforms.
>>>
>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>> ---
>>>  .../devicetree/bindings/firmware/qcom,scm.yaml   | 16 ++++++++++++++++
>>>  1 file changed, 16 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
>>> index c5b76c9f7ad0..47083f47f109 100644
>>> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
>>> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
>>> @@ -38,6 +38,8 @@ properties:
>>>            - qcom,scm-msm8994
>>>            - qcom,scm-msm8996
>>>            - qcom,scm-msm8998
>>> +          - qcom,scm-qdu1000
>>> +          - qcom,scm-qru1000
>> Why exactly we are no using qdu1000 as fallback? That was the
>> recommendation in previous discussion.
> Will use only qdu; I think I misunderstood the outcome of that discussion.

Actually, I think I commented about this in wrong patch. I think the
outcome was to use two compatibles for most of the cases, but as a
fallback, so:

QDU: "qcom,qdu1000-rpmhpd"
QRU: "qcom,qru1000-rpmhpd", "qcom,qdu1000-rpmhpd"
(or skip entirely second if you do not customize QRU in DTSI)

However here we already have a fallback, so these are fine:

"qcom,scm-qdu1000", "qcom,scm"
"qcom,scm-qru1000", "qcom,scm"

Still assuming you customize them in DTSI... which does not seem the
case, right?

>>
>> Patch is still incomplete - you still do no have proper changes in allOf
>> for the clocks. If you want to say that this SoC does not take any
>> clocks as input, then they should not be allowed.
> That is what I'm trying to say; it seems most of our most recent SoCs (sm8*) don't have any
> clocks associated with the scm. Does it make sense to remove the minItems earlier
> in the binding, or is there something else that would communicate this in allOf better?
> 


Then disallow clocks for your variant:

  - if:
     ....
    then:
     ...
      clocks: false
      clock-names: false

Best regards,
Krzysztof

