Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88D9664806B
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 10:51:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiLIJvl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 04:51:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229977AbiLIJvA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 04:51:00 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 258815F6CE
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 01:50:15 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id g7so6209121lfv.5
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 01:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H+zrIqQHK0ez9ejwOlTNTa3xiba6ecsI0/WooCsBj0M=;
        b=MaA9T2A/3btdlwfzS0ARMaKjwas0cZ5evhLuh3Z0xyoDP9m13xs2SSvEivZmegh5n4
         l8C5D+aSmXfP3U1zF99g0lFBXqaEQZnmgfaRjZmQaROj9dtfRdypDR/+KfzM+z+Bzy+e
         R2oNlqoDHig1mb2AyozFPeiEV4bIxejTmKAgGD4BfzsELkvLxCoM5p86CFGqFb4cUjU0
         a9Khta1K3Vzo68rMjeAV6nxis0frMt3WMvv6wrJqs6ULh8J9FLyeDiEbRp9Ri5VUTkbd
         jKaioJa9UPFNuN08bRFPzH7twNvjebXXPggbXg+Uz/JesWQvnEUnpud5omJn0eEhQOCY
         AMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H+zrIqQHK0ez9ejwOlTNTa3xiba6ecsI0/WooCsBj0M=;
        b=AGo2A4mkd33qKGPFWz1BgQSpE7gUab9QQFBXe1qr83c9VfqTM/7FT/FXPrgQfCNMW4
         iaZU5nNqzbnjFUd7PW6vVMMqPjwOrAVlng8UdMqpigRdMXgsEHX1j7A4FbNO/f/HWXVu
         hfgT/e2INAFcGWAsBoxHSBQIbpATlguL7pBAGXS9xKFTY5AKMuk/ZHplTDzK+JER336f
         eYfDdbDEEICdqc1Auprol+PLZ7/NP3CK0DZdzVGQJywFkEPFit1Z0dV58t+Kdsdrm/SB
         LXhoB5iB8vm7taFetsl8vIOXTEoHc6QmbemtXZ0BbtHjiTFPejnSIWjFudCvUNTph5W5
         /ffQ==
X-Gm-Message-State: ANoB5pkLH62wMUDieHIpQzMMfq18xe2nOgMzUPUr6RH1fEKsSxp417lW
        gPePyNBkSVl93Omvhb5+txDSTw==
X-Google-Smtp-Source: AA0mqf6vN9HJtD/Aj4xr4S4ZDi4oKJS23YvlhM7RJM4JILeang3WJWpiuhO0Cd0wD4AZXkOMvn7ZmA==
X-Received: by 2002:a05:6512:b8e:b0:4b5:a5c7:3286 with SMTP id b14-20020a0565120b8e00b004b5a5c73286mr1788809lfv.9.1670579413456;
        Fri, 09 Dec 2022 01:50:13 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s29-20020ac25c5d000000b004b55f60c65asm187012lfp.284.2022.12.09.01.50.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 01:50:13 -0800 (PST)
Message-ID: <80cb69b4-811d-1cd9-297d-2d828fc988f4@linaro.org>
Date:   Fri, 9 Dec 2022 10:50:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable
 delay property
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
 <7463917.EvYhyI6sBW@steina-w>
 <e1844fdc-c640-747d-e38f-400669f2a1a8@linaro.org>
 <3394586.QJadu78ljV@steina-w>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3394586.QJadu78ljV@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2022 10:36, Alexander Stein wrote:
