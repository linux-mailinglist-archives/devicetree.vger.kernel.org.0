Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34F4227096E
	for <lists+devicetree@lfdr.de>; Sat, 19 Sep 2020 02:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726022AbgISAXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 20:23:51 -0400
Received: from foss.arm.com ([217.140.110.172]:57762 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726009AbgISAXv (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Sep 2020 20:23:51 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 168F01045;
        Fri, 18 Sep 2020 17:23:51 -0700 (PDT)
Received: from [10.57.37.232] (unknown [10.57.37.232])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8BA433F718;
        Fri, 18 Sep 2020 17:23:48 -0700 (PDT)
Subject: Re: [PATCH v2.1 1/3] perf: Add Arm CMN-600 DT binding
To:     Rob Herring <robh@kernel.org>
Cc:     Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, "Saidi, Ali" <alisaidi@amazon.com>,
        tsahee@amazon.com, harb@amperecomputing.com,
        tuanphan@os.amperecomputing.com, james.yang@arm.com,
        patrik.berglund@arm.com
References: <cover.1600357241.git.robin.murphy@arm.com>
 <3647765303e8936d45a69fe7c1f92b8d1b45de4b.1600452762.git.robin.murphy@arm.com>
 <CAL_JsqKQUyp4tUrw149yF5PHgz6HQ3_Szy1PD=L8=pzU_vWotw@mail.gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <152e2d42-9ace-f78b-145a-5882ce936c3e@arm.com>
Date:   Sat, 19 Sep 2020 01:23:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKQUyp4tUrw149yF5PHgz6HQ3_Szy1PD=L8=pzU_vWotw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2020-09-18 19:54, Rob Herring wrote:
> On Fri, Sep 18, 2020 at 12:24 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> Document the requirements for the CMN-600 DT binding. The internal
>> topology is almost entirely discoverable by walking a tree of ID
>> registers, but sadly both the starting point for that walk and the
>> exact format of those registers are configuration-dependent and not
>> discoverable from some sane fixed location. Oh well.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>
>> fix up $id as well, oops...
>>
>>   .../devicetree/bindings/perf/arm,cmn.yaml     | 57 +++++++++++++++++++
>>   1 file changed, 57 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/perf/arm,cmn.yaml
> 
> Do you expect this to cover more than cmn-600? If not, use the
> compatible string for the file name.

As far as I'm aware, future CMN products will maintain the same general 
PMU design, but with enough subtle differences to deserve their own 
compatible strings.

>> diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
>> new file mode 100644
>> index 000000000000..e4fcc0de25e2
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
>> @@ -0,0 +1,57 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +# Copyright 2020 Arm Ltd.
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/perf/arm,cmn.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Arm CMN (Coherent Mesh Network) Performance Monitors
>> +
>> +maintainers:
>> +  - Robin Murphy <robin.murphy@arm.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: arm,cmn-600
>> +
>> +  reg:
>> +    items:
>> +      - description: Physical address of the base (PERIPHBASE) and
>> +          size (up to 64MB) of the configuration address space.
>> +
>> +  interrupts:
>> +    minItems: 1
>> +    maxItems: 4
>> +    items:
>> +      - description: Overflow interrupt for DTC0
>> +      - description: Overflow interrupt for DTC1
>> +      - description: Overflow interrupt for DTC2
>> +      - description: Overflow interrupt for DTC3
>> +    description: One interrupt for each DTC domain implemented must
>> +      be specified, in order. DTC0 is always present.
> 
> What's DTC?

Debug and Trace Controller. I figure it's one of those situations where 
if someone knows enough about a CMN configuration to be able to write 
something to this binding, they're probably going to be familiar with 
the abbreviation.

In CMN terminology, "DT" is all over the place meaning "Debug and 
Trace". Only now do I suddenly realise that discussing this in the 
context of Device Tree is pretty much the worst-case scenario for 
confusion :)

>> +
>> +  arm,root-node:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: Offset from PERIPHBASE of the configuration
>> +      discovery node (see TRM definition of ROOTNODEBASE).
> 
> You can enforce some alignment:
> 
> multipleOf: 0x4000

That's one of the things that may vary in future, so I'm doubtful if it 
would really be worth the bother. There's only one correct value for a 
given configuration, and still hundreds of appropriately-aligned wrong 
ones, so ultimately either it's right and it works, or it's not and it 
won't (any sensible driver should do a bit of sanity-checking during 
discovery anyway).

Robin.

>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - arm,root-node
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/interrupt-controller/irq.h>
>> +    pmu@50000000 {
>> +        compatible = "arm,cmn-600";
>> +        reg = <0x50000000 0x4000000>;
>> +        /* 4x2 mesh with one DTC, and CFG node at 0,1,1,0 */
>> +        interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
>> +        arm,root-node = <0x104000>;
>> +    };
>> +...
>> --
>> 2.28.0.dirty
