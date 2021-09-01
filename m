Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EFB53FDDCD
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 16:28:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231956AbhIAO3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 10:29:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230202AbhIAO3S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 10:29:18 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EB51C061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 07:28:21 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id t15so4830532wrg.7
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 07:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SrfHFEqlK9Hqt9lK1GHUvYZLhZ+zB9oUHgZgCIL0xLQ=;
        b=oVfDLZKq+2kKz2ycYpNYxPRHY46TOrpndiGdLJIuejoZegpoVsZJ/P+KWjXOix9ER9
         ainOtq3IjXyMkd0YNCqq6bhdwKXpcA9VY/4phP6Zxhi1trlOYRfJwaHlnWh94JfaMi0m
         tUr9YBUg2RVGRaUkrGgyFJC3Y9dWxBgMGLPBwqP+6BcPzIUQre9GsbiqBQyMAcXwvXfZ
         Dfk9zUufTO/X0dCmOueEfe95hb5B13eOxRKYYWB1ikT0EWTUPU/pJ61tGqKt2kpHNVk0
         nVV7AXOPWtReh3rdUADHUM0iu2CK+9A/jz+/bfNG0YbuUnHb+DUXBvyPfnmJVy+DYDCE
         recQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SrfHFEqlK9Hqt9lK1GHUvYZLhZ+zB9oUHgZgCIL0xLQ=;
        b=H+GBL1X1TckzWgmfTYUzDLUZadO+WQ/C7HwKMcilH6U+MR8EfnC0pzA++VZkfOcXut
         Ti05BeGPRi8tu8y/Sm5D6nJskOH2qgWgNf4o1tVuZb/XUWBQWRmLETLktlgZDjJtydek
         unTgJk9nzHLXfeMSHTtLlHukXe4SHtiX8uAOeIxm07rIQx71JNDC3M/qoFJ4Q2IZazIq
         AwZmS/rQ88u+P0ZIBDZJzTVz5IhV0WApXq6Ov1vkpqjlQa2AO9wNfzciMudKCGCAZOII
         G6hRkcBwo2cU8ldrksQDBXO6QQHf557MBVqK/Zj3f3Kb+mFwTQSG6Q8gAFHP1hpJsIBB
         sYxg==
X-Gm-Message-State: AOAM531x4ot/ZYbVq/1W5nP+5XHA6MWoobBvMkoeICm1pwWVPx6rqSTZ
        UXZ3NbXyngcDOx8XPL7fWZxwfw==
X-Google-Smtp-Source: ABdhPJyg1LldOd2tXZfEey27anScHEr6Oii/Wn3DAjKIun1igN6v8g8WATudtI7LrnKgYHPsKnRrxQ==
X-Received: by 2002:adf:f984:: with SMTP id f4mr37735320wrr.331.1630506500183;
        Wed, 01 Sep 2021 07:28:20 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id b18sm21651601wrr.89.2021.09.01.07.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Sep 2021 07:28:19 -0700 (PDT)
Subject: Re: [PATCH v4 01/20] soc: dt-bindings: qcom: apr: convert to yaml
To:     Rob Herring <robh@kernel.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
 <20210809112339.8368-2-srinivas.kandagatla@linaro.org>
 <YRbwyIYt4YdzAbqj@robh.at.kernel.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <ab5238bb-5cb9-0292-09ef-747a497236e8@linaro.org>
Date:   Wed, 1 Sep 2021 15:28:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YRbwyIYt4YdzAbqj@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Rob for the review,

On 13/08/2021 23:23, Rob Herring wrote:
> On Mon, Aug 09, 2021 at 12:23:20PM +0100, Srinivas Kandagatla wrote:
>> Convert APR bindings to yaml format so that we could add new bindings support.
>>
>> All the dsp services bindings are now part of apr bindings instead
>> of adding them to audio bindings.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../devicetree/bindings/soc/qcom/qcom,apr.txt | 134 ------------------
>>   .../bindings/soc/qcom/qcom,apr.yaml           | 127 +++++++++++++++++
>>   2 files changed, 127 insertions(+), 134 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
>>   create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
>> deleted file mode 100644
>> index 2e2f6dc351c0..000000000000
>> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
>> +++ /dev/null
>> @@ -1,134 +0,0 @@