> Hello Krzysztof,
> 
> Am Freitag, 9. Dezember 2022, 10:07:45 CET schrieb Krzysztof Kozlowski:
>> On 09/12/2022 09:54, Alexander Stein wrote:
>>> Hello Krzysztof,
>>>
>>> thanks for the fast feedback.
>>>
>>> Am Freitag, 9. Dezember 2022, 09:39:49 CET schrieb Krzysztof Kozlowski:
>>>> On 09/12/2022 09:33, Alexander Stein wrote:
>>>>> It takes some time until the enable GPIO has settled when turning on.
>>>>> This delay is platform specific and may be caused by e.g. voltage
>>>>> shifts, capacitors etc.
>>>>>
>>>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>>>> ---
>>>>>
>>>>>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>>>>>  1 file changed, 4 insertions(+)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>> index 48a97bb3e2e0d..3f50d497cf8ac 100644
>>>>> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>>
>>>>> @@ -32,6 +32,10 @@ properties:
>>>>>      maxItems: 1
>>>>>      description: GPIO specifier for bridge_en pin (active high).
>>>>>
>>>>> +  ti,enable-delay-us:
>>>>> +    default: 10000
>>>>> +    description: Enable time delay for enable-gpios
>>>>
>>>> Aren't you now mixing two separate delays? One for entire block on (I
>>>> would assume mostly fixed delay) and one depending on regulators
>>>> (regulator-ramp-delay, regulator-enable-ramp-delay). Maybe you miss the
>>>> second delays in your power supply? If so, the first one might be fixed
>>>> and hard-coded in the driver?
>>>
>>> Apparently there are two different delays: reset time (t_reset) of 10ms as
>>> specified by datasheet. This is already ensured by a following delay after
>>> requesting enable_gpio as low and switching the GPIO to low in disable
>>> path.
>>>
>>> When enabling this GPIO it takes some time until it is valid on the chip,
>>> this is what this series is about. It's highly platform specific.
>>>
>>> Unfortunately this is completely unrelated to the vcc-supply regulator.
>>> This one has to be enabled before the enable GPIO can be enabled. So
>>> there is no regulator-ramp-delay.
>>
>> Your driver does one after another - regulator followed immediately by
>> gpio - so this as well can be a delay from regulator (maybe not ramp but
>> enable delay).
> 
> But this will introduce a section which must not be interrupted or delayed. 
> This is impossible as the enable gpio is attached to an i2c expander in my 
> case.
> 
> Given the following time chart:
> 
>  vcc                  set             EN
> enable               GPIO             PAD
>   |                    |               |
>   |                    |<-- t_raise -->|
>   | <-- t_vcc_gpio --> |               |
>   | <--        t_enable_delay      --> |
> 
> t_raise is the time from changing the GPIO output at the expander until 
> voltage on the EN (input) pad from the bridge has reached high voltage level.
> This is an electrical characteristic I can not change and have to take into 
> account.
> t_vcc_gpio is the time from enabling supply voltage to enabling the bridge 
> (removing from reset). Minimum t_vcc_gpio is something which can be addressed 
> by the regulator and is no problem so far. But there is no upper bound to it.
> 
> If I understand you correctly, you want to specify t_enable_delay in a 
> regulator property. This only works if you can upper bound t_vcc_gpio which is 
> not possible due to e.g. scheduling and i2c bus contention.
> 
> IMHO that's why there needs to be an configurable delay in the bridge driver.

What I am saying that you might be here mixing two separate delays:
regulator enable and/or ramp delay (which more or less matches your
t_vcc_gpio) and t_raise. I don't know about which board we talk, but the
mainline users of this bridge do not have even regulator supply,
therefore its enable time might be not factored.

Why this all raising questions? Because only your t_vcc_gpio should be
board dependent, right? Your bridge has fixed internal delays - from
datasheet: ten, tdis and treset. Nothing in your device is board
specific, thus I assume any enable delay is coming from power supply.

Probably experiment to prove it would be to keep power supply enabled
always and check on the scope of EN pin.

Anyway, even if this is variable delay on your EN input pin, it is still
input to the device and based on your time-diagram it is not a property
of the device. Property of the device could be:

EN-pad goes high <--------------> output pins stable

which is either:
1. ten already described in datasheet,
2. not the case here.

Best regards,
Krzysztof

