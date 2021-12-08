Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF3FF46DD65
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 22:01:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236990AbhLHVFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 16:05:12 -0500
Received: from foss.arm.com ([217.140.110.172]:41584 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236037AbhLHVFM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 Dec 2021 16:05:12 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A8992101E;
        Wed,  8 Dec 2021 13:01:39 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 68DE53F73B;
        Wed,  8 Dec 2021 13:01:38 -0800 (PST)
Message-ID: <e3628134-f032-f799-020f-a17ea124a912@arm.com>
Date:   Wed, 8 Dec 2021 21:01:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 5/5] dt-bindings: perf: Add compatible for Arm DSU-110
Content-Language: en-GB
To:     Rob Herring <robh@kernel.org>
Cc:     will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
        suzuki.poulose@arm.com, thierry.reding@gmail.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1638900542.git.robin.murphy@arm.com>
 <b9364dc5dd31cea84a58c156cfce5b90b9248d7d.1638900542.git.robin.murphy@arm.com>
 <YbD3risJTt2dECOq@robh.at.kernel.org>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <YbD3risJTt2dECOq@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-08 18:21, Rob Herring wrote:
> On Tue, Dec 07, 2021 at 06:20:43PM +0000, Robin Murphy wrote:
>> DSU-110 is the newest and shiniest for Armv9. Its programmer's model is
>> largely identical to the previous generation of DSUs, so we can treat it
>> as compatible, but it does have a a handful of extra IMP-DEF PMU events
>> to call its own. Thanks to the new notion of core complexes, the maximum
>> number of supported CPUs goes up as well.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
>> index b78b6b0fce66..b623520ad302 100644
>> --- a/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
>> +++ b/Documentation/devicetree/bindings/perf/arm,dsu-pmu.yaml
>> @@ -21,7 +21,11 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    const: "arm,dsu-pmu"
>> +    oneof:
> 
> 'oneOf' and should be a list.
> 
> jsonschema is case sensitive yet the tools are silent on wrong case (but
> handled by dtschema).
> 
>> +      const: "arm,dsu-pmu"
>> +      items:
>> +        const: "arm,dsu-110-pmu"
>> +        const: "arm,dsu-pmu"
> 
> 'items' needs to be a list here (Use '-').

Oof, I probably deserved little more than a "go away and test these 
patches" for the monumental cock-up on show here - thanks for all the 
pointers and apologies for testing your patience. That'll be the danger 
of picking commits off an old branch in a hurry despite not remembering 
exactly how complete they were, and assuming the "WIP:" must just be 
because they still need commit messages writing...

I've stopped being a lazy git and installed the schema tooling locally 
now too.

Cheers,
Robin.

> 
>>   
>>     interrupts:
>>       items:
>> @@ -30,7 +34,7 @@ properties:
>>     cpus:
>>       $ref: /schemas/types.yaml#/definitions/phandle-array
>>       minitems: 1
>> -    maxitems: 8
>> +    maxitems: 12
>>       description: List of phandles for the CPUs connected to this DSU instance.
>>   
>>   required:
>> -- 
>> 2.28.0.dirty
>>
>>
