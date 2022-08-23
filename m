Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2420159E49E
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 15:46:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240579AbiHWNqk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 09:46:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240770AbiHWNqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 09:46:21 -0400
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0FF086FC5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:51:12 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id z20so13135089ljq.3
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=4iCZIPBqKk4aWYa7eJT+SaYkcQXkWhohlhOpL9YUDVU=;
        b=E/VbHdOW7s+2eeUSVsRs5XJAI+yAma5X7QmOdeUSyI23lBuncOs23O+KSvjE/CB8/x
         vQ0yLqWOc8zCsUK3qE6LHVCT5n6wWkx1uUoexhfa/Ef7uH8kWkUNTyouNAkO1GsSvs52
         2c5Io2guzADNJZOb5ZLlwLwyjSpbmzXGRT22xT4ArShG24fQJiRcCB7hnBvwROwTKEwA
         O10oUQmtEZqIJJypRhKbT1R6+l93NSoAC3YtGXFDFkP0+HzvK6nbxPTK3kLElZh+fWxL
         0YglQdYiqnYRKbYZP258n9+0y9FxZaOQk/YTqTzUUxofQdoiGFeMqFhZ6bmIPPrgIzYS
         8kIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=4iCZIPBqKk4aWYa7eJT+SaYkcQXkWhohlhOpL9YUDVU=;
        b=7VF5O+wGZMNJtZjTBvJ/b553FiDLvIwdAECO3UFEj/OKAJMTYZkn4QMQJOgsAfmRjB
         17Zq2C53DLZ9ScVgxqkcIXypRKxBEsFpeNeUNGrJWUWvR4ytB/QSeRNpcBp5pzXTxjJy
         cgJlSJnAietG/jzPxpfl4TkLKlkSKStL5PbfmrWM5NUvmsdFMA+NsRu46xbpeFJjwtbt
         QJxQdRWjP4wYqR8BWF2E1MT3ahCXJY+hIdCDL+G5n4/xjFg0hsgrB9VjHSnpW2Fm5DIS
         IXAqGG0OzIF8hZobYgQnD9+zhkE4x8CGe+ecrw2tz7DKM/lNqpmK4o2iG6ez+qh3ntYL
         bGZQ==
X-Gm-Message-State: ACgBeo1lei5Ny3QOkP+dkck+D5/VtIZQAnJNdgdLYQWKLIHFWXNXc5sD
        x9qsOH7ZklpKliQ6e+y8vjhhmA==
X-Google-Smtp-Source: AA6agR4WBOwY8UcpEmJ1aepVJpP/ZPvtXXCBnO8R0qkAsHVgv+/VM/SWcR0hP2kXefVSXz44zxUwPg==
X-Received: by 2002:a2e:92c8:0:b0:25d:6ddf:e71d with SMTP id k8-20020a2e92c8000000b0025d6ddfe71dmr6570635ljh.170.1661251716963;
        Tue, 23 Aug 2022 03:48:36 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id u7-20020a05651220c700b0048b003c4bf7sm1535952lfr.169.2022.08.23.03.48.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 03:48:36 -0700 (PDT)
Message-ID: <50eaf3b1-0681-a0a9-b120-4ade4e91e83a@linaro.org>
Date:   Tue, 23 Aug 2022 13:48:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 4/7] dt-bindings: net: dsa: mediatek,mt7530: define
 port binding per compatible
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        Luiz Angelo Daros de Luca <luizluca@gmail.com>,
        Sander Vanheule <sander@svanheule.net>,
        =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
        Daniel Golle <daniel@makrotopia.org>, erkin.bozoglu@xeront.com,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220813154415.349091-1-arinc.unal@arinc9.com>
 <20220813154415.349091-5-arinc.unal@arinc9.com>
 <d2279a7d-bbc3-c772-1f30-251f056341bb@linaro.org>
 <0bf02926-753e-e8d5-1d87-f286ed743fb2@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0bf02926-753e-e8d5-1d87-f286ed743fb2@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 10:34, Arınç ÜNAL wrote:
> On 19.08.2022 15:43, Krzysztof Kozlowski wrote:
>> On 13/08/2022 18:44, Arınç ÜNAL wrote:
>>> Define DSA port binding under each compatible device as each device
>>> requires different values for certain properties.
>>>
>>> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
>>> ---
>>>   .../bindings/net/dsa/mediatek,mt7530.yaml     | 116 +++++++++++++-----
>>>   1 file changed, 87 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
>>> index cc87f48d4d07..ff51a2f6875f 100644
>>> --- a/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
>>> +++ b/Documentation/devicetree/bindings/net/dsa/mediatek,mt7530.yaml
>>> @@ -130,35 +130,6 @@ properties:
>>>         ethsys.
>>>       maxItems: 1
>>>   
>>> -patternProperties:
>>> -  "^(ethernet-)?ports$":
>>> -    type: object
>>> -
>>> -    patternProperties:
>>> -      "^(ethernet-)?port@[0-9]+$":
>>> -        type: object
>>> -        description: Ethernet switch ports
>>> -
>>
>> my comments from v1 apply here
>>
>> None of the reasons you said force you to define properties in some
>> allOf:if:then subblock. These force you to constrain the properties in
>> allOf:if:then, but not define.
>>
>>
>>> I can split patternProperties to two sections, but I can't directly
>>> define the reg property like you put above.
>>
>> Of course you can and original bindings were doing it.
>>
>> Let me ask specific questions (yes, no):
>> 1. Are ethernet-ports and ethernet-port present in each variant?
>> 2. Is dsa-port.yaml applicable to each variant? (looks like that - three
>> compatibles, three all:if:then)
>> 3. If reg appearing in each variant?
>> 4. If above is true, if reg is maximum one item in each variant?
> 
> All yes.
> 
>>
>> Looking at your patch, I think answer is 4x yes, which means you can
>> define them in one place and constrain in allOf:if:then, just like all
>> other schemas, because this one is not different.
> 
> If I understand correctly, I do this already with v3. Properties are 
> defined under the constructed node. Accepted values for properties are 
> constrained under if:then.

v4 doesn't do it. You removed there patternProperties - again.


Best regards,
Krzysztof
