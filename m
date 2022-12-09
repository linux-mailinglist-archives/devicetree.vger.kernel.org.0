Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 653AC647FD5
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 10:07:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbiLIJHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 04:07:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbiLIJHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 04:07:50 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAA3A23145
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 01:07:48 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id c1so6051270lfi.7
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 01:07:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybW+aCgYd8tZxSihqCA8moOMAzb18/wt69cgYIeTQLA=;
        b=nBVQ+SkVhs3wwQPEnbXQvi8xQ3RpYbSkKWRIHcKT6pb0G4T4u5oKTdg5AIIzVp5QHa
         wwp4Ki+AmN/jd394VY4agdyYhqjo5oTL47fyenY+zFI/0c1w1LSpMusItzVR690S9EPk
         sRUS52upPS/qDLw9IYnKntnX2Agro2RQuJCwWxcp81edDraH3q6u4xiZsZtNNyhMkGcT
         xhwMzuwEcw/j6Mi54GCXl4nISVjE0iRFG5jXmAnCqt5sQdk6F5Elj0AYdvs6O9XxTB4o
         WrA9cpkMzg3+MnzbF+spFmYPO2kE7nXjyYdvwCD4EPx761r9LBHeUNeN9wtMF9pC02zd
         Nu8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ybW+aCgYd8tZxSihqCA8moOMAzb18/wt69cgYIeTQLA=;
        b=PQZqmKVuNMPxA7k7kEH2kS1oOroloMrcCnhEeuw4NpbVmD8dguJ9a/l+jcvKhnB/uS
         f4XbjbZWN5cyq14HzZoKzzGLFbpr8iC50nvnrGzOt2BIMjHfm4XB1Gs5DSruVgZfjXyT
         IASdgxM1vp2HU4NMfAwPyJLk6wnWpeIx+u6e6GFzXc14J6Tk4v7RshRdQ5qqDcXlxe6d
         VywG0LtNXY5+nBLjwJWNqUl0Tz36x3r9xXxHGupi/GBs1dtQt60xNkQGyFtwv9bl86Sp
         lEz/Uru0L/azs2hHDXHX3hOV79zy9Ai6eim/xnFEoGy1g1YTIL3GjW4KHd9joKXmAM9m
         xGIQ==
X-Gm-Message-State: ANoB5pkfMttCCYLy2TT6oTAt748yBvvZhpAPY5h/h2PCoLF7jSFF5O89
        wf+t4HE86v1+kBqQpBuWpu8icj7kv7MbLnKQy24=
X-Google-Smtp-Source: AA0mqf7xqh4G/QTp1tz9wqt0dVEe0iVKnhHfr9sUq5VI81q6jrWkJVeObQvPjWJn+GyWT4tZSNB7xA==
X-Received: by 2002:a05:6512:2007:b0:4b5:650b:ba3f with SMTP id a7-20020a056512200700b004b5650bba3fmr1340506lfb.12.1670576867136;
        Fri, 09 Dec 2022 01:07:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id cf27-20020a056512281b00b0049fff3f645esm175958lfb.70.2022.12.09.01.07.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 01:07:46 -0800 (PST)
Message-ID: <e1844fdc-c640-747d-e38f-400669f2a1a8@linaro.org>
Date:   Fri, 9 Dec 2022 10:07:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable
 delay property
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
 <20221209083339.3780776-2-alexander.stein@ew.tq-group.com>
 <07fbe219-9034-65f6-963a-037de9bb6d79@linaro.org>
 <7463917.EvYhyI6sBW@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7463917.EvYhyI6sBW@steina-w>
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

On 09/12/2022 09:54, Alexander Stein wrote:
> Hello Krzysztof,
> 
> thanks for the fast feedback.
> 
> Am Freitag, 9. Dezember 2022, 09:39:49 CET schrieb Krzysztof Kozlowski:
>> On 09/12/2022 09:33, Alexander Stein wrote:
>>> It takes some time until the enable GPIO has settled when turning on.
>>> This delay is platform specific and may be caused by e.g. voltage
>>> shifts, capacitors etc.
>>>
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>> ---
>>>
>>>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>>>  1 file changed, 4 insertions(+)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>> index 48a97bb3e2e0d..3f50d497cf8ac 100644
>>> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>
>>> @@ -32,6 +32,10 @@ properties:
>>>      maxItems: 1
>>>      description: GPIO specifier for bridge_en pin (active high).
>>>
>>> +  ti,enable-delay-us:
>>> +    default: 10000
>>> +    description: Enable time delay for enable-gpios
>>
>> Aren't you now mixing two separate delays? One for entire block on (I
>> would assume mostly fixed delay) and one depending on regulators
>> (regulator-ramp-delay, regulator-enable-ramp-delay). Maybe you miss the
>> second delays in your power supply? If so, the first one might be fixed
>> and hard-coded in the driver?
> 
> Apparently there are two different delays: reset time (t_reset) of 10ms as 
> specified by datasheet. This is already ensured by a following delay after 
> requesting enable_gpio as low and switching the GPIO to low in disable path.
> 
> When enabling this GPIO it takes some time until it is valid on the chip, this 
> is what this series is about. It's highly platform specific.
> 
> Unfortunately this is completely unrelated to the vcc-supply regulator. This 
> one has to be enabled before the enable GPIO can be enabled. So there is no 
> regulator-ramp-delay.

Your driver does one after another - regulator followed immediately by
gpio - so this as well can be a delay from regulator (maybe not ramp but
enable delay).


Best regards,
Krzysztof

