Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45AAA513019
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 11:48:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230013AbiD1JsQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 05:48:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347039AbiD1J3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 05:29:00 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D12887C795
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 02:25:45 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id y3so8275425ejo.12
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 02:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tl+Ew+p5mgOymRz/RzX6duiWCdA3k91nvN3DFpn2mvs=;
        b=OGsmf1aLisXy82JCX49AbNjFjZdEWzBM+EZoE6JolFugWYXM1l9os6OUsNciEZ5Fzv
         04HfA8eA3i8SK+37f2xlCpTBF1W1P7sNmOrGuZQUap7XFmxAhGmvW/PrBVRqTcYSS/Uo
         x3fy9G1x0dpRsBDyWXmx8UoUI389bgioMmY0vAvUwYHrYmn9PD9eAhYcnAe0STZUpYgg
         Sj9mSpvvNesXMdckw/4CH0/ZiQ3rcXGAWHqzRhOxaYE4cS+oI5+gX5ZfypYpXGXFd2DE
         ScznhXya/nzDpwSY2XPspwoiU8jok0TRF8CyLXddOKPu4bKRAXHxKUdPmnwdITfXIx6P
         9G+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tl+Ew+p5mgOymRz/RzX6duiWCdA3k91nvN3DFpn2mvs=;
        b=o+UWRrnP5hZkk8nVA4eNbxN4uUdg+UmD27zeW0dVX+h5A/B5dqDGdt8sS1lzxtcA84
         /t2uKWv2XQSHzL2dosvrZqovHxsd+mTQi42X6tTn1Uh5y7MHWR9w/26aLTwx1BHHQoLc
         gjoJXPvxVRK3oDYGfUIeAHhKMwyxppbrBXXHQqPNMfmD+MitU33FKsJ91Zfv2cdMNP/7
         5hwjvboR1jOnR1kBeWow/8alIxJD7BM4RKceg2O4c2LXrpbpsdBoybGKUePTsm8B748F
         XIypYxvQFE1bT90Zk2WJBvBSXjiQGHlDjetEaPFB1t0T4FZAlrFFBKS3GsA2sb8YbIXy
         j5MA==
X-Gm-Message-State: AOAM5311Pbexs09C+psyJzdBR2OX8O8MeSEaDeitOIpDn+R4oMEKh4oV
        HsyPZ1zYKEwFW1IKL1/wOsHK+g==
X-Google-Smtp-Source: ABdhPJzZJWIUPFFcj9Xx/KzYR1+lOIN9SMD4blm0AjGKUJNRIbbf+q5YaPOC4uJ1WPlJsCnd4HG/Rg==
X-Received: by 2002:a17:906:1cd1:b0:6ec:c59:6a1d with SMTP id i17-20020a1709061cd100b006ec0c596a1dmr31340011ejh.77.1651137944365;
        Thu, 28 Apr 2022 02:25:44 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709060a0e00b006f01e581668sm8019551ejf.209.2022.04.28.02.25.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 02:25:43 -0700 (PDT)
Message-ID: <5ff66242-31a6-113d-d49a-091b82b42a37@linaro.org>
Date:   Thu, 28 Apr 2022 11:25:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 01/11] dt-bindings: iommu: arm,smmu-v3: make PRI IRQ
 optional
Content-Language: en-US
To:     Robin Murphy <robin.murphy@arm.com>,
        Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-2-andre.przywara@arm.com>
 <4d37f41c-4463-73e4-7271-8d191e9953af@linaro.org>
 <7c5d39b2-7016-b6c6-ae88-b0f4a517f255@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7c5d39b2-7016-b6c6-ae88-b0f4a517f255@arm.com>
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

On 28/04/2022 11:23, Robin Murphy wrote:
> On 2022-04-28 07:56, Krzysztof Kozlowski wrote:
>> On 27/04/2022 13:25, Andre Przywara wrote:
>>> The Page Request Interface (PRI) is an optional PCIe feature. As such, a
>>> SMMU would not need to handle it if the PCIe host bridge or the SMMU
>>> itself do not implement it. Also an SMMU could be connected to a platform
>>> device, without any PRI functionality whatsoever.
>>> In all cases there would be no SMMU PRI queue interrupt to be wired up
>>> to an interrupt controller.
>>>
>>> Relax the binding to allow specifying three interrupts, omitting the PRI
>>> IRQ. At the moment, with the "eventq,gerror,priq,cmdq-sync" order, we
>>> would need to sacrifice the command queue sync interrupt as well, which
>>> might not be desired.
>>> The Linux driver does not care about any order at all, just picks IRQs
>>> based on their names, and treats all (wired) IRQs as optional.
>>
>> The last sentence is not a good explanation for the bindings. They are
>> not about Linux and are used in other projects as well.
>>
>>>
>>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>>> ---
>>>   .../bindings/iommu/arm,smmu-v3.yaml           | 21 ++++++++++++++-----
>>>   1 file changed, 16 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
>>> index e87bfbcc69135..6b3111f1f06ce 100644
>>> --- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
>>> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
>>> @@ -37,12 +37,23 @@ properties:
>>>             hardware supports just a single, combined interrupt line.
>>>             If provided, then the combined interrupt will be used in preference to
>>>             any others.
>>> -      - minItems: 2
>>> +      - minItems: 1
>>>           items:
>>> -          - const: eventq     # Event Queue not empty
>>> -          - const: gerror     # Global Error activated
>>> -          - const: priq       # PRI Queue not empty
>>> -          - const: cmdq-sync  # CMD_SYNC complete
>>> +          - enum:
>>> +              - eventq     # Event Queue not empty
>>> +              - gerror     # Global Error activated
>>> +              - cmdq-sync  # CMD_SYNC complete
>>> +              - priq       # PRI Queue not empty
>>> +          - enum:
>>> +              - gerror
>>> +              - cmdq-sync
>>> +              - priq
>>> +          - enum:
>>> +              - cmdq-sync
>>> +              - priq
>>> +          - enum:
>>> +              - cmdq-sync
>>> +              - priq
>>
>> The order should be strict, so if you want the first interrupt optional,
>> then:
>> oneOf:
>>   - items:
>>      ... 4 items list
>>   - items
>>      ... 3 items list
> 
> All 4 interrupts are optional, though, since any of them could 
> potentially use an MSI instead. Do we really want to list out all 15 
> combinations?

Bah, I missed that part from commit msg. It's fine then.


Best regards,
Krzysztof
