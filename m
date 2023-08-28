Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFCDB78B763
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233065AbjH1Smj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233061AbjH1SmV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:42:21 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3370BF
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:42:17 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b9d07a8d84so51935791fa.3
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693248136; x=1693852936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4crfFK9rbkvRAtTGcELIJgSDL7K1RAR2VvV1PTA/yS8=;
        b=UufLu8sEdTBwkzCCLhJYuXW+vIpDt5IVesFf31AZIV4tBqaWT78XsJU8vMBZhsBeXU
         5BAxgvCKb31UscQ68QGvnBEHkhhRR1nsjV/FzpmOFcCcrNCyCh0v97MK61a0QAeq6Anh
         f20r3JZ0vPBPq5gMChHQMMuyn6PWFBYnJpfcWavo65xEqw/GgRqjzCVtcGjo9ykCjv5e
         rqLXtj6XFcEhmCF2ggubbgx7H3KyRDKvbBiqWKjaUM0yWLMI9DmCcfrIMrJZb2ThbjNG
         +gwDrCueai5hwfO04wXYLPF4Ffvt1AIhjOTGy2DQ2zaAGFy0T316pzzxv6//1KvFwbDe
         uwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693248136; x=1693852936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4crfFK9rbkvRAtTGcELIJgSDL7K1RAR2VvV1PTA/yS8=;
        b=gp0D/78NzzamqaymEHhp/jBkkJXQ+KFNOn1mf8FIwTWdE8WiXuU5jx+5781P4JtAwN
         gh3WUiT5Uw46gKazJCeAwl/2dgaqCpGu3vDxjJ/C4VD59I6NWUVYhkITUsjgyY+hYScs
         hDPtkAwwJnsTHGIzao1sMmR+RlHE7syNQSjRR7j3GxEpr8M+97PURSSUF4TAqI7Ui0eV
         YUDPzB8H4ABHascEhzzvcaL8KeS0s+MC8J7Cu691bkaD76UNoZ2fQBH66C1wDdcOgcDp
         KRY2LwLNJsY83tweT4opfjnDmUb6dKTvkHBJi7zOibgYqzhFbjo2UaDrt4XjT5ZpiXQs
         iNaw==
X-Gm-Message-State: AOJu0YwOAS7a+dQjEd0o4GwD2W6Hb/BuUt8q8GTHeOiZq6fXhXSh9fsb
        CMtf1bYnmzHE/xq5emwzfLgaGA==
X-Google-Smtp-Source: AGHT+IFvRz58L4vS5FMH8WGd1L+nXz7BkWynYCX2F5o9W0KTVWQfHur/iCV+WULOlxr+cKlREecxLw==
X-Received: by 2002:a2e:2404:0:b0:2bc:dcdb:b5dc with SMTP id k4-20020a2e2404000000b002bcdcdbb5dcmr11162107ljk.39.1693248135751;
        Mon, 28 Aug 2023 11:42:15 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id u22-20020a17090626d600b009a1fd22257fsm4960187ejc.207.2023.08.28.11.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 11:42:15 -0700 (PDT)
Message-ID: <154b36de-652b-3931-96e6-04e99253a09f@linaro.org>
Date:   Mon, 28 Aug 2023 20:42:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dt-bindings: power: Add regulator-pd yaml file
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>
References: <20230818153446.1076027-1-shenwei.wang@nxp.com>
 <CAPDyKFqsn6kVjPFUdVyRxNDiOaHO9hq=9c+6eAK4N-v-LVWUPw@mail.gmail.com>
 <PAXPR04MB91858254554272C90822FED1891DA@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <CAPDyKFoV2Z=-WUiF3SgXqhF+K+r5QqsLgz8_hau0WKfZxTzYpg@mail.gmail.com>
 <PAXPR04MB9185F6AA20B0440B8FAB847789E3A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <4e2c18e3-b1ed-6361-3998-5de060d2bcf0@linaro.org>
 <PAXPR04MB9185957B729588D3E7CA3A5089E0A@PAXPR04MB9185.eurprd04.prod.outlook.com>
 <51fe3126-16ba-ade6-b106-e3683f96ad26@linaro.org>
 <PAXPR04MB9185DC79721E78E631F9889589E0A@PAXPR04MB9185.eurprd04.prod.outlook.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB9185DC79721E78E631F9889589E0A@PAXPR04MB9185.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 20:39, Shenwei Wang wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Monday, August 28, 2023 12:11 PM
>> To: Shenwei Wang <shenwei.wang@nxp.com>; Ulf Hansson
>> <ulf.hansson@linaro.org>
>> Cc: Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
>> Liam Girdwood <lgirdwood@gmail.com>; Mark Brown <broonie@kernel.org>;
>> imx@lists.linux.dev; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org;
>> dl-linux-imx <linux-imx@nxp.com>
>> Subject: [EXT] Re: [PATCH 1/2] dt-bindings: power: Add regulator-pd yaml file
>> On 28/08/2023 16:04, Shenwei Wang wrote:
>>
>>>>> Are you suggesting to move the regulator-pd to the imx directory and
>>>>> add a company prefix to the compatible string?
>>>>
>>>> There is no such part of iMX processor as such
>>>> regulator-power-domain, so I don't recommend that approach. DTS nodes
>>>> represent hardware, not your SW layers.
>>>>
>>>
>>> That's not always the case, as we do sometimes need a virtual device.
>>> As an example, the "regulator-fixed" acts as a software abstraction
>>> layer to create virtual regulator devices by interfacing with the underlying
>> GPIO drivers.
>>
>> Not true. This is a real regulator device. Real hardware on the board.
>> You can even see and touch it.
>>
> 
> The physical hardware component is the GPIO pin, which is what you can only touch. 

No. The regulator is the chip.

> The regulator functions virtually through software layer above of the GPIO driver. While 
> we may call it a "regulator" or whatever else, this cannot obscure the fact that the underlying 
> hardware is just a GPIO pin being used in a specialized way.

The regulator is some tiny little box, you can touch and called
ti,tps51632 or similar.



Best regards,
Krzysztof

