Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81A9462F59C
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 14:12:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241473AbiKRNMA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 08:12:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241159AbiKRNLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 08:11:51 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A418B13E
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:11:50 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id a15so6711259ljb.7
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 05:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gWNSpfNgmKIkoqMVV5tmWYlIFYhEHax9TrvGPimvErs=;
        b=v4nFmk80qIBizuw3D1YMYQGM+vnSIvdnLk9TyHIG0in5TwlQhnPkUxZ9S2wEGIO7+5
         NloDoVXNp29Tv+V2Ab46XHQlVhufLDrh990FfdE+BCoIabs2Kjsu5+aPGZVZoHtgLY4E
         Asv3aahR7nX4q3ptImiN2N8+/PiZfDlpXIUl1AV2LXskiukPE0YGDHopQfy42JWo9qrt
         RjcBxuxPFUEZJvL+xxHGOm3mC4odbJeVAynBHG5r5Luy+JASyjK9R5dMYXHe5TtcRUSw
         Bjx+cNlKFLPOsmFRX4yckjQy25Tw2A/rEuh0/jCHDai5aJj3brf0FiV2KlBCDADvWndd
         BnKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gWNSpfNgmKIkoqMVV5tmWYlIFYhEHax9TrvGPimvErs=;
        b=g5s5QhPQq7QbbgqTZMEl1MC8Y65/haxYQQsdv5/68shJ50J0e+Uj+x6HNakfCTEINt
         3cNadbCGkVm/j3X8nQKrvDwEVNbQutuSSFjjvsoMd512RuyfPU36TtDGUtabygAY4PlF
         0/aJqPNBxTn4n5TX7mes688awR5V2d4xZL2F7HWgrhMelorg1A/cW5pWbUJXGAGpWlMe
         lZyEAR2msu3C9PGQrEGu3iH5ssxuYW+6xTl1nVk+ggVG43lZj1G2EeYIU6jwwYw6qKj0
         E+sQx9WSwuf0/5M4kYXUWGJ2F7FmmyUkS6BZbQqEa5hHVnp98cO3vGYxdHNSIoAXIEeY
         rL4A==
X-Gm-Message-State: ANoB5pkZxCKb2RvqGT7fF0npZz6aM6tMO9lhWc9zsaCnCdnhmeBEXVWN
        sOt84YavUHB2h0UX3mNiYgUiDQ==
X-Google-Smtp-Source: AA0mqf5PKOpsepLXZQM4MZvGilr6TDpkzUoFgDlnpUqKg2bm3LymDyhlqEiF6bM8W2n4RIlehziIUw==
X-Received: by 2002:a05:651c:178d:b0:278:a59c:390c with SMTP id bn13-20020a05651c178d00b00278a59c390cmr2455317ljb.512.1668777108719;
        Fri, 18 Nov 2022 05:11:48 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n4-20020a195504000000b00492ce573726sm661503lfe.47.2022.11.18.05.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 05:11:48 -0800 (PST)
Message-ID: <5292cc1b-c951-c5c5-b2ef-c154baf6d7fd@linaro.org>
Date:   Fri, 18 Nov 2022 14:11:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 01/23] dt-bindings: display: tegra: add bindings for
 Tegra20 VIP
Content-Language: en-US
To:     Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Sowjanya Komatineni <skomatineni@nvidia.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-media@vger.kernel.org, linux-tegra@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Richard Leitner <richard.leitner@skidata.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>
References: <20221109141852.729246-1-luca.ceresoli@bootlin.com>
 <20221109141852.729246-2-luca.ceresoli@bootlin.com>
 <ca5f3b54-25bd-4dd5-799f-c7bda08cdef6@linaro.org>
 <20221118100800.4950aec0@booty>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118100800.4950aec0@booty>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/11/2022 10:08, Luca Ceresoli wrote:
>   description: parallel video capture interface for the VI
> 
>>> +    type: object  
>>
>> Do you expect it to grow to more channels?
> 
> Not on Tegra20, it has one input only, but for other SoCs it's likely.
> Definitely some (including Tegra20 itself) have multiple CSI-2 inputs,
> and it's reasonable that this can apply to parallel input too.
> 
> Is this enough motivation to make room for more channels, or should I
> remove it since I have no plans to introduce support for other Tegra
> chips?

The best would be to add some more Tegra SoCs here, so that this @0
makes sense.

But I guess the block can be re-used in future, so it could also stay
like this.

> 
>>> +
>>> +    properties:
>>> +      reg: true  
>>
>> const: 0
>>
>>> +
>>> +      ports:
>>> +        $ref: /schemas/graph.yaml#/properties/ports
>>> +
>>> +        properties:
>>> +          port@0:
>>> +            $ref: /schemas/graph.yaml#/properties/port
>>> +            description:
>>> +              Port receiving the video stream from the sensor
>>> +
>>> +          port@1:
>>> +            $ref: /schemas/graph.yaml#/properties/port
>>> +            description:
>>> +              Port sending the video stream to the VI
>>> +
>>> +        required:
>>> +          - port@0
>>> +          - port@1
>>> +
>>> +    additionalProperties: false
>>> +
>>> +    required:
>>> +      - reg
>>> +      - ports
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +required:
>>> +  - compatible
>>> +  - "#address-cells"
>>> +  - "#size-cells"
>>> +  - channel@0
>>> +
>>> +# see nvidia,tegra20-vi.yaml for an example  
>>
>> That file does not have this compatible. At least not on next-20221109.
> 
> It's added in patch 2. It's a chicken-egg problem, should I add a third
> patch that adds this line only?
> 
> ACK for all other comments you wrote.

It's ok.

Best regards,
Krzysztof

