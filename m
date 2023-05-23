Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8A2370DC8B
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 14:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236839AbjEWMZk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 08:25:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236809AbjEWMZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 08:25:39 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AE15C1B0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 05:25:11 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37FFC139F;
        Tue, 23 May 2023 05:25:43 -0700 (PDT)
Received: from [10.57.84.70] (unknown [10.57.84.70])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 624B53F6C4;
        Tue, 23 May 2023 05:24:56 -0700 (PDT)
Message-ID: <be69a222-096f-1e6c-837f-c7c76e643fa7@arm.com>
Date:   Tue, 23 May 2023 13:24:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 0/6] arm64: errata: Disable FWB on parts with non-ARM
 interconnects
Content-Language: en-GB
To:     James Morse <james.morse@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Marc Zyngier <maz@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <ZF0io4mDjRdm1AxN@arm.com> <86y1lun1zh.wl-maz@kernel.org>
 <ZF1ai79ljnilIMoG@arm.com> <0510749e-b88b-11f1-76f8-3c71188f731e@arm.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <0510749e-b88b-11f1-76f8-3c71188f731e@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2023-05-16 17:29, James Morse wrote:
> Hi Catalin, Marc,
> 
> On 11/05/2023 22:13, Catalin Marinas wrote:
>> On Thu, May 11, 2023 at 07:42:58PM +0100, Marc Zyngier wrote:
>>> On Thu, 11 May 2023 18:15:15 +0100,
>>> Catalin Marinas <catalin.marinas@arm.com> wrote:
>>>> On Thu, Mar 30, 2023 at 05:51:22PM +0100, James Morse wrote:
>>>>> When stage1 translation is disabled, the SCTRL_E1.I bit controls the
>>>>> attributes used for instruction fetch, one of the options results in a
>>>>> non-cacheable access. A whole host of CPUs missed the FWB override
>>>>> in this case, meaning a KVM guest could fetch stale/junk data instead of
>>>>> instructions.
>>>>>
>>>>> The workaround is to disable FWB, and do the required cache maintenance
>>>>> instead.
> 
>>>> I think the workaround can be to only do the required cache maintenance
>>>> without disabling FWB. Having FWB on doesn't bring any performance
>>>> benefits if we do the cache maintenance anyway but keeping it around may
>>>> be useful for other reasons (e.g. KVM device pass-through using
>>>> cacheable mappings, though not something KVM supports currently).
>>>
>>> But you'd also rely on the guest doing its own cache maintenance for
>>> instructions it writes, right?
>>
>> Ah, you are right. It looks like I only considered the host writing
>> instructions. If the guest disabled stage 1 and wrote some instructions
>> with FWB on, they'd not necessarily reach the PoC while the instructions
>> are fetched from PoC with this bug. Even with SCTLR_EL1.I==0, the guest
>> is supposed to do an IC IVAU if it wrote instructions but that's not
>> sufficient (hint to the micro-architects, add a chicken bit to upgrade
>> IC IVAU to also do a DC CVAC ;))
>>
>>> Which probably means exposing a different CLIDR_EL1 so that
>>> LoC/LoUU/LoUIS are consistent with *not* having FWB... I also wonder
>>> if keeping FWB set has the potential to change the semantics of the
>>> CMOs (the spec seems silent on that front).
>>
>> Not sure about CMOs, I'd expect them to behave in the same way. However,
>> I don't see how faking CLIDR_EL1 can trick the guest into doing DC CVAC
>> when its MMU is off.
> 
> I think the request is to keep the FWB feature, but to disable it for all host memory
> the guest can execute from. I presume this 'device pass-through using cacheable mappings'
> would mark that address range as XN at stage2, ( ... it's special right?).
> 
> If this is for something like CXL: it can't set XN, and the guest would still be exposed
> to the erratum if it executes from theses addresses with the MMU off.
> 
> Does this need doing now? It wouldn't need backporting to older kernels...
> 
> 
>>>> That said, maybe we can reduce the risk further by doing the
>>>> vcpu_has_run_once() trick with !FWB and clean the D side to PoC on a
>>>> stage 2 exec fault (together with the I-cache invalidation). We can then
>>>> ignore any other cache maintenance on S2 faults until someone shouts (we
>>>> can maybe recommend forcing FWB off on the command line through the
>>>> cpuid override).
>>>
>>> You lost me here with your vcpu_has_run_once().
>>
>> Most likely I lost myself in the code. So the tricks we used in the past
>> tracking the guest MMU off/on was only for the D side. If (we hope that)
>> the guest only wrote instructions to a page once before executing them
>> (and never writing instructions again), we could trap a subsequent exec
>> fault and do the D-cache clean to PoC again.
>>
>>> Keeping the CMOs on exec fault is definitely manageable. But is that
>>> enough?
>>
>> Yeah, not sure it's enough if the guest keeps writing instructions to
>> the same page with the MMU off.
> 
> The difference between FWB and IDC/DIC still does my head in: My reading is FWB implies
> IDC, (but the CTR_EL0.IDC bit might not be set). This doesn't help if the wrong attributes
> are being used for instruction fetch.
> This is cache-maintenance that wasn't needed before, so there are no tricks with the id
> registers we can pull to make the guest do it.
> 
> 
> v2 of this will flip the polarity, and also detect based on an 'arm,interconnect'
> compatible, or the existing compatible the PMU driver uses.

Unfortunately I don't think PMUs are going to be a meaningful indicator 
in general since they don't imply anything about topology - you may 
infer that, say, an Arm CMN exists *somewhere* in the system, but it 
could conceivably be on some I/O chiplet connected via CCIX/CXL to a 
different interconnect on the CPU die which *does* still need the 
mitigation.

Thanks,
Robin.
