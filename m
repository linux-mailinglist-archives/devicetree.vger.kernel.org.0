Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54F0C6DF890
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 16:33:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231636AbjDLOd0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 10:33:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231401AbjDLOdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 10:33:18 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF77B30DE
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 07:33:01 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id t14so14853868lft.7
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 07:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681309980; x=1683901980;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LG9QX7rNR4lnpHDRoSRNn8CKFWnNVQXJufT8nFTW6qA=;
        b=LxOtPXIZmAVyKNxB9F3VeDQmA5bIN5pmpUVIz5xLTRzKmk3oC3H1OncmyqZdjjkCaU
         HWldwVsHvIiJdPitXYyyE/MBA34w+FwXzNScxArgGQh5+5kWrPs/2ZFY0VQ7b67EOOqJ
         KeFEf6wciQglkj68ZpKNl/VvaFGaClYsgab6aBWI47e+hKukymHlUtMUtOCnipwZVm5c
         JmIzcBaIrL50zGMerkDhERxtxDCbPCWa8u22jIcsV5YvRNRRGkeuqKbwkXLLj0rClsNM
         KvgP4rDorAig9U44igtuG/E9kk8sxJUMPJ7zhTwLN1fRaDfdE3Rnkw6UhhWY97QKHG8W
         5PbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681309980; x=1683901980;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LG9QX7rNR4lnpHDRoSRNn8CKFWnNVQXJufT8nFTW6qA=;
        b=G2xeFlDCPeK5G5FpmM5DEVW97q/phHBry+ale80uAUe99psnVuNg9aYIb+IKta2XOZ
         FZ+G84CBNpOdNfwCW3NGggnsMnn+S9IogomtqPN4zYC+3KRgxJde9nHfjdaMl+GiE/mN
         98yh2hd+AF3T9+veVJWgyfxdkhjxHCoHRvpVFHHyvAFVX7X51xeIy4Pq3KdTVH68wO3f
         nT1JazDs8jI8SiUWHv3qlzO1KOYWbC9t6eQlcbRXv0PB132Pk5hTPdUStJkQ0QVnYM6D
         eEjkRuSkCxUIU2TcgdxnK7IPVrbNHXO5yzEQU7qdUxLYOOdoBWqq51rDgGcq4YFfpMCa
         zSVg==
X-Gm-Message-State: AAQBX9f4nzNTUAzV8sT6eMAXW9W56XAC5wJp1LN86Y0PjHChAz959d/I
        sraoVSsCoBjl8gyw3AEX6FfxZBWgMo+rO05XuUk=
X-Google-Smtp-Source: AKy350ZNsIAk014vVyiA+ENqpAdTjA4YnCOsxvPnckQXB3hSs5cif9j2X311ZrDe+GsZi/AQz0EZOw==
X-Received: by 2002:ac2:550b:0:b0:4e8:893f:8079 with SMTP id j11-20020ac2550b000000b004e8893f8079mr4108605lfk.64.1681309979982;
        Wed, 12 Apr 2023 07:32:59 -0700 (PDT)
Received: from [192.168.1.101] (abxj23.neoplus.adsl.tpnet.pl. [83.9.3.23])
        by smtp.gmail.com with ESMTPSA id w20-20020ac24434000000b004cb14fa604csm3047038lfl.262.2023.04.12.07.32.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 07:32:59 -0700 (PDT)
Message-ID: <dd8782fd-f75f-2995-01f8-2faa4ccdff0a@linaro.org>
Date:   Wed, 12 Apr 2023 16:32:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: qcom: Add RPM Master stats
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230405-topic-master_stats-v2-0-51c304ecb610@linaro.org>
 <20230405-topic-master_stats-v2-1-51c304ecb610@linaro.org>
 <20230412142232.GA2305202-robh@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230412142232.GA2305202-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.04.2023 16:22, Rob Herring wrote:
> On Thu, Apr 06, 2023 at 04:49:17PM +0200, Konrad Dybcio wrote:
>> The RPM MSG RAM contains per-RPM-master (e.g. APPS, ADSP etc.) sleep
>> statistics. They let one assess which core is actively preventing the
>> system from entering a true low-power mode.
> 
> Just curious, is that a debug thing or something the OS uses?
Debug, pretty much the only way of knowing how deep the sleep
was other than shoving a multimiter under the chip and checking
if the power rails went off.. :/

> 
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../bindings/soc/qcom/rpm-master-stats.yaml        | 53 ++++++++++++++++++++++
> 
> qcom,rpm-master-stats.yaml
Ack

Konrad
> 
>>  1 file changed, 53 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/qcom/rpm-master-stats.yaml b/Documentation/devicetree/bindings/soc/qcom/rpm-master-stats.yaml
>> new file mode 100644
>> index 000000000000..d2d6a2a39fef
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/soc/qcom/rpm-master-stats.yaml
>> @@ -0,0 +1,53 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/soc/qcom/rpm-master-stats.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Technologies, Inc. (QTI) RPM Master Stats
>> +
>> +maintainers:
>> +  - Konrad Dybcio <konrad.dybcio@linaro.org>
>> +
>> +description:
>> +  Per-RPM-Master (e.g. APSS, ADSP, etc.) sleep statistics.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,rpm-master-stats
>> +
>> +  qcom,rpm-msg-ram:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description: Phandle to an RPM MSG RAM slice containing the master stats
>> +    minItems: 1
>> +    maxItems: 5
>> +
>> +  qcom,master-names:
>> +    $ref: /schemas/types.yaml#/definitions/string-array
>> +    description: RPM Master name
>> +    minItems: 1
>> +    maxItems: 5
>> +
>> +required:
>> +  - compatible
>> +  - qcom,rpm-msg-ram
>> +  - qcom,master-names
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    stats {
>> +      compatible = "qcom,rpm-master-stats";
>> +      qcom,rpm-msg-ram = <&apss_master_stats>,
>> +                         <&mpss_master_stats>,
>> +                         <&adsp_master_stats>,
>> +                         <&cdsp_master_stats>,
>> +                         <&tz_master_stats>;
>> +      qcom,master-names = "APSS",
>> +                          "MPSS",
>> +                          "ADSP",
>> +                          "CDSP",
>> +                          "TZ";
>> +    };
>> +...
>>
>> -- 
>> 2.40.0
>>
