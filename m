Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A20A146BCE2
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 14:46:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237202AbhLGNuZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 08:50:25 -0500
Received: from foss.arm.com ([217.140.110.172]:60752 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237179AbhLGNuZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 08:50:25 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC85B11FB;
        Tue,  7 Dec 2021 05:46:54 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CC683F5A1;
        Tue,  7 Dec 2021 05:46:53 -0800 (PST)
Message-ID: <675bfd78-69ac-608f-1303-e86b90a83f72@arm.com>
Date:   Tue, 7 Dec 2021 13:46:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
Content-Language: en-GB
To:     Leo Yan <leo.yan@linaro.org>
Cc:     John Garry <john.garry@huawei.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
 <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
 <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
 <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
 <20211207132007.GB255238@leoy-ThinkPad-X240s>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211207132007.GB255238@leoy-ThinkPad-X240s>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-07 13:20, Leo Yan wrote:
> On Tue, Dec 07, 2021 at 12:48:13PM +0000, Robin Murphy wrote:
>> On 2021-12-07 12:28, John Garry via iommu wrote:
>>> On 07/12/2021 12:04, Robin Murphy wrote:
>>>>>>
>>>>> So is there some userspace part to go with this now?
>>>>
>>>> FWIW I've not looked into it - is it just a case of someone knocking
>>>> out some JSON from the MMU-600/700 TRMs, or is there still mroe to
>>>> do?
>>>
>>> That should just be it.
> 
> Hope I didn't arrive too late :)
> 
> Yes, I think we just missed two things: the DT binding for SMMUv3 PMU
> which is just addressed by this patchset; and the PMU event aliasing
> for SMMUv3 PMU, before I inquired with John and John said he would
> upstream the related patches after kernel can export a IIDR value via
> sysfs node.
> 
> Seems to me, after this patchset for DT binding and PMU event alias
> patches are landed to the mainline kernel, it would be perfect.
> 
>>>> I had the impression that *some* part of the process was stalled
>>>> until implementations can start providing meaningful IIDRs, but I
>>>> wasn't sure whether that was tooling or just data. I just work the
>>>> low-level enablement angle :)
>>>
>>> Tooling should be ok, but I would just like to see more of these JSONs
>>> so any tooling issues can be ironed out.
>>
>> Sounds good - Jean, Leo, is that something Linaro might like to pick up as
>> part of the PMCG interest, or shall I make a note on my to-do list for the
>> new year?
> 
> I took a look for current patch for using PIDR to synthesize IIDR, it
> looks good to me.  But I tested it on Hisilicon D06 board and observed
> the composed IIDR values are still zeros.
> 
> I added a printk sentence to dump iidr value at the end of the function
> smmu_pmu_get_iidr():
> 
>    leoy@ubuntu:~$ dmesg | grep iidr
>    [   28.674087] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.8.auto: iidr=0x0
>    [   28.705239] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.9.auto: iidr=0x0
>    [   28.729924] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.10.auto: iidr=0x0
>    [   28.754855] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.11.auto: iidr=0x0
>    [   28.779811] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.12.auto: iidr=0x0
>    [   28.804755] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.13.auto: iidr=0x0
>    [   28.829825] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.14.auto: iidr=0x0
>    [   28.854767] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.15.auto: iidr=0x0
> 
> Please confirm if this is expected or not?  I think this might
> introduce difficulty for John for the PMU event alias patches, which
> is dependent on a non-zero IIDR.

Yes, from previous discussions I believe the HiSilicon implementations 
don't have much meaningful ID information at all (hence why we have to 
match ACPI table headers to identify the counter erratum). My trick only 
works for Arm Ltd. implementations since they happen to have the IMP-DEF 
CoreSight registers with the same information as would be in the future 
IIDR.

To clarify, the proposal at this point is to write up JSON files for 
MMU-600/MMU-700, based on this patch, in order to pipe-clean the process 
for future SMMUv3.3 PMCG implementations with real IIDRs.

Whether other implementers might retroactively define "equivalent" IIDR 
values for their existing implementations in a way we could potentially 
quirk in the driver is an orthogonal question.

Cheers,
Robin.

> 
> At last, very appreciate your (Jean-Philippe, Robin and John) help!
> 
> Thanks,
> Leo
> 
