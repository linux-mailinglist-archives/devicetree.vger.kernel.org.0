Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 254196FD784
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 08:55:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236226AbjEJGz5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 02:55:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236194AbjEJGzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 02:55:53 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F5B759E3
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 23:55:36 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50b37f3e664so12209126a12.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 23:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683701735; x=1686293735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GBw2Sqyvf9cbRwd55kMhKh45cDskQ06myM8oAKc/ol0=;
        b=NyOR4oceBOxsHylgbZwmmbiEW0vMLE9kkHphSodX11FpmzRe5u7ApHWP2gm0+NsQQe
         wNuqhtiteCO3bZOKccBy6ltEeZWkWsKjJCQ8EahyhTrtaQ9jVDJlsTQFWIx516V+oMHq
         9CrVIgRhgFNRR+u5rF7SXU3jJ757xUdWbKTxHUcu6dlopFOPDgsRklkTTjMVCxQ3FsSP
         34ddTEDpGhwS9RwAuVIREw0BJYNdN4OW92m09D1CjY+pVeV6fAiZnoA4LZ3Cg+1cPTNx
         g7dSBWSBbLDQ313oFxs9//Cyai517wHnaYBF2VspvtmQca6DQo4dahuAxHB15dHad6mF
         PoYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683701735; x=1686293735;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GBw2Sqyvf9cbRwd55kMhKh45cDskQ06myM8oAKc/ol0=;
        b=g/nDXZUClNUER+d0KX01KYvNTPNllQlU9AhXPHDdZ76aVFLZ/T0WlaW1TStLWr+/tQ
         BjqQEBO29kipLfwgHhryprSVx/rPIoAvQlsSmTMdhSjVo/9kXonmcdTqn75t84LWWu4p
         L/Y1eq3o67rZLSFYw6w2eUnsS+8n5xDtKxENWDJ8ABn78SEiv/QCx0nfzWTTHB+CE4n9
         Xgtso4ZxtVBj3rTHMbDuDff72lCWcOGys/PGYsAu0dmBOaDp5OUKPfvec3Y1u260SKYd
         nm0Af9PKOHr8RYeaZfaL0uBzI+gMcHVAXncvMMgPsWfJrrvExYM+tVNBo+msA3mHaBMt
         GC5A==
X-Gm-Message-State: AC+VfDyPxLX+iXGgowPkfAG1S7I5wHdsFxRkVEyUf8CLp5uYJpEFlmgC
        95A0ydzC/U9MHjtGOcFQJvv5Zw==
X-Google-Smtp-Source: ACHHUZ6f++C50lQ2lBm4wvuCiuGRqyrj6QN7U53NChRqn4x9MlxM9o82i80SlGFs+4dwbPtBWlqoRw==
X-Received: by 2002:a17:906:9c83:b0:95f:4889:412a with SMTP id fj3-20020a1709069c8300b0095f4889412amr16269448ejc.33.1683701734707;
        Tue, 09 May 2023 23:55:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id e2-20020a50fb82000000b00509e3053b66sm1513562edq.90.2023.05.09.23.55.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 23:55:34 -0700 (PDT)
Message-ID: <c9eea8ec-b289-334c-9c0b-7c992184a265@linaro.org>
Date:   Wed, 10 May 2023 08:55:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: pm7250b: make SID configurable
To:     Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230407-pm7250b-sid-v1-0-fc648478cc25@fairphone.com>
 <20230407-pm7250b-sid-v1-2-fc648478cc25@fairphone.com>
 <f52524da-719b-790f-ad2c-0c3f313d9fe9@linaro.org>
 <CSIE9TYTQUHL.3E769C2Y4RAAO@otso>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CSIE9TYTQUHL.3E769C2Y4RAAO@otso>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 08:47, Luca Weiss wrote:
> Hi Krzysztof,
> 
> On Fri Apr 7, 2023 at 10:27 AM CEST, Krzysztof Kozlowski wrote:
>> On 07/04/2023 09:45, Luca Weiss wrote:
>>> Like other Qualcomm PMICs the PM7250B can be used on different addresses
>>> on the SPMI bus. Use similar defines like the PMK8350 to make this
>>> possible.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/pm7250b.dtsi | 23 ++++++++++++++++-------
>>>  1 file changed, 16 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>>> index daa6f1d30efa..eeb476edc79a 100644
>>> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
>>> @@ -7,6 +7,15 @@
>>>  #include <dt-bindings/interrupt-controller/irq.h>
>>>  #include <dt-bindings/spmi/spmi.h>
>>>  
>>> +/* This PMIC can be configured to be at different SIDs */
>>> +#ifndef PM7250B_SID
>>> +	#define PM7250B_SID 2
>>
>> Drop indentation, although anyway I am against this. Please don't bring
>> new patterns of this at least till we settle previous discussion.
>>
>> https://lore.kernel.org/linux-arm-msm/46658cbb-fff5-e98b-fdad-88fa683a9c75@linaro.org/
> 
> What's the outcome of the discussion? For this PMIC it's totally enough
> to have the SID configurable like in this patch, I don't think this PMIC
> will be included twice in a board - at least I'm not aware of such a
> configuration.

We did not reach consensus and I still disagree with complex macros or
macros depending on order of inclusion.


Best regards,
Krzysztof

