Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74E775A20EF
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 08:37:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231578AbiHZGhD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 02:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbiHZGhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 02:37:02 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A8DC9264
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:37:00 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s1so779149lfp.6
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 23:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=QAX1Plu+eXlOZCcV0dheQHJM314EyoqCLQ+tuSBSA+c=;
        b=f2f+68BXq0Gr6vOQ54HOvpIHVEwfm/lw1PPIdnzcW3YuRvpawn0tR5O0ZLtYd9XHbr
         zW4sTu8j9uqTFmyieo0baRdk7Vexx7AKqiInoLzSXG+WmFdu9aFOFvyOr+RaUWsaAZJ+
         RTqKuu2bwnKlCgR9+h/AdfcyPipUO/fFgxvZFTID19J3+yfuNGTlFdXwkMmyLoX4IHgq
         Hwcrmi2ui/D+/p7WzlRpp0kFm/t/CMA7wKQaG9F2ZFVdHSIsVmVipZq+C5x6VMhjhRH1
         BOt0xCsHXpWy7cEOWfqFB9JZ39NALmwzb5LWjgYZRHI3qxOiaGPaq/ePP0RK6x0G19LS
         zXJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=QAX1Plu+eXlOZCcV0dheQHJM314EyoqCLQ+tuSBSA+c=;
        b=RSTRMZ3yGbB6Tdr2m+ckWGnXwH4klPoUSQVSphkjXM2NZxeeOHAVEdskwMX/DoyaRL
         oViMbegBBNY65Ej+jiUEochHmTl5CZM7IlaONUGm+YsJ4Rhgk0qf4ympkK3WgnW6T5u0
         TNd76vr0jovnt4yH7TgjzMjAU7uUOa7UyKhxYBJf3ONPHwUhzidRT/MkC+X13jjx+GyH
         GjxmAH9mHdPNsGkN0NsDfITLE/LHQG92PbW8imCQG4jzOirWW1unTRCzUMWK9U8KJK7x
         i1KOCh1buxcGj6tDrEX7QcI/QMJ/UbteaFEXVrOuSlEzv+Dmv+4LZNeXiMOzETkPwzjB
         q0Qw==
X-Gm-Message-State: ACgBeo39kPGGQR3nrAXBUuAasnUgYMfsJhS2DMtD7JayPsX3t1rEqAu3
        DRY697yPtLzuuLg0fJmJ3efuVQ==
X-Google-Smtp-Source: AA6agR4/bfI8tZVB387LlEzAXYTw1Qp2U7iaA4G1tOeXj1Eyy7DeWyKpBFjDmrpzK6EB3X5U1lCMEA==
X-Received: by 2002:a05:6512:4004:b0:492:c4f2:9451 with SMTP id br4-20020a056512400400b00492c4f29451mr1949002lfb.666.1661495819119;
        Thu, 25 Aug 2022 23:36:59 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id p16-20020ac24ed0000000b00492b1ee7489sm246608lfr.300.2022.08.25.23.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 23:36:58 -0700 (PDT)
Message-ID: <000babd8-5980-3d77-f156-324b3442cbe7@linaro.org>
Date:   Fri, 26 Aug 2022 09:36:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/7] dt-bindings: phy: mediatek,tphy: add property to set
 pre-emphasis
Content-Language: en-US
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eddie Hung <eddie.hung@mediatek.com>
References: <20220819091344.2274-1-chunfeng.yun@mediatek.com>
 <20220819091344.2274-2-chunfeng.yun@mediatek.com>
 <438da392-f419-ad76-7e91-aa4aab36e12c@linaro.org>
 <816ecf6287533137b750c8bde9de5830e4229c56.camel@mediatek.com>
 <bee8abe5-0299-d05e-643c-4810aa33f978@linaro.org>
 <1a16cce9fe164bafc06ae193310be71c6f645d75.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1a16cce9fe164bafc06ae193310be71c6f645d75.camel@mediatek.com>
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

On 26/08/2022 08:36, Chunfeng Yun wrote:
> On Tue, 2022-08-23 at 13:24 +0300, Krzysztof Kozlowski wrote:
>> On 22/08/2022 10:07, Chunfeng Yun wrote:
>>> On Fri, 2022-08-19 at 15:15 +0300, Krzysztof Kozlowski wrote:
>>>> On 19/08/2022 12:13, Chunfeng Yun wrote:
>>>>> Add a property to set usb2 phy's pre-emphasis.
>>>>>
>>>>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 7
>>>>> +++++++
>>>>>  1 file changed, 7 insertions(+)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>>>> b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>>>> index 848edfb1f677..aee2f3027371 100644
>>>>> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>>>> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>>>> @@ -219,6 +219,13 @@ patternProperties:
>>>>>          minimum: 1
>>>>>          maximum: 15
>>>>>  
>>>>> +      mediatek,pre-emphasis:
>>>>> +        description:
>>>>> +          The selection of pre-emphasis (U2 phy)
>>>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>>>> +        minimum: 1
>>>>> +        maximum: 3
>>>>
>>>> Instead of hard-coding register values in bindings, you should
>>>> rather
>>>> describe here feature/effect. If it is in units, use unit
>>>> suffixes.
>>>> If
>>>> it is some choice, usually string enum is appropriate.
>>>
>>> How about changing description as bellow:
>>>
>>> "The level of pre-emphasis, increases one level, boosts the
>>> relative
>>> amplitudes of signal's higher frequencies components about 4.16%
>>> (U2
>>> phy)"
>>>
>>
>> Still the question is what is the unit. 4.16%?
> No unit, it's a level value, like an index of array.
> 

So a value from register/device programming? Rather a regular units
should be used if that's possible. If not, this should be clearly
described here, not some magical number which you encode into DTS...

Best regards,
Krzysztof
