Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42C9C4BA59C
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 17:21:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235114AbiBQQUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 11:20:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243082AbiBQQUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 11:20:50 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3C13A2AA3B9;
        Thu, 17 Feb 2022 08:20:33 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0175113E;
        Thu, 17 Feb 2022 08:20:33 -0800 (PST)
Received: from [10.57.40.147] (unknown [10.57.40.147])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5BAC3F718;
        Thu, 17 Feb 2022 08:20:32 -0800 (PST)
Message-ID: <a0ddff19-9495-fa9f-5bec-b6658522c0bd@arm.com>
Date:   Thu, 17 Feb 2022 16:20:27 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH] dt-bindings: reserved-memory: Add restricted-dma-pool
 constraints
Content-Language: en-GB
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org
References: <79d1914ff04b44c3005072a990d14291c9ce6fce.1645103404.git.robin.murphy@arm.com>
 <CAL_JsqJh26LGyBH34y+68Jq0+NZEm86UfD4-u548YNz=AVYeug@mail.gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAL_JsqJh26LGyBH34y+68Jq0+NZEm86UfD4-u548YNz=AVYeug@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-17 16:05, Rob Herring wrote:
> On Thu, Feb 17, 2022 at 7:10 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> The "restricted-dma-pool" definition prohibits combination with either
>> of the "no-map" and "reusable" properties, but this is only stated in
>> the description text. Add those constraints to the schema so we can
>> properly validate them.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   .../bindings/reserved-memory/shared-dma-pool.yaml   | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
>> index a4bf757d6881..01385581f663 100644
>> --- a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
>> +++ b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
>> @@ -56,6 +56,19 @@ properties:
>>         If this property is present, then Linux will use the region for
>>         the default pool of the consistent DMA allocator.
>>
>> +if:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        const: restricted-dma-pool
>> +then:
>> +  not:
>> +    anyOf:
>> +      - required:
>> +          - no-map
>> +      - required:
>> +          - reusable
> 
> I think it is a bit clearer to disallow properties like this:
> 
> then:
>    properties:
>      no-map: false
>      reusable: false

Aha! I was sure there must be a better way, but couldn't see the wood 
for the trees, thanks!

Robin.

> 
> 
>> +
>>   unevaluatedProperties: false
>>
>>   examples:
>> --
>> 2.28.0.dirty
>>
