Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F9916D670A
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 17:19:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233075AbjDDPTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 11:19:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232696AbjDDPTR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 11:19:17 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 14CF710D3
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 08:19:14 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B25ED75;
        Tue,  4 Apr 2023 08:19:58 -0700 (PDT)
Received: from [10.1.196.177] (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18C2A3F73F;
        Tue,  4 Apr 2023 08:19:08 -0700 (PDT)
Message-ID: <3cfee002-7af6-7f8c-3206-a116bd3a9d20@arm.com>
Date:   Tue, 4 Apr 2023 16:19:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
Content-Language: en-GB
To:     Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <20230330165128.3237939-2-james.morse@arm.com>
 <CAL_Jsq+kejKAY6+kVQ1xL9z0vR=dxneTHKvufW2MUSy3mzgj-A@mail.gmail.com>
 <cbbcd0e3-7269-315f-af13-208a3282f17b@arm.com>
 <CAL_JsqKQRNmJkSTio+h6C92dEUoSimoGbmJQ4dMVW_ZAeRku7A@mail.gmail.com>
From:   James Morse <james.morse@arm.com>
In-Reply-To: <CAL_JsqKQRNmJkSTio+h6C92dEUoSimoGbmJQ4dMVW_ZAeRku7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 03/04/2023 16:45, Rob Herring wrote:
> On Fri, Mar 31, 2023 at 11:59 AM James Morse <james.morse@arm.com> wrote:
>> On 31/03/2023 14:46, Rob Herring wrote:
>>> On Thu, Mar 30, 2023 at 11:52 AM James Morse <james.morse@arm.com> wrote:
>>>> The Errata Management SMCCC interface allows firmware to advertise whether
>>>> the OS is affected by an erratum, or if a higher exception level has
>>>> mitigated the issue. This allows properties of the device that are not
>>>> discoverable by the OS to be described. e.g. some errata depend on the
>>>> behaviour of the interconnect, which is not visible to the OS.
>>>>
>>>> Deployed devices may find it significantly harder to update EL3
>>>> firmware than the device tree. Erratum workarounds typically have to
>>>> fail safe, and assume the platform is affected putting correctness
>>>> above performance.
>>>
>>> Updating the DT is still harder than updating the kernel. A well
>>> designed binding allows for errata fixes without DT changes. That
>>> generally means specific compatibles up front rather than adding
>>> properties to turn things on/off.
>>
>> I started with a per-erratum identifier, but there are 8 of them, and its hard to know
>> where to put it.

> That's still requiring updating the DT to fix things.

.... this discussion is about how to add this stuff to DT ...


>> The CPU side is detectable from the MIDR,its an interconnect property
>> that we need to know ... but the interconnect isn't described in the DT. (but the obvious
>> compatible string identifies the PMU)
> 
> But the interconnect could be described. In fact, there's a binding
> for such things already. Surprisingly, it's called 'interconnects'...
> Of course, there are lots of interconnects in SoCs and the one you
> need may not be described ('cause it is invisible to s/w (until it's
> not)). There's a binding going back to the CCI-400 in fact. So it
> isn't really that interconnects aren't described, it's that they
> aren't consistently described.

This is the CPU interconnect, but it already has a binding:
Documentation/devicetree/bindings/perf/arm,cmn.yaml

This describes the PMU, which is the only bit of that IP that is interesting to the OS.

I can search for the "arm,cmn-600", "arm,cmn-650", "arm,cmn-700" compatibles, but this is
a list that would have to be added to each time arm, or someone else, create a new
interconnect. It is more manageable than listing the affected platforms.

But if a SoC is not configured to allow normal-world accesses to the interconnect PMU, the
existing binding is of no use.


Should I be looking at adding a compatible "arm,interconnect" to the existing PMU binding?
Presumably I'd need an empty node ... somewhere ... with the "arm,interconnect" property
if the platform doesn't have a usable PMU.


Alternatively I could add a 'non_cacheable_fetch_hits_cacheable_data' property to these
nodes, but it doesn't feel right to search all the nodes for the property. The position in
the tree doesn't help as the CPUs live in their own special node, not in the CPU
interconnect node.

(I asked about a top-level property, and was told its not 2012 anymore!)


> If you can add this errata table to the DT, then why not add
> describing the interconnect? Then it will be there for the next thing
> we need the interconnect for. I imagine some of the interconnects are
> already described if not explicitly in bits and pieces (i.e. clocks or
> power domains for the interconnect get tossed into some other node).

Another example in this space might help:
Cortex-A510 has an erratum #2658417 "BFMMLA or VMMLA instructions might produce incorrect
result"

The configurations affected if the shared VPU datapath (whatever that is) between a pair
of cores is 2x64. Which cores share what doesn't fit with DT's model of CPUs.

It's a darn sight easier to ask "are you affected by #2658417".

Today, the workaround for that erratum nobbles the feature on all CPUs, because the OS
can't know. With either the firmware interface, or this description of it, BF16 can be
re-enabled on those parts that aren't affected.

Improving this falls in to the same trap of people not updating EL3 firmware when they
aren't affected by an erratum.


Another example in the same document is #2022138 "Core in FULL_RET might not have clock
gated" ... fortunately EL3 implements this one, as I've no idea what "if the FULL_RET
power mode has been implemented for logic retention" means.

My point is: these things are nasty. Using the erratum number to identify the conditions
and the workaround gives us one unambiguous source of truth.


