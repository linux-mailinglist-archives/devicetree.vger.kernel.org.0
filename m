Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F3B246BAA5
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 13:04:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231638AbhLGMIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 07:08:09 -0500
Received: from foss.arm.com ([217.140.110.172]:58234 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231576AbhLGMIJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 07:08:09 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 97E7911FB;
        Tue,  7 Dec 2021 04:04:38 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F11633F5A1;
        Tue,  7 Dec 2021 04:04:36 -0800 (PST)
Message-ID: <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
Date:   Tue, 7 Dec 2021 12:04:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
Content-Language: en-GB
To:     John Garry <john.garry@huawei.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        robh+dt@kernel.org
Cc:     mark.rutland@arm.com, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        leo.yan@linaro.org, will@kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-12-07 09:14, John Garry wrote:
> On 17/11/2021 14:48, Jean-Philippe Brucker wrote:
>> From: Robin Murphy<robin.murphy@arm.com>
>>
>> The SMMU_PMCG_IIDR register was not present in older revisions of the
>> Arm SMMUv3 spec. On Arm Ltd. implementations, the IIDR value consists of
>> fields from several PIDR registers, allowing us to present a
>> standardized identifier to userspace.
>>
> So is there some userspace part to go with this now?

FWIW I've not looked into it - is it just a case of someone knocking out 
some JSON from the MMU-600/700 TRMs, or is there still mroe to do? I had 
the impression that *some* part of the process was stalled until 
implementations can start providing meaningful IIDRs, but I wasn't sure 
whether that was tooling or just data. I just work the low-level 
enablement angle :)

Robin.
