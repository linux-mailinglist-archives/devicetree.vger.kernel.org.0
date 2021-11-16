Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23F34453831
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 18:00:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236865AbhKPRDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 12:03:18 -0500
Received: from foss.arm.com ([217.140.110.172]:47670 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229509AbhKPRDS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 12:03:18 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EE736D;
        Tue, 16 Nov 2021 09:00:20 -0800 (PST)
Received: from [10.57.82.45] (unknown [10.57.82.45])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00BE73F5A1;
        Tue, 16 Nov 2021 09:00:18 -0800 (PST)
Message-ID: <54be6173-59d3-7ce8-e04b-b5197fdc0e10@arm.com>
Date:   Tue, 16 Nov 2021 17:00:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 0/2] perf/smmuv3: Support devicetree
Content-Language: en-GB
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     robh+dt@kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        will@kernel.org, joro@8bytes.org, mark.rutland@arm.com,
        jkchen@linux.alibaba.com, leo.yan@linaro.org,
        uchida.jun@socionext.com
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <3b5cb536-5a11-5096-4369-cec3d369ec52@arm.com> <YZPRTUis+G279XIO@myrica>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <YZPRTUis+G279XIO@myrica>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-11-16 15:42, Jean-Philippe Brucker wrote:
> On Tue, Nov 16, 2021 at 12:02:47PM +0000, Robin Murphy wrote:
>> On 2021-11-16 11:35, Jean-Philippe Brucker wrote:
>>> Add devicetree binding for the SMMUv3 PMU, called Performance Monitoring
>>> Counter Group (PMCG) in the spec. Each SMMUv3 implementation can have
>>> multiple independent PMCGs, for example one for the Translation Control
>>> Unit (TCU) and one per Translation Buffer Unit (TBU).
>>>
>>> I previously sent the binding as reply to Jay Chen's thread implementing
>>> device tree support [1]. This posting addresses the comments from that
>>> thread.
>>
>> Ha, I'd also resurrected this and was planning to post it at some point this
>> week[0] - you should have said :)
> 
> Ah sorry about that, I just resent because there was some demand for it at
> Linaro

Heh, no worries - it's not like you were even CC'ed on the thread where 
I only mentioned I *might* do it.

Can I get away with being cheeky and just saying that my review comments 
are the diff between my branch and yours, I wonder...

>>> Patch 1 adds two compatible strings. "arm,smmu-v3-pmcg" is common to all
>>> PMCGs. "hisilicon,smmu-v3-pmcg-hip08" allows to support the same quirk
>>> as IORT for that implementation (see patch 2). We'll probably want to
>>> also introduce compatible strings for each implementation that has
>>> additional perf events. For example the MMU-600 implementation has
>>> different events for TCU and TBU PMCGs [2], but both components have the
>>> same device IDs. So the driver could differentiate them if they had two
>>> distinct compatible strings such as "arm,mmu-600-pmcg-tbu" and
>>> "arm,mmu-600-pmcg-tcu".
>>
>> Actually it only needs a general MMU-600 compatible, since once you know
>> it's an Arm Ltd. implementation, you can assume the pattern for the IMP_DEF
>> ID registers to figure out the rest.
> 
> It might be an error in the MMU-600 spec specifically, both TBU and TCU
> PMU registers have a 0x83 PIDR0, where I think the TBU should be 0x84 (the
> revC model uses that value). It's possible that the implementation
> actually has 0x84 instead.

Yup, it's a mistake in the TRM. I just checked a real MMU-600 and the 
PMU PIDRs match the main TCU/TBU PIDRs as expected. At least the MMU-700 
docs haven't repeated the same error.

Cheers,
Robin.
