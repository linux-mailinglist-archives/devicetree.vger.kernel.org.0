Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 393EC64821F
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 13:03:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbiLIMDN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 07:03:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbiLIMC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 07:02:57 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CA8437F83
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 04:02:54 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5633C851C1;
        Fri,  9 Dec 2022 13:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670587372;
        bh=8ppd3SwUwaOJ0CiaHMQd9G4CrXnCUVOjP8n6b8m88QE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Z3zXG6/KMbdu18O87D7kVPeO+PJL0bomjgeL1IDYyKyOxC45GRfE/Mu7nDt7CGIeK
         bs0aY1KznjxeDLOo6ZKjHojb7ZmManidh8H9dDO/kUinGp89fJw+PXzQ5EJjriqA95
         R9iO6tKRqzaWUCWhAO6z9TOvaFMOZSshpyG9jfu8TOGC0VDwH75Eo9yF2kQARTRilT
         8hTaKAvAcr6EmY1kD70X0VXakxTiwuxwOFnMnx1a6raQcLIdELt+YbaN8ATwY1xW3N
         Q+zi367ENtxdgwqAcCPA5dmJzZ0PBExzc59oU3GzZFAs9FVsKLm36n4q+mdZMKSCx6
         +UlLbpeV9gi8w==
Message-ID: <df7e4c0d-2e30-a808-584f-d302233c2931@denx.de>
Date:   Fri, 9 Dec 2022 13:02:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable
 delay property
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
 <7463917.EvYhyI6sBW@steina-w>
 <e1844fdc-c640-747d-e38f-400669f2a1a8@linaro.org>
 <3394586.QJadu78ljV@steina-w>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <3394586.QJadu78ljV@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/9/22 10:36, Alexander Stein wrote:
> Hello Krzysztof,

Hi,

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
>>>>>   .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
>>>>>   1 file changed, 4 insertions(+)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>> b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>> index 48a97bb3e2e0d..3f50d497cf8ac 100644
>>>>> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>>>>>
>>>>> @@ -32,6 +32,10 @@ properties:
>>>>>       maxItems: 1
>>>>>       description: GPIO specifier for bridge_en pin (active high).
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

The chip has two separate input pins:

VCC -- power supply that's regulator
EN -- reset line, that's GPIO

Alexander is talking about EN line here.

> But this will introduce a section which must not be interrupted or delayed.
> This is impossible as the enable gpio is attached to an i2c expander in my
> case.
> 
> Given the following time chart:
> 
>   vcc                  set             EN
> enable               GPIO             PAD
>    |                    |               |
>    |                    |<-- t_raise -->|
>    | <-- t_vcc_gpio --> |               |
>    | <--        t_enable_delay      --> |
> 
> t_raise is the time from changing the GPIO output at the expander until
> voltage on the EN (input) pad from the bridge has reached high voltage level.
> This is an electrical characteristic I can not change and have to take into
> account.
> t_vcc_gpio is the time from enabling supply voltage to enabling the bridge
> (removing from reset). Minimum t_vcc_gpio is something which can be addressed
> by the regulator and is no problem so far. But there is no upper bound to it.

What exactly is your EN signal rise time (should be ns or so)? Can you 
look at that with a scope , maybe even with relation to the VCC regulator ?

The DSI84 EN pin already has a built-in pullup per DSI84 datasheet (see 
Table 5-1. Pin Functions), so that should make the signal rise fast, 
certainly not for seconds.

[...]
