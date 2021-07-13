Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 686973C67B5
	for <lists+devicetree@lfdr.de>; Tue, 13 Jul 2021 02:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233545AbhGMA50 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 20:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233835AbhGMA50 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 20:57:26 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83442C0613EF
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 17:54:36 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id w2so7183688qvh.13
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 17:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LpiLPRJIBi6SrxM3Fqi2A10JFLoRo5PavGwbx3+mEss=;
        b=vkVFketWLLa3g3vbW0VKxxdpO1VgzH/shdIKlbrtcym5F/0egwiJ/KScrVUz6zavRU
         PyjeGkQD6UuUB+smKODLYpFIa3JrnHSg7m1XBH/tkP+xTWGGa+HiUXFuRN1Vt/euRQGQ
         i0I/OKqxssPRjPzI2+SINFVwwvWlGAbSIvstxGTgkfcAxuuPver5dUevSCOWSe6g7dQZ
         ZboqVaRliHLVYR/pH2gN5fl7zEObD/Gxl8vpvtvuC8C+OyJMgfQPFnNIJmG2l6hqWcRy
         3H5eWHcnQWYSGAJ5tp6eGBLmF5NuI8KEXSRet02TihLEbPtNbxoxTS6JeRqBVHI7dumT
         Tskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LpiLPRJIBi6SrxM3Fqi2A10JFLoRo5PavGwbx3+mEss=;
        b=DqDB470lyaPsjWfmLUXfj+Qk/6nQCMgvuI48wN+jLpMmbCvgI6Ah+yjGqlLKNxx/cx
         +TZcVMG1Ivku/bKEO79EnrtXy8uk5AXfFw4cS7nJsrmdQurTLrVw2BSPAdxo1BbV0djN
         wFlQpq8Pj/nbNJRofMTTpmoPdzEqKZ4hBEC33upOFrsMGbIACQWoWl/qtJI4U5urHj4D
         q9EBiLQChM1Fos+ZOYdw6nwWhsMkqA19oodTWRWP/5LV4xHqaMp5z1lXSV7hzesashWV
         ZulfGR3v56PSG7tsUtdJoyeCbql0KZEJsa69xUE7KIg1WZ6KbOU1fwjSnaGqCihQd7qS
         idpA==
X-Gm-Message-State: AOAM530d3sZPOO3HA1M1lIL3zy2g9G6MOxvWEp0ZkeE2TCpKmjFTMQO5
        yoPn9Z1zdcznltZKXi1ESrBSdZygXyjLEQ==
X-Google-Smtp-Source: ABdhPJz2gNuczFb8JQuqxQmKUDUJ0En8OUGHx6qsEkm8g13tkukdUApRMxbJNC6xcU8U5NIHl8v0mQ==
X-Received: by 2002:a0c:c350:: with SMTP id j16mr2185643qvi.51.1626137675267;
        Mon, 12 Jul 2021 17:54:35 -0700 (PDT)
