Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A83CB58F99C
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 10:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234810AbiHKI6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 04:58:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233839AbiHKI6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 04:58:15 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B3091D19
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:58:13 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id s9so18653803ljs.6
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 01:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=N5Ft5sVhLXeWT9idHrJs9i/WomNuOkmhDhB2xyIuVDk=;
        b=wVyaWMWBQECdMUBpp7ZCsMs+ygcvsTNhL3QyN1Hd3bVN+jIscsZW1+Sk5718mb7T+9
         5AvoXULMa/v55wb0yPGXxOKYOpF2dD8DByh6BHnnFRwEo9FTZCwL/FfnNPwdlv2EtPhK
         Q24/SOHs2lrjO5qbXSWNhq0jwyFvovuBAP59gMTjZx0wv6dD48qGNpTcGnmvRUqYcJ9I
         Txg8SUshCo8Aq0AFZu6itRg0fhDD6HS2y8ctI6VTgtGZvXurw+bJWIc+HbktjkPk1LtD
         Tr1aTOpwiSRo0M/KuHjWW09YYo5AzUEy6njjIloYn9DnAOkE1+3YkWkSzi1LnMkyWfmr
         fZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=N5Ft5sVhLXeWT9idHrJs9i/WomNuOkmhDhB2xyIuVDk=;
        b=SuYJvnR2z9xBx+CYgNnZ3sYBPFd002Kw2AdyPlc5I4QIQNn1hZI8Yr0LkXNVsAB4/E
         spBFF4qzOKszopd5l9SBObbLqEa6Rf8nRzsA02O+2MejF+QWfHbVn77NIhhA93S9ZDZD
         Hz+ga6FUtjcG4nGzuCSKvVSWfUSPh1Npi0BwHq5Go5GiDh8ro+4WDye8zBOz/vGXsdhP
         Au5OS/5OQ/VpR6TdJFKjpFQV/d3Ew49hV4g5t5Mpcf2w84WXeBtPl79HjS9esah4DiBL
         0bq3ayEod7Gz2DdBLbPABk2RnEUuYAdI+7MzZL6G0iFHKR+KLiY8301XSWzgGRObvGw6
         OT0Q==
X-Gm-Message-State: ACgBeo0/wN86Ne7o0D8Paz5OhHLvHqFRY8c6bp4SIRJPcOJURCywqPCs
        qHk/cTDA7IgvKFafe74oM6CxBA==
X-Google-Smtp-Source: AA6agR5IG/BKNBEX72bjzs3bSYNizTV99VINIDm/s2LxtwxR86KNQn9gvYNlkjqA9dNJgl+dksY4+A==
X-Received: by 2002:a2e:9e17:0:b0:25d:7654:4c6b with SMTP id e23-20020a2e9e17000000b0025d76544c6bmr10392843ljk.130.1660208292382;
        Thu, 11 Aug 2022 01:58:12 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id du14-20020a056512298e00b0048cf7e8145asm635053lfb.117.2022.08.11.01.58.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Aug 2022 01:58:11 -0700 (PDT)
Message-ID: <86ab77f5-8beb-7237-d6e2-734f52ca176b@linaro.org>
Date:   Thu, 11 Aug 2022 11:58:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2] pmic: add mt6366 regulator document
Content-Language: en-US
To:     "zhiyong.tao" <zhiyong.tao@mediatek.com>, lee.jones@linaro.org,
        robh+dt@kernel.org, matthias.bgg@gmail.com, lgirdwood@gmail.com,
        broonie@kernel.org, eddie.huang@mediatek.com, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, fshao@chromium.org
Cc:     sen.chu@mediatek.com, hui.liu@mediatek.com,
        allen-kh.cheng@mediatek.com, hsin-hsiung.wang@mediatek.com,
        sean.wang@mediatek.com, macpaul.lin@mediatek.com,
        wen.su@mediatek.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        zhiyong tao <zhiyong.tao@mediatk.com>
References: <20220728062749.18701-1-zhiyong.tao@mediatek.com>
 <20220728062749.18701-2-zhiyong.tao@mediatek.com>
 <03a13ed4-e7cd-6f7d-f8f7-9b1e6193e202@linaro.org>
 <111e1073e1ce689e289e52c645a1be2e7dc7fe12.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <111e1073e1ce689e289e52c645a1be2e7dc7fe12.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/08/2022 11:42, zhiyong.tao wrote:
>>
>>>
>>> Signed-off-by: zhiyong tao <zhiyong.tao@mediatk.com>
>>> ---
>>>  .../regulator/mediatek,mt6366-regulator.yaml  | 375
>>> ++++++++++++++++++
>>>  1 file changed, 375 insertions(+)
>>
>> Subject does not match subsystem.
> 
> Hi Krzysztof,
> 
> Do you mean that we should change the title like this:
> regulator: dt-bindings: mediatek: add mt6366 regulator document
> is it right?

Yes. And remove redundant pieces so for example:

regulator: dt-bindings: mediatek: add mt6366
or:
regulator: dt-bindings: add mediatek,mt6366


(...)

>>> +    patternProperties:
>>> +      "^buck-
>>> v(dram1|core|coresshub|proc11|proc12|gpu|s2|modem|s1)$":
>>> +        type: object
>>> +        $ref: "regulator.yaml#"
>>
>> No need for quotes.
> ==>
> We will remove the line "$ref: "regulator.yaml#"" in next verison, is
> it right?

No, it is not. Why do you want to remove it?


Best regards,
Krzysztof
