Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69233512FB2
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 11:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbiD1JsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 05:48:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346836AbiD1J1U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 05:27:20 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 74FF57B553
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 02:24:06 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F19681474;
        Thu, 28 Apr 2022 02:24:05 -0700 (PDT)
Received: from [10.57.80.98] (unknown [10.57.80.98])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 96B213F774;
        Thu, 28 Apr 2022 02:24:03 -0700 (PDT)
Message-ID: <7c5d39b2-7016-b6c6-ae88-b0f4a517f255@arm.com>
Date:   Thu, 28 Apr 2022 10:23:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 01/11] dt-bindings: iommu: arm,smmu-v3: make PRI IRQ
 optional
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-2-andre.przywara@arm.com>
 <4d37f41c-4463-73e4-7271-8d191e9953af@linaro.org>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <4d37f41c-4463-73e4-7271-8d191e9953af@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-04-28 07:56, Krzysztof Kozlowski wrote:
> On 27/04/2022 13:25, Andre Przywara wrote:
>> The Page Request Interface (PRI) is an optional PCIe feature. As such, a
>> SMMU would not need to handle it if the PCIe host bridge or the SMMU
>> itself do not implement it. Also an SMMU could be connected to a platform
>> device, without any PRI functionality whatsoever.
>> In all cases there would be no SMMU PRI queue interrupt to be wired up
>> to an interrupt controller.
>>
>> Relax the binding to allow specifying three interrupts, omitting the PRI
>> IRQ. At the moment, with the "eventq,gerror,priq,cmdq-sync" order, we
>> would need to sacrifice the command queue sync interrupt as well, which
>> might not be desired.
>> The Linux driver does not care about any order at all, just picks IRQs
>> based on their names, and treats all (wired) IRQs as optional.
> 
> The last sentence is not a good explanation for the bindings. They are
> not about Linux and are used in other projects as well.
> 
>>
>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>> ---
>>   .../bindings/iommu/arm,smmu-v3.yaml           | 21 ++++++++++++++-----
>>   1 file changed, 16 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
>> index e87bfbcc69135..6b3111f1f06ce 100644
>> --- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
>> +++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
>> @@ -37,12 +37,23 @@ properties:
>>             hardware supports just a single, combined interrupt line.
>>             If provided, then the combined interrupt will be used in preference to
>>             any others.
>> -      - minItems: 2
>> +      - minItems: 1
>>           items:
>> -          - const: eventq     # Event Queue not empty
>> -          - const: gerror     # Global Error activated
>> -          - const: priq       # PRI Queue not empty
>> -          - const: cmdq-sync  # CMD_SYNC complete
>> +          - enum:
>> +              - eventq     # Event Queue not empty
>> +              - gerror     # Global Error activated
>> +              - cmdq-sync  # CMD_SYNC complete
>> +              - priq       # PRI Queue not empty
>> +          - enum:
>> +              - gerror
>> +              - cmdq-sync
>> +              - priq
>> +          - enum:
>> +              - cmdq-sync
>> +              - priq
>> +          - enum:
>> +              - cmdq-sync
>> +              - priq
> 
> The order should be strict, so if you want the first interrupt optional,
> then:
> oneOf:
>   - items:
>      ... 4 items list
>   - items
>      ... 3 items list

All 4 interrupts are optional, though, since any of them could 
potentially use an MSI instead. Do we really want to list out all 15 
combinations?

Robin.
