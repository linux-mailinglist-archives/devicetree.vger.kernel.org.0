Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D110646A72
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 09:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiLHIZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 03:25:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229893AbiLHIZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 03:25:36 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8B0413CD7
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 00:25:34 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id x6so755962lji.10
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 00:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xE8jv3PkuMLfTb6vfE6WECcl1fHHkR+JJYoxxEnxTzI=;
        b=foAOdHOyJB5et6qqqHy/AtQNtZkvyrfaUB+dd5lD3qGnhyuZqNG93a1MdOHXY6MeXn
         BjQjFc4iQ8CFUP8n72odAFiCZJ+rDkzZfDvQ8CYxzuAj64g1YjavbIsMc48V89aHwgs6
         6Ei6e9Ft56HsGD5bc3Mdh0EZRzDHyH3RszhUt19ZdPhF0w0Sl7xnefd4jyKVijUlmdW5
         emGC0NqKWSfPuC2d1V8MFfDLuPF8cZilf4egSnq68olLbZYjwa7NK5mYfQ9xfCaUc4Il
         MqCkgnhTpkQVZbIemGoSTVThWGsrhcKzzK/3cu/ADvvlcghMky1RrYsesJkJHIeyGC4D
         GyBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xE8jv3PkuMLfTb6vfE6WECcl1fHHkR+JJYoxxEnxTzI=;
        b=cz1FEkZ00QqzuTbDWEcCH4CyOYhmvsojDG7y/tJrsrLrPbbn7TA63kTQYRCKdRUXGF
         vma+TH32hld3U9i6SNwxK6sV5Jwnq07oj6kwOXBPN+rFYT934mftXaNnFX/iw6rzAUwk
         oc5pHp5cxfodx/qSFB1OOPOGj+u5x2oT6D6hTTyVLSfDDVq6E3gy6YLGvw8uduGKsGyg
         JpdX+rV453LJbzuXjeLNSAahSFiTrYVy+aUudPB8O09IcffuKiZwfBgwR4g3I0bB4a4V
         lIv8Xj8Sa7LELUkzkXvgXj/mhBeeOboH3xuwpsuMbP/JGrOSyQCY2JtjWbLcpg5+kbco
         osig==
X-Gm-Message-State: ANoB5pmNMZG6D6TWgd1/WXZ6rgA3GuhP83BPF2/WZ9rI0JalJ6ImPd9p
        YkHceoQtmHux5saU5hxJrzYDzEr0Oajb9KqwawI=
X-Google-Smtp-Source: AA0mqf4/MQ847e6F5ifIS/SX54WEmvMn0heImNI0WYKc/4M90aEB/+yIg6YSjxOM1SOpgt0dmSBmQw==
X-Received: by 2002:a05:651c:c89:b0:26f:bd61:ac4f with SMTP id bz9-20020a05651c0c8900b0026fbd61ac4fmr25339083ljb.396.1670487933258;
        Thu, 08 Dec 2022 00:25:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m8-20020a2e9108000000b0026dffa29989sm1901074ljg.23.2022.12.08.00.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Dec 2022 00:25:32 -0800 (PST)
Message-ID: <a033d9a3-4bee-d749-9bd9-24a419398d0b@linaro.org>
Date:   Thu, 8 Dec 2022 09:25:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 2/2] dt-bindings: lcdif: Add optional power-domain
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
 <20221207151400.1572582-2-alexander.stein@ew.tq-group.com>
 <00789ae3-7fd7-e662-6348-8a31a72ee589@denx.de> <1839665.tdWV9SEqCh@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1839665.tdWV9SEqCh@steina-w>
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

On 08/12/2022 06:59, Alexander Stein wrote:
> Am Mittwoch, 7. Dezember 2022, 17:00:22 CET schrieb Marek Vasut:
>> On 12/7/22 16:14, Alexander Stein wrote:
>>> i.MX8MP requires a power-domain for this peripheral to use. Add it as
>>> an optional property.
>>>
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>> ---
>>>
>>>   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
>>> 793e8eccf8b8b..9d9fb5ad587c2 100644
>>> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>>
>>> @@ -52,6 +52,9 @@ properties:
>>>     interrupts:
>>>       maxItems: 1
>>>
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>>
>>>     port:
>>>       $ref: /schemas/graph.yaml#/properties/port
>>>       description: The LCDIF output port
>>
>> Should this be required on mx8mp then ?
> 
> I'm hesitating to add a required property later on. But I'm okay with both.
> Rob, Krzysztof: Any preference here? Shall power-domains be made required for 
> fsl,imx8mp-lcdif only?

I don't know. That's not the question to us, but to someone who knows
the hardware/datasheet.

Best regards,
Krzysztof

