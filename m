Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0D4C5BF91F
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:26:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbiIUI0n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:26:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230205AbiIUI0U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:26:20 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E32338A1F0
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:25:34 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a8so7888140lff.13
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=kllsaU+NrhBActC8/Ko962C+vx5weLH497C4j1ASf9o=;
        b=zWLXZoJJQ3xhYU/XcWK2I428YuQvun/7UY+WRs0+BYAAZKcmybbhZqBOE3OweGuGY4
         1XHSKLHuXqUa9vJU7EoRVjf9weaO9bwDxbR3jMAzcRsqzCe8qMpDLnUSxHDMrsoiM01z
         Uau16EpBeQDeVz+urQlXrcatyvzv1bY/dsJyps3utYxS4jFm0Faj51cwy8sVz9MHfaTA
         pbvvzGCEkjH0bnsanues36FdO9hFUzPnn21WWOoJOI1RIq3epBujjl+cxwKdvjPxtwQa
         RmKNYIH4DnY8lCDYpdPGxJrdJMPmA8tht2L7GRe0YhG/CwAjwGfGjNEQYVuRL/VR/Dhd
         io1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=kllsaU+NrhBActC8/Ko962C+vx5weLH497C4j1ASf9o=;
        b=oeWlbZI3z+dJq0GSBjIUJ1RKLjwR0yRUdq9MdFNR2OnfbHZD0qZn0MZnI/dHCrtbcd
         SC6x22FgVAdO37SYeM/8gwOv7nUNWynWgulP/4UOUaRKftbA5F6+Jh8TFSf5VSMy5QbZ
         ld4x8veVVvot1Ym7oV8io1k1y2ZMXEijUDCMjfOp9Cn+RyIMrGkI8BJG2AosJnt5hu7x
         i0ZGs7SFzDXLDEBWvJaGbBtd874iD/YbMVOr40SoT/CSO7x0AsMkb9OXv6XKmSK7IPiG
         FDzCQ55s6ItrtqiZpOkntxUh+dxkZ08/fZZQOKWtbAANYZoyX7xVzoXh9SbR9cnJBJ/F
         MJ3A==
X-Gm-Message-State: ACrzQf2WjtTQCCgk9y1oDwBAoIXAZTjXZdPZymTlWccbj24IV/+axaQm
        MBeYUgopnbm+lTFKamcb/qHonQ==
X-Google-Smtp-Source: AMsMyM5Qnrc77hlPHwoCJT5SM2C65rB7OQsSimZswtBSaPyKSq1NdLzlagQ3zPjvK3IlD/iswCJP1A==
X-Received: by 2002:a05:6512:6c8:b0:49a:1765:335d with SMTP id u8-20020a05651206c800b0049a1765335dmr9283076lff.29.1663748732570;
        Wed, 21 Sep 2022 01:25:32 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v18-20020a2ea612000000b0026c4113c150sm329526ljp.111.2022.09.21.01.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 01:25:31 -0700 (PDT)
Message-ID: <7edc0445-c5d4-64a7-0261-f9db9b10158e@linaro.org>
Date:   Wed, 21 Sep 2022 10:25:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [RFC V2 PATCH 2/3] dt-bindings: net: xilinx_axienet: Introduce
 dmaengine binding support
Content-Language: en-US
To:     "Pandey, Radhey Shyam" <radhey.shyam.pandey@amd.com>,
        "Gaddam, Sarath Babu Naidu" <sarath.babu.naidu.gaddam@amd.com>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "edumazet@google.com" <edumazet@google.com>,
        "kuba@kernel.org" <kuba@kernel.org>,
        "pabeni@redhat.com" <pabeni@redhat.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Cc:     "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Simek, Michal" <michal.simek@amd.com>,
        "Sarangi, Anirudha" <anirudha.sarangi@amd.com>,
        "Katakam, Harini" <harini.katakam@amd.com>,
        "git@xilinx.com" <git@xilinx.com>, "git (AMD-Xilinx)" <git@amd.com>
References: <20220920055703.13246-1-sarath.babu.naidu.gaddam@amd.com>
 <20220920055703.13246-3-sarath.babu.naidu.gaddam@amd.com>
 <d179f987-6d3b-449f-8f48-4ab0fff43227@linaro.org>
 <MN0PR12MB5953B2E399B48AC410F4AC2DB74F9@MN0PR12MB5953.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MN0PR12MB5953B2E399B48AC410F4AC2DB74F9@MN0PR12MB5953.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 10:23, Pandey, Radhey Shyam wrote:
>>>  required:
>>>    - compatible
>>>    - interrupts
>>>    - reg
>>>    - xlnx,rxmem
>>>    - phy-handle
>>> +  - dmas
>>> +  - dma-names
>>>
>>>  additionalProperties: false
>>>
>>> @@ -132,11 +137,13 @@ examples:
>>>      axi_ethernet_eth: ethernet@40c00000 {
>>>        compatible = "xlnx,axi-ethernet-1.00.a";
>>>        interrupt-parent = <&microblaze_0_axi_intc>;
>>> -      interrupts = <2>, <0>, <1>;
>>> +      interrupts = <1>;
>>
>> This looks like an ABI break. How do you handle old DTS? Oh wait... you do
>> not handle it at all.
> 
> Yes, this is anticipated ABI break due to major changes in axiethernet
> driver while adopting to dmaengine framework. Same is highlighted
> in commit description - "DT changes are not backward compatible 
> due to major driver restructuring/cleanup done in adopting the 
> dmaengine framework". 
> 
> Some background - Factor out AXI DMA code into separate driver was
> a TODO item (mentioned in driver changelog) and is being done as 
> part of this series. The DMA code is removed from axiethernet driver 
> and ethernet driver now make use of dmaengine framework to 
> communicate with AXIDMA IP.
> 
> When DMA code is removed from axiethernet driver there is limitation
> to support legacy DMA resources binding. One option is to inform
> user to switch to new binding when old DTS is detected? (and at some
> point we have to make this transition and remove dma code).

If you keep ABI non-broken, such message is a good idea.

> Please let us know if there are any other alternative to consider?

You just cannot break ABI just because you want to refactor some code in
driver.


Best regards,
Krzysztof
