Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9ED6D2660
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 18:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231136AbjCaQ7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 12:59:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231837AbjCaQ7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 12:59:09 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 75BEAD52B
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 09:58:59 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8BA1511FB;
        Fri, 31 Mar 2023 09:59:43 -0700 (PDT)
Received: from [10.1.196.177] (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DCCA63F793;
        Fri, 31 Mar 2023 09:58:52 -0700 (PDT)
Message-ID: <f9bb371f-427f-84f7-690c-8f96fff31d43@arm.com>
Date:   Fri, 31 Mar 2023 17:58:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <20230330165128.3237939-2-james.morse@arm.com>
 <8a1b2aeb-c89e-d8de-1784-e0cf9ec33aa3@linaro.org>
From:   James Morse <james.morse@arm.com>
In-Reply-To: <8a1b2aeb-c89e-d8de-1784-e0cf9ec33aa3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof

On 31/03/2023 09:29, Krzysztof Kozlowski wrote:
> On 30/03/2023 18:51, James Morse wrote:
>> The Errata Management SMCCC interface allows firmware to advertise whether
>> the OS is affected by an erratum, or if a higher exception level has
>> mitigated the issue. This allows properties of the device that are not
>> discoverable by the OS to be described. e.g. some errata depend on the
>> behaviour of the interconnect, which is not visible to the OS.
>>
>> Deployed devices may find it significantly harder to update EL3
>> firmware than the device tree. Erratum workarounds typically have to
>> fail safe, and assume the platform is affected putting correctness
>> above performance.
>>
>> Instead of adding a device-tree entry for any CPU errata that is
>> relevant (or not) to the platform, allow the device-tree to describe
>> firmware's responses for the SMCCC interface. This could be used as
>> the data source for the firmware interface, or be parsed by the OS if
>> the firmware interface is missing.
>>
>> Most errata can be detected from CPU id registers. These mechanisms
>> are only needed for the rare cases that external knowledge is needed.

>> diff --git a/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
>> new file mode 100644
>> index 000000000000..9baeb3d35213
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
>> @@ -0,0 +1,77 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/firmware/arm,errata-management.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> 
> Except missing testing...

After a couple of hours of testing this, I went blind and missed that it was still
complaining about spaces.


>> +
>> +title: Errata Management Firmware Interface
>> +
>> +maintainers:
>> +  - James Morse <james.morse@arm.com>
>> +
>> +description: |+
> 
> Do not need '|+'.
> 
>> +  The SMC-CC has an erratum discovery interface that allows the OS to discover
>> +  whether a particular CPU is affected by a specific erratum when the
>> +  configurations affected is only known by firmware. See the specification of
>> +  the same title on developer.arm.com, document DEN0100.
>> +  Provide the values that should be used by the interface, either to supplement
>> +  firmware, or override the values firmware provides.
> 
> Why? If you have the discovery interface, don't add stuff to the DT, but
> use that interface.

A DT property was explicitly requested by Marc Z on the RFC:
https://lore.kernel.org/linux-arm-kernel/86mt5dxxbc.wl-maz@kernel.org/

The concern is that platforms where the CPU is affected, but the issue is masked by the
interconnect will never bother with a firmware interface. The kernel can't know this, so
has to enable the workaround at the cost of performance.

Adding a DT property to describe the hardware state of the erratum avoids the need for
separate kernel builds to work around the missing firmware.


>> +      - const: arm,cpu-erratum-list
>> +
>> +  arm,erratum-affected:
>> +    description: Erratum numbers that this CPU is affected by.
> 
> Isn't this explicit from CPU compatible?

I'll drop it from the compatible. The concern is arm add erratum in other IP to this
interface, hence shoving 'cpu' in a few places to future proof it against changes in the spec.


>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    minItems: 1

> What do the numbers mean?

The numbers are unique identifiers issued by the CPU designer to identify the part
affected and the erratum. See the cover-letter for links to arms documents for all these
CPUs, or Documentation/arm64/silicon-errata.txt for a table of those the kernel works around.


> maxItems?

If there are zero entries, the table can be omitted, hence minItems.

This is the first erratum workaround that needs to know non-discoverable CPU properties,
but there will be others.


Thanks,

James
