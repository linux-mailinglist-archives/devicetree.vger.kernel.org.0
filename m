Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69C20378EA2
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 15:51:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233564AbhEJNa7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 09:30:59 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:43268 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235279AbhEJMSo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 08:18:44 -0400
Received: from mail-qk1-f200.google.com ([209.85.222.200])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lg4qu-00035J-SI
        for devicetree@vger.kernel.org; Mon, 10 May 2021 12:17:36 +0000
Received: by mail-qk1-f200.google.com with SMTP id d15-20020a05620a136fb02902e9e93c69c8so11436529qkl.23
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 05:17:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hcrqYtVd277y8wGe0DAUkPRsrC0LqbV2x0VgcwLCb3c=;
        b=C3X8v6rZQTKost863cX7Gnsc787r4o3MQs45FiIp8SRpAfy7vrPaY7V71yIE6YHsFJ
         6mWGCLCpx+tjUFPqqyVGNrQbZpfY9Jg42cUzHyh0z9lbWOHYTO71Vov4Z6zgdEBMPxIq
         F2O8APTYZ8IRyfFh6RYWzjxP31Km2U7sfBQQ9a5comDYz/nzXXvWb000ggyRgVpDjcF7
         0El6hb9wZkUuzkdi0yNQTmv4TOOtGUrY3UfwSOiW9kf2rkl4e5DXMwikW+YSw2UE5Bpm
         y/i2YCe2cKXsDNbovGnNZ80S+T8gX39rW/FKA7meUw8ZIYPETwi40qc0vLk9pmXJhtbF
         GfdA==
X-Gm-Message-State: AOAM53181xnOP1IzErm8AYilJnm6n4S2LWFkrYUUHk2YJirdN6/rAdKs
        CtjqZl1J0reE+WHwV+MGwt4D0ob12Dk2l2gXE95kyKIxA0yS37PjzglW9wgopZiDnQe6CHCX2z6
        l/xJYaUs7TNefgHDMdb4yPzchLb7X5tleUlLNcI4=
X-Received: by 2002:ae9:ec03:: with SMTP id h3mr23609151qkg.87.1620649055715;
        Mon, 10 May 2021 05:17:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfAZJ/fJms6W3J42t4JspLSmay5z4r7ykDR8TMfCxjU9edR+ivZa0FNnGuW9w4GO5cBfzfug==
X-Received: by 2002:ae9:ec03:: with SMTP id h3mr23609128qkg.87.1620649055479;
        Mon, 10 May 2021 05:17:35 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.49.2])
        by smtp.gmail.com with ESMTPSA id g140sm10110983qke.32.2021.05.10.05.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 05:17:34 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: iio: afe: current-sense-shunt: add
 io-channel-cells
To:     Jonathan Cameron <jic23@kernel.org>, Peter Rosin <peda@axentia.se>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210506150637.35288-1-krzysztof.kozlowski@canonical.com>
 <0e68ca18-7d8c-12ab-59b1-56404b29be77@axentia.se>
 <20210508165944.2e3d8d91@jic23-huawei>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <1e8651a3-e730-411b-18a8-800e9bd9304e@canonical.com>
Date:   Mon, 10 May 2021 08:17:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210508165944.2e3d8d91@jic23-huawei>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2021 11:59, Jonathan Cameron wrote:
> On Sat, 8 May 2021 00:44:58 +0200
> Peter Rosin <peda@axentia.se> wrote:
> 
>> Hi!
>>
>> On 2021-05-06 17:06, Krzysztof Kozlowski wrote:
>>> The current-sense-shunt is an IIO provider thus can be referenced by IIO
>>> consumers (via "io-channels" property in consumer device node).
>>> Such provider is required to describe number of cells used in phandle
>>> lookup with "io-channel-cells" property.  This also fixes dtbs_check
>>> warnings like:
>>>
>>>   arch/arm/boot/dts/s5pv210-fascinate4g.dt.yaml: current-sense-shunt:
>>>     '#io-channel-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
>>>
>>> Fixes: ce66e52b6c16 ("dt-bindings:iio:afe:current-sense-shunt: txt to yaml conversion.")
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>> ---
>>>  .../devicetree/bindings/iio/afe/current-sense-shunt.yaml     | 5 +++++
>>>  1 file changed, 5 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml b/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
>>> index 90439a8dc785..05166d8a3124 100644
>>> --- a/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
>>> +++ b/Documentation/devicetree/bindings/iio/afe/current-sense-shunt.yaml
>>> @@ -24,12 +24,16 @@ properties:
>>>      description: |
>>>        Channel node of a voltage io-channel.
>>>  
>>> +  "#io-channel-cells":
>>> +    const: 0
>>> +
>>>    shunt-resistor-micro-ohms:
>>>      description: The shunt resistance.
>>>  
>>>  required:
>>>    - compatible
>>>    - io-channels
>>> +  - "#io-channel-cells"
>>>    - shunt-resistor-micro-ohms  
>>
>> I know I'm listed as maintainer and all, but I have not kept up with the yaml
>> conversion. Sorry. So, given that I might very well fundamentally misunderstand
>> something, it does not sound correct that #io-channel-cells is now "required".
>> I regard it as optional, and only needed if some other in-kernel driver is
>> consuming the sensed current. What am I missing?
>>
> 
> Agreed. This should be optional and I have deliberately not introduced it
> into all the bindings that could in theory support being used as providers.
> 
> So far I've not pushed it out in a blanket fashion into existing bindings
> even as optional.
> 
>> Also, whatever is done in this binding should preferably also be done in the
>> two "sister" afe bindings, i.e. current-sense-amplifier and voltage-divider.
> 
> This particular case is squashing an error, so whilst I'm happy to have those
> gain the binding addition, I would like to see them in a separate patch as
> less likely they'd get back ported.
> 
> If Kryysztof is fine with me just dropping the required I can pick up this patch.

Having here required number of cells helps any DT-user to seamlessly
integrate with it (e.g. with his in-tree or out-of-tree DTS, with
overlays). However it also can be added with such DTS or overlay, so in
general I don't mind dropping the required piece. Thanks!

Best regards,
Krzysztof