...

>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
>> new file mode 100644
>> index 000000000000..12650f7084f4
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
>> @@ -0,0 +1,127 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/soc/qcom/qcom,apr.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: Qualcomm APR (Asynchronous Packet Router) binding
>> +
>> +maintainers:
>> +  - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> +
>> +description: |
>> +  This binding describes the Qualcomm APR, APR is a IPC protocol for
>> +  communication between Application processor and QDSP. APR is mainly
>> +  used for audio/voice services on the QDSP.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,apr
> 
> This wasn't a valid compatible before.

True, Will remove that in next version.
> 
>> +      - qcom,apr-v2
>> +
>> +  qcom,apr-domain:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    enum: [1, 2, 3, 4, 5, 6, 7]
>> +    description:
>> +      Selects the processor domain for apr
>> +        1 = APR simulator
>> +        2 = PC Domain
>> +        3 = Modem Domain
>> +        4 = ADSP Domain
>> +        5 = Application processor Domain
>> +        6 = Modem2 Domain
>> +        7 = Application Processor2 Domain
>> +
>> +  '#address-cells':
>> +    const: 1
>> +
>> +  '#size-cells':
>> +    const: 0
>> +
>> +#APR Services
>> +patternProperties:
>> +  "^apr-service@[0-9a-e]$":
> 
> Based on reg, this should be: [3-9a-d]

Sure, will fix that.

> 
>> +    type: object
>> +    description:
>> +      APR node's client devices use subnodes for desired static port services.
>> +
>> +    properties:
>> +      compatible:
>> +        enum:
>> +          - qcom,q6core
>> +          - qcom,q6asm
>> +          - qcom,q6afe
>> +          - qcom,q6adm
>> +
>> +      reg:
>> +        enum: [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
>> +        description:
>> +          APR Service ID
>> +            3 = DSP Core Service
>> +            4 = Audio  Front End Service.
>> +            5 = Voice Stream Manager Service.
>> +            6 = Voice processing manager.
>> +            7 = Audio Stream Manager Service.
>> +            8 = Audio Device Manager Service.
>> +            9 = Multimode voice manager.
>> +            10 = Core voice stream.
>> +            11 = Core voice processor.
>> +            12 = Ultrasound stream manager.
>> +            13 = Listen stream manager.
>> +
>> +      qcom,protection-domain:
>> +        $ref: /schemas/types.yaml#/definitions/string-array
>> +        description: protection domain service name and path for apr service
>> +          has dependency on.
>> +        items:
>> +          - const: avs/audio
>> +          - const: msm/adsp/audio_pd
> 
> You've dropped a bunch of possible values.
> 
PDR services used for APR driver are only these two audio services.
so the others are really list of other services that APR driver will not 
using.

I can retain them as it was before, but we can tidy this list up in a 
cleanup patch later.

--srini

>> +
>> +      '#address-cells':
>> +        const: 1
>> +
>> +      '#size-cells':
>> +        const: 0
>> +
>> +    additionalProperties: false
>> +
>> +required:
>> +  - compatible
>> +  - qcom,apr-domain
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/soc/qcom,apr.h>
>> +    apr {
>> +        compatible = "qcom,apr-v2";
>> +        qcom,apr-domain = <APR_DOMAIN_ADSP>;
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        q6core: apr-service@3 {
>> +          compatible = "qcom,q6core";
>> +          reg = <APR_SVC_ADSP_CORE>;
>> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>> +        };
>> +
>> +        q6afe: apr-service@4 {
>> +          compatible = "qcom,q6afe";
>> +          reg = <APR_SVC_AFE>;
>> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>> +        };
>> +
>> +        q6asm: apr-service@7 {
>> +          compatible = "qcom,q6asm";
>> +          reg = <APR_SVC_ASM>;
>> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>> +        };
>> +
>> +        q6adm: apr-service@8 {
>> +          compatible = "qcom,q6adm";
>> +          reg = <APR_SVC_ADM>;
>> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>> +        };
>> +    };
>> -- 
>> 2.21.0
>>
>>
