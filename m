Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EFC746BBC0
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 13:49:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231152AbhLGMwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 07:52:55 -0500
Received: from foss.arm.com ([217.140.110.172]:59338 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230238AbhLGMvt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 07:51:49 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90CAF11FB;
        Tue,  7 Dec 2021 04:48:18 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 01BAF3F5A1;
        Tue,  7 Dec 2021 04:48:16 -0800 (PST)
Message-ID: <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
Date:   Tue, 7 Dec 2021 12:48:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
Content-Language: en-GB
To:     John Garry <john.garry@huawei.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        leo.yan@linaro.org
Cc:     mark.rutland@arm.com, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
 <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
 <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-07 12:28, John Garry via iommu wrote:
> On 07/12/2021 12:04, Robin Murphy wrote:
>>>>
>>> So is there some userspace part to go with this now?
>>
>> FWIW I've not looked into it - is it just a case of someone knocking 
>> out some JSON from the MMU-600/700 TRMs, or is there still mroe to do? 
> 
> That should just be it.
> 
>> I had the impression that *some* part of the process was stalled until 
>> implementations can start providing meaningful IIDRs, but I wasn't 
>> sure whether that was tooling or just data. I just work the low-level 
>> enablement angle :)
> 
> Tooling should be ok, but I would just like to see more of these JSONs 
> so any tooling issues can be ironed out.

Sounds good - Jean, Leo, is that something Linaro might like to pick up 
as part of the PMCG interest, or shall I make a note on my to-do list 
for the new year?

Thanks,
Robin.

> 
> Cheers,
> John
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
