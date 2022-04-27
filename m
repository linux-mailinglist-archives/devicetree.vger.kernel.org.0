Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81A70511501
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 12:47:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230126AbiD0KuM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 06:50:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbiD0KuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 06:50:09 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B194F43AE13
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 03:20:55 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id w19so2262279lfu.11
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 03:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+uQXRxF8+iECYsyuX3FAGjlPg6lPCQesnoPfKb3uAD0=;
        b=kXbjCRl/9jCP6u+NnPcF+Y+vLZZ93vjJjPpewfEem9AN45JCCBgFIYmupbdh+RCrDn
         DfFERC8GbtZ7/LuJ3cwY+2TQ3N/16e3duX+/vbSsSZZfSEKEsClf93+aAu13KB5ccIVo
         K0Nk1jsbzBUv8hgDNnQGwDyIVtNqazsdhYBhfXcpsrZThCGdxtNa6My9UJie4OOCr85T
         7h/tLCHC3svkj6kedl/5rD8vmKNyBVKrhg+TOFtKiaU2G0j5J5SH7BvGpjNCjntKaMdN
         9T8DoOGrmKRBiBISkgr/2kahjg8prXsa5Mmh/UDQWyncfeXG4lRvGE7YABwkArrdn3ql
         0UWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+uQXRxF8+iECYsyuX3FAGjlPg6lPCQesnoPfKb3uAD0=;
        b=rb0PqvN3U75Yc+IRZPid2EWNQsHE11upqX8JooX+F8Z1Rl10lL4Zy6X/dUnAsm2pKx
         Pz5YHGHNB19VTZc6lXsBjhkTmwljYhYMOIsPTy8jlzCYFjqHk4RwURLTJaw2zrptumKT
         UICZAsrZXiCkjrLrhOBZ0APg1BxF5qyj4WQInnZ1QlEbkjYJm7Drmtxm2HPaHxzCT2YH
         HWTJzS/P2kaQBRynkSv+3bBCNEmKGlAoPJrwF/VFbmG8Krjq5XGy+tA4wznQK+gwgoXA
         Zu7q+MrMa6D18rIO5TJVysISOd51d7SDHPHR/PEnKWJzUmj9SGWU0mTzzJko8R2wgisj
         efjA==
X-Gm-Message-State: AOAM531iOq2VkefRqHoQKZob+V8eWOYOSg/xSx71JQawMRMkDPftEWWU
        ojTqcRMk5BE5MUuFQDTrEVD4XxjKMkToJw==
X-Google-Smtp-Source: ABdhPJwH2qoOAKjvHzPASguxWPUSxx7wD6r6JTmOguOcxLLGBTjoSo5P0ASVcbtW8KFZbarsO1KlnQ==
X-Received: by 2002:aa7:d916:0:b0:425:d75f:ae68 with SMTP id a22-20020aa7d916000000b00425d75fae68mr20198174edr.270.1651052384008;
        Wed, 27 Apr 2022 02:39:44 -0700 (PDT)
Received: from [192.168.0.253] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p27-20020a50cd9b000000b00425d5219372sm6378024edi.50.2022.04.27.02.39.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 02:39:43 -0700 (PDT)
Message-ID: <0c63c24a-8014-2491-095c-77893d2141d9@linaro.org>
Date:   Wed, 27 Apr 2022 11:39:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/1] dt-bindings: nvmem: mediatek: Convert mtk-efuse
 binding to YAML
Content-Language: en-US
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Lala Lin <lala.lin@mediatek.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>,
        Ryder Lee <ryder.lee@kernel.org>
References: <20220425084800.2021-1-allen-kh.cheng@mediatek.com>
 <20220425084800.2021-2-allen-kh.cheng@mediatek.com>
 <e64bdca8-7b18-b450-830c-ca07946a73fb@linaro.org>
 <9d65b713e3ffdd34dcca532c4c97fa98b124bde4.camel@mediatek.com>
 <0169c4ac-fdce-29b7-553a-14dc7df532d1@linaro.org>
 <a8e212a0e0449e015a33e76b320266376d4b9be6.camel@mediatek.com>
 <89609af9-5feb-0553-5e39-c97c4750b5a1@linaro.org>
 <33c754a7b6e4cd631bb2aeef002d34a6c25d6689.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <33c754a7b6e4cd631bb2aeef002d34a6c25d6689.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 11:28, allen-kh.cheng wrote:
