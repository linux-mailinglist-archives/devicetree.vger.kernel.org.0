Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B703F66B87E
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 08:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231808AbjAPH4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 02:56:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232062AbjAPH4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 02:56:43 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA9C113E3
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 23:56:40 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id ss4so58799875ejb.11
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 23:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2gvyOgN0Gv+9aZeDPI0iyOYcZNIneKqTYb4ORRQXR7c=;
        b=rBDrFUNgFpBENLm5kSuqnkbHktKp1W/JSHPkJG8x1mcgNb9zbfQzwykiwP7hn6Exnu
         wPIROLfu9bB/KOY0BfINggz/qVnWSWBbDK1tipAuCd0IVRXWWjNbiJ6mzK7FsbttFfWW
         6gidJvWAhVO5F6lPoJeLHIc/OlyWpVQKsJ/unTr91x0vRlZLBpuxcDkq7szT6QPAd8TA
         wJ7pJ3cIvubXBFEnR3Q937zXPv6gqggvpzWFMhgqmQNfVAONMxl9Dr3LrEnu6UIRAmDo
         jo1U06Xl6dNjma+Pm/zEtEt88KAt9XE5psNyq4U7PwJEo2Yi/anChwz5mUrVjwnF3+/y
         zNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2gvyOgN0Gv+9aZeDPI0iyOYcZNIneKqTYb4ORRQXR7c=;
        b=hA3H6giMzoGP5NLV5e/vzWf60jXFmYq2vKDk5kzO4J0h/BdInhSDbbP9/LNO7GezDr
         SKkaXT1lcf3LKVrOrOplPeMpCUmoztOXFOJ3s/5217HyXQnHSP6Hl5XWd0wjdFD5Uzj3
         w/CL176fUuLjKPBTkJN3X8T/UfdT+avtdeqeV+wNGUNudSoWnJKJWdSnlgdOxCDbSroy
         o7AnLvXCXNnWs4w3SCukpTNUtt3ceYIwSKhDtgq5qVbBqZ1xw2JtxguI25eUEEBbB7AK
         VyBTdeL5OUinWR6grVBTnASPVGEnju/UCMM7fZWQ49M8JQm+uK6V8OoW6znLkL5s6Gd5
         TfpA==
X-Gm-Message-State: AFqh2koQTXcEAc47adU0S17Hbg/FN65sLo6GTe7qTBG4Ve5oew3wI7Cb
        obLej4dZjEztweOsuX5Vtg/ljw==
X-Google-Smtp-Source: AMrXdXvdJcISS/2tkszHVKaJI3ZYI/cMss5wB+0+Mq6EMO0VIT+isGpGqBB2ELI7cd9SLA9/KESnIQ==
X-Received: by 2002:a17:906:3154:b0:84d:28d9:ce6 with SMTP id e20-20020a170906315400b0084d28d90ce6mr29373303eje.35.1673855798726;
        Sun, 15 Jan 2023 23:56:38 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id kw4-20020a170907770400b0084d397e0938sm10138707ejc.195.2023.01.15.23.56.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 23:56:38 -0800 (PST)
Message-ID: <70fd41e4-6d1a-cc73-cc30-1392e125919e@linaro.org>
Date:   Mon, 16 Jan 2023 08:56:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 4/5] arm64: dts: fsd: Add codec node for Tesla FSD
Content-Language: en-US
To:     Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.nawrocki@samsung.com,
        perex@perex.cz, tiwai@suse.com, pankaj.dubey@samsung.com,
        alim.akhtar@samsung.com, rcsekar@samsung.com,
        aswani.reddy@samsung.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
References: <20230113121749.4657-1-p.rajanbabu@samsung.com>
 <CGME20230113121830epcas5p4cc336a48f4597ba84ab1352774242f75@epcas5p4.samsung.com>
 <20230113121749.4657-5-p.rajanbabu@samsung.com>
 <a4982e06-a6a4-a8c9-3b24-24f798c61f73@linaro.org>
 <03a301d92962$3c1a2320$b44e6960$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <03a301d92962$3c1a2320$b44e6960$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/01/2023 05:23, Padmanabhan Rajanbabu wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@linaro.org]
>> Sent: 15 January 2023 08:37 PM
>> To: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>;
>> lgirdwood@gmail.com; broonie@kernel.org; robh+dt@kernel.org;
>> krzysztof.kozlowski+dt@linaro.org; s.nawrocki@samsung.com;
>> perex@perex.cz; tiwai@suse.com; pankaj.dubey@samsung.com;
>> alim.akhtar@samsung.com; rcsekar@samsung.com;
>> aswani.reddy@samsung.com
>> Cc: alsa-devel@alsa-project.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-samsung-soc@vger.kernel.org
>> Subject: Re: [PATCH v3 4/5] arm64: dts: fsd: Add codec node for Tesla FSD
>>
>> On 13/01/2023 13:17, Padmanabhan Rajanbabu wrote:
>>> Add device tree node support for codec on Tesla FSD platform.
>>>
>>> Signed-off-by: Padmanabhan Rajanbabu <p.rajanbabu@samsung.com>
>>> ---
>>>  arch/arm64/boot/dts/tesla/fsd-evb.dts | 12 ++++++++++++
>>>  1 file changed, 12 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts
>>> b/arch/arm64/boot/dts/tesla/fsd-evb.dts
>>> index cf5f2ce4d2a7..2f211a1ad50d 100644
>>> --- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
>>> +++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
>>> @@ -10,6 +10,7 @@
>>>
>>>  /dts-v1/;
>>>  #include "fsd.dtsi"
>>> +#include <dt-bindings/gpio/gpio.h>
>>>
>>>  / {
>>>  	model = "Tesla Full Self-Driving (FSD) Evaluation board"; @@ -34,6
>>> +35,17 @@
>>>  	clock-frequency = <24000000>;
>>>  };
>>>
>>> +&hsi2c_5 {
>>> +	status = "okay";
>>> +
>>> +	tlv320aic3x: codec@18 {
>>> +		compatible = "ti,tlv320aic3104";
>>> +		reg = <0x18>;
>>> +		#sound-dai-cells = <0>;
>>> +		reset-gpios = <&gpg1 6 GPIO_ACTIVE_LOW>;
>>> +	};
>>> +};
>>> +
>>
>> Why there is i2s here? What was the base of this patch?
> 
> Sorry, I could not get what you were asking for. Would be really
> helpful if you can elaborate on this query.

Eh, I missed a "not" in the sentence - why there is no i2s here? You
added the i2s in previous patch and by ordering this should be just
after this node, right? i2s should be before serial, so it should be
visible in the diff. Are your nodes properly ordered?


Best regards,
Krzysztof

