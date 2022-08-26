Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F97A5A209B
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 08:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbiHZGBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 02:01:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbiHZGBA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 02:01:00 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B28657172F
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:00:58 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id w22so614405ljg.7
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=nDZVesFXddarkTaO2PA9nQ20GY/V4xAFzvSCPY7Wnj0=;
        b=j5oQAwIxuea58HyRNpET7/xznT0mjaPhNghy8AEyiJFFBuy+HUAowG6h1mFoIJKjcb
         OKSYd+mtTbuAm2IoZFlXJg2qETwQaKo7kYmQCWtDRgD39scqeuZ7XSzUU/E2Urf/2jHc
         fVNCBFKK3Zkjv5pYyA7DxyqN1twRbp4QWUrMkUXbeQaZV1NZKUcQROJ/hGamB1LvTTr4
         //krh/SjX67zOMzqTVDY9BTCVUJ+8CKXDQXEuNq4lMRI4B1Agwmlsxf5fKGDRBDwKZYX
         OgPYMhzGxt2iSyZwNNd+8qv8mCLTmNvEindr1GH/axHxcDxMXp3P+tCclCrL4lZA7ZhH
         DV5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=nDZVesFXddarkTaO2PA9nQ20GY/V4xAFzvSCPY7Wnj0=;
        b=OMki/DseJTugNH2gMXbUWb2myQKIPyPeY8Y7J3qtDb2JfOSfE4WMmoRh9LprxtHHt+
         egqkybCX57ybPEwJvEx1cbBOhBKfF/4c8B6B4LBVqK6j+bBlqhWhqSH8PKmGEUgVPql1
         06QPLoc8YbQEDgzZu1hqgNO8dic9zq9y1Mvp7SNzT5SccPyd9Us32IcFid9XMhCxctp6
         ghjmRMov7nl3DLRYvSHzqkUKfp3UNw5kORfr/jUTQU1s7YnMKSrXS30OThlU19XoZpup
         YwLO0zJZUsxVfpX1+LXcwvJQKFCNJAF6kJFV0wVdQS3ZzKu6yEh4QpEFJ0F9paJumKRo
         qTyw==
X-Gm-Message-State: ACgBeo0Q+ti7v7OnjW58d+qix6mmtYdMbkp3znOnyr/RsDEa9CCzhpV0
        jq2jXvNm8GSi8kCLnQnL3+YUs/EylMKD45A/
X-Google-Smtp-Source: AA6agR7P5dxAQtQal7mgT7x9JK5Vcuh9XEl1gaUARArlOkG14zQO6zC7b2baHw6MdW01ufA6jbqnRA==
X-Received: by 2002:a2e:93c8:0:b0:261:e5a7:56ed with SMTP id p8-20020a2e93c8000000b00261e5a756edmr1920793ljh.483.1661493657080;
        Thu, 25 Aug 2022 23:00:57 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id k10-20020a2eb74a000000b0025e42b981f9sm311447ljo.44.2022.08.25.23.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 23:00:56 -0700 (PDT)
Message-ID: <c5a8db13-5625-96f4-b531-5d4407ab3e15@linaro.org>
Date:   Fri, 26 Aug 2022 09:00:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20220823184242.3554472-1-jagan@edgeble.ai>
 <2b1ebdad-b407-6867-4caf-2f2f5e1528bb@linaro.org>
 <CA+VMnFyeUS_DsmGY4sVSLkk9XX5eHo89ZoUCrRr3UeoUfK6iHQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CA+VMnFyeUS_DsmGY4sVSLkk9XX5eHo89ZoUCrRr3UeoUfK6iHQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 22:40, Jagan Teki wrote:
> On Wed, 24 Aug 2022 at 19:09, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 23/08/2022 21:42, Jagan Teki wrote:
>>> Chongzhou is a professional is a manufacturer of LCD panels
>>> from Shenzhen.
>>>
>>> Add vendor prefix for it.
>>>
>>> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
>>> ---
>>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>> index 2f0151e9f6be..e8ee5084cb89 100644
>>> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
>>> @@ -244,6 +244,8 @@ patternProperties:
>>>      description: ChipOne
>>>    "^chipspark,.*":
>>>      description: ChipSPARK
>>> +  "^chongzhou,.*":
>>> +    description: Shenzhen Chongzhou Electronic Technology Co., Ltd
>>
>> Maybe there are some transliteration differences, but isn't this
>> "Changzhou" (o->a)?
> 
> Not sure it is 'a'
> 
> It is clearly mentioned in the datasheet as
> 
> 深圳市崇洲电子科技有限公司
> Shenzhen Chongzhou Electronic Technology Co., Ltd

That's exactly what Google Translate proposes :)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
