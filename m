Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 399C77124AB
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 12:30:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243209AbjEZK3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 06:29:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243230AbjEZK3q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 06:29:46 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22A0E119
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 03:29:43 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2afb2875491so5557201fa.1
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 03:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685096981; x=1687688981;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jiS9iHXCNDD3l5v3ycpvVXx+e/hAWgffv3FWQpgB8yU=;
        b=TbYqScfDcWw/J88rETR+ljuTY3czF9ItUWnfkdxIYjjd7BLfvFGlv7ekEGgaqZlzfC
         N6XKRbYdAwPiyduuoEzUFBNuK//JEWSrJOnI++Zy4frUdn3116lVoXtRO4+KhTsTvIQ2
         KV2Eo0qAe0OH6POK5VHuw8wNmBw1PrEJ/mAdZBicbdVNSK3CM8Jg34cW2hLdQmFOyXkB
         Lbquz0ke0p/zuOaxObexhxt90/y7KJyE8JUYxvNqcpHDMK2QVr5N7DrZBMEtVIsL9J68
         hxOL1nzrW0lMwsA8NmU8sUwhdxvxwk2Mqd6ub4/qemfZwOPy5kj6SXaameAZCo6opZwF
         QOIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685096981; x=1687688981;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jiS9iHXCNDD3l5v3ycpvVXx+e/hAWgffv3FWQpgB8yU=;
        b=I5vZq5TOgAudl2dKTNKjpdYzmpeXuTAwb3nSMbIsHJmTqpNeSfxGd+MSxC6UTSDtBD
         a5aHk8kwmtyBgzQn0N6nKZIsAk7jf62kteCp0M4O3iyA7PxjJgBbXSTmNy0kHKo34r5z
         bV4kqDLMjwv7njpg6DiVQYItW0msctfHarXqVHPp3aylJ0ZuBMXCHQH8leTnaayc51Ch
         nnP9xq7OWKukcKNyrGsZyiAHEklqbM2OdHn7lLKyjzUZd2ql+HhzN+mntYwPxaagPXlh
         cseGad6Ayb7zWWY0oc2G59Glo2suq0936+fKISerkPIcCm7hEDRdyAtetFJjB/MeoARO
         K4aw==
X-Gm-Message-State: AC+VfDwYB9nyoU5Zws2g5UQhpEbaXPEfx2Tgp9ron+D/dkoHKBEoTH/W
        CalPIrEmDx1x5cX+GuSBcPxt5Q==
X-Google-Smtp-Source: ACHHUZ6nrMnyF62iub5Hm9e7eRdsaCzvfCsZnOqAW+nS7Y0F5F5LnN+i10n/EylDiJfTM0oEYJS9DQ==
X-Received: by 2002:a2e:7806:0:b0:2a8:eae2:d563 with SMTP id t6-20020a2e7806000000b002a8eae2d563mr637548ljc.53.1685096981200;
        Fri, 26 May 2023 03:29:41 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id e11-20020a2e984b000000b002a9ebff8431sm657828ljj.94.2023.05.26.03.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 03:29:40 -0700 (PDT)
Message-ID: <af725aab-5083-2f71-27a6-e1800fba293a@linaro.org>
Date:   Fri, 26 May 2023 12:29:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 4/4] arm64: dts: qcom: ipq9574: add QFPROM node
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230526070421.25406-1-quic_kathirav@quicinc.com>
 <20230526070421.25406-5-quic_kathirav@quicinc.com>
 <7d14db71-2279-e9b9-012d-47dc50fe797b@linaro.org>
 <97e06f9e-81cb-45ad-5b2a-d8de52d023f0@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <97e06f9e-81cb-45ad-5b2a-d8de52d023f0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 26.05.2023 12:24, Kathiravan T wrote:
> 
> On 5/26/2023 2:49 PM, Konrad Dybcio wrote:
>>
>> On 26.05.2023 09:04, Kathiravan T wrote:
>>> IPQ9574 has efuse region to determine the various HW quirks. Lets
>>> add the initial support and the individual fuses will be added as they
>>> are required.
>>>
>>> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 7 +++++++
>>>   1 file changed, 7 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>>> index 1a2c813ffd43..715fe51ff567 100644
>>> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>>> @@ -117,6 +117,13 @@
>>>           #size-cells = <1>;
>>>           ranges = <0 0 0 0xffffffff>;
>>>   +        qfprom: efuse@a4000 {
>>> +            compatible = "qcom,ipq9574-qfprom", "qcom,qfprom";
>>> +            reg = <0x000a4000 0x5a1>;
>> That's an odd size. Are you sure this is how long the corrected region is?
> 
> 
> Yes, As per the HW document, this is the size.
Thanks for confirming

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> 
> 
>>
>> Konrad
>>> +            #address-cells = <1>;
>>> +            #size-cells = <1>;
>>> +        };
>>> +
>>>           tlmm: pinctrl@1000000 {
>>>               compatible = "qcom,ipq9574-tlmm";
>>>               reg = <0x01000000 0x300000>;
