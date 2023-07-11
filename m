Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C14474F2DA
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 16:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230394AbjGKO7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 10:59:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230119AbjGKO7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 10:59:08 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 197DBA0
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:59:06 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f95bf5c493so8701532e87.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 07:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087544; x=1691679544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/BBSi3Y2p51GXr/kdqXZWgeltZiMvocxuPhmv54PXCk=;
        b=m+crFpHVwUmNM1IevtAkCKRHO2NdXi4Nv5/sUrEBbC/6G0nqVk8jGFXEAycB2kX3/L
         yvpyGo1nZPsvQ4GyyX94zgLaMZrnPUkVphABTvta+rc1eml+Om6KmMMO4if+VkCc8nnE
         RZE1XinaqSkpC3X7oR2fPKc479VXNwDGzIsXrzYOrRVxNtPGrJ7S2R6gHn0TFLuVKh0C
         g18BnSXimKeLS0zSqaCI37EeNROn24C5wMu4bX6B61wwlkKwyDqcfqCGMWfVui+WP4co
         73Qj8z6Gln/VVpK0hrN3zfZDaXosWyu5cy62er1WWnY1FcXuqsNq0aeer9cm3PdNkqGK
         nScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087544; x=1691679544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/BBSi3Y2p51GXr/kdqXZWgeltZiMvocxuPhmv54PXCk=;
        b=Z2i8ado2Tbk8T2sOKx4EAOkJ11y3ON+5P3B2Wy+T6Bh5u8vw7TOl00YXRWuw/NqRtN
         AFUtTtwo5C805EIgpOsE3GeCvcNwCh2c/HUMBxBMVL352L62wtA2/UT7zyKOnEd2ZNtV
         lFciG1rVWqfNxl0lixF/vyttvWJDiYF6vCwnmX55tB7motvEI4O15Anm4ZTBU2AufvtX
         o1IHwFlKz2Vftdm3Uta8maMHBsMHIBV9+JJkHNNV3blDgFeD6MMt8mdA5zNnXKvobcSM
         U2HLexoB01H5lC6N89eBPzQU5JzSN5RlKhoyKtnj+/T4Tu7CFWUyuC5rMDmFwlA2h9TE
         emLg==
X-Gm-Message-State: ABy/qLYwEU6xe2njWdtJVbeS4azWn2IV+XvBGGjXvEkINqRCn3gtqEJG
        AO0mupx/fiLUqRDMRtYMB8dlSg==
X-Google-Smtp-Source: APBJJlEmv479eisRoP1W7B2jI6/9ZRK/5ke7XvBE3vPvencrHGUfD1y6xArNgZUCsv/KhIU2Uxl+bg==
X-Received: by 2002:a05:6512:128a:b0:4f8:5ab0:68c4 with SMTP id u10-20020a056512128a00b004f85ab068c4mr16389336lfs.59.1689087544345;
        Tue, 11 Jul 2023 07:59:04 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id j14-20020a19f50e000000b004f7618c67a7sm349351lfb.76.2023.07.11.07.59.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 07:59:03 -0700 (PDT)
Message-ID: <4330df82-77a9-27ce-3f24-144718cc082e@linaro.org>
Date:   Tue, 11 Jul 2023 17:59:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 1/3] dt-bindings: power: rpmhpd: Add Generic RPMh PD
 indexes
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <1689054169-10800-1-git-send-email-quic_rohiagar@quicinc.com>
 <1689054169-10800-2-git-send-email-quic_rohiagar@quicinc.com>
 <2040226e-9b45-b409-3edd-a5b86d86daa8@linaro.org>
 <8a3124ce-a11d-2491-eaee-1695cec70b17@quicinc.com>
 <e885383b-a231-75a1-32ce-bf850f0cb022@linaro.org>
 <8c3468f0-3069-95e3-e2f1-279fca78a578@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <8c3468f0-3069-95e3-e2f1-279fca78a578@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 14:44, Konrad Dybcio wrote:
> On 11.07.2023 08:22, Krzysztof Kozlowski wrote:
>> On 11/07/2023 08:17, Rohit Agarwal wrote:
>>>
>>> On 7/11/2023 11:22 AM, Krzysztof Kozlowski wrote:
>>>> On 11/07/2023 07:42, Rohit Agarwal wrote:
>>>>> Add Generic RPMh Power Domain indexes that can be used
>>>>> for all the Qualcomm SoC henceforth.
>>>>>
>>>>> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
>>>>> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>>>>> ---
>>>>>    include/dt-bindings/power/qcom-rpmhpd.h | 30 ++++++++++++++++++++++++++++++
>>>>>    1 file changed, 30 insertions(+)
>>>>>    create mode 100644 include/dt-bindings/power/qcom-rpmhpd.h
>>>>>
>>>>> diff --git a/include/dt-bindings/power/qcom-rpmhpd.h b/include/dt-bindings/power/qcom-rpmhpd.h
>>>>> new file mode 100644
>>>>> index 0000000..4da2e04
>>>>> --- /dev/null
>>>>> +++ b/include/dt-bindings/power/qcom-rpmhpd.h
>>>> Filename based on compatible.
>>> This is not specific for SDX75. These are generic ones that should be
>>> used for all other targets.
>>> Konrad suggested in v1 to avoid target specific prefixes everytime and
>>> to create a new generic
>>> dt-bindings that can be reused.
>>>>> @@ -0,0 +1,30 @@
>>>>> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>>>>> +/*
>>>>> + * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
>>>>> + */
>>>>> +
>>>>> +#ifndef _DT_BINDINGS_POWER_QCOM_RPMHPD_H
>>>>> +#define _DT_BINDINGS_POWER_QCOM_RPMHPD_H
>>>>> +
>>>>> +/* Generic RPMH Power Domain Indexes */
>>>>> +#define CX               0
>>>> These are very generic names, usually not used in global headers. Please
>>>> use some reasonable prefix.
>>> This was based on the suggestion from Konrad in v2 to drop the RPMHPD
>>> prefix and we can go only with names like CX, etc.
>>
>> I don't think having so generic name in tree-wide header is good idea.
> Conversely, I think that it would be very clear in files including this header.

It is expected to be included into dtsi and into rpmhpd driver (only). 
However I'd also suggest adding some generic prefix (e.g. RPMHPD_CX). 
Just `CX' is too short and has a sensible possibility of getting  a 
symbol conflict.

> 
> Konrad
>> CX can mean anything.
>>
>> Best regards,
>> Krzysztof
>>

-- 
With best wishes
Dmitry