Received: from [192.168.1.93] (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.gmail.com with ESMTPSA id k66sm7586042qke.84.2021.07.12.17.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 17:54:34 -0700 (PDT)
Subject: Re: [Patch v3 6/6] dt-bindings: thermal: Add dt binding for QCOM LMh
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     agross@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
        viresh.kumar@linaro.org, rjw@rjwysocki.net, robh+dt@kernel.org,
        tdas@codeaurora.org, mka@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20210708120656.663851-1-thara.gopinath@linaro.org>
 <20210708120656.663851-7-thara.gopinath@linaro.org> <YOkgSP5e3JaGY19V@yoga>
From:   Thara Gopinath <thara.gopinath@linaro.org>
Message-ID: <2d11017d-8722-30d1-6b91-214c341e8ab4@linaro.org>
Date:   Mon, 12 Jul 2021 20:54:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YOkgSP5e3JaGY19V@yoga>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7/10/21 12:21 AM, Bjorn Andersson wrote:
> On Thu 08 Jul 07:06 CDT 2021, Thara Gopinath wrote:
> 
>> Add dt binding documentation to describe Qualcomm
>> Limits Management Hardware node.
>>
>> Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
>> ---
>>   .../devicetree/bindings/thermal/qcom-lmh.yaml | 100 ++++++++++++++++++
>>   1 file changed, 100 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
>> new file mode 100644
>> index 000000000000..7f62bd3d543d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
>> @@ -0,0 +1,100 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +# Copyright 2021 Linaro Ltd.
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/thermal/qcom-lmh.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Limits Management Hardware(LMh)
>> +
>> +maintainers:
>> +  - Thara Gopinath <thara.gopinath@linaro.org>
>> +
>> +description:
>> +  Limits Management Hardware(LMh) is a hardware infrastructure on some
>> +  Qualcomm SoCs that can enforce temperature and current limits as
>> +  programmed by software for certain IPs like CPU.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,sdm845-lmh
>> +
>> +  reg:
>> +    items:
>> +      - description: core registers
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  '#interrupt-cells':
>> +    const: 1
>> +
>> +  interrupt-controller: true
>> +
>> +  qcom,lmh-cpu-id:
>> +    description:
>> +      CPU id of the first cpu in the LMh cluster
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>> +  qcom,lmh-temperature-arm:
>> +    description:
>> +      An integer expressing temperature threshold in millicelsius at which
>> +      the LMh thermal FSM is engaged.
> 
> Do we know (by any public source) what "arm", "low" and "high" means
> beyond that they somehow pokes the state machine?

Not from public documentation. I know what these thresholds means, 
atleast to some extent. Though I will never claim to be an expert in 
this! There is an error in description of qcom,lmh-temperature-low and 
qcom,lmh-temperature-high below. I copied
and forgot to change the description. I will fix it.

> 
>> +    $ref: /schemas/types.yaml#/definitions/int32
>> +
>> +  qcom,lmh-temperature-low:
>> +    description:
>> +      An integer expressing temperature threshold in millicelsius at which
>> +      the LMh thermal FSM is engaged.
>> +    $ref: /schemas/types.yaml#/definitions/int32
>> +
>> +  qcom,lmh-temperature-high:
>> +    description:
>> +      An integer expressing temperature threshold in millicelsius at which
>> +      the LMh thermal FSM is engaged.
>> +    $ref: /schemas/types.yaml#/definitions/int32
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - #interrupt-cells
>> +  - interrupt-controller
>> +  - qcom,lmh-cpu-id
>> +  - qcom,lmh-temperature-arm
>> +  - qcom,lmh-temperature-low
>> +  - qcom,lmh-temperature-high
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/qcom,rpmh.h>
>> +    #include <dt-bindings/interconnect/qcom,sdm845.h>
> 
> I don't see why you need qcom,rpmh.h or the interconnect include in this
> example.

I could have sworn make dt-bindings check failed. But maybe only The 
first include is needed. I will remove the other two.

> 
>> +
>> +    lmh_cluster1: lmh@17d70800 {
>> +      compatible = "qcom,sdm845-lmh";
>> +      reg = <0 0x17d70800 0 0x401>;
> 
> #address- and #size-cells are 1 in the wrapper that validates the
> examples, so drop the two zeros.

Ok.

> 
>> +      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
>> +      qcom,lmh-cpu-id = <0x4>;
>> +      qcom,lmh-temperature-arm = <65000>;
>> +      qcom,lmh-temperature-low = <94500>;
>> +      qcom,lmh-temperature-high = <95000>;
>> +      interrupt-controller;
>> +      #interrupt-cells = <1>;
>> +    };
>> +  - |
> 
> This is a different example from the one above, if you intended that,
> don't you need the #include of arm-gic.h here as well?

Again make dt-bindings check did not fail. It is a different example.
So I am not sure of the norm here. Is one example good enough ?

> 
> Regards,
> Bjorn
> 
>> +    lmh_cluster0: lmh@17d78800 {
>> +      compatible = "qcom,sdm845-lmh";
>> +      reg = <0 0x17d78800 0 0x401>;
>> +      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
>> +      qcom,lmh-cpu-id = <0x0>;
>> +      qcom,lmh-temperature-arm = <65000>;
>> +      qcom,lmh-temperature-low = <94500>;
>> +      qcom,lmh-temperature-high = <95000>;
>> +      interrupt-controller;
>> +      #interrupt-cells = <1>;
>> +    };
>> +  - |
>> -- 
>> 2.25.1
>>

-- 
Warm Regards
Thara (She/Her/Hers)
