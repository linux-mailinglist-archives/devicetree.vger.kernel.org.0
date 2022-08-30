Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30B285A648F
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 15:23:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbiH3NXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 09:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbiH3NXp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 09:23:45 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D10A8D759D
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 06:23:43 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id by6so11345500ljb.11
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 06:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=GmyXrOY1Xiae60zSU+ZgbAWGCTGdp1fVOg/uqPLmDNM=;
        b=O69XPEfN28apshm2HKFJYNlPgvk4cZwsxX5/2pojKJKOVLq1oCuul5KRCgl5d+93/K
         YbRD4gGaiyItamL22++uXidZAeuTB1agY2+RsTzPblDkBLQpn9yh3B3y2iEYiPurBrl/
         vVUgHPiK/U8gHWP769xSA9kWzE+GeiNXEb9KyvSEckGAk/hM1vwsi7hHW/EWwt/A9JFO
         wtXhVxqZn9pegze34aZ6LwwQE3LuvL0uVu+uEDT9G1MxLjyGpI97JnLXJ4J5fuu6qO9a
         xz5y/nLRgf6e+Wozf0bOJMwApb0r/64i8/pauMDE2324D8DWpbQSp8rBY3cW3bh0JJvR
         PE5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=GmyXrOY1Xiae60zSU+ZgbAWGCTGdp1fVOg/uqPLmDNM=;
        b=BlJXgzjfxmwEMJlISadrktx/acGtQ81uBOQFLSy2GwLFl22f6rp4NFiPYSkxxHhYcr
         VtgjO5uJx9yHO/K0i0f3iOuyM3B29M8sb2i/qMy04nRy2f4zxBxPKmoyBNbVplA7Uwtw
         IHvHuIUWTAGu9NKETlNJA2vbnpiKDB/UTvW9dgr1Z2DbDeLXrTVrM/sOZ2CHRRqi1dIM
         lJ/ixoXV5Nb4YLKCKW8q/iPlIF/46SDYNqd0+PuAl7mV6p0KbK0OsqivMqV0JIpELXDe
         cyy8iBdDa93Ni6HMG67IIbds0yod3qM9ktW2Jw3aLiL9C9NR9KdKAm8dcAgeFHvSYLeh
         9Wxg==
X-Gm-Message-State: ACgBeo0z31Wm/3t8x+D8ePCs25QGC20aYdU1YebcdRYSj8YyAsUuF/zc
        ha2gYtS9RB+bfn4EaLwzxub+vA==
X-Google-Smtp-Source: AA6agR50cIf3Mt9PZa0xKouqGjK/1gjIZbSp3wkE7CgFYqlToqqlPQnhYhgJ/8wg0QsrgJmvlE34+Q==
X-Received: by 2002:a05:651c:1587:b0:261:b558:b6ab with SMTP id h7-20020a05651c158700b00261b558b6abmr6782829ljq.204.1661865822205;
        Tue, 30 Aug 2022 06:23:42 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id p12-20020a2ea4cc000000b0025e6e1c836dsm1780859ljm.126.2022.08.30.06.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 06:23:41 -0700 (PDT)
Message-ID: <12f51601-9a21-cbe9-370a-69034a416483@linaro.org>
Date:   Tue, 30 Aug 2022 16:23:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/3] dt-bindings: i2c: mv64xxx: Document DMA properties
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev
References: <20220830020824.62288-1-samuel@sholland.org>
 <20220830020824.62288-2-samuel@sholland.org>
 <1c9cb6c2-2030-257d-a50d-dada0ab4449e@linaro.org>
 <7fd702e9-dedc-e5bf-fd54-f07d053b1870@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7fd702e9-dedc-e5bf-fd54-f07d053b1870@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 16:10, Samuel Holland wrote:
> On 8/30/22 4:36 AM, Krzysztof Kozlowski wrote:
>> On 30/08/2022 05:08, Samuel Holland wrote:
>>> Allwinner's I2C offload engine includes bidirectional DMA support. Add
>>> the properties for describing this in the devicetree. "dmas" is optional
>>> because not all instances of the controller have their DRQs hooked up.
>>> For example, R_I2C0 and R_I2C1 on V536 have no DRQ number assigned.
>>>
>>> Signed-off-by: Samuel Holland <samuel@sholland.org>
>>
>> Thank you for your patch. There is something to discuss/improve.
>>
>>> ---
>>>
>>>  .../bindings/i2c/marvell,mv64xxx-i2c.yaml           | 13 +++++++++++++
>>>  1 file changed, 13 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
>>> index 0ec033e48830..63d665a4f9bb 100644
>>> --- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
>>> +++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
>>> @@ -66,6 +66,19 @@ properties:
>>>    resets:
>>>      maxItems: 1
>>>  
>>> +  dmas:
>>> +    items:
>>> +      - description: RX DMA Channel
>>> +      - description: TX DMA Channel
>>> +
>>> +  dma-names:
>>> +    items:
>>> +      - const: rx
>>> +      - const: tx
>>> +
>>> +dependencies:
>>> +  dmas: [ dma-names ]
>>
>> Dependency is not needed. meta-schema has it.
> 
> The only dma-names dependencies I see in dtschema (meta-schemas/dma.yaml and
> schemas/dma/dma.yaml) are in the other direction. Those are saying that
> dma-names only makes sense if dmas is provided.
> 
> Here I am saying that the two DMA requests are optional, but only optional
> "together". The node must either have no DMA properties or both DMA properties.

Right, that's correct.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
