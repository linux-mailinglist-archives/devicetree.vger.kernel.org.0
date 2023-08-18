Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A13A7807A0
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 11:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358832AbjHRI7l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 04:59:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358828AbjHRI7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 04:59:16 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AAF235B3
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 01:59:11 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4ff91f2d7e2so894129e87.0
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 01:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692349150; x=1692953950;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xJm4S8usi6aiGwBH5M9kQvrP7KTSyu9RrSuKCbpG3qc=;
        b=uhWStpwsgqhysvBfgJM2Y4/I23javHbK8RpVUJTsKU2LIHQGgHEztHaUQaHH+00WMU
         A0MxbS+x+GBeUeKrhhD5PzIiUAfQzsqvEppREpmYsL597po+xJPOfyjsIIJ8WDXrOkoM
         kxece0OZmjftOcz+gD0JD3TKqHCDpwptqQFsyEe4uuxmISCoCzqWLRo/oXQWCnMwoBVm
         nEALUpEMxEeAXEGPK7PAQOlXzKi96Ez66WWF9c3wG8pcaxDY0nRHXqAksN5CjO9J7+Xl
         saDyo9jfyZa81Nc3VNc1I9Lgqb58WnUvNxixtDZp/MhnOVqwyw8G/nhrnNcNPKdXqfC6
         lyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692349150; x=1692953950;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xJm4S8usi6aiGwBH5M9kQvrP7KTSyu9RrSuKCbpG3qc=;
        b=PkfdTQVHqTH4sGFR8R7xD8coCxnJvgbuH8qdmKKrjmnQTBrhCmVXApC/wpE+wGaslh
         iNXt8Ed+bvtI4yaCkveYNi+8qQg1oQhYC2Shb133E8TKTQmk8lH/6es7gPeQC44vIcuo
         08MWMZFbmsyPmD/ujpndZBbXy9p+KO0cCPX1cKd2pLij9mjFE87TXw6bzWkJM7Nf4LXZ
         TK2+0BORGlPN1Us1NSKQ/BPuL24rZ7K6+Gy7rKg+3hxbk+0prFDnP5rJ4XfndkNJfpkb
         Oi9z3hR5H2WkgzULl9ZLGTj38i9W5GPmpmBK7WlCcNU8QPqFp6q+4lmVurDDtemjWdo2
         OZSQ==
X-Gm-Message-State: AOJu0Yzv31tG787ZcDx9JJUTa0PqPwDmh56MOy8/Sl7tDQcHX128lnX3
        lIyVtadzrfyLWQk+fU8D0M1u7j5npqqK2dHApUEVSA==
X-Google-Smtp-Source: AGHT+IHhngfMVyaJ/vZRalrs4RKZIIe8Zsyq7PkcVRaJypLYHHr1czYftbfcIR3E9G5BsBjw3kIcqg==
X-Received: by 2002:ac2:5b0c:0:b0:4f8:5885:61e with SMTP id v12-20020ac25b0c000000b004f85885061emr1196962lfn.40.1692349149818;
        Fri, 18 Aug 2023 01:59:09 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id x12-20020aa7cd8c000000b0052595b17fd4sm841685edv.26.2023.08.18.01.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 01:59:09 -0700 (PDT)
Message-ID: <10495cea-b8bb-df1d-3971-6a635ba301fb@linaro.org>
Date:   Fri, 18 Aug 2023 10:59:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 1/7] dt-bindings: soc: qcom: Add qcom,pbs bindings
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Anjelique Melendez <quic_amelende@quicinc.com>
Cc:     pavel@ucw.cz, lee@kernel.org, thierry.reding@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, luca.weiss@fairphone.com,
        konrad.dybcio@linaro.org, u.kleine-koenig@pengutronix.de,
        quic_subbaram@quicinc.com, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20230814235918.10396-1-quic_amelende@quicinc.com>
 <20230814235918.10396-2-quic_amelende@quicinc.com>
 <102328fa-5699-4731-d639-079bce8863a5@linaro.org>
 <20230817162624.GA1444880-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230817162624.GA1444880-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2023 18:26, Rob Herring wrote:
> On Tue, Aug 15, 2023 at 10:36:39PM +0200, Krzysztof Kozlowski wrote:
>> On 15/08/2023 01:59, Anjelique Melendez wrote:
>>> Add binding for the Qualcomm Programmable Boot Sequencer device.
>>>
>>> Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
>>> ---
>>>  .../bindings/soc/qcom/qcom,pbs.yaml           | 46 +++++++++++++++++++
>>>  1 file changed, 46 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,pbs.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pbs.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pbs.yaml
>>> new file mode 100644
>>> index 000000000000..b502ca72266a
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pbs.yaml
>>> @@ -0,0 +1,46 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/soc/qcom/qcom,pbs.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Qualcomm Technologies, Inc. Programmable Boot Sequencer
>>> +
>>> +maintainers:
>>> +  - Anjelique Melendez <quic_amelende@quicinc.com>
>>> +
>>> +description: |
>>> +  The Qualcomm Technologies, Inc. Programmable Boot Sequencer (PBS)
>>> +  supports triggering power up and power down sequences for clients
>>> +  upon request.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - qcom,pmi632-pbs
>>> +      - const: qcom,pbs
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/spmi/spmi.h>
>>> +
>>> +    pmic@0 {
>>
>> This should be rather just "pmic", because the examples have
>> address-cells=1 and size-cells=1, which is not correct in this context.
> 
> But there's a 'reg' property so you can't drop the unit-address. The bus 
> node (spmi) needs to be added.

reg also can be dropped. I am not sure whether parent PMIC bus is
important here.

Best regards,
Krzysztof