> Hi Krzysztof,
> 
> On Tue, 2022-04-26 at 12:14 +0200, Krzysztof Kozlowski wrote:
>> On 26/04/2022 12:02, allen-kh.cheng wrote:
>>> Hi Krzysztof,
>>>
>>> On Tue, 2022-04-26 at 08:31 +0200, Krzysztof Kozlowski wrote:
>>>> On 26/04/2022 08:23, allen-kh.cheng wrote:
>>>>>>> +properties:
>>>>>>> +  compatible:
>>>>>>> +    oneOf:
>>>>>>> +      - enum:
>>>>>>> +          - mediatek,mt8173-efuse
>>>>>>> +          - mediatek,efuse
>>>>>>
>>>>>> Still no changes...
>>>>>>
>>>>>
>>>>> I just want to confirm again.
>>>>>
>>>>> "Generic compatibles should not be used standalone"
>>>>>
>>>>> It seems we should remove mediatek,efuse and keep
>>>>> "mediatek,mt8173-
>>>>> efuse"in binding. have I got that right?
>>>>
>>>> You should comment for which chipsets this compatible is and add
>>>> a
>>>> deprecated:true. In such case it cannot be part of enum but
>>>> separate
>>>> item in this oneOf.
>>>>
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>> Thanks for your suggestions, I would plan to send PATCHs as below,
>>>
>>> We have a PATCH 01 for current accepted dts
>>>
>>> properties:
>>>   compatible:
>>>     oneOf:
>>>       - enum:
>>>         - mediatek,efuse
>>>
>>>         - mediatek,mt8173-efuse
>>>         description: Only mt8173-efuse
>>> with generic fallback should be used
>>>       - items:
>>>           - enum:
>>>     
>>> - mediatek,mt7622-efuse
>>> 			  ...
>>>           - const: mediatek,efuse
>>>
>>> Then add PATCH 02 to deprecate it
>>>
>>> properties:
>>>   compatible:
>>>     oneOf:
>>>       - enum:
>>>         - mediatek,efuse
>>>         - mediatek,mt8173-efuse
>>>         deprecated: true
>>>         description: The mediatek,efuse is a generic fallback for
>>> other
>>> Chipset. Do not use the single compatible such as mediatek,efuse
>>> or mediatek,mt8173-efuse. It is deprecated.
>>>       - items:
>>>           - enum:
>>>               - mediatek,mt7622-efuse
>>>               ...
>>>           - const: mediatek,efuse
>>>
>>>
>>> PATCH 03 for 8173
>>>
>>> update mt8173.dtsi 
>>>
>>> change compatible from "mediatek,mt8173-efuse" to "mediatek,mt8173-
>>> efuse", "mediatek,efuse";
>>>
>>>
>>> Do you think it'd be okay ?
>>
>> The idea is correct, but as I said it cannot be part of enum, but
>> separate item in oneOf. You should see an error when testing your
>> patch.
>>
>>
>> Best regards,
>> Krzysztof
> 
> I have tested 
> make DT_CHECKER_FLAGS=-m dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/nvmem/mtk,efuse.yaml
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/nvmem/mtk,efuse.yaml
> 
> Is the following correct as final version ?

Almost :)

> 
> properties:
>   compatible:
>     oneOf:
>       - const: mediatek,mt8173-efuse
> #Don't use this in new dts files

This compatible above is correct for mt8173, isn't it?

>         deprecated: true
>       - const:
> mediatek,efuse
>         deprecated: true
>         description:
>          
> Please use mediatek,efuse as fallback.

Description does not match. This should be something like:
"MediaTek efuse for MT8173. Deprecated, use mediatek,mt8173-efuse instead"



Best regards,
Krzysztof
