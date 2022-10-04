Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3805F402B
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 11:45:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230419AbiJDJpX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 05:45:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231222AbiJDJoe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 05:44:34 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B313458B4E
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 02:42:04 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so7197090wmb.0
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 02:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=bQ8VTDq8eb4pIbfx/V0Mkp12Y3OVg6EUxMWx5PJKwp0=;
        b=bfwcPl76SAXbwQlZ2K/QH+TCzC2MNU0bgvRo8DBLsfE/gmuwyMYQgPXABwPJ8wXP0Q
         FGO/1CoVHsfzdp+FNvcC1rMQHhiQ4ChNQ3QFB00IxspxHHqvuE0wudI84Svj8LvFR6RJ
         604rkOwcbMPr5BTCVZ1xGuLiYSz7o6RpNBbuIaNxlkQmc7dwNMbDPf3TJnu5KDgDDhLt
         6jJ/BZw40noEFwEv8EHjlOcgJaWZmSWchsQCoGIPQuiivDcTOwf7jVm2WTZgpd67C7OG
         wVaaE2aFWD797mBiRDdvZf+8RirnqdHZl3foNOwUVMksTQliqyru2zrDRaTjwSbat3j3
         22IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=bQ8VTDq8eb4pIbfx/V0Mkp12Y3OVg6EUxMWx5PJKwp0=;
        b=fK7GGwbq4qJCZRdq7KO6rQi2mm9iyUqjVTh6R9EAE+S2OLnQ+fVMcl4fV0ry5m2Z2o
         VGAN3vbQfBmqbBswaJ60Mi9sjy48JTad4FCYNxUbrdEGyKm8eX6XOB04dtcKFYHk99as
         arnWxwfft2znE0JhJDasQpJrSXwp7YfZaB3Fc2r3uMyD38LI1nxFKeFG+qgEZhHqkfIk
         Q/nIeKddg9cZfdwCRtW3aHMA6M0fxFRV5CFFBK1jWFW17nq9xxMxRLfXPWxbA1/gSb0t
         aAM9hj4AZua5kJ1uEgb2RRRxyHkp7xqtreDm0oLDUOZywrqEBfsQb/HJ5suH4y97wtRY
         5P9g==
X-Gm-Message-State: ACrzQf2jNH/VJQ2ReDeo6t01CG+IoABOqxjZMUtF6DNRHjYgf0lO9hIL
        jsyG+9AFWJYQ40tKr3az+RRLWQ==
X-Google-Smtp-Source: AMsMyM5CKOGttNNwEf/4oXMY7HJpybGxQH7bLeUC2IPBWxC8dLDvmsEGnjj5SFTncNY8tGBkkW8kVQ==
X-Received: by 2002:a7b:cb91:0:b0:3b4:75b9:5a4b with SMTP id m17-20020a7bcb91000000b003b475b95a4bmr9303932wmi.33.1664876523143;
        Tue, 04 Oct 2022 02:42:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:58f1:548b:1390:4070? ([2a01:e0a:982:cbb0:58f1:548b:1390:4070])
        by smtp.gmail.com with ESMTPSA id m38-20020a05600c3b2600b003b4ff30e566sm3118344wms.3.2022.10.04.02.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 02:42:02 -0700 (PDT)
Message-ID: <fccda8a1-5a40-d840-bd3f-ec44b87bb575@linaro.org>
Date:   Tue, 4 Oct 2022 11:42:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 08/11] mfd: qcom-pm8xxx: drop unused PM8018 compatible
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-rtc@vger.kernel.org
References: <20220928-mdm9615-dt-schema-fixes-v2-0-87fbeb4ae053@linaro.org>
 <20220928-mdm9615-dt-schema-fixes-v2-8-87fbeb4ae053@linaro.org>
 <48fba67d-20f3-7e53-8b5f-01f07452b4c7@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <48fba67d-20f3-7e53-8b5f-01f07452b4c7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/10/2022 11:02, Krzysztof Kozlowski wrote:
> On 04/10/2022 10:08, Neil Armstrong wrote:
>> The PM8921 compatible is used as fallback when PM8018 is available,
>> then remove PM8018 compatible.
> 
> s/then/so/
> 
> But it's a bit confusing because PM8018 is not "available". It is
> "present" or "is" instead, so rather:
> "The PM8018 compatible is always used with PM8921 fallback, so PM8018
> compatible can be safely removed from device ID table".

Thx for the suggestion, will use this wording, same in patch 9.

> 
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 

Thanks,
Neil