>>> Do we really want to encourage/endorse/support non-updatable firmware?
>>> We've rejected plenty of things with 'fix your firmware'.
>>
>> A DT property was explicitly requested by Marc Z on the RFC:
>> https://lore.kernel.org/linux-arm-kernel/86mt5dxxbc.wl-maz@kernel.org/
>>
>> The concern is that platforms where the CPU is affected, but the issue is masked by the
>> interconnect will never bother with a firmware interface. The kernel can't know this, so
>> has to enable the workaround at the cost of performance.
> 
> Sure it can. Worst case, the kernel knows the exact SoC and board it
> is running on because we have root level compatibles for those. It's
> just a question of whether using those would scale or not. Whether
> that scales or not depends on both how long the lists are and how
> distributed the implementation is (e.g. PCI quirks). More on that
> below.

My stab in the dark at the length of the list is: every variant of every phone shipped in
the last two years, and every variant using these CPUs for a few more years. We'd never
have a complete list. Moving this to firmware (be that DT or EL3) is the only way to make
this scale.


>> Adding a DT property to describe the hardware state of the erratum avoids the need for
>> separate kernel builds to work around the missing firmware.

> DT is not the kernel's runtime configuration mechanism. That assumes a
> tight coupling of the DT and kernel. That may work for some cases like
> Android with kernel and DT updated together, but for upstream we can't
> assume that coupling and must treat it as an ABI (not an issue for
> this case).

> The kernel command line is a runtime config mechanism for the kernel.
> So why not use only that?

As implemented in patch 6.


> There's certainly some room for improvement
> with handling it. For example, it's not well defined with what happens
> with 'bootargs' as you go from a dtb to bootloader to kernel in terms
> of overriding/prepending/appending, but that could be addressed.

Command-line arguments are horrific for the distributions to work with. Some tool would
need the list of affected parts to insert the argument, we've just moved the problem.

This isn't policy, so the command-line is the wrong tool for the job. Patch 6 is only
included to give people stuck with an affected platform something they can do.


>>>> Instead of adding a device-tree entry for any CPU errata that is
>>>> relevant (or not) to the platform, allow the device-tree to describe
>>>> firmware's responses for the SMCCC interface. This could be used as
>>>> the data source for the firmware interface, or be parsed by the OS if
>>>> the firmware interface is missing.
>>
>>> What's to prevent vendors from only using the DT mechanism and never
>>> supporting the SMCCC interface? I'm sure some will love to not have to
>>> make a firmware update when they can just fix it in DT.
>>
>> The firmware interface has to exist for ACPI systems where EL3 can't influence the ACPI
>> tables, which typically get replaced if the part is OEM'd.
>>
>> Ultimately all the interface is describing is a non-discoverable hardware property
>> relevant to an erratum. These are often configurations the silicon manufacturer chooses.
>> In this case its the behaviour of the interconnect.
>>
>> If we didn't have to support ACPI systems, this stuff would only have been in the DT. With

> With...?

Looks like I got interrupted when writing this.


> I fail to see what ACPI has to do with DT platforms adopting the SMCCC
> interface or not.

My point was the SMCCC interface has to exist because of ACPI systems. Without them, the
available tools to solve the problem would be different.

I don't see a difference between using SMCCC as a source of this information, or the
firmware node of the DT. I have no problem if the manufacturers of DT systems never
implement the SMCCC. The EL3 firmware already contains these tables, including them in the
firmware node of the DT is just making the information visible.


>>> The downside to this extendable binding compared to simple properties
>>> is parsing a flat tree is slow and more complicated. So it may be
>>> difficult to support if you need this early in boot.
>>
>> I do need this early in the boot, but I'm not worried about the delay as these tables
>> should be small.
>>
>>
>>>> Most errata can be detected from CPU id registers. These mechanisms
>>>> are only needed for the rare cases that external knowledge is needed.
>>>
>>> And also have significant performance impact. In the end, how many
>>> platforms are there that can't fix these in firmware and need a
>>> mainline/distro kernel optimized to avoid the work-around. I suspect
>>> the number is small enough it could be a list in the kernel.
>>
>> At a guess, its all mobile phones produced in the last 2 years that want to run a version
>> of Android that uses virtualisation. Cortex-A78 is affected, but I don't know when the
>> first products were shipped.

> How many run mainline and run it well enough to even care about the
> optimization yet?

By the optimization I assume you mean FWB?

This happens when the VM takes a stage2 translation fault because the host's mm code moved
the memory. (due to THP, KSM, compaction, etc). The guest vCPU is blocked until the cache
maintenance completes. The feature was added because of the overhead for memory intensive
workloads.

Affected platforms will be stuck with this, but I anticipate they are in the minority.


> Even if we went with the above list, that's 2 years x 4 vendors (QCom,
> Mediatek, Samsung, Google) x 1-2 Soc (high and mid tier).

If this is the top-level DT machine compatible, wouldn't you see Xiaomi, Oppo, Huawei etc?
Wikipedia lists 175 brands.

If this is SoC-ID ... I've no idea how to start collecting those values.


> Subtract out
> any vendors capable of updating their firmware. So a worst case list
> of potentially 8-16 SoCs? It shouldn't grow because anything newer is
> going to implement the SMCCC interface, right? That's not unmanageable
> in my book.

If we wanted a short list, we could just list the affected platforms.

But I don't think the scaleability or manageability is about the length of the list, its
about knowing you've got the complete list. I've seen VMs running on network switches, I
wouldn't be surprised if there are DT systems in this space.

Pushing this back into the firmware description moves this problem to someone much closer
to the device, who is able to get the SoC manufacturer to answer questions.

Doing it in terms of the erratum number means the question is unambiguous.


Thanks,

James
