Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5E903FDDCC
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 16:28:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230471AbhIAO3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 10:29:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230202AbhIAO3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 10:29:09 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D777FC061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 07:28:12 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id q14so4851141wrp.3
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 07:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yJ7Ocy7seWLQYiy2BfB5uD6bOTm20ngZx2imICehAGk=;
        b=hx0kNRktmwhADiTsqNt2fvJXun/USzE8QkgfeXvAvju4ahPjZ7VNX9+KPMaIzFykHa
         WPvtEpDKUF1ozSo/+nTSSRt953mF/TVDOzHMguSt2imgKi/VdqKa61yXiIA+0ly4Ml8k
         z7SI2UFirekWjLMRl02qo4wacjU/X/71xUAHZEiBXgaNBWdxHLrtCJ9EvcJIKskM8vPm
         S/kwz5gOzknlz/gTkU1upbAlK8FxeNBRGASlxkUBnMmi5/tvhVxoiKUQzJb1IVcgjoZ8
         GMg/cfBlx4eDk3gornH/mWHjowWtmbug++EF9uF5SZSjRt1bOdAsH4yK86LoPCCKpzxf
         1dgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yJ7Ocy7seWLQYiy2BfB5uD6bOTm20ngZx2imICehAGk=;
        b=oViaADnIDF1hKd1fCGpZ+m5yhaRb++XGgmFbtQv1MeCXqifJtjlwlY9Ieg8wO+QJ5R
         JGN12WU8rZjinXola5aXs1xbX4XaLh8ahJBHeJODwtIhOmQnDtfN++QFCYNinNE79/5N
         394ECxH5lP4+GT9KtD1ftV6z+kLDitqXTcBb2h9LclZdRdLR9pNJv3EIxgtiWRETGuv+
         E0A+LUlFNiaYl4wRdInI7CdGdyJJJzA4GCI7LPq85AWu6GHtN7rq62dDZUk0I0XEmvC3
         NdpLGhC0OIVbGFixrByFvAhFt0a5ypvftNV8uRZ8FCi9tunlyLTlanHzXNjWfKHoz2/j
         n7zw==
X-Gm-Message-State: AOAM532HmwYND/p4LU6FJaBAEsnoY4LudpmqnrPaIsxK9UdqwO6ZpvXA
        YaBt9H54GVXaNgpCr7FpD58k2Q==
X-Google-Smtp-Source: ABdhPJxxTlXU0xXs4jGaeuNqpeq7MxbD7ito7lNcHrZBMl8gq61jzGOsjXPLiA3N7r+Ea0apLWIR+Q==
X-Received: by 2002:adf:dc8a:: with SMTP id r10mr36857680wrj.371.1630506491092;
        Wed, 01 Sep 2021 07:28:11 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id e9sm19042790wrd.69.2021.09.01.07.28.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Sep 2021 07:28:10 -0700 (PDT)
Subject: Re: [PATCH v4 03/20] soc: dt-bindings: qcom: add gpr bindings
To:     Rob Herring <robh@kernel.org>
Cc:     bjorn.andersson@linaro.org, broonie@kernel.org,
        plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
 <20210809112339.8368-4-srinivas.kandagatla@linaro.org>
 <YRby8EtUeXnqEd8m@robh.at.kernel.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <b5844827-3c78-9a13-776e-ff41f49685db@linaro.org>
Date:   Wed, 1 Sep 2021 15:28:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YRby8EtUeXnqEd8m@robh.at.kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Rob for the review,

On 13/08/2021 23:32, Rob Herring wrote:
> On Mon, Aug 09, 2021 at 12:23:22PM +0100, Srinivas Kandagatla wrote:
>> Qualcomm Generic Packet router aka GPR is the IPC mechanism found
>> in AudioReach next generation signal processing framework to perform
>> command and response messages between various processors.
>>
>> GPR has concepts of static and dynamic port, all static services like
>> APM (Audio Processing Manager), PRM (Proxy resource manager) have
>> fixed port numbers where as dynamic services like graphs have dynamic
>> port numbers which are allocated at runtime. All GPR packet messages
>> will have source and destination domain and port along with opcode
>> and payload.
>>
>> This support is added using existing APR driver to reuse most of
>> the code.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   .../bindings/soc/qcom/qcom,apr.yaml           | 92 ++++++++++++++++++-
>>   include/dt-bindings/soc/qcom,gpr.h            | 18 ++++
>>   2 files changed, 105 insertions(+), 5 deletions(-)
>>   create mode 100644 include/dt-bindings/soc/qcom,gpr.h
>>
>> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
>> index 12650f7084f4..59d8b4dce8b5 100644
>> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
>> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
>> @@ -4,14 +4,14 @@
>>   $id: "http://devicetree.org/schemas/soc/qcom/qcom,apr.yaml#"
>>   $schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>   
>> -title: Qualcomm APR (Asynchronous Packet Router) binding
>> +title: Qualcomm APR/GPR (Asynchronous/Generic Packet Router) binding
>>   
>>   maintainers:
>>     - Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>   
>>   description: |
>> -  This binding describes the Qualcomm APR, APR is a IPC protocol for
>> -  communication between Application processor and QDSP. APR is mainly
>> +  This binding describes the Qualcomm APR/GPR, APR/GPR is a IPC protocol for
>> +  communication between Application processor and QDSP. APR/GPR is mainly
>>     used for audio/voice services on the QDSP.
>>   
>>   properties:
>> @@ -19,6 +19,7 @@ properties:
>>       enum:
>>         - qcom,apr
>>         - qcom,apr-v2
>> +      - qcom,gpr
>>   
>>     qcom,apr-domain:
>>       $ref: /schemas/types.yaml#/definitions/uint32
>> @@ -33,13 +34,22 @@ properties:
>>           6 = Modem2 Domain
>>           7 = Application Processor2 Domain
>>   
>> +  qcom,gpr-domain:
> 
> When the next flavor comes out, we'll have qcom,foo-domain?

