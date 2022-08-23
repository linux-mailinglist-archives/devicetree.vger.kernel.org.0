Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9F1459E410
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 15:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241777AbiHWN1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 09:27:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238860AbiHWN0k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 09:26:40 -0400
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06DD3151419
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:26:36 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id l1so18506696lfk.8
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=1E0cCe5cEaQJfe86WNnJmjkEbqjIELBXQL3k/KZdD48=;
        b=QSA3yhWCG+SVJuohL5IMAtHe2qODfXcRxnbjC0pXCGrCLc01hGLKlYJjItBNEgYh4P
         2oqodZ1jRtDXD5Oc3bAfumtqxB5IQ6YdRiiPRZ7OrrnwI3Pu4U3mMOjhhgnvx877F1ch
         jtf1HReSx9JOob/Orgo1zPyhaK2lJsT7nxaXQsiraZ8a68CQwQp1q4W8+7L3CTN6YwC9
         f8XJY2cEoQvDXtcfWF/QPBl1q54iQfuUwh4R3Gb7chQMxLr07oGYnUKawwkyE/qfQQIZ
         I640N+no44vjt4uJ172x7uqbiH+3N1d2WMGNnw+9A4G9Drc3v+qgsFLUOQuUs4rUYPET
         b7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=1E0cCe5cEaQJfe86WNnJmjkEbqjIELBXQL3k/KZdD48=;
        b=y3IZGmjMPQCWY0lx3V1HfoUDavxAiKAlxY4xaHGk7w0dHmn1WlUBO+vQz+Buhr1wvF
         8oFR4MFM/PyI/TMf25vwV6EppO4JiEvCN+IIwnnCyx47ZS1Igexm6B9aTjDiNioS3tBW
         iYZCkd4O1OY054SehPRpUzGB2PnKjYdiAkSJ59KJq9aC4KDkUjTV/KDiuSg96W/1ep8l
         PjJ5SMokKY5e/HA1Q5AiuJ5CtaKKWZ1jwKwIeZAgUJyYZ96ZA7Zdyavhg6jMFKpdmI3y
         ylgpwaJ8DjY82YuCm7a+FY9TEZbikaZmFUW+9l8KVo8rsM1d4G1gldeyYR82sV5AWWVp
         Y+jw==
X-Gm-Message-State: ACgBeo0CztJjjUIm/mLecPMr3ZA9VO5Y4XMTjYyQls6f2vUX0PHEz6tx
        hKnwwJfPMlMl8KihCP3IfA/SCA==
X-Google-Smtp-Source: AA6agR6el3uDAHqHIosEoBa7BJJVdeCX9cSrpx/F0nnzHgPz/5FfAVCMOm6iQIFk/R8G13WzCYBggA==
X-Received: by 2002:a05:6512:3e25:b0:492:db16:4636 with SMTP id i37-20020a0565123e2500b00492db164636mr4317221lfv.657.1661250271586;
        Tue, 23 Aug 2022 03:24:31 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id o3-20020ac24e83000000b00492d7a7b4e3sm1655294lfr.4.2022.08.23.03.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 03:24:31 -0700 (PDT)
Message-ID: <bee8abe5-0299-d05e-643c-4810aa33f978@linaro.org>
Date:   Tue, 23 Aug 2022 13:24:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <816ecf6287533137b750c8bde9de5830e4229c56.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2022 10:07, Chunfeng Yun wrote:
> On Fri, 2022-08-19 at 15:15 +0300, Krzysztof Kozlowski wrote:
>> On 19/08/2022 12:13, Chunfeng Yun wrote:
>>> Add a property to set usb2 phy's pre-emphasis.
>>>
>>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>>> ---
>>>  Documentation/devicetree/bindings/phy/mediatek,tphy.yaml | 7
>>> +++++++
>>>  1 file changed, 7 insertions(+)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>> b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>> index 848edfb1f677..aee2f3027371 100644
>>> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
>>> @@ -219,6 +219,13 @@ patternProperties:
>>>          minimum: 1
>>>          maximum: 15
>>>  
>>> +      mediatek,pre-emphasis:
>>> +        description:
>>> +          The selection of pre-emphasis (U2 phy)
>>> +        $ref: /schemas/types.yaml#/definitions/uint32
>>> +        minimum: 1
>>> +        maximum: 3
>>
>> Instead of hard-coding register values in bindings, you should rather
>> describe here feature/effect. If it is in units, use unit suffixes.
>> If
>> it is some choice, usually string enum is appropriate.
> How about changing description as bellow:
> 
> "The level of pre-emphasis, increases one level, boosts the relative
> amplitudes of signal's higher frequencies components about 4.16% (U2
> phy)"
> 

Still the question is what is the unit. 4.16%?

Best regards,
Krzysztof
