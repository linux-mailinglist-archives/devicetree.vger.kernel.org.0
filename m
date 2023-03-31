Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CDD26D265F
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 18:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231247AbjCaQ7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 12:59:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231136AbjCaQ7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 12:59:08 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 45324CC32
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 09:58:59 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3326106F;
        Fri, 31 Mar 2023 09:59:42 -0700 (PDT)
Received: from [10.1.196.177] (eglon.cambridge.arm.com [10.1.196.177])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECE7E3F6C4;
        Fri, 31 Mar 2023 09:58:51 -0700 (PDT)
Message-ID: <cbbcd0e3-7269-315f-af13-208a3282f17b@arm.com>
Date:   Fri, 31 Mar 2023 17:58:49 +0100
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
From:   James Morse <james.morse@arm.com>
In-Reply-To: <CAL_Jsq+kejKAY6+kVQ1xL9z0vR=dxneTHKvufW2MUSy3mzgj-A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On 31/03/2023 14:46, Rob Herring wrote:
> On Thu, Mar 30, 2023 at 11:52 AM James Morse <james.morse@arm.com> wrote:
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
> 
> Updating the DT is still harder than updating the kernel. A well
> designed binding allows for errata fixes without DT changes. That
> generally means specific compatibles up front rather than adding
> properties to turn things on/off.

I started with a per-erratum identifier, but there are 8 of them, and its hard to know
where to put it. The CPU side is detectable from the MIDR,its an interconnect property
that we need to know ... but the interconnect isn't described in the DT. (but the obvious
compatible string identifies the PMU)


> Do we really want to encourage/endorse/support non-updatable firmware?
> We've rejected plenty of things with 'fix your firmware'.

A DT property was explicitly requested by Marc Z on the RFC:
https://lore.kernel.org/linux-arm-kernel/86mt5dxxbc.wl-maz@kernel.org/

The concern is that platforms where the CPU is affected, but the issue is masked by the
interconnect will never bother with a firmware interface. The kernel can't know this, so
has to enable the workaround at the cost of performance.

Adding a DT property to describe the hardware state of the erratum avoids the need for
separate kernel builds to work around the missing firmware.


>> Instead of adding a device-tree entry for any CPU errata that is
>> relevant (or not) to the platform, allow the device-tree to describe
>> firmware's responses for the SMCCC interface. This could be used as
>> the data source for the firmware interface, or be parsed by the OS if
>> the firmware interface is missing.

> What's to prevent vendors from only using the DT mechanism and never
> supporting the SMCCC interface? I'm sure some will love to not have to
> make a firmware update when they can just fix it in DT.

The firmware interface has to exist for ACPI systems where EL3 can't influence the ACPI
tables, which typically get replaced if the part is OEM'd.

Ultimately all the interface is describing is a non-discoverable hardware property
relevant to an erratum. These are often configurations the silicon manufacturer chooses.
In this case its the behaviour of the interconnect.

If we didn't have to support ACPI systems, this stuff would only have been in the DT. With


> The downside to this extendable binding compared to simple properties
> is parsing a flat tree is slow and more complicated. So it may be
> difficult to support if you need this early in boot.

I do need this early in the boot, but I'm not worried about the delay as these tables
should be small.


>> Most errata can be detected from CPU id registers. These mechanisms
>> are only needed for the rare cases that external knowledge is needed.
> 
> And also have significant performance impact. In the end, how many
> platforms are there that can't fix these in firmware and need a
> mainline/distro kernel optimized to avoid the work-around. I suspect
> the number is small enough it could be a list in the kernel.

At a guess, its all mobile phones produced in the last 2 years that want to run a version
of Android that uses virtualisation. Cortex-A78 is affected, but I don't know when the
first products were shipped.



Thanks,

James