Am happy to generalize this to qcom,domain and make the qcom,apr-domain 
deprecated, if that is the direction you suggest?

> 
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    enum: [1, 2, 3]
>> +    description:
>> +      Selects the processor domain for gpr
>> +        1 = Modem Domain
>> +        2 = Audio DSP Domain
>> +        3 = Application Processor Domain
>> +
>>     '#address-cells':
>>       const: 1
>>   
>>     '#size-cells':
>>       const: 0
>>   
>> -#APR Services
>> +#APR/GPR Services
>>   patternProperties:
>>     "^apr-service@[0-9a-e]$":
>>       type: object
>> @@ -86,9 +96,66 @@ patternProperties:
>>   
>>       additionalProperties: false
>>   
>> +  "^gpr-service@[0-9a-e]$":
> 
> And foo-service@...
> 
> Do you (the driver) care what the node name is?

not really, we can name it as service@

> 
>> +    type: object
>> +    description:
>> +      GPR node's client devices use subnodes for desired static port services.
>> +
>> +    properties:
>> +      compatible:
>> +        enum:
>> +          - qcom,q6apm
>> +          - qcom,q6prm
>> +
>> +      reg:
>> +        enum: [1, 2, 3, 4]
>> +        description:
>> +          GPR Service ID
>> +            1 = Audio Process Manager Service
>> +            2 = Proxy Resource Manager Service.
> 
> Looks like both reg and compatible encode what the service is.

yes, this is inline with what has been done with APR bindings.

> 
>> +            3 = AMDB Service.
>> +            4 = Voice processing manager.
>> +
>> +      qcom,protection-domain:
>> +        $ref: /schemas/types.yaml#/definitions/string-array
>> +        description: protection domain service name and path for apr service
>> +          has dependency on.
>> +        items:
>> +          - const: avs/audio
>> +          - const: msm/adsp/audio_pd
> 
> Why are we redefining the same property? You've combined the binding but
> are still sharing almost nothing...

I agree, Its possible to remove these redefinition, I will try to clean 
this up properly in next spin.

--srini
> 
>> +
>> +      '#address-cells':
>> +        const: 1
>> +
>> +      '#size-cells':
>> +        const: 0
>> +
>> +    additionalProperties: false
>> +
>>   required:
>>     - compatible
>> -  - qcom,apr-domain
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,apr-v2
>> +              - qcom,apr
>> +    then:
>> +      required:
>> +        - qcom,apr-domain
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,gpr
>> +    then:
>> +      required:
>> +        - qcom,gpr-domain
>>   
>>   additionalProperties: false
>>   
>> @@ -125,3 +192,18 @@ examples:
>>             qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>>           };
>>       };
>> +
>> +  - |
>> +    #include <dt-bindings/soc/qcom,gpr.h>
>> +    gpr {
>> +        compatible = "qcom,gpr";
>> +        qcom,gpr-domain = <GPR_DOMAIN_ID_ADSP>;
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        gpr-service@1 {
>> +          compatible = "qcom,q6apm";
>> +          reg = <GPR_APM_MODULE_IID>;
>> +          qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
>> +        };
>> +    };
>> diff --git a/include/dt-bindings/soc/qcom,gpr.h b/include/dt-bindings/soc/qcom,gpr.h
>> new file mode 100644
>> index 000000000000..1c68906e079c
>> --- /dev/null
>> +++ b/include/dt-bindings/soc/qcom,gpr.h
>> @@ -0,0 +1,18 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef __DT_BINDINGS_QCOM_GPR_H
>> +#define __DT_BINDINGS_QCOM_GPR_H
>> +
>> +/* DOMAINS */
>> +
>> +#define GPR_DOMAIN_ID_MODEM	1
>> +#define GPR_DOMAIN_ID_ADSP	2
>> +#define GPR_DOMAIN_ID_APPS	3
>> +
>> +/* Static Services */
>> +
>> +#define GPR_APM_MODULE_IID		1
>> +#define GPR_PRM_MODULE_IID		2
>> +#define GPR_AMDB_MODULE_IID		3
>> +#define GPR_VCPM_MODULE_IID		4
>> +
>> +#endif /* __DT_BINDINGS_QCOM_GPR_H */
>> -- 
>> 2.21.0
>>
>>
