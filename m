Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 222A3168368
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 17:30:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726494AbgBUQa5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 11:30:57 -0500
Received: from foss.arm.com ([217.140.110.172]:43068 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726032AbgBUQa5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 21 Feb 2020 11:30:57 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33DBB30E;
        Fri, 21 Feb 2020 08:30:57 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D2033F68F;
        Fri, 21 Feb 2020 08:30:56 -0800 (PST)
Subject: Re: [PATCH 2/3] dt-bindings: ARM: Add recent Cortex/Neoverse PMUs
To:     Rob Herring <robh@kernel.org>
Cc:     Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
References: <cover.1582300927.git.robin.murphy@arm.com>
 <3954ca0b86641e5e6a1935886df6658b9305ec4a.1582300927.git.robin.murphy@arm.com>
 <CAL_JsqKgz7N=nsA=TgJx=G9Zad77s39gyd3fwJV71-hdqokQpg@mail.gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <14fec4e8-acde-23b8-ac59-22c0e358b5c8@arm.com>
Date:   Fri, 21 Feb 2020 16:30:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKgz7N=nsA=TgJx=G9Zad77s39gyd3fwJV71-hdqokQpg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2020 4:26 pm, Rob Herring wrote:
> On Fri, Feb 21, 2020 at 10:05 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> Add new PMU definitions to correspond with the CPU bindings.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/pmu.yaml | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/pmu.yaml b/Documentation/devicetree/bindings/arm/pmu.yaml
>> index 52ae094ce330..cc52195d0e9e 100644
>> --- a/Documentation/devicetree/bindings/arm/pmu.yaml
>> +++ b/Documentation/devicetree/bindings/arm/pmu.yaml
>> @@ -21,11 +21,20 @@ properties:
>>         - enum:
>>             - apm,potenza-pmu
>>             - arm,armv8-pmuv3
>> +          - arm,neoverse-n1-pmu
>> +          - arm,neoverse-e1-pmu
> 
> We've managed to do some interesting sorting here. Oh well.

Indeed; it appeared to be some sort of overlap between reverse-alpha and 
"big-to-little", so I just picked that up and ran with it :)

Thanks,
Robin.

> I'll take patches 1 and 2.
> 
>> +          - arm,cortex-a77-pmu
>> +          - arm,cortex-a76-pmu
>> +          - arm,cortex-a75-pmu
>>             - arm,cortex-a73-pmu
>>             - arm,cortex-a72-pmu
>> +          - arm,cortex-a65-pmu
>>             - arm,cortex-a57-pmu
>> +          - arm,cortex-a55-pmu
>>             - arm,cortex-a53-pmu
>>             - arm,cortex-a35-pmu
>> +          - arm,cortex-a34-pmu
>> +          - arm,cortex-a32-pmu
>>             - arm,cortex-a17-pmu
>>             - arm,cortex-a15-pmu
>>             - arm,cortex-a12-pmu
>> --
>> 2.23.0.dirty
>>
