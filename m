Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E8F8569A70
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 08:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234328AbiGGGYw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 02:24:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234183AbiGGGYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 02:24:51 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 680E7633F
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 23:24:50 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id i18so29415465lfu.8
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 23:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ka73ksxu+hxGRgu+9tYuA0Z77+ImgIP1LdEhT2wtPWA=;
        b=Sp0NU56km0mIu1RXJojDZnCI9meAzB+oLFn15jHOejAvMHHxiIk7ulYAJWytsPzW+h
         LcFr1RicQloktp/Kt7qqyP4VVxou11oak0ledRlnK9b/ift/qh4O3ac2yZqUZfkgErEn
         5lOm4ZFLFImt1R3RyJVwtJlh1BytZQ7SjrCMHlXytR7K5BEcNy1HrQZ5FMtVLYwjXpl7
         BStZTbs8iwJHlbb477EYE7jOIgCpmGtuFnNeZrU3cIwk74lpKpDGyB6XQ6I/eOHJTvqQ
         4mh1Po/xvaUVk7k5DNLk/LedJws+uqUphY5O4+SdA7Vh1GvPYsBg5jdnpFtWQ5G1CMyZ
         Fc/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ka73ksxu+hxGRgu+9tYuA0Z77+ImgIP1LdEhT2wtPWA=;
        b=nX8V6qNDFahcqY/1FDsOLmHj/ySGd4E7nn0G3f1Lns6KetEw+icmu9bViFhr7Tu75P
         zwPAUw1o9SBEEkgyRUWCInvzymPoTZKeQG2q0m0oSJCYxWjpQwgqZ6MnVwASbwVNOmWt
         CBc0sFX0hm1ERoei+WWCXqmC/EV9aSTsRFWDvdqCjm5zf6mLwoOHSDvI550nlo/eiBZh
         Nxn9Z/xRLpiGOnS3JxU5iJ1W5dmsQ1Dgb8PGFPumnMdXJSizMCga2D6VBTzpDGVLDKKh
         NpreuWO2eQBG94fwW0el+ViofgzbEPV9x27BTZinEc1uxaC/fVKbDZaR0pwsCb9Y/KHS
         s0Xw==
X-Gm-Message-State: AJIora9InuD8xmU/c/nU1l2qFNcTgbOzjfUc4CcSmE0VVQsGSY/SWlXt
        BCW6XJUfOofijz2661BCSYfHfw==
X-Google-Smtp-Source: AGRyM1vd4NLbebMaHXbuzIuN/do4pO9zQCL4VXj9CtvY2fYfhiHMf34fHftOvLke9xn2B3mljxS6jw==
X-Received: by 2002:a05:6512:acc:b0:47f:769e:6aef with SMTP id n12-20020a0565120acc00b0047f769e6aefmr27278749lfu.26.1657175088759;
        Wed, 06 Jul 2022 23:24:48 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z9-20020a0565120c0900b0047f66471224sm6653326lfu.222.2022.07.06.23.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 23:24:48 -0700 (PDT)
Message-ID: <de149943-0428-1250-258e-458ef94d1108@linaro.org>
Date:   Thu, 7 Jul 2022 08:24:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: phy: samsung,ufs-phy: match clock items
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>,
        'Rob Herring' <robh+dt@kernel.org>
Cc:     'Alim Akhtar' <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <CGME20220707005844epcas2p474d0ac5ca2d11bb37bc6353b9e7d50bc@epcas2p4.samsung.com>
 <20220707005554.98268-1-chanho61.park@samsung.com>
 <f8107455-7bf0-2bc7-2fcd-4d0bb65ffd58@linaro.org>
 <013601d891ca$160b4bd0$4221e370$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <013601d891ca$160b4bd0$4221e370$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 08:23, Chanho Park wrote:
>>> Below error is detected from dtbs_check. exynos7-ufs-phy is required
>>> symbol clocks otherwise only PLL ref clock is required.
>>>
>>> clock-names: ['ref_clk'] is too short
>>
>> Thank you for your patch. There is something to discuss/improve.
> 
> Thanks for your review :) 
> 
>>
>>>
>>> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>> Suggested-by: Alim Akhtar <alim.akhtar@samsung.com>
>>> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>>> ---
>>>  .../bindings/phy/samsung,ufs-phy.yaml         | 47 +++++++++++++++----
>>>  1 file changed, 37 insertions(+), 10 deletions(-)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>>> b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>>> index 8da99461e817..3b04f31d9f21 100644
>>> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>>> @@ -27,18 +27,12 @@ properties:
>>>        - const: phy-pma
>>>
>>>    clocks:
>>> -    items:
>>> -      - description: PLL reference clock
>>> -      - description: symbol clock for input symbol ( rx0-ch0 symbol
>> clock)
>>> -      - description: symbol clock for input symbol ( rx1-ch1 symbol
>> clock)
>>> -      - description: symbol clock for output symbol ( tx0 symbol clock)
>>> +    minItems: 1
>>> +    maxItems: 4
>>>
>>>    clock-names:
>>> -    items:
>>> -      - const: ref_clk
>>> -      - const: rx1_symbol_clk
>>> -      - const: rx0_symbol_clk
>>> -      - const: tx0_symbol_clk
>>> +    minItems: 1
>>> +    maxItems: 4
>>>
>>>    samsung,pmu-syscon:
>>>      $ref: '/schemas/types.yaml#/definitions/phandle-array'
>>> @@ -53,6 +47,39 @@ properties:
>>>        It can be phandle/offset pair. The second cell which can represent
>> an
>>>        offset is optional.
>>>
>>> +allOf:
>>
>> The allOf block should go after "required" block.
> 
> I wrote the block after required block but I changed the order by referring
> https://elixir.bootlin.com/linux/v5.18-rc2/source/Documentation/devicetree/bindings/clock/samsung,exynos7885-clock.yaml#L53
> I'll correct the order.

Yeah, I put not the recommended order. I need to find another example
for giving to people :)


Best regards,
Krzysztof
