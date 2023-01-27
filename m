Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C07E67EF07
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 21:00:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232642AbjA0UAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 15:00:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232677AbjA0UAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 15:00:25 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBAADBBA7
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 11:58:44 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso4238292wmq.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 11:58:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jq9nTVH9EdQQJF1OClEm59TTJ+mqJAwF9SwU+gZavP8=;
        b=e/2EEu396VGfyrF89LNE1kiXKpor35qTZuivNx19fuMPjwSuxGvculmjVi+me/f7VR
         6MSu2TmLve+yTQkl+KE3cq3C9n2QJDo1o9B+8p/I/8Y6EdYUk2p3HFpP4ktU4ObXB/45
         PJ1UPNY0K1M++CJW73lJ5tRMCDz7wJQLIr8tx76QkrTN6beP23hhyRyueiC+w+g02mI3
         o656nLCntd8pD6uLhXPw0SKvqptvUu3ElsahU11h3wj18ri2CHO8simzmzbpwHRB2XRg
         KadX63wPBC2Amv3WC1ePlk2Miu2Rpb95fRaZozZbs+aWKktlblukA2oeXcyTkEQDqLiD
         13Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jq9nTVH9EdQQJF1OClEm59TTJ+mqJAwF9SwU+gZavP8=;
        b=3tbVD+tgoYxeC2PWusVr7zd3R8Zi9TVW2SyhlMZu4TJ9FAFAWKW22a1nXjIk0SHADu
         p/buVdxow7Dr6gPTy+6RliOE8j8iSn8dlFxQVA2Y2z60JIE8bKRGMPz7Fi1akNpaLiyq
         ZcyLxNGGnQzhpdFsvVf9J7L/zdrIWieKYkLk6KkfW6nYd+gCZg4aX2WkHz0sxQnnOa5y
         NXK2ak0hB2l1TwX0GvPNpQnWNaeEyjYyarIX/ctTCVEoyyMsNRJduRPTWhq3IIW3Jbcl
         0NyYXM0HsbUY8orep2xCya+jx6ZniEUStaBHqcMlvu9J2H9Tdm9dt2h0GCMz4wkxyWpe
         duGA==
X-Gm-Message-State: AFqh2krG71ZGx6DHylw0ERneD4iFW6yJPyzFLehUpeYCJCflm9/BsTTk
        PjS9WLl1EvsofMoLQUJkDwTWuA==
X-Google-Smtp-Source: AMrXdXuG+Q/w+CJsKYIRk1g3UM67EOx+RR/LtS8/oiLQLqBF+yQ8dNQDedOFK0qN51nktDdaYXsRiA==
X-Received: by 2002:a05:600c:a29f:b0:3d9:f42c:56c5 with SMTP id hu31-20020a05600ca29f00b003d9f42c56c5mr40716573wmb.4.1674849502758;
        Fri, 27 Jan 2023 11:58:22 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id e15-20020a05600c218f00b003dc434b39c7sm937084wme.0.2023.01.27.11.58.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 11:58:22 -0800 (PST)
Message-ID: <00139f11-76b0-138a-2f7b-c67d149eb25e@linaro.org>
Date:   Fri, 27 Jan 2023 20:58:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v6 1/9] media: dt-bindings: Add OV5670
Content-Language: en-US
To:     Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc:     Chiranjeevi Rapolu <chiranjeevi.rapolu@intel.com>,
        Luca Weiss <luca@z3ntu.xyz>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        laurent.pinchart@ideasonboard.com, sakari.ailus@iki.fi,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20230126165909.121302-1-jacopo.mondi@ideasonboard.com>
 <20230126165909.121302-2-jacopo.mondi@ideasonboard.com>
 <482b464b-c5fb-8af2-b0f7-4388fccea3fd@linaro.org>
 <20230127181435.3d5rnrg5omxhn6l7@uno.localdomain>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230127181435.3d5rnrg5omxhn6l7@uno.localdomain>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 19:14, Jacopo Mondi wrote:
> Hi Krzysztof
> 
> On Fri, Jan 27, 2023 at 03:19:08PM +0100, Krzysztof Kozlowski wrote:
>> On 26/01/2023 17:59, Jacopo Mondi wrote:
>>> Add the bindings documentation for Omnivision OV5670 image sensor.
>>>
>>> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
>>> ---
>>
>> (...)
>>
>>> +
>>> +  dovdd-supply:
>>> +    description: Digital I/O circuit power. Typically 2.8V or 1.8V.
>>> +
>>> +  port:
>>> +    $ref: /schemas/graph.yaml#/$defs/port-base
>>> +    additionalProperties: false
>>> +
>>> +    properties:
>>> +      endpoint:
>>> +        $ref: /schemas/media/video-interfaces.yaml#
>>> +        unevaluatedProperties: false
>>> +
>>> +        properties:
>>> +          data-lanes:
>>> +            minItems: 1
>>> +            maxItems: 2
>>> +            items:
>>> +              enum: [1, 2]
>>> +
>>> +          clock-noncontinuous: true
>>
>> You do not need this. Drop.
>>
> 
> Is this due to "unevaluatedProperties: false" ?
> 
> I read you recent explanation to a similar question on the Visconti
> bindings. Let me summarize my understanding:
> 
> For a given schema a property could be
> - required
>         required:
>           - foo
> 
> - optional
>         by default with "unevaluatedProperties: false"
>         "foo: true" with "additionalProperties: false"
> 
> - forbidden
>         "foo: false" with "unevaluatedProperties: false"
>         by default wiht "additionalProperties: false"
> 
> clock-noncontinuous is defined in video-interfaces.yaml. as I specify
> "unevaluatedProperties: false" does it mean
> all the properties defined in video-interfaces.yaml are optionally
> accepted ? If that's the case that's not what I want as
> clock-noncontinuous is -the only- property from that file we want to
> accept here (and data-lanes ofc).
> 
> Should I change "unevaluatedProperties: false" to
> "additionalProperties: false" and keep "clock-noncontinuous: true"  ?
>

Why would you disallow other properties? Just because driver does not
use them? That's not correct, driver change but bindings should stay the
same.

Best regards,
Krzysztof

