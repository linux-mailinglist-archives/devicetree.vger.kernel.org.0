Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 887FC79E2C8
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 10:58:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239133AbjIMI6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 04:58:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239100AbjIMI6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 04:58:47 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F32461997
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 01:58:42 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52f3ba561d9so1552410a12.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 01:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694595521; x=1695200321; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vc1DY5wzwzaibqui8TMdK8lO4RUiDXh6n26JHSshLyk=;
        b=WrP+POvDjg64/h/WeVg0X0lzbMZT9Ph4l/6ji1+Hp2N3KpU6/hxx/pxhdkQuaAx2LI
         kMVvt2p77T7PxvStHv1pDwgeVy2dXZaphaXtet31LLyHwsLHmO4bg4zlancKsqUGMW2p
         joKJxDzew27BGCY9iITY2S71P3NPoFJIKHxEI5zZNKScxMRiCYxhOqVLyxSqbBvWcnsA
         /vE/dxTXqbIQ9xB5L0SrdjoPTKHJqq6OJ4pcafnxgeRr1xsuc+1QmQrqREv6S10QUtWm
         heDWHh7uMVK9Mn6Yql5yQ1q+hYdjSvLE5SOpd1oPzj+yzlvBVOw74Bg1XkU79T7mgndU
         ZTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694595521; x=1695200321;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vc1DY5wzwzaibqui8TMdK8lO4RUiDXh6n26JHSshLyk=;
        b=UA0SriZygRJSJZyGsvB0WgGcvutnAHpgeHDASidblW4vhlxB5IildSSGEWrdQI0u0u
         +HXMp7fu7LccpmKvMhDzpxVng48HoUD5nm9NETvkN7OjKOFLFG7mpioSUL9aXa/sPREA
         jalS7cZJBhVZ/HC7j3gjEPfzf9KOi2WgPxY4dHbiGgcn8g8u4o0u0RH5IN0oSIwqd3qX
         10T9+ht9mecw8PiWorxGbEugupA4fcfW7eaSub2ZH2Q65q5S9wqnfWWgD+TSghlIero+
         gnA6/Gk+0FIr2OFZ08noySUngyKpMb+9rcvX2xR3Lup8KkpliPxM/p9UGZvjL5PtuSzY
         CQdA==
X-Gm-Message-State: AOJu0YxpdaPkuxBm+hAsiEo7YWQ4U9LYMM52HGwWV21nXL6OcM93723q
        OZBLpx7uVakFsignZh2FJa59Tg==
X-Google-Smtp-Source: AGHT+IGmJS6RbMoHG5npa8M9J1HCW+qcpAcwXT+onT2fFYSrjW4H0h6ONgbWtYQVCYNkV70DiYAXSA==
X-Received: by 2002:aa7:d8d0:0:b0:523:b37e:b83b with SMTP id k16-20020aa7d8d0000000b00523b37eb83bmr3001054eds.13.1694595521375;
        Wed, 13 Sep 2023 01:58:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id w7-20020aa7d287000000b0052a063e52b8sm6952013edq.83.2023.09.13.01.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 01:58:40 -0700 (PDT)
Message-ID: <c0cf592a-3cde-4bad-431b-6d80c1970638@linaro.org>
Date:   Wed, 13 Sep 2023 10:58:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v5 3/3] dt-binding: mediatek: add MediaTek mt8195 MDP3
 components
Content-Language: en-US
To:     =?UTF-8?B?TW91ZHkgSG8gKOS9leWul+WOnyk=?= <Moudy.Ho@mediatek.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
        "mchehab@kernel.org" <mchehab@kernel.org>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "hverkuil-cisco@xs4all.nl" <hverkuil-cisco@xs4all.nl>,
        "airlied@gmail.com" <airlied@gmail.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>
Cc:     "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" 
        <linux-mediatek@lists.infradead.org>,
        "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
        "angelogioacchino.delregno@collabora.com" 
        <angelogioacchino.delregno@collabora.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20230912075651.10693-1-moudy.ho@mediatek.com>
 <20230912075651.10693-4-moudy.ho@mediatek.com>
 <e4119fa6-a4b7-f59e-7115-044fa83c9063@linaro.org>
 <0b4f1ab2753d4fdb4934e8f76df6e584bba2d628.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0b4f1ab2753d4fdb4934e8f76df6e584bba2d628.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 10:39, Moudy Ho (何宗原) wrote:

>>> @@ -63,7 +64,6 @@ properties:
>>>  required:
>>>    - compatible
>>>    - reg
>>> -  - interrupts
>>
>> Why? commit msg tells nothing about it. Why interrupt is not erquired
>> in
>> mt8173? How dropping such requirement is anyhow related to mt8195?
>>
>>
> The signals of the MDP engines are completely controlled by MTK's MUTEX
> for starting and stopping frame processing, eliminating the need for
> additional interrupts.

Then it does not look like related to this patch at all.

...

>>>  
>>>    reg:
>>>      maxItems: 1
>>> @@ -50,17 +51,19 @@ properties:
>>>      maxItems: 1
>>>  
>>>    clocks:
>>> -    items:
>>> -      - description: RDMA clock
>>> -      - description: RSZ clock
>>> +    oneOf:
>>> +      - items:
>>> +          - description: RDMA clock
>>> +          - description: SRAM shared component clock
>>> +      - items:
>>> +          - description: RDMA clock
>>
>> Why now mt8183 can have SRAM clock optional? How changing mt8183 is
>> related to this patch?
>>
>> I'll finish the review, sorry fix basics here.
>>
>> Best regards,
>> Krzysztof
>>
> The RDMA of only the 8183 needed to share SRMA with other component due
> to the old desgin.
> I attempted to describe both the situation of the 8183 and new designs
> like the 8195, but it appears that this writing style may lead to
> misunderstandings.
> I am unsure if there are any ways to enhance it.

Just like many other bindings, just look at Qualcomm, use allOf to
restrict entries per variants.

Best regards,
Krzysztof

