Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8620260B490
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 19:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232877AbiJXRvj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 13:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231938AbiJXRvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 13:51:16 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95577474D4
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 09:28:42 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id o2so6362223qkk.10
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 09:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tf6X2JwY5gzQNXIY/4lYcGsz+j+jvZppJXPsvhE0i5M=;
        b=JVw98DRLXqdkcB9ycE2so6CJUYQSy3rvAi9T2R5hCemkufl620ez1/I3QAsm17Ua42
         Mul2/usszZMWq7lqGw1nwS3wk0/u6fEFEiddRwYJFlVwlmifIouzDajTvCVlJUqC+2wa
         Yt9Y5xYBqYqzlRUnjlqnaCGhKlBSccwRhcqmXxihthexKFqlK6LST551kS27F/nXecWk
         Y0X6yGaF/o4D7nmP389aIQiqBuZUwjV+ObzXNXTocVHTMer893fk7EZC/bCm/W+LZ35L
         Zr0BNs6Pbac3p4aiiyLBqf7rE4b34S0vsUMYp5ct+XFvSiXmDmNfPdefVfMpCORBXyek
         cYyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tf6X2JwY5gzQNXIY/4lYcGsz+j+jvZppJXPsvhE0i5M=;
        b=vm6pl3DsSWvCGlGG44nh+e+blsdJnJPx8sMO3fWgfYovfxN1Se2FSjZNcMPHp4A9wX
         RjUaAdYY29zzLtYT5qp/zOxtNwHm2w4DYD9dlURLFt3Gs/nMGR4TLi7N3PhqdY0g4Aks
         U0ZU0i6eSqMvGSKEwqCJHJOWEXAKzb5iMe7z+MV/s1/rWjT1S50nOhG19DsnzorUDckZ
         Rh7dHtVkFUI5BEdvmT3jHKWpbaVWQGJTHAF5B2Lan4Aal/APiqaSnQXSrjlEvaA9XPRz
         7oub0xqevoh7B4cGCEqrZoo1HHu/mj+NMgQwExXSURvGY8e8CJJYDrVwJsqrPpKMePvo
         3KtQ==
X-Gm-Message-State: ACrzQf3rGCqGLa55xPOM+HhDIRI9RpwpHpEpo26dtIp4mA44AEp5DWUv
        yYNnyb4cWrQczmu8W+/DkDE1nA==
X-Google-Smtp-Source: AMsMyM5tZQKlsTeqTkEEjEORICLwKgvKCNbuQWAHDqQNfz6hdI9JY+sGKw6NghJJJYfqo63E16h5qg==
X-Received: by 2002:a05:620a:8016:b0:6ee:9481:9298 with SMTP id ee22-20020a05620a801600b006ee94819298mr23468257qkb.251.1666628815999;
        Mon, 24 Oct 2022 09:26:55 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id k124-20020a37ba82000000b006ec09d7d357sm230978qkf.47.2022.10.24.09.26.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 09:26:55 -0700 (PDT)
Message-ID: <9e51d4fd-ef55-c516-e878-87167f2a8fee@linaro.org>
Date:   Mon, 24 Oct 2022 12:26:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 2/3] ASoC: dt-bindings: realtek,rt5682s: Add AVDD and
 MICVDD supplies
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Mark Brown <broonie@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Derek Fang <derek.fang@realtek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021190908.1502026-1-nfraprado@collabora.com>
 <20221021190908.1502026-3-nfraprado@collabora.com>
 <ae460461-5c20-9180-456c-8c01a4b1a7f1@linaro.org>
 <20221024150649.wbd54lcvgrj4kxgu@notapiano>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024150649.wbd54lcvgrj4kxgu@notapiano>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 11:06, Nícolas F. R. A. Prado wrote:
> On Sat, Oct 22, 2022 at 12:39:56PM -0400, Krzysztof Kozlowski wrote:
>> On 21/10/2022 15:09, Nícolas F. R. A. Prado wrote:
>>> The rt5682s codec can have two supplies: AVDD and MICVDD. Add properties
>>> for them.
>>>
>>> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
>>> ---
>>>
>>>  Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
>>> index ea53a55015c4..ca1037e76f96 100644
>>> --- a/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
>>> +++ b/Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml
>>> @@ -90,6 +90,10 @@ properties:
>>>    "#sound-dai-cells":
>>>      const: 0
>>>  
>>> +  AVDD-supply: true
>>> +
>>> +  MICVDD-supply: true
>>> +
>>
>> How about keeping some order in the list of properties?
> 
> The current properties don't seem to follow any particular order and keeping the
> supplies grouped together seemed reasonable. What ordering do you suggest?

That's true...  :/

Best regards,
Krzysztof

